# TRUTH.md - clap-rs__clap-3955

## Defect

The milestone bundles 2 announced issue(s):
1. (#3955): docs: reduce the need to guess
2. (#3959): Error with multiple flags and positional arguments

The reference change touches 5 file(s) in rust. 26 target test(s) observe the result and 1593 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 3 file(s):

- `src/parser/parser.rs`
- `src/lib.rs`
- `Cargo.toml`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (26) and confirm the preserve set (1593) still passes.

## Root cause

The reference diff on the parser file shows the positional-counter correction block being removed and re-added with identical content — meaning the actual logic did not change. What broke, and what the tests observe, is unrelated to positional parsing: the failing set is dominated by derive-macro and documentation/UI tests (`group_macro*`, `arg_impl::*`, `quoted_*`, `ui_tests`, `basic`, `multiarg`). These fail because the crate's advertised doc-comment quickstart and the package version metadata are out of sync with what the compiled documentation and trybuild-style UI snapshots expect.

Specifically, the top-of-crate module documentation demonstrates adding the dependency with a flag spelling and phrasing that no longer matches the canonical form the doctests/UI harness compares against, and the package version string is one patch behind. Since the UI and doctest harnesses assert on exact rendered output (including doc examples and version-derived text), any drift between the source comments/version and the expected fixtures makes those tests fail even though runtime parsing behaviour is correct.

## Solution shape

Any correct fix must bring the crate's declared version and its introductory documentation into agreement with what the test fixtures expect, without altering parser semantics.

- The package version metadata must be bumped by one patch level so version-dependent output matches the harness expectation.
- The crate-level quickstart prose must use the long-form spelling of the feature-enabling flag rather than the short single-dash form, and the surrounding narrative lines must read as complete "then define ... / and try it out" style instructions that the doc fixtures compare against.
- The positional-parsing block must be left semantically identical; do not attempt to "fix" it, because it is not the defect.

Property to end with: rebuilding docs and running the UI/doctest harness produces output byte-identical to the recorded fixtures, and no parser test changes behaviour.

## Ordered plan

1. Run the failing set and notice the shape: almost none of them are parser tests. This tells you the defect is in metadata/documentation, not logic, so do not start reading the parser hot path.
2. Locate the version string in the package manifest and compare it to what the harness expects; bump it by one patch. This must come first because several UI/version tests key off it and will keep failing regardless of doc changes.
3. Open the crate-level module documentation and find the quickstart example. Replace the short-dash feature flag spelling with the long `--features` form, and reword the "then/and try it out" instructional lines to the complete phrasing. The doc example and `ui_tests` depend on this exact rendering.
4. Confirm the positional-counter correction block is unchanged in behaviour — treat it as a no-op region and leave its logic intact.
5. Rebuild documentation and rerun the UI/doctest harness so the snapshot comparison passes, then run the full suite to confirm the 1593 other tests still pass.

Step 2 gates the version-sensitive tests; step 3 gates the doc/UI snapshot tests; they are independent of each other but both must be done before the harness can be green.

## Pitfalls

- Being seduced by the large parser block in the diff and rewriting positional logic. The block is byte-identical before and after; changing it risks breaking `multiple_values::low_index_positional_with_extra_flags` and the ~1593 passing tests for no benefit.
- Editing the doc example prose but keeping the short single-dash feature flag form (or vice versa). The snapshot compares the whole example region, so a partial update still mismatches.
- Bumping the version to the wrong level (minor instead of patch, or skipping a number). The expected value is exactly one patch increment; any other value keeps the version-sensitive UI tests red.
- Adjusting the expected fixtures under the test tree to match the current source instead of fixing the source — that makes the tests agree with the stale state rather than the intended one.

## Provenance

```yaml
uuid: 85aa814e-2b16-41ed-8e06-3a1ac1ec3cd4
instance_id: clap-rs__clap-3955
fix_patch_sha256: 93810af1fd1d1f35e78d1a63ae475d365ca75e99058b4835976b3d8eaa72fc2e
language: rust
targets_total: 26
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
