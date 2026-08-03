# TRUTH.md - fastify__fastify-1882

## Defect

The milestone bundles 5 announced issue(s):
1. (#1881): Broken JSON Schema resolution
2. (#1886): Update concurrently to the latest version 🚀
3. (#1887): greenkeeper do not update lolex
4. (#1890): doc fix: add .headers to reply docs
5. (#1892): Reply status code

The reference change touches 5 file(s) in javascript. 2 target test(s) observe the result and 62 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 3 file(s):

- `lib/reply.js`
- `fastify.d.ts`
- `lib/schemas.js`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (2) and confirm the preserve set (62) still passes.

## Root cause

Two independent defects are bundled here.

First, the reply object exposes an accessor to *set* the response status code (via its `code` method) and to read it back, but it has no direct `statusCode` property mirroring the underlying HTTP response. Code — user handlers, plugins, or internal logic — that reads `reply.statusCode` gets `undefined`, and code that assigns `reply.statusCode = 200` sets a plain data property on the reply that never propagates to the real `res.statusCode`. The reply is meant to be a facade over the raw response, so the absence of this bridge means the status code the reply reports and the status code the socket actually sends can diverge.

Second, the `$ref` resolution logic in schema handling assumes every reference string contains a `#` fragment separator. It computes the referenced schema's id by slicing the string up to the index of `#`. When `indexOf('#')` returns `-1` (a bare reference with no fragment, e.g. a plain `$id` with no `#/...` suffix), slicing `0` to `-1` drops the final character of the id — or for short strings yields an empty/wrong id. The lookup then fails or resolves to the wrong schema, so any schema that references another schema by id without a fragment breaks.

## Solution shape

Two properties must hold:

1. On the reply prototype, `statusCode` must be a live view of the underlying response's status code. Reading it returns the current `res.statusCode`; writing it must route through the same path as the existing status-setting method so that headers/state stay consistent. Pseudocode:
   ```
   get statusCode  -> res.statusCode
   set statusCode(v) -> code(v)   // reuse existing setter, don't assign a raw field
   ```
   Assigning a plain property would reintroduce the divergence; it must be an accessor.

2. In `$ref` id extraction, only strip the fragment when a `#` is actually present. When there is no fragment, the whole reference string is the id.
   ```
   pos = ref.indexOf('#')
   id  = pos >= 0 ? ref.slice(0, pos) : ref
   ```

The type declaration additions (a schema-resolver setter and its function type) accompany the public API but are not what the two named tests exercise; they must remain type-valid so the compile check for other tests keeps passing.

## Ordered plan

1. Start with the reply defect because it is self-contained. Locate where the reply prototype defines its methods and confirm there is no `statusCode` member today. Add an accessor pair: getter delegating to the response, setter delegating to the existing code-setting method. This comes first because it has no interaction with schemas and the reply test verifies both directions (read reflects the response, write reaches the response).

2. Verify the reply test: it should assert that reading returns the response's value and that assignment changes what the response will send. If assignment does not propagate, you built a data property instead of an accessor.

3. Move to schema handling. Find the reference-resolution code that splits a `$ref` on `#`. Capture the fragment index once, then branch: fragment present → slice up to it; absent → use the whole string. The order matters because the schema test constructs a reference without a fragment and expects the full id to resolve.

4. Run the schema test with a fragmentless reference to confirm the id is no longer truncated.

5. Only after both behavioural fixes, add the public type declarations for the schema-resolver setter so the type-checked portions of the suite still compile. This is last because it is orthogonal to the runtime behaviour the two tests check.

## Pitfalls

- Setting `reply.statusCode` as a normal assignable field passes a naive "can I read it back" test but leaves the real response untouched — the setter must funnel through the existing status method, not store a private value.
- Using the reply's stored/default status instead of the response's actual `statusCode` in the getter means the two drift apart the moment anyone touches `res` directly; read straight from the response.
- In the `$ref` fix, guarding with a truthiness check on the index (`if (pos)`) rather than `pos >= 0` is wrong: a `#` at position 0 is falsy, so a purely-fragment reference would be misrouted. Compare against `-1` / use `>= 0`.
- Trimming a fixed number of trailing characters or blindly using the pre-`#` slice for the "no fragment" case reproduces the off-by-one that drops the last character; the branch must use the untouched original string.
- Forgetting the accompanying type declaration will not fail the two named tests but can break the 62 that must keep passing if any of them type-check the public interface.

## Provenance

```yaml
uuid: bb3167f2-79e5-4aa9-9e0d-7cf34b3420c0
instance_id: fastify__fastify-1882
fix_patch_sha256: 6428febaa9326e316e8f8dd931b07f708a1484d2f8d0216f9c70e91a8062be3d
language: javascript
targets_total: 2
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
