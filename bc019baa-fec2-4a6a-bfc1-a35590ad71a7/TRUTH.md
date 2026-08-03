# TRUTH.md - tailwindlabs__tailwindcss-8992

## Defect

The milestone bundles 8 announced issue(s):
1. (#8992): Remove class prefix in arbitrary variant that is used multiple times
2. Discussed in #8932
3. (#8996): Update eslint: 8.19.0 → 8.20.0 (minor)
4. (#9000): Centered the project name
5. (#8991): Custom color opacity in theme function
6. (#9025): Update prettier-plugin-tailwindcss: 0.1.12 → 0.1.13 (minor)
7. (#9023): When defining dash-prefixed utility classes in a @layer, using them in an @apply statement throws a build error
8. (#9035): Update autoprefixer: 10.4.7 → 10.4.8 (patch)

The reference change touches 7 file(s) in typescript. 6 target test(s) observe the result and 81 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 3 file(s):

- `src/lib/expandApplyAtRules.js`
- `src/lib/generateRules.js`
- `src/util/resolveConfig.js`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (6) and confirm the preserve set (81) still passes.

## Root cause

Three independent defects converge in the class-generation and apply pipeline.

**1. Arbitrary variant detection in rule generation.** When a variant is parsed, the code tracks whether it is an "arbitrary" variant with a boolean flag that is set to true whenever a bracketed segment is encountered. But that flag is set for *any* bracket syntax, including named arbitrary variants like `[&_p]:` used as a selector wrapper. The correct signal is narrower: only a variant whose *value* is genuinely arbitrary (an unrecognized inline value) should be flagged. Because the flag is over-eager, variants that merely use brackets to hold a selector get mislabeled, which downstream causes classes inside that variant to be prefixed when they should not be.

**2. Off-by-one in color/opacity path resolution.** When resolving a config value that may be a function (e.g. a color defined as a callback that receives an opacity placeholder), the guard decides whether to invoke the function based on the current index versus the path length. The strict `<` comparison excludes the final path segment, so when the function lives at the last position of the lookup path—and an alpha value is not present—the function is not called and the placeholder-or-function color is never materialized. The boundary must include the terminal index.

**3. Missing empty-parent guard in apply.** When `@apply` pulls in a rule and the referenced class does not match (or is filtered out), the inserted node can be removed, leaving its parent with no children. The apply code later reaches into the first child of that root unconditionally. With no children, that access yields undefined and the subsequent handling misbehaves—particularly for user utilities whose name starts with a dash, where the matching prunes the only rule.

## Solution shape

- **Variant flagging:** replace the coarse boolean-on-any-bracket logic with a per-variant decision that asks whether *that specific variant's value* is an arbitrary value. The property to preserve: a variant is only "arbitrary" when its value is truly an inline arbitrary value, not merely when brackets appear. Named selector-style bracketed variants must not be treated as arbitrary.

- **Path resolution boundary:** the condition that decides whether to call a function value must treat the last index of the path as valid, i.e. include the final segment (`index <= length - 1`) rather than stopping one short. Property: a function value sitting at the terminal path position with no alpha still gets invoked.

- **Apply empty-parent skip:** before the code assumes the processed root has a first child, check that it actually has children; if the only rule was removed, skip this iteration.

```
if root has no nodes:
    skip to next
```

## Ordered plan

1. Start from the three failing test groups and read what each asserts, because they map one-to-one to the three defects and tell you the boundaries. The arbitrary-variants test about not prefixing classes points at the variant flag; the opacity/color-function tests point at path resolution; the "apply a utility starting with a dash" test points at apply.

2. Fix the path-resolution boundary first—it is the most localized and its test (colors as function/placeholder with opacity) is self-contained. Confirm the color-function tests pass. This is independent of the other two, so doing it first isolates any interaction.

3. Fix the arbitrary-variant flag next. Change the flag to be derived from whether the variant's value is arbitrary rather than from bracket presence. Verify the "classes in the same arbitrary variant should not be prefixed" test passes and that no previously-passing arbitrary-variant tests regress—this is the risky one because it touches broadly-used generation logic.

4. Fix the apply empty-parent case last. It depends on nothing but is easiest to reason about once you've seen how a filtered/removed rule can leave a childless root. Add the guard that skips when there are no child nodes and confirm the dash-prefixed utility apply test passes.

5. Run the full suite to ensure the 81 other tests still pass; the variant change in step 3 is the one most likely to have collateral effects.

## Pitfalls

- **Fixing the variant flag by string-inspecting for brackets more cleverly.** The temptation is to keep the boolean and just tighten the bracket check. The real distinction is arbitrary *value* versus arbitrary *selector*; a purely textual bracket heuristic will still misclassify named selector variants. Delegate to the same predicate that already classifies arbitrary values.

- **Using `<=` incorrectly or off by another one.** The path boundary fix is a single-character change but easy to get wrong in the other direction—making the function fire for non-terminal segments that shouldn't invoke it. The intended effect is only to *include* the last index, keeping the alpha-present behavior intact.

- **Guarding apply with a truthiness check on the wrong object.** The empty case is specifically "the parent root has zero child nodes." Checking that the root itself exists, or catching an exception, papers over the mechanism; the correct condition is the absence of a first child so you skip rather than process an empty root.

- **Assuming the dash-prefixed apply test only needs the apply guard.** It exercises a utility whose name begins with `-`; make sure the empty-parent skip is what resolves it and you haven't masked a matching bug elsewhere. Verify by confirming the rule genuinely gets removed (leaving an empty parent) rather than never being matched.

- **Making the color test agree with the bug.** Do not adjust expected placeholder output to match a function that never ran; the fix must cause the function to be invoked and produce the resolved color.

## Provenance

```yaml
uuid: bc019baa-fec2-4a6a-bfc1-a35590ad71a7
instance_id: tailwindlabs__tailwindcss-8992
fix_patch_sha256: c3168d26766852d56b15413ae2423c8818fc2ed5d59d9c25636f165f802de0b6
language: typescript
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
