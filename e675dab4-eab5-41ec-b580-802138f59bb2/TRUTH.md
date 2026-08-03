# TRUTH.md - crossplane__crossplane-3105

## Defect

The milestone bundles 2 announced issue(s):
1. (#3105): [Backport release-1.7] Fix logger panic in dependency resolution and guard against future logger panic bugs
2. (#3108): Cut v1.7.2 Release on May 26, 2022

The reference change touches 3 file(s) in go. 6 target test(s) observe the result and 592 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 1 file(s):

- `internal/controller/pkg/resolver/reconciler.go`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (6) and confirm the preserve set (592) still passes.

## Root cause

The dependency resolver's reconciler uses a structured logger whose `Debug` method expects a message string followed by an optional sequence of alternating key/value pairs. When logging the "no valid version found" condition, the code passes the constructed error object directly as the second argument, without a preceding key. The logger therefore receives an unkeyed value where it expects a key, leaving one key/value argument unbalanced.

Depending on the logger implementation, this either panics, drops the value, or emits a malformed record. In the test harness the logger is a fake that records or asserts on the structured arguments it receives; an odd number of trailing arguments (a value with no matching key) violates the contract the fake enforces, so the reconcile path that hits this branch fails, and because the fake or the log call misbehaves, the surrounding table-driven cases that exercise the same reconciler are dragged down with it.

## Solution shape

Any correct fix must ensure that every value handed to the structured `Debug` call after the message string is paired with a key. The error being logged must be introduced as the value half of a key/value pair, with an explicit string key (conventionally the one used for error values) placed immediately before it.

```
log.Debug(message, "<error-key>", errValue)   // balanced pairs
```

The change belongs at the single log site that reports the missing valid version for a dependency. No behavioural change to the resolution logic itself is required — only the logging call's argument structure.

## Ordered plan

1. Locate the debug log call in the resolver reconciler that reports that no valid version satisfies a dependency's constraints. This is the site the failing `ErrorNoValidVersion` case exercises directly, and the one whose malformed arguments cascade into the sibling cases.
2. Confirm the logger's `Debug` signature: a message followed by variadic key/value pairs. This tells you the second argument must be a key, not a value — establishing that the current call is unbalanced before you touch anything.
3. Insert a string key ahead of the error value so the pair is complete. Reuse the conventional key already used elsewhere in the codebase for error values, so log output stays consistent.
4. Run the named reconcile cases together. They pass as a group only once the argument count is even; if only `ErrorNoValidVersion` passes but the others still fail, the imbalance is coming from a different or additional call, so re-inspect.

Step 2 must precede step 3 because you cannot know the value needs a key until you have read the signature; step 4 depends on step 3 producing balanced arguments across every path through the fake logger.

## Pitfalls

- Do not fix this by removing the error argument entirely or collapsing it into the message string. That balances the call but discards the structured error value the tests and downstream log consumers expect to observe.
- Do not invent an ad-hoc key name that differs from the one used for errors elsewhere. It will pass the tests but breaks the structured-logging convention, and reviewers relying on a consistent error key across the package will miss records.
- Check whether the same reconciler has other `Debug`/`Info` calls that pass bare values without keys; the visible symptom is one site, but an unbalanced call anywhere on a shared reconcile path can produce the same cascade. Fixing only the named branch while leaving another unkeyed call in place may still let some cases fail intermittently.
- Resist changing the fake logger or the test expectations to tolerate an odd argument count. That makes the test agree with the malformed call instead of correcting it, and defeats the point of the structured contract.

## Provenance

```yaml
uuid: e675dab4-eab5-41ec-b580-802138f59bb2
instance_id: crossplane__crossplane-3105
fix_patch_sha256: 8a86a1a628b502264ac96a2039b9d51a8d74ae73af4d8f86a59027fc1ce75cd7
language: go
targets_total: 6
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
