# TRUTH.md - mswjs__msw-1096

## Defect

The milestone bundles 2 announced issue(s):
1. (#1080): Enable a way to run the default behaviour from inside the onUnhandledRequest callback
2. (#995): Support GraphQL v16

The reference change touches 5 file(s) in typescript. 3 target test(s) observe the result and 50 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 3 file(s):

- `src/utils/request/onUnhandledRequest.ts`
- `src/graphql.ts`
- `.nvmrc`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (3) and confirm the preserve set (50) still passes.

## Root cause

The unhandled-request handler exposes exactly one extensibility point: a user-supplied callback that receives the request. When a request has no matching handler, the library builds a diagnostic message and then, depending on the configured strategy string (`'warn'`, `'error'`, etc.), either logs a warning or throws. A user who supplies a callback, however, is given *only* the request — they have no way to trigger the library's own warning or error behaviour after inspecting the request. So a callback that wants to say "warn on requests to this host, but otherwise stay silent" cannot re-use the built-in formatted message and console/throw behaviour; it must reimplement the whole thing. The callback signature is too narrow to support the common "inspect, then defer to default handling" pattern, which is what the tests exercise.

Separately, `src/graphql.ts` passes bare strings (`'query'`, `'mutation'`) where the underlying GraphQL machinery expects operation-type values. Newer versions of the `graphql` package model these as an enum rather than free strings, so passing raw literals no longer type-checks (and the pinned Node version in `.nvmrc` is too old to resolve the updated toolchain). This is why the GraphQL handler test and the surrounding build break.

## Solution shape

Two independent properties must hold.

1. The unhandled-request callback must receive a second argument: an object of callable actions that reproduce the library's own default responses. Minimally it must expose a way to emit the standard warning and a way to raise the standard error, using the same formatted message the built-in strategies use. In pseudocode, at the single point where an unhandled request is processed:

   ```
   actions = {
     warning: () => console.warn(formattedMessage),
     error:   () => raise(formattedMessage),
   }
   if strategy is a function:
       strategy(request, actions)
       return
   // string strategies 'warn'/'error' behave as before,
   // ideally by calling actions.warning()/actions.error()
   ```

   The message-building logic should be reachable from both the string-strategy branch and the callback's action closures, so the callback and the built-in strategies produce identical output. Extracting the message construction (and the handler-suggestion construction it depends on) into helpers that the action closures call is the natural way to share it; the exact factoring is free as long as both paths yield the same text.

2. The GraphQL handler factory must be given operation-type values of the type the current `graphql` package expects (the enum members for query and mutation) rather than string literals, at every place a scoped handler is created — both the wildcard/global handlers and the URL-scoped `link` variants. The Node pin must be raised enough to support the updated dependency.

## Ordered plan

1. Widen the callback type first: it must accept the request plus a second parameter describing the default actions. Define that action type (a warning trigger and an error trigger). This is the contract the tests assert against, and everything downstream depends on it.

2. In the function that reacts to an unhandled request, refactor the existing message assembly so it is no longer inline in the strategy switch — pull the suggestion computation and the final message string into helpers that can be invoked lazily. This must come before step 3 because the action closures need to call the same builders.

3. Construct the actions object whose warning member logs the message and whose error member throws it. Wire the string strategies to those same actions so behaviour is provably identical, then, when the strategy is a function, invoke it with the request and the actions and return. Order matters: the function branch must short-circuit before any string-based switch runs, otherwise a callback that stays silent would still get default handling.

4. Independently, fix `src/graphql.ts` to use the operation-type enum members in all four factory calls, and bump `.nvmrc` so the updated `graphql` types resolve. This unblocks the GraphQL handler test and the general build.

Steps 1–3 are a dependency chain; step 4 is orthogonal and can be done at any time, but must be done for the suite to compile.

## Pitfalls

- **Only fixing the callback branch, not sharing the message.** If the callback's actions build a message differently from the string strategies, the `onUnhandledRequest` test will see mismatched output. Both paths must emit the exact same formatted text, which is why the builders are extracted rather than duplicated.

- **Not short-circuiting after invoking the callback.** If the function strategy runs and control then falls into the string switch, a callback that inspects-and-ignores will still trigger a warning or throw. The callback path must return immediately.

- **Passing the wrong shape to the callback.** The second argument is an object of zero-argument action functions, not the message string or the request again. A test that calls `print.warning()` / `print.error()` will fail if you hand it a string.

- **Fixing only two of the four GraphQL factory calls.** The wildcard handlers and the URL-scoped `link` handlers are separate call sites; converting the literals in one pair but leaving raw strings in the other still fails the type check.

- **Leaving the Node pin untouched.** The GraphQL enum members only exist in the newer package version; without raising the environment pin the dependency and its types may not resolve, so the fix compiles locally but the harness build breaks.

- **Reintroducing an unused import.** After switching to enum members, any previously-imported symbol that is now unreferenced will trip strict lint/type settings; import exactly what the enum requires.

## Provenance

```yaml
uuid: 47ee1d1d-f986-4b51-891d-1ac7a097b04e
instance_id: mswjs__msw-1096
fix_patch_sha256: 4c171c90fddd929cf709a0bceb82a490ff0ea5b1ed8cac1a04ffa4fb2a592fe7
language: typescript
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
