# TRUTH.md - babel__babel-13905

## Defect

The milestone bundles 3 announced issue(s):
1. (#13905): babel-parser: add missing assertions type
2. (#13909): Fix "e2e-babel" Babel 8 test
3. (#13907): [Bug]: Cannot read properties of undefined (reading 'constantViolations')

The reference change touches 8 file(s) in typescript. 4 target test(s) observe the result and 14855 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 2 file(s):

- `packages/babel-plugin-bugfix-safari-id-destructuring-collision-in-function-expression/src/util.ts`
- `packages/babel-parser/src/types.js`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (4) and confirm the preserve set (14855) still passes.

## Root cause

The plugin exists to work around a Safari bug involving a named function expression whose id collides with a destructuring binding in its own parameter list. To decide whether the workaround applies, it looks up the function id's name in the function's own scope and inspects the binding it finds.

The lookup code assumes two things that aren't always true:

1. That a binding for the function id name always exists in scope. When the function id was synthesized by another transform — for example the helper that assigns inferred names to anonymous functions — the id node is marked so that scope tracking deliberately does not register it. A third-party plugin that injects an id without updating scope info produces the same situation. In these cases the binding lookup returns nothing, and the code then reaches into properties of that absent binding (its list of reassignments, then the first element of that list), which throws because the value is undefined.

2. That the way to tell "the id genuinely collides with a param destructuring" is to examine the binding's list of constant-violation nodes and check whether the first one is the id node itself. This conflates the true collision case with unrelated situations. A binding found under the id name might come from a `var` or inner declaration rather than from a parameter, and reasoning about it via the "constant violations" list is the wrong signal for "is this name a parameter."

So any program that runs this plugin over a function whose id was injected without scope registration crashes, and the classification of when to apply the workaround is built on a fragile proxy.

## Solution shape

The classification must be driven by two robust facts:

- **Absence must be handled first.** If no binding is found for the function id name, the workaround does not apply and nothing should be dereferenced. The code must return/skip before touching any property of the missing binding.
- **Presence must be qualified by binding kind.** When a binding does exist, the deciding question is whether that binding actually originates from a parameter. Only when the binding's kind identifies it as a parameter does the id genuinely collide with a param, and only then should the workaround proceed. Any other kind (a `var`, an inner binding that merely shares the name) is not a collision and must be skipped.

In pseudocode:

```
binding = functionScope.lookup(idName)
if binding is undefined: skip        // id not scope-tracked, or injected without scope update
if binding.kind != parameter: skip   // same name, but not from params
proceed with the Safari workaround
```

The old reliance on the constant-violation list and comparing its first entry to the id node should be gone entirely; it was a proxy for "is this a param," and the binding kind answers that directly and safely.

## Ordered plan

1. Reproduce the crash before changing logic. Construct the failing inputs the tests describe: a function whose id is injected by another plugin (both before and after the current plugin runs) and a function whose name is supplied by the inferred-name helper. Confirm the current code throws when dereferencing the missing binding. This tells you the primary failure is the unguarded property access, not a subtle mis-classification.

2. Guard the absence case. Add the early exit when the lookup yields nothing. This must come first because every later step assumes a real binding exists; without it the helper-name and injected-id tests still throw. Rerunning those three tests should now stop crashing.

3. Replace the collision test with a binding-kind check. Now that a binding is known to exist, decide applicability by asking whether it came from a parameter. This step depends on step 2 because the kind property is only meaningful once you know the binding is present. Removing the constant-violation logic at the same time avoids leaving a dead, misleading signal.

4. Run the full plugin test suite plus the broader corpus. The purpose is to confirm the kind-based test still triggers the workaround for the genuine collision cases (the reason the plugin exists) while the new guards silence the injected-id and helper-name cases. If a real collision fixture stops transforming, the kind check is too strict.

## Pitfalls

- **Guarding only against absence, not kind.** Adding the undefined check alone makes the three new tests pass but leaves the workaround firing for names that happen to match a `var` or inner declaration rather than a param. That is a narrower fix that passes the named tests and keeps the underlying mis-classification.

- **Keeping the constant-violation reasoning as a secondary condition.** If you retain the "first violation node equals the id node" check alongside the new logic, you preserve the fragile proxy and can still mis-handle functions where reassignments are recorded differently. The kind check is meant to supersede it, not join it.

- **Choosing the wrong "not a param" outcome.** When the binding kind is not a parameter, the correct behaviour is to skip the workaround, not to apply it. Inverting this makes the plugin rewrite functions it should leave alone, which will surface as regressions in the large passing-test corpus rather than in the three new tests.

- **Assuming the helper-injected id has any binding at all.** The inferred-name helper marks the id so scope tracking ignores it; do not try to "fix" that by forcing a binding to exist. The plugin must tolerate the id simply not being in scope.

- **Testing only one injection order.** The tests deliberately cover a plugin injecting the id both before and after this plugin runs. A fix that reads scope state at the wrong moment might pass one ordering and fail the other; the guards must hold regardless of when the untracked id appears.

## Provenance

```yaml
uuid: b7419275-8184-4485-9e8e-1404f64c1c38
instance_id: babel__babel-13905
fix_patch_sha256: 894551669bc399be610795ab0cb716bdfed4764e91f49353d7fd263baca41393
language: typescript
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
