# TRUTH.md - 99designs__gqlgen-3296

## Defect

The milestone bundles 8 announced issue(s):
1. (#3296): chore(deps-dev): bump vite from 5.4.6 to 5.4.7 in /integration
2. (#3299): chore(deps): bump rollup from 4.21.0 to 4.22.4 in /integration in the npm_and_yarn group
3. (#3302): Handle common initialisms as the non-first word
4. (#3303): Add CSPs to list of common initialisms
5. (#3301): Bug found when generating schema including arrays of type Any
6. (#3305): Update subscriptions.md
7. (#3307): Update gqlparser to v2.5.17
8. (#3311): chore(deps-dev): bump vite from 5.4.7 to 5.4.8 in /integration

The reference change touches 26 file(s) in go. 6 target test(s) observe the result and 140 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `codegen/templates/templates.go`
- `codegen/config/binder.go`
- `_examples/config/schema.resolvers.go`
- `_examples/config/todo.resolvers.go`
- `_examples/config/user.resolvers.go`
- `_examples/enum/api/enum.go`
- `_examples/federation/accounts/graph/entity.resolvers.go`
- `_examples/federation/accounts/graph/schema.resolvers.go`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (6) and confirm the preserve set (140) still passes.

## Root cause

Two independent defects sit in the code-generation utilities.

The first is in the word-walking logic used to split identifiers into words for acronym handling. When the walker encounters a candidate abbreviation, it re-checks against the *original, whole* string rather than the *remaining* portion starting at the current word boundary. Concretely, it slices the first two characters of the entire input and reads a fixed absolute position (index 3) to decide whether the next character is uppercase. That test is only meaningful at the very start of the string; for any word that begins partway through the identifier, the comparison uses characters from the beginning of the string, not from the current word, so mid-identifier acronyms are mis-split or fail to be recognized. A case like `wordWalker-18` exercises a boundary where the acronym does not sit at offset 0, and the absolute-index logic produces the wrong split.

Additionally, the recognized-acronym set is incomplete: identifiers containing common initialisms (e.g. cloud-provider names) are not treated as single words, so `TestToGo` produces the wrong Go casing for them.

The second defect is in the type binder's nilability check. To decide whether a type is nilable (pointer, interface, map, slice, etc.), the code inspects the type's structure — but it does so without first stripping type aliases. Under a Go toolchain where an alias to an interface is *not* transparently unwrapped, the check sees an alias wrapper instead of the underlying interface and concludes the type is not nilable. So an alias to an interface, or a nested alias eventually resolving to an interface, is misclassified.

## Solution shape

Two properties must hold afterward.

Word walker: the acronym/uppercase test must be evaluated relative to the current word position, not against absolute offsets of the whole string. In pseudocode, when checking at word offset `w`:

```
rest = runes[w:]
if candidateWord == first-two-runes-of(rest)
   and not end-of-word
   and len(rest) > 3
   and isUpper(rest[3]):
       treat as acronym
```

Every index and slice in that check must be taken from `rest`, never from the original string. The set of known initialisms must also gain the missing entries so identifiers using them are cased as a single unit.

Binder nilability: before examining the type's shape, resolve away any alias layers so the underlying type is what gets inspected. This must use an unaliasing that works unconditionally across toolchain versions (i.e. always unwraps, not one that only unwraps under a specific Go release). A single alias and a chain of nested aliases must both reduce to their underlying interface and be reported as nilable.

## Ordered plan

1. Reproduce the two failing behaviors separately. Run the word-walker and casing tests to see the mis-split identifier, and the nilability tests to see the alias-to-interface being called non-nilable. This confirms they are unrelated and must both be addressed.

2. Fix the word walker first, because the casing test depends on it. Change the acronym check so all slicing and index reads come from the substring beginning at the current word boundary rather than from the head of the original string. Re-run the walker test; the boundary case that previously failed should now split correctly.

3. Add the missing initialisms to the recognized-word set. This depends on step 2 being correct, since the casing output combines both the split and the acronym table. Re-run the go-casing test.

4. Fix the binder independently. Insert an unconditional alias-resolution step ahead of the structural nilability inspection. Choose the unaliasing routine that always unwraps regardless of Go version — a version-gated one will silently do nothing on some toolchains and leave the bug. Re-run the nilability tests, including both the single-alias and nested-alias cases.

5. Regenerate or refresh the example outputs so the generated-file headers and any casing-affected generated code match the new behavior, keeping the 140 other tests green.

## Pitfalls

- In the word walker, fixing only the two-character prefix comparison but leaving the uppercase lookahead reading absolute index 3 (or vice versa) will pass some cases and fail others. All parts of the condition must be reindexed to the current-word substring together.

- Guarding the reindexing with a length check against the whole string instead of the remaining substring reintroduces out-of-range or wrong-position reads for late-in-string words.

- For the binder, using the version-conditional unalias helper looks correct and even compiles, but it only unwraps aliases on a newer Go release; on other toolchains it is a no-op and the alias-to-interface case still fails. The fix must always unwrap.

- Handling only a single alias layer will pass the direct-alias test but not the nested-alias one; the unwrap must reduce chains fully.

- Adding the new initialisms with the wrong casing key (not matching how the walker normalizes words before lookup) will leave them unrecognized even though the entries exist.

- Don't "fix" the walker by adjusting the expected value in the test to match the buggy split — the split itself is what's wrong.

## Provenance

```yaml
uuid: 3af7770f-59fd-4d93-ab3d-9ff8d9d5372b
instance_id: 99designs__gqlgen-3296
fix_patch_sha256: 274d52cdd5d77ef9279bab48a428f3d469f939ec14daa42ca5887968b1593dd5
language: go
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
