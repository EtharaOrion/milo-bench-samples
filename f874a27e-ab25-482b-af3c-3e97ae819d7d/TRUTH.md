# TRUTH.md - seaweedfs__seaweedfs-6715

## Defect

The milestone bundles 31 announced issue(s):
1. (#6715): Fix implementation of `master_pb.CollectionList` RPC call
2. (#6713): [s3] payload checksum does not match on put file via aws s3
3. (#6724): golang up version to 1.24
4. (#6703): Corrupted multipart upload to filer s3 over HTTPS using aws-cli
5. (#6526): allow verifying trailing checksums
6. (#6732): bump depdency-review-action 4.3.0 -> 4.3.2
7. (#6737): fix: volume.list volume info output not in order
8. (#6738): feat(redis): add mTLS support for Redis connection initialization
9. (#6733): S3 Feature: please add s3.ip.bind command line parameter
10. (#3113): Storing files across many collections causes high memory usage
11. (#3115): volume.vacuum -volumeId doesnt trigger GC of the volumeId
12. (#3084): Security issue: sometimes any s3 users have access to any buckets
13. (#3086): [s3] put fakedir/ key object
14. (#3087): go: github.com/seaweedfs/goexif@v2.0.0+incompatible: reading github.com/seaweedfs/goexif/go.mod at revision v2.0.0: unknown revision v2.0.0
15. (#3089): New filer only syncs a subset of files
16. (#3097): seaweedfs randomly loses files
17. (#3099): 服务器意外断电，加载volume报错，有什么好的办法避免吗？
18. (#3107): ipv6
19. (#1343): No control of free space on disk.
20. (#1366): seaweedfs 1.82: weed volume fails with -dir volume,volume2,[...]
...and 11 more.

The reference change touches 1 file(s) in go. 4 target test(s) observe the result and 349 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 1 file(s):

- `weed/topology/topology.go`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (4) and confirm the preserve set (349) still passes.

## Root cause

The collection-listing routine on the topology unconditionally walks the map of normal (non-EC) collections and also walks the EC volume locations, folding every name it finds into a single set. It has no way to distinguish "give me collections that have normal volumes" from "give me collections that have EC volumes" — it always includes both. It also iterates a shared map without holding that map's read lock, and it returns the accumulated names in whatever order the underlying maps happen to yield them, which is nondeterministic.

Because of this, a caller asking only for EC-backed collections still gets normal-volume collections mixed in, a caller asking for neither still gets everything, and any caller comparing the result against an expected slice sees an unpredictable order. A test that exercises the different selection combinations and expects a specific, stable list of names will fail on the wrong contents and/or the wrong ordering.

## Solution shape

The routine needs to accept the caller's intent and honour it. Concretely:

- There must be a flag (or equivalent parameter) that says whether normal-volume collections should be included. The traversal of the normal-collection map must run **only** when that flag is set. The EC-volume traversal is governed by whatever existing parameter already controls EC inclusion.
- When neither kind is requested, the result must be empty.
- The set-building must dedupe names that appear in both the normal and EC sources (a plain set/map keyed by name already does this).
- Access to the shared normal-collection map must be guarded by its read lock for the duration of the iteration.
- The final slice must be returned in a deterministic (sorted) order so callers can compare against a fixed expectation.

Pseudocode:

```
func listCollections(includeNormal, includeEC bool) []string {
    names := set()
    if includeNormal {
        withReadLock(collectionMap):
            for c in collectionMap: names.add(c.Name)
    }
    if includeEC {
        for loc in ecVolumeLocations: names.add(loc.Collection)
    }
    result := names.keys()
    sort(result)
    return result
}
```

Every existing caller must pass the flag value that reproduces the old "include normal collections" behaviour so the 349 unrelated tests keep passing.

## Ordered plan

1. Read the test cases first. They tell you the routine now takes a second axis of choice (normal vs EC) and that three combinations — normal+EC, EC-only, and none-selected — must each yield a specific list. This establishes that the signature must gain a parameter and that "none selected" must be empty. Do this first because it defines the contract.

2. Add the parameter that gates normal-volume collections, and make the normal-collection traversal conditional on it. This is the behavioural core; without it the EC-only and none-selected cases can never pass.

3. Wrap the normal-collection map iteration in that map's read lock. This is required for correctness under concurrency but is invisible to the tests; do it while you're already editing that block so you don't leave an unsynchronised access behind.

4. Sort the assembled names before returning. This must come after the set is fully built and converted to a slice. Without it the "normal+EC" and "EC-only" cases can pass or fail depending on map iteration order, so it is what makes the tests deterministic.

5. Update every existing call site to pass the flag that keeps their current behaviour (include normal collections). This comes last because it depends on the new signature existing, and getting it wrong is what breaks the 349 other tests rather than the four named ones.

## Pitfalls

- **Skipping the sort.** Deduping and correct selection can still produce a slice in map-iteration order, which is unstable in Go. The named tests compare against an exact ordered list; a fix that gets the contents right but not the order will pass intermittently and fail under the harness. The sort is not optional polish here.

- **Leaving the EC branch always-on or, worse, gating it by the wrong flag.** The new flag should control *normal* collections; EC inclusion is controlled by whatever parameter already governs it. Swapping which branch the new flag guards makes the "EC volumes" and "normal + EC volumes" cases produce each other's results.

- **Forgetting the "none selected" case.** If you only guard the normal branch but the EC branch has no equivalent guard, "no volume types selected" still returns EC collections and stays non-empty. Both branches must be able to be off simultaneously.

- **Updating the signature but not all callers.** The routine is called elsewhere in the codebase; every one must supply the flag value that preserves the pre-change behaviour (normal collections included). Missing a call site is how you turn a passing 349 into failures unrelated to the four target tests.

- **Iterating the collection map without its read lock.** Easy to overlook because no test catches it, but it is part of the intended fix and the correct behaviour under concurrent topology updates.

- **Deduping only within one source.** A collection can have both normal and EC volumes; use a single shared name set so a name present in both sources appears once, rather than concatenating two lists.

## Provenance

```yaml
uuid: f874a27e-ab25-482b-af3c-3e97ae819d7d
instance_id: seaweedfs__seaweedfs-6715
fix_patch_sha256: c1fce1f8f4fc8db188811fcd961f9a211f7e300f759e9188037640845256508b
language: go
targets_total: 4
authored_by: generated
status: verified_reference
golden_score_measured: 1.0
golden_score_runs: 1
golden_score_verified_by: recorded_test_results
caveat: >
  Probes are literal substrings of the reference hunks, so the
  golden-patch probe gate passes by construction and is not
  evidence of probe quality for this bundle.
```
