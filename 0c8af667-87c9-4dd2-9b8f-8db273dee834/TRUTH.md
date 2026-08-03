# TRUTH.md - vueuse__vueuse-3015

## Defect

The milestone bundles 10 announced issue(s):
1. (#123): feat: Add useMutationObserver
2. (#3021): feat(useImage): support more image properties
3. (#3024): fix(usePrecision): improve flooting point accuracy
4. (#3027): docs: fix typo
5. (#3029): chore: typo
6. (#3019): useInfiniteScroll v10 behavior differs from v9 - Scrolling to the edge triggers an infinite event.
7. (#3035): feat(useEventSource): allow optional string | URL type for url arg
8. (#3037): docs(useEventListener): add note for usage in SSR
9. (#3042): fix: temporarily work around the type error in vue 3.3
10. (#3046): useDrauu committed event not passing correct args

The reference change touches 31 file(s) in typescript. 4 target test(s) observe the result and 142 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `packages/core/useScroll/index.ts`
- `packages/math/usePrecision/index.ts`
- `packages/core/useImage/index.ts`
- `packages/core/createReusableTemplate/index.ts`
- `packages/core/useFetch/index.ts`
- `packages/core/useImage/component.ts`
- `packages/integrations/useDrauu/index.ts`
- `packages/core/createTemplatePromise/index.ts`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (4) and confirm the preserve set (142) still passes.

## Root cause

The precision helper multiplies a value by a power of ten and then rounds, dividing back down. The intermediate multiplication is done directly in IEEE‑754 floating point. When the input already carries a fractional part, multiplying it by the scaling factor lands on a value that cannot be represented exactly, so the product is slightly above or below the mathematically correct number. Rounding then snaps to the wrong integer, and the final division reproduces the error. The classic manifestation is a value whose decimal expansion is a repeating binary fraction: after scaling it sits at, say, `…4999999` instead of `…5`, so rounding drops a digit the caller expected to keep. The function therefore returns a number that is off in the last place for inputs that look like they should round cleanly.

## Solution shape

The scaling step must avoid introducing floating‑point drift before the rounding decision is made. Any correct fix ensures that, for a positive value with a fractional part, the multiplication that positions the value for rounding is carried out on integers (or otherwise on quantities that are exactly representable) rather than on the raw fractional float.

Conceptually:

```
scaled = value * power
  when value is positive and has fractional digits:
    lift value to an integer by the smallest power of ten
    that clears its decimals, multiply by power there,
    then bring it back down by the same factor
```

The property the code must end up with: `precision(v, digits)` returns the same result a human would get rounding the exact decimal `v` to `digits` places, not the result of rounding a float that has already accumulated error. Integer‑valued or already‑exact inputs must pass through unchanged, so the special handling is guarded by "has a fractional component" and does not alter existing correct cases. The public signature and the rounding‑mode selection (round/ceil/floor) stay the same.

## Ordered plan

1. Reproduce the failure first: feed the helper an input that rounds wrong under naive float scaling and confirm the returned value is off by one in the last kept digit. This tells you the defect is in the scaling, not the rounding mode or the divide‑back.
2. Isolate the multiplication that feeds the rounding call. Establish that the error is present *before* rounding by inspecting the product for a fractional input — this rules out the mode lookup and confirms where to intervene.
3. Replace that multiplication with a routine that detects a fractional positive input, determines how many decimal places it has, scales it up to an integer, applies the power there, and scales back. Non‑fractional or non‑positive inputs must take the untouched path.
4. Feed the new product into the same rounding‑and‑divide tail; do not touch the mode selection or the final division, since those were correct.
5. Re‑run the whole precision suite plus the transition, time‑ago, and throttled‑watch tests that depend on it, confirming previously passing cases still pass and the reproduced case now matches expectation.

Step 3 depends on 2 because you must confirm the drift is upstream of rounding before deciding to fix the scaling; step 5 depends on 4 because the guard for the untouched path is what protects the 142 unrelated cases.

## Pitfalls

- Reading the decimal‑place count from the wrong string form. Using an exponential or locale‑formatted rendering of the number, rather than its plain decimal text, will miscount places for large or very small values and either overflow the lift factor or skip the correction entirely.
- Applying the integer‑lift unconditionally. Values with no fractional part, or negative values, should keep the original behaviour; widening the special case to everything can perturb inputs that were already correct and break the unrelated suites.
- Fixing only the exact reproduced literal by nudging the rounding mode or adding an epsilon before rounding. That makes the one named assertion agree while leaving every other fractional input still subject to drift — it aligns the test with the bug rather than removing it.
- Assuming the divide‑back cancels the error. The final division by the power does not undo a rounding that already committed to the wrong integer; the correction has to happen before rounding, not after.
- Lifting by a factor that itself overflows exact integer range for inputs with many decimal places, reintroducing float error through the back door. The correction is only sound while the lifted value stays exactly representable.

## Provenance

```yaml
uuid: 0c8af667-87c9-4dd2-9b8f-8db273dee834
instance_id: vueuse__vueuse-3015
fix_patch_sha256: 073fdb7025fe077815e8ecfa3f34f7549c35132cd4db33ee80d3911cc05924f7
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
