# TRUTH.md - 99designs__gqlgen-1295

## Defect

The milestone bundles 4 announced issue(s):
1. (#1295): Update getting-started.md
2. (#1291): INPUT_FIELD_DEFINITION directive handler returned errors are clobbered
3. (#1315): Feature request: add IsResolver in FieldContext
4. (#1324): Fix typos in README.md

The reference change touches 36 file(s) in go. 155 target test(s) observe the result and 0 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `codegen/testserver/generated.go`
- `integration/generated.go`
- `graphql/context_field.go`
- `graphql/context_path.go`
- `graphql/error.go`
- `codegen/type.gotpl`
- `integration/server/server.go`
- `graphql/context_response.go`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (155) and confirm the preserve set (0) still passes.

## Root cause

The GraphQL runtime attaches a path to each error so clients can locate where in the query the failure occurred. Two distinct path-tracking mechanisms exist and neither composes correctly with the error pipeline.

First, the error path is only computed at presentation time. The default error presenter reaches into the field context and overwrites (or fills in) `Path` from the current `FieldContext` when the response is serialized. This has two consequences: an error raised deep inside argument coercion — where the meaningful location is an input field or a list index, not just the enclosing resolver field — loses that finer-grained location, because by presentation time the context only carries the field, not the input sub-path. And errors that are added to the response before the presenter runs get their path stamped from whatever field context happens to be current, which is not necessarily where the error originated.

Second, input-path tracking lives in a separate context key from field-path tracking. Argument coercion pushes input-field and index frames onto an input-specific context, and the code that wraps coercion errors reads that input context to build a path. But resolver-field errors read a different context. Because the two are stored and consulted independently, an error surfaced from one layer cannot see the path accumulated by the other, so nested-input and list-index locations are dropped or duplicated depending on which presenter path runs.

The tests exercise exactly these seams: errors raised inside mutation arguments, enum/ID marshalling failures during coercion, directive argument coercion failures, and null-bubbling all expect a precise path that the current split, presentation-time scheme cannot produce.

## Solution shape

Unify the two path mechanisms into one, and move path attachment from presentation time to the moment the error is created.

- There should be a single context-carried path stack whose frames are either a named field or a numeric index. Both argument/input coercion and resolver-field traversal must push onto this same stack, so any error, wherever raised, can read one authoritative path.
- Provide a helper that, given a context and an error, attaches the current path to that error and returns it — creating a properly-pathed GraphQL error if the input was a plain error, and setting the path on an existing GraphQL error otherwise. It must be a no-op on `nil`. Every place that used to wrap a coercion error with an input-specific path, and every generated call site that returns a coercion or directive-type error, must route through this helper instead.
- The default error presenter must stop deriving the path from the field context. Since the path is now baked into the error at creation, the presenter should simply return the already-formed GraphQL error.
- `AddError` and the error/recover paths in the response context must also pass errors through the path-attaching helper before storing them, so that errors added outside coercion still get the correct path from wherever they were raised.
- Generated code that previously distinguished only method-vs-not on fields now needs to also record whether a field has a user-supplied resolver, so the runtime metadata carries that flag.
- User code and integration servers that manually reached into the field context to obtain a path should instead obtain it from the unified path accessor, and should match error types using standard `errors.As` unwrapping rather than a specific cause-extraction helper.

## Ordered plan

1. Replace the two separate path contexts with one. Introduce a single path-context type carrying an optional parent field context, a parent path frame, and either a field name or an index; give it a `Path()` that walks parents, reverses, and prepends the enclosing field's path. This is the foundation everything else reads from, so it comes first.
2. Add the path-attaching error helper next, because both the presenter and the generated code depend on it. It must handle `nil`, wrap plain errors into pathed GraphQL errors, and set the path on existing GraphQL errors using unwrap-aware matching.
3. Simplify the default presenter to return the incoming GraphQL error unchanged. This only becomes correct after step 2 guarantees errors already carry their path; doing it earlier would drop paths entirely.
4. Update the response context: route `AddError` and the recover/error paths through the helper so non-coercion errors are pathed at add time. This depends on step 2.
5. Regenerate or hand-edit the generated servers and the coercion template so every input-path push uses the unified context, list-element coercion pushes an index frame, and every coercion/directive-type error return is wrapped with the helper. Note that the very first coercion return in a chain may now simply return the raw error (already pathed by an inner call) — be deliberate about which returns wrap and which pass through. Add the resolver flag to field metadata here too.
6. Fix the integration server and any user code to read the path from the unified accessor and to match custom error types with `errors.As`.

The generated-file edits (step 5) are the largest but are mechanical once steps 1–2 fix the runtime API they call.

## Pitfalls

- Forgetting a call site: the coercion template, the per-server generated marshalling functions, the directive-type assertions, and `AddError`/recover all need the helper. Fixing only the presenter, or only the template, leaves whole classes of errors (e.g. directive argument type mismatches, null-bubbling) with a wrong or missing path.
- Leaving the presenter to also set the path. If both the creation-time helper and the presenter stamp the path, a path attached at the true error site gets clobbered by the field context at presentation time, silently reintroducing the original bug for nested-input and index cases — and the tests that check exact paths will still fail.
- Double-wrapping index frames: list-element coercion must push exactly one index frame per level. If an inner coercion call already wrapped-and-pathed the error and the outer call wraps again, the index appears twice or the field path is duplicated.
- Mishandling `nil`: the helper is called on the ordinary success return of coercion; if it does not short-circuit `nil` it will fabricate spurious errors.
- Using a plain type assertion instead of unwrap-aware matching when setting the path on an existing GraphQL error, or when integration code identifies its custom error — wrapped errors will be missed, so their path or user message is lost.
- Assuming the presenter still needs the context/field imports: simplifying it changes its dependencies, and stale path-derivation logic left behind will keep the old behaviour alive.

## Provenance

```yaml
uuid: c8b3b90a-9774-4cd7-a7ea-8f956574be0f
instance_id: 99designs__gqlgen-1295
fix_patch_sha256: 5f39bfa4d090975b071d09d62cddc7af020f8cfd836d42e36a448825a600cf58
language: go
targets_total: 155
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
