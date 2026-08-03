# TRUTH.md - jesseduffield__lazygit-5487

## Defect

The milestone bundles 7 announced issue(s):
1. (#5487): Security fix: avoid using `${{ }}` variable interpolation in `run:` steps
2. (#5490): Add a justfile
3. (#5494): PR integration fails to map local branch when remote URL casing differs from upstream
4. (#5498): Change contribution policy
5. (#5501): Hide closed pull requests on main branches
6. (#5507): Add a warning about adding new config options
7. (#5508): Don't default the base repo for pull requests to "origin"

The reference change touches 8 file(s) in go. 3 target test(s) observe the result and 1022 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 5 file(s):

- `justfile`
- `pkg/gui/presentation/branches.go`
- `pkg/gui/controllers/helpers/refresh_helper.go`
- `pkg/commands/git_commands/github.go`
- `pkg/gui/controllers/branches_controller.go`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (3) and confirm the preserve set (1022) still passes.

## Root cause

When lazygit associates GitHub pull requests with local branches, it builds a lookup keyed on a pair of values: the repository owner and the branch name. The owner comes from two independent sources — the PR metadata returned by the GitHub API, and the parsed upstream URL of the local branch. GitHub treats owner names case-insensitively, so the same account can appear as, say, `Owner` in one place and `owner` in the other. Because the map key is constructed from the raw strings without normalizing case, two spellings of the same owner produce two distinct keys, and the lookup for a branch fails to find its PR even though one exists. The result is that PRs silently go unassociated whenever the casing of the owner differs between the API response and the branch's configured upstream.

A related consequence sits in the same URL-handling code: the host detection that decides whether a remote is a GitHub remote does a substring match against the URL, which is also casing-sensitive and can miss otherwise-valid GitHub URLs.

## Solution shape

Any correct fix must make the owner comparison case-insensitive at the point where the PR map is keyed and queried. The property the code must end up with:

- The key derived from PR metadata and the key derived from a branch's upstream owner must be equal whenever the two owners are the same account regardless of letter case. Concretely, fold both owner strings to a single case (e.g. lowercase) *before* they become part of the map key — both when populating the map and when looking a branch up in it. Folding only one side reintroduces the mismatch in the opposite direction, so both sides must be normalized.
- Branch name should keep its existing comparison semantics; only the owner is the case-insensitive component here (the failing test is specifically named for owner casing).

The host-detection check for GitHub URLs should likewise compare case-insensitively so that URLs with mixed-case hosts are still recognized.

## Ordered plan

1. Locate where the PR-to-branch map is built and where branches query it. There are exactly two spots that must agree: the loop that inserts PRs by their owner+branch, and the per-branch lookup that reads out of that map. Identifying both first matters because fixing only one leaves the keys still divergent.
2. Normalize the owner to a consistent case in *both* the insertion key and the lookup key. This is the change the failing test exercises — after this, a PR whose API owner differs only in case from the branch's upstream owner resolves correctly.
3. Run the targeted test for the map generation. Passing it confirms the two keys now collide as intended; a still-failing result means one of the two sites was missed.
4. Apply the same case-insensitive treatment to the GitHub URL host check, since it shares the same casing-sensitivity flaw in the same file and is trivial to overlook.
5. Run the full suite to confirm the 1022 other tests still pass — in particular nothing that depended on the raw-cased owner elsewhere.

## Pitfalls

- **Fixing only one side of the key.** If you lowercase the owner when building the map but leave the lookup querying with the raw upstream owner (or vice versa), the named test may pass or fail depending on which direction the casing differs in the fixture, but the general case stays broken. Both key constructions must fold case.
- **Over-normalizing the branch name.** The mismatch is in the owner, not the branch name. Lowercasing the branch name too could make unrelated tests that rely on exact branch-name matching behave differently, and it isn't what the defect requires.
- **Mutating the underlying strings instead of the key.** Fold case when composing the key value only; don't rewrite the owner stored on the PR or branch models, which other display or comparison logic may rely on in original case.
- **Ignoring the URL host check.** It's the same class of casing bug living next to the real fix; a mixed-case GitHub host would still be rejected if you leave it substring-matching case-sensitively.
- Note that the other edits bundled in this change (the main-branch PR-visibility gate that suppresses closed/merged PRs on main branches, the preference for an `upstream` remote, and the build-task file) are orthogonal to the failing test and are not what makes it pass — don't conflate them with the owner-casing fix when reasoning about the observable failure.

## Provenance

```yaml
uuid: 07dcdc26-0461-4562-a39f-c0dd66fbf68a
instance_id: jesseduffield__lazygit-5487
fix_patch_sha256: 14619a8f8ca3c6493465f3bdb1c53be16cc0a55b2237f28f3772cd207663aeba
language: go
targets_total: 3
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
