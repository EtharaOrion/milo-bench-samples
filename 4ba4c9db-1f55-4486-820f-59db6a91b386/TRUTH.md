# TRUTH.md - 99designs__gqlgen-1038

## Defect

The milestone bundles 4 announced issue(s):
1. (#1038): check slice length
2. (#1039): Fix link to examples directory in Federation docs
3. (#1043): Ensure panic handlers get applied
4. (#1046): docs(gin): missing import playground

The reference change touches 7 file(s) in go. 3 target test(s) observe the result and 113 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 4 file(s):

- `graphql/recovery.go`
- `internal/rewrite/rewriter.go`
- `graphql/handler/executor.go`
- `graphql/version.go`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (3) and confirm the preserve set (113) still passes.

## Root cause

The GraphQL server exposes a mechanism for callers to register a custom panic-recovery function so that panics inside resolvers or unmarshalers are turned into controlled errors rather than crashing the process. The server stores this configured recovery function, but the code path that actually builds the execution context for a request ignores it: when the executor assembles the per-operation context, it hard-wires the default recovery behaviour instead of reading back the function the caller configured on the server.

As a result, any panic that occurs while executing an operation — for example a panic thrown inside an argument unmarshaler — is handled by the default recover logic rather than by the user-supplied handler. A test that installs a custom recover function expecting to intercept and reshape those panics never sees them; the default handler runs instead, so the emitted error text and the "server stays alive" guarantee don't match what the custom function would have produced. The wiring between "recover function set on the server" and "recover function used per request" is simply broken at the executor.

A secondary source of confusion is a now-redundant extension type that also tried to inject a recover function by mutating the operation context. Having two competing paths to set recovery — one via an extension mutator, one via the executor default — makes the intended single source of truth ambiguous.

## Solution shape

The property the code must end up with: the recovery function actually used to guard execution of an operation must be the one held on the server instance, not a compile-time default.

Concretely, at the point where the executor constructs the operation context, the field that names the recover handler must be populated from the server's stored recover function rather than from the package-level default.

```
buildOperationContext(...):
    ctx.Recover = server.configuredRecoverFunc   // not DefaultRecover
```

The redundant extension-based path that set recovery by mutating the operation context should be removed so there is exactly one way recovery gets configured. If that removal drops the only remaining reference to certain imports in that file, those imports must go too.

Independently, some unrelated cleanup in the AST-rewriting helper (guarding against an empty package result, and simplifying receiver-length and receiver-type checks) rides along; it must not regress existing behaviour but is not what the recovery tests exercise.

## Ordered plan

1. Start from the failing tests: they register a custom recover function and expect panics inside unmarshalers to surface as the custom-shaped error while the server keeps serving. Trace how a request-time panic is caught. This leads you to the operation context's recover slot.

2. Find where that recover slot is populated. You'll see it filled with the default handler at executor setup time. This is the defect: the value is a constant, not the server's configured function. Fixing this is the necessary and likely sufficient change for the tests.

3. Change that assignment to read the recover function from the server object. Re-run the recovery tests; they should now pass because the custom handler is invoked.

4. Now resolve the ambiguity: there is an alternate mechanism (an extension that mutates the operation context to set recovery). With the executor now sourcing recovery from the server, that mechanism is redundant and confusing. Remove it, and prune any imports left unused by its deletion, so the code compiles cleanly.

5. Confirm the full suite (all other tests) still passes; the removal must not have been the sole configurer relied on elsewhere.

Steps 1–3 are strictly ordered (you can't fix what you haven't located). Step 4 depends on step 3 being in place. The rewriter cleanup is orthogonal and can happen at any point.

## Pitfalls

- **Fixing the default instead of the wiring.** Changing what `DefaultRecover` does would make the tests appear to pass while leaving the real bug — that a configured function is ignored — intact. The correct fix routes the *configured* function through, so any caller's handler works, not just the one the test happens to install.

- **Leaving the redundant extension path.** If you wire the executor correctly but keep the extension that also mutates the recover slot, you now have two writers to the same field. Depending on ordering, one may overwrite the other, reintroducing nondeterministic recovery selection. Collapse to a single source.

- **Dead imports after deletion.** Removing the extension type likely orphans an import (the error type it returned, plus formatting). Failing to prune these breaks the build even though the logic is right.

- **Assuming the extension already sufficed.** It's tempting to believe recovery was configured through the extension mechanism and that no executor change is needed. But the executor overwrote whatever the extension set with the default, so the extension never took effect for actual execution — the test proves the extension path alone did not deliver the custom handler.

- **Over-narrowing to the unmarshaler case.** The tests exercise panics in unmarshalers, but the recover slot guards all operation execution. Don't special-case unmarshaler panics; set the recover function generally so resolver panics are covered too.

## Provenance

```yaml
uuid: 4ba4c9db-1f55-4486-820f-59db6a91b386
instance_id: 99designs__gqlgen-1038
fix_patch_sha256: a75c718c83e09dbe8411e5a240097394dee2a1e8072006ec3e3373746673d7f9
language: go
targets_total: 3
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
