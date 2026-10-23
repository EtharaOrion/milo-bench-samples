# TRUTH.md - capnproto__capnproto-1069

## Defect

The milestone bundles 10 announced issue(s):
1. (#1069): Combine small writes together in TLS compatibility layer
2. (#1071): cmake: set CAPNP_INCLUDE_DIR
3. (#1072): Disable clang unreachable code warnings for known-unreachable code
4. (#1073): fastCaseCmp: workaround gcc -Wtautological-compare
5. (#1079): UBSAN violation in kj::Vector/ArrayBuilder? Also uninitialized variable in ArrayBuilder::disposer
6. (#1082): Fix TextCodec parse error formatting.
7. (#1083): Fix canceler.isEmpty() check in http-over-capnp
8. (#1088): Fix typo: mainline not mainlaine
9. (#1085): Canonicalization algorithm does not specify what the offset should be for lists with C = 0
10. (#1091): Fix WebSocket-over-RPC cancellation logic.

The reference change touches 16 file(s) in cpp. 2 target test(s) observe the result and 3 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `c++/src/capnp/serialize-text.c++`
- `c++/src/kj/compat/readiness-io.h`
- `c++/src/kj/compat/readiness-io.c++`
- `c++/src/capnp/layout.c++`
- `c++/src/capnp/compat/http-over-capnp.c++`
- `c++/src/kj/common.h`
- `c++/src/kj/compat/http.c++`
- `c++/src/kj/compat/tls.c++`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (2) and confirm the preserve set (3) still passes.

## Root cause

Several independent defects converge in this change, but the ones the two named test binaries actually observe are:

1. **Text-format error reporting throws malformed diagnostics.** When the text codec parses an expression and the lexer/parser reports an error, the error reporter builds a failure that only carries the raw byte offsets (start:end) of the problem. It does not translate those offsets into a line and column relative to the input, and it fabricates the exception without a sensible source-location string. Consumers that expect a diagnostic pointing at a line, with a column range relative to the start of that line, see wrong or unusable position information. The reporter also had no access to the original input text, so it *could not* compute line/column even if it wanted to — the byte offsets were dangling numbers with no frame of reference.

2. **Case-insensitive HTTP header comparison mishandles non-letters and mixed case.** The compile-time comparison branches on whether the *expected* character is a lowercase or uppercase ASCII letter and applies a different bit-mask in each branch, with no branch for characters that are neither. For a non-letter expected character the whole comparison collapsed incorrectly, and the asymmetric masking meant the folding was not truly case-insensitive for all inputs. Header matching therefore produced wrong results on certain inputs.

3. **`layout.c++`'s read of the global broken-cap factory is a data race under TSan.** The factory pointer is written with an atomic store but read as a plain load. Thread-sanitizer flags the mismatched access, so the sanitizer build of the test suite fails even though the logic is otherwise benign.

Because these live in the same test binaries (`capnp-heavy-tests-run`, `kj-tests-run`), all must be corrected for the suites to go green.

## Solution shape

- **Text error reporter must know its input and emit line-relative positions.** Give the reporter the original input string at construction. On error, walk the bytes preceding the start offset counting newlines to derive a 1-based line number and the byte offset of the line's start, then throw a recoverable exception whose location names the text input and whose message expresses the column range as offsets *relative to the line start*, not absolute byte offsets. Every place that constructs such a reporter (there are three: the standalone expression parse and the two lambdas that parse into a type/orphanage and into raw output) must pass the input through, and the lambdas can capture by reference so the reporter is constructed with the input in scope.

- **Case-insensitive char comparison must fold both operands.** Replace the two asymmetric letter branches with: if the expected char is *any* ASCII letter (upper or lower), compare by OR-ing both the actual and expected chars with the case bit so they fold to the same value; otherwise compare exactly. This removes the missing-non-letter branch and makes folding symmetric.

- **Global factory read must be atomic when the write is atomic.** Read the pointer through an atomic relaxed load (guarded to compilers that support the builtin, falling back to a plain read elsewhere) rather than dereferencing the plain variable. Rename/centralize the read so all uses go through it.

- **(Supporting, for the same binaries to build/pass cleanly)** the output-stream wrapper gains a "corking" mechanism so small writes can be batched and flushed together, and TLS write uses it; a macro is introduced to suppress unreachable-code warnings; and the http-over-capnp cancel wrapper takes a callable rather than an already-started promise so cancellation is checked before the operation begins.

The property the code must end up with: parsing invalid text yields a diagnostic with a correct 1-based line and a column range measured from that line's start; header comparison is genuinely case-insensitive and correct for non-letters; and the sanitizer build reports no race on the factory pointer.

## Ordered plan

1. **Run the two failing suites first to see which assertions fail and under which build.** The `layout` race only surfaces under thread-sanitizer, while the text and header defects are logic failures visible in any build. Knowing which is which tells you whether you're chasing a correctness bug or a sanitizer diagnostic.

2. **Fix the atomic read in `layout.c++`.** It's the most mechanical: make the read match the write's atomicity, guarded by compiler support. This clears the TSan failure independently of everything else, so do it early and re-run under the sanitizer to confirm that particular complaint is gone.

3. **Fix the header case-folding comparison.** Collapse the two letter branches into one that folds both sides; this is self-contained and its correctness is directly checked by the header-matching tests. Verify against inputs that include non-letters and mixed case.

4. **Fix the text error reporter last, because it's the largest structural change.** First thread the input string into the reporter's construction — this must be done at all three construction sites, so grep for every place the reporter is built. Then implement the newline-counting to produce line number and line-start offset, and emit the exception with line-relative column offsets. This depends on step's construction change: you cannot compute positions without the input in hand.

5. **Re-run both suites in a normal build and again under the sanitizer.** Only after all three are in place will both binaries pass. The text and header fixes are independent of each other; the layout fix is independent of both; but all three gate the same test targets, so none can be skipped.

## Pitfalls

- **Fixing only one of the three text-reporter construction sites.** There are three: the plain expression parser and two lambdas. If you thread the input into only the one your first failing assertion exercises, the others still construct a reporter with no input and will crash or misreport. Change all three, and note the lambdas must capture broadly enough (by reference) for the input to be in scope at construction.

- **Emitting absolute byte offsets as the column.** The temptingly small fix is to keep the raw start:end offsets and just wrap them in a nicer exception. But the column must be measured *from the start of the containing line*; forgetting to subtract the line-start offset produces numbers that look plausible but point past the line for any input with earlier newlines. Also remember line numbers are 1-based and the loop that finds newlines must not off-by-one the line-start (the column is 1-based too).

- **Only masking one operand in the header comparison.** If you fold the actual char but compare against the raw expected char (or vice versa), you reintroduce the asymmetry: it will pass for the exact-case test string but fail when the expected literal and the actual input differ in case direction. Fold *both* sides with the same bit.

- **Forgetting the non-letter branch.** A comparison that only handles letters will silently mismatch or over-match on digits, hyphens, etc., which appear in real header names. The exact-match fallback for non-letters is essential.

- **Reading the factory pointer atomically only in the read path but leaving a stray plain dereference elsewhere.** Route every consumer through the single atomic read; a lingering plain load elsewhere keeps TSan unhappy.

- **Assuming the corking/TLS and unreachable-code-macro pieces are optional.** They may look like unrelated refactors, but if the test binaries don't compile (e.g., a new warning treated as an error) or the TLS path regresses, the suites won't reach a passing state. They ride along in the same targets.

## Provenance

```yaml
uuid: ec97eba5-ac42-4aca-bded-2abf68f491a3
instance_id: capnproto__capnproto-1069
fix_patch_sha256: 01f15cc0a61bdb30ddfa74c42f4b29046a2674be7230cecb3aff48789aa2f171
language: cpp
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
