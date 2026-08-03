# TRUTH.md - clap-rs__clap-4684

## Defect

The milestone bundles 5 announced issue(s):
1. (#4683): Clippy cleanup
2. (#4694): docs(examples): Differentiate struct from command name
3. (#4696): Fix typo in example git.rs
4. (#4710): fix(help): Don't accidentally show long help with `--help` when it isn't intended.
5. (#4711): Improve builder::str::inner::Inner::into_string implementation

The reference change touches 57 file(s) in rust. 21 target test(s) observe the result and 828 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `src/builder/command.rs`
- `src/builder/debug_asserts.rs`
- `clap_complete/src/shells/zsh.rs`
- `src/output/help_template.rs`
- `clap_mangen/src/render.rs`
- `clap_complete/src/shells/elvish.rs`
- `clap_complete/src/shells/bash.rs`
- `clap_complete/src/shells/fish.rs`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (21) and confirm the preserve set (828) still passes.

## Root cause

There are two distinct things going on in this change, and only one of them is a behavioural defect.

The overwhelming majority of the edits are pure syntactic modernization: converting positional `format!`/`write!`/`panic!` arguments into inline captured identifiers (e.g. interpolating a variable directly inside the format string rather than passing it as a trailing argument). These edits do not change runtime behaviour at all. They exist because the crate's lint configuration (a clippy `uninlined_format_args` policy, enforced in CI) rejects the old style. On their own they would not move any of the listed tests from failing to passing — they keep the build/lint gate green.

The single behavioural defect lives in the help-template logic that decides whether an argument's possible values should be printed with their per-value help text (the "should show help for possible values" predicate, used to produce output like `[possible values: a: ..., b: ...]` versus rendering them inline). The condition that gates this was written as a disjunction of "does this arg have long help / hidden-long-help / hidden-short-help / any possible-value that wants help". It omitted the fact that a *hidden* argument must never contribute this expanded, help-carrying rendering. Because the hidden flag was not part of the predicate, an argument that is marked hidden but which owns a possible value that carries help text would still be treated as needing the help-expanded layout. The result is that hidden arguments leak their possible-value help into the generated help output, which is exactly what `hidden_arg_with_possible_value_with_help` observes as wrong.

## Solution shape

Two independent properties must hold at the end:

1. **Lint conformance.** Every `format!`, `write!`, `panic!` (and similar) macro invocation across the affected modules must use captured/inlined arguments where a bare identifier is being formatted, so the `uninlined_format_args` gate passes. This is mechanical and must be applied everywhere the old positional style appears in the touched files — the completion generators (bash, fish, zsh, elvish), the man-page renderer, the command builder, the debug asserts, and the help template. Missing even one site keeps CI red, which is why so many files move together.

2. **Hidden args suppress possible-value help.** The predicate that decides whether an argument warrants the help-expanded possible-value rendering must gain a guard: if the argument is hidden, the predicate is false regardless of the other conditions. Equivalently:

   ```
   wants_pv_help = (not arg.is_hidden)
                   and (has_long_help
                        or hide_long_help_set
                        or hide_short_help_set
                        or any possible_value wants its help shown)
   ```

   The existing disjunction becomes the second operand of an `and` whose first operand is the negation of the hidden flag. Placement is in the help-template module, in the same function that currently builds this decision.

Only property 2 changes observable behaviour; property 1 is what makes the whole diff compile-and-lint under the project's standards.

## Ordered plan

1. Reproduce the real failure first. Build and run `hidden_arg_with_possible_value_with_help`. It compares generated help text and will show a hidden argument's possible-value help appearing when it should be absent. This isolates the *behavioural* defect from the mass of cosmetic edits, so you know exactly one predicate is wrong.

2. Locate the possible-value-help decision in the help-template code. Confirm it is a bare disjunction with no hidden-arg check. Add the hidden-arg guard as a conjunction wrapping the existing disjunction. Re-run the failing test; it should now pass, and this step alone is the entire behavioural fix.

3. Now understand why the rest of the listed tests fail. They are broad suites (`ui_tests`, `example_tests`, the whole `arg::*` and `arg_impl::*` families). These fail not on assertions but because the crate does not build/lint cleanly under the project's clippy gate once you touch these files — or because the CI lint policy was tightened. Run the lint the project enforces.

4. Apply the inline-format-argument conversion to every offending macro call in the touched modules. Do this after the behavioural fix so that a lint failure you see is clearly a *remaining* uninlined site, not the defect. Work module by module (command builder, debug asserts, help template, man renderer, and each of the four shell completion generators) so you can re-lint incrementally and see the count of violations drop to zero.

5. Re-run the full suite. The behavioural test and the broad suites should all pass together only once both the predicate fix (step 2) and complete lint conformance (step 4) are in place.

The dependency is: step 2 is independent of the lint work and fixes the one real behaviour; steps 3–4 gate whether the code even reaches a passing state under the project's checks. Doing the lint pass before understanding step 3 wastes effort guessing which edits matter.

## Pitfalls

- **Treating this as "just a formatting cleanup."** If you only do the mechanical inline-format conversions, `hidden_arg_with_possible_value_with_help` still fails — the hidden-arg guard is the only edit that changes output. Conversely, if you only add the guard, the broad suites may still fail on lint. Both are required.

- **Placing the hidden guard as another disjunct instead of a conjunct.** Adding "or is-hidden" would make hidden args *more* likely to show help, the opposite of intended. The hidden check must gate the whole existing expression via `and (not hidden)`, so hidden always wins and forces the predicate false.

- **Guarding the wrong hidden flag.** There are several related concealment flags (hidden-long-help, hidden-short-help) that already appear inside the disjunction and legitimately *enable* the expanded layout. The new guard is the general "argument is hidden" flag, not those; do not confuse them, and do not remove the existing hide-long/hide-short disjuncts.

- **Missing a single uninlined macro site.** The lint is all-or-nothing: one leftover positional `format!` in any of the eight files keeps the gate red and the broad suites failing. In particular the completion generators contain multiple near-identical `format!("-{}", short)`-style calls in both the short and long branches; skipping the duplicate branch is easy.

- **Over-collapsing a format call and changing its output.** Some conversions sit next to whitespace or punctuation (e.g. a trailing space after a short flag, or brace-escaping in a subcommand-name expression). Inline the identifier without altering the literal text around it; a dropped space or a mis-escaped brace changes generated shell/man output and breaks `ui_tests`/`example_tests` snapshots even though the code compiles.

## Provenance

```yaml
uuid: bf8c0c94-a7a9-4a23-b7e2-ea83aa727cc4
instance_id: clap-rs__clap-4684
fix_patch_sha256: bb58f7124adcc10d60f41523bd207be4bdff2757d8fb88a44c3f8de276fe10a1
language: rust
targets_total: 21
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
