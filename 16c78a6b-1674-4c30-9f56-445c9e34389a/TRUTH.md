# TRUTH.md - gofiber__fiber-933

## Defect

The milestone bundles 8 announced issue(s):
1. (#933): Replace localhost with IP
2. (#935): Fix typo and improve Indonesian translation in README_id
3. (#936): improve base uri for ctx
4. (#945): 🐛  Wildcard parameter persists between requests.
5. (#948): 🔥 Add request ID to locals
6. (#949): 📦 bump v2.1.1
7. (#950): Feature/fix doc
8. (#947): 🐛  Can't get added header by proxy

The reference change touches 24 file(s) in go. 4 target test(s) observe the result and 236 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 4 file(s):

- `middleware/requestid/requestid.go`
- `ctx.go`
- `app.go`
- `router.go`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (4) and confirm the preserve set (236) still passes.

## Root cause

Two independent defects sit behind the failing tests.

The router's star (`*`) matching has a wildcard path that, when it matches an empty remainder, leaves the captured parameter slice in an inconsistent state. When a route like `/*` is matched against a URL where the wildcard segment is empty, the parameter capture logic does not assign a value to the wildcard slot. The slot is left holding whatever stale or uninitialized value was there, rather than an empty string. As a result, code that reads back the star parameter gets an incorrect value for the "matched nothing" case, and the match-star test observes the wrong captured value.

The request ID middleware never publishes the generated ID anywhere retrievable from the request context. It sets the response header, but a handler downstream has no supported way to read the ID that was assigned to this request. Any test that generates a request ID and then tries to fetch it from request-local storage finds nothing, because the middleware only ever touched the header, not the request's locals. The middleware also has no configurable key under which such a value could be stored.

## Solution shape

For the router: when the wildcard segment consumes an empty remainder, the corresponding parameter slot must be explicitly set to an empty string rather than left with a residual value. The property to guarantee is that after a successful star match, the star parameter always reflects exactly what the wildcard consumed — including the empty string when it consumed nothing.

For the middleware: after generating the request ID, it must store that ID into the request's locals so a downstream handler can retrieve it. The storage key must be configurable, defaulting to a sensible fixed name when the caller does not override it. Concretely:

```
key = config.contextKey or default
c.locals(key, generatedID)
```

The default configuration must expose this key so that unconfigured usage still stores under the documented default.

The `baseURI` change and version bump are incidental caching/housekeeping and not required by the four tests; a correct fix need not touch request-URI caching, though doing so must not break the 236 passing tests.

## Ordered plan

1. Start with the star-match test, because it is isolated to the router and independent of the middleware. Reproduce a `/*` route matched against a URL where the wildcard captures nothing, and observe that reading the star parameter yields a non-empty stale value. This confirms the capture-slot-not-reset mechanism.
2. Fix the router so the wildcard slot is assigned the empty string in the branch that handles an empty remaining path. This depends on step 1 having pinpointed exactly which branch (empty vs non-empty remainder) skips the assignment. Rerun the router test to confirm.
3. Move to the middleware. First add a configurable key for where the ID is stored, with a default value, and make the config-normalization path fill in the default when the caller leaves it blank. This must come before storing, because the store call reads that key.
4. In the request handler produced by the middleware, after computing the ID and setting the header, also write the ID into the request locals under the configured key. Run the locals test to confirm retrieval works, and the basic and next tests to confirm you did not disturb header behaviour or the skip path.

## Pitfalls

- Fixing the router only for the non-empty wildcard case: if you reset the slot everywhere except the empty-remainder branch, ordinary star routes still work and most tests pass, but the specific "matched nothing" assertion still fails. The empty case is exactly the one that was broken.
- Storing the request ID under a hardcoded key instead of a configurable one: the locals test may still pass if it happens to read the same hardcoded name, but the middleware then cannot support a custom key, and the config default must still be populated when unset — a hardcoded store diverges from the config the test framework expects.
- Forgetting to normalize the empty config key to its default. If a caller (or the test) constructs config without setting the key, and you only store when the key is non-empty, nothing gets written and the locals lookup fails.
- Only setting the response header and assuming that satisfies retrieval. The header and the request locals are separate stores; reading locals will not surface a value that was only written to the header.
- Do not change the request-local write so it happens before the skip/next decision, or you will store IDs for requests the middleware was told to skip, potentially breaking the "next" test.

## Provenance

```yaml
uuid: 16c78a6b-1674-4c30-9f56-445c9e34389a
instance_id: gofiber__fiber-933
fix_patch_sha256: 533fda90595d5305249847a284f413f2e22a8f9917dcaaf35587aa53af5a0461
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
