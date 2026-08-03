# TRUTH.md - numpy__numpy-15158

## Defect

The milestone bundles 13 announced issue(s):
1. (#15158): MAINT: Update pavement.py for towncrier.
2. (#15152): np.random.bit_generator broken at 1.18
3. (#15161): MAINT, DOC: Minor backports and updates for 1.18.x
4. (#15176): TST: Add assert_array_equal test for big integer arrays
5. (#15184): BUG: use tmp dir and check version for cython test (#15170)
6. (#15220): BUG: distutils: fix msvc+gfortran openblas handling corner case
7. (#15221): BUG: remove -std=c99 for c++ compilation (#15194)
8. (#15222): MAINT: unskip test on win32
9. (#15137): CI: shippable builds numpy twice
10. (#15245): MAINT: only add --std=c99 where needed
11. (#15246): BUG: lib: Fix handling of integer arrays by gradient.
12. (#15202): Test failures on Fedora
13. (#15250): REL: Prepare for the NumPy 1.18.1 release.

The reference change touches 25 file(s) in python. 16 target test(s) observe the result and 1284 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `tools/openblas_support.py`
- `pavement.py`
- `setup.py`
- `azure-pipelines.yml`
- `numpy/lib/function_base.py`
- `shippable.yml`
- `.travis.yml`
- `numpy/random/_examples/cython/setup.py`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (16) and confirm the preserve set (1284) still passes.

The tests that must flip all live in the gradient routine of the core library's `function_base` module. That is the only production-code change relevant to the grading harness; everything else in the reference change is release tooling, CI configuration, and build plumbing that the named tests do not exercise. Focus there.

## Root cause

`np.gradient` computes differences between adjacent samples of the input array and, when coordinate arrays are supplied, between adjacent coordinate values. It does this with subtraction (`np.diff`-style adjacent differencing) performed in the array's *own* dtype.

When the input `f` or a coordinate array `x` has an integer dtype, that subtraction is carried out in integer arithmetic, which for NumPy integers is modular (wraps around) rather than promoting to a wider type. Two situations expose this:

- **Unsigned integers, decreasing sequence:** subtracting a larger unsigned value from a smaller one underflows and wraps to a huge positive number instead of yielding a negative difference. A monotonically decreasing `uint` array therefore produces gradients with the wrong sign and magnitude.
- **Signed integers, large jump:** a difference between two adjacent samples that exceeds the type's range overflows and wraps, so the computed slope is nonsense even though every individual value fits in the type.

The existing code only converted the *output* to floating point at the end (choosing a floating output dtype), but the differencing that feeds that output already happened in integer space. By then the wrapping has already destroyed the values. The coordinate branch likewise inspected `distances` (the spacing derived from `x`) with `np.ndim` without ever converting an integer coordinate array to float before its own differences were taken.

So the failure is predictable: any integer `f` with an inter-sample jump near the type limit, or any decreasing unsigned `f`, or an integer coordinate array `x` with those same characteristics, gives a gradient computed from wrapped subtractions.

## Solution shape

The invariant the fixed code must have: **no adjacent-difference subtraction is ever performed on an integer dtype.** Every integer-valued array whose consecutive differences will be taken must be promoted to a floating type *before* the differencing, not after.

Concretely, in the gradient routine there are two arrays that get differenced and both must be guarded:

1. The sample values `f`. Before computing its per-axis differences, if its dtype is an integer subtype, cast it to a 64-bit float. The output dtype selection for the integer case must also settle on double rather than leaving it as the integer type.

2. The coordinate spacing derived from a supplied `x`. When `x` is given as an array, materialize it as an array and, if its dtype is integer, cast it to 64-bit float before its differences are used to form the spacing.

Pseudocode for the guard applied in both places:

```
if array.dtype is an integer subtype:
    array = array.astype(float64)
```

A fix that only converts the final output dtype, or only handles `f` but not the coordinate array (or vice versa), will leave half the named tests failing. Both the `test_f_*` cases (input values) and the `test_x_*` cases (coordinate values) must pass, which means both promotion sites are required.

## Ordered plan

1. **Reproduce and classify.** Run the failing tests and note they split into two families: `test_f_*` drives integer *values*, `test_x_*` drives integer *coordinates*. This tells you up front there are two distinct code paths to fix, not one.

2. **Locate the two subtraction sites in the gradient routine.** Find where consecutive differences of the sample array are taken and, separately, where the spacing between supplied coordinate values is computed. Each is a place integer wrap can occur. Confirm by inspecting the dtype flowing into each.

3. **Fix the coordinate path first**, because it also requires turning the coordinate input into an array before you can even test its dtype (the existing code inspected dimensionality with a bare `np.ndim`). Materialize the coordinate as an array, then promote to float64 if it is an integer type. Rerun the `test_x_*` cases; they should now pass while `test_f_*` may still fail.

4. **Fix the value path.** Before the sample differences are computed, promote integer `f` to float64, and ensure the output dtype chosen for the integer case is double. Rerun `test_f_*`.

5. **Run the full gradient test class and the surrounding suite** to confirm the float and complex paths, and the existing non-integer behaviour, are unchanged — the promotion must only fire for integer dtypes, so float/complex/datetime inputs must be untouched.

Step 3 precedes step 4 only because the coordinate path needs the array-ification change to be testable; otherwise the two are independent fixes of the same underlying rule.

## Pitfalls

- **Fixing only the output dtype.** Converting the gradient result to float at the end (which the pre-change code already did) does not help — the wrapping happens in the integer subtraction that precedes it. The promotion must occur *before* differencing.

- **Handling `f` but forgetting `x`, or the reverse.** The two test families target different arrays. A change that only touches sample values leaves every `test_x_*` case red, and one that only touches coordinates leaves every `test_f_*` red. Both promotion points are mandatory.

- **Promoting to a too-narrow float.** Using a lower-precision float could reintroduce loss for the large-jump `int64` case; 64-bit float is the safe target for these integer inputs.

- **Widening the promotion to all dtypes.** Casting unconditionally (including float32, complex, datetime, or object) would change results for the ~1284 tests that must keep passing. Gate the conversion strictly on "is this an integer subtype."

- **Signed-only or unsigned-only guards.** The unsigned decreasing case (underflow wrap) and the signed large-jump case (overflow wrap) are both integer-arithmetic failures; a check that special-cases unsigned underflow but not signed overflow (or vice versa) still fails half the `test_*_big_jump` / `test_*_decreasing` matrix. Test the general integer subtype, not a sign-specific symptom.

- **Assuming the coordinate is already an array.** The coordinate may arrive in a form where you cannot query `.dtype` or `.ndim` directly; convert it to an array first, then apply the same integer-to-float rule.

## Provenance

```yaml
uuid: 06c0f2a4-8eec-4bf3-824f-19be9c3106fd
instance_id: numpy__numpy-15158
fix_patch_sha256: 2b09dc24dcc5a67f8d0f24a7654c30f0bb12aabb72dff18d44a8614230e45b58
language: python
targets_total: 16
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
