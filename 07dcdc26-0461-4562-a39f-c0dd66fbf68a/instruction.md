I've uploaded a Go code repository in the directory /workspace/lazygit. Consider the following issue description:

<issue_description>
# Security fix: avoid using `${{ }}` variable interpolation in `run:` steps

## Issue 1 (#5487): Security fix: avoid using `${{ }}` variable interpolation in `run:` steps

## Summary
Fix high severity security issue in `.github/workflows/release.yml`.

## Vulnerability
| Field | Value |
|-------|-------|
| **ID** | yaml.github-actions.security.run-shell-injection.run-shell-injection |
| **Severity** | HIGH |
| **Scanner** | semgrep |
| **Rule** | `yaml.github-actions.security.run-shell-injection.run-shell-injection` |
| **File** | `.github/workflows/release.yml:113` |

**Description**: Using variable interpolation `${{...}}` with `github` context data in a `run:` step could allow an attacker to inject their own code into the runner. This would allow them to steal secrets and code. `github` context data can have arbitrary user input and should be treated as untrusted. Instead, use an intermediate environment variable with `env:` to store the data and use the environment variable in the `run:` script. Be sure to use double-quotes the environment variable, like this: "$ENVVAR".

## Changes
- `.github/workflows/release.yml`

## Verification
- [x] Build passes
- [x] Scanner re-scan confirms fix
- [x] LLM code review passed

---
*Automated security fix by [OrbisAI Security](https://orbisappsec.com)*

## Issue 2 (#5490): Add a justfile

Just (https://just.systems/) works better than make for running commands. For example, passing arguments to `make integration-test-cli` requires a `--` between make's arguments and the cli test runner's arguments (e.g. -sandbox), and will also result in weird errors. Just doesn't have any of these problems.

I chose different target names than we use in the Makefile; the goal is to have better tab completion, where the most commonly used commands can be completed after typing a single letter. That's why I use "e2e" for integration tests, which is not a term we use anywhere else.

Keeping the Makefile around for those who are used to it, and are too lazy to install just.

## Issue 3 (#5494): PR integration fails to map local branch when remote URL casing differs from upstream

### Describe the bug
In 0.61.0, the new pull request integration successfully fetches PR data via the gh CLI in the background (confirmed via --logs), but fails to link those PRs to local branches if the local git remote URL has a different casing than the upstream GitHub organization or user name. 

Because of this case-sensitive string matching, the PR icon does not appear in the branches panel, and pressing Shift + G fails with the error: "no pull req found on this branch", even though the PR is actively open and tracked.

### To Reproduce
Steps to reproduce the behavior:

1. Clone this public repository using a lowercase remote URL:
`git clone https://github.com/ntut-npc/tattoo`
2. Navigate into the directory and checkout a branch that has an active PR:
`cd tattoo && git checkout feature/feature-flags`
3. Open Lazygit.
4. Observe that the PR icon is missing in the local branches panel. Pressing Shift + G yields "no pull req found on this branch".
5. Change the remote to match the uppercase API format:
`git remote set-url origin https://github.com/NTUT-NPC/tattoo`
6. Restart Lazygit and observe the PR icon instantly appears.

### Expected behavior
Lazygit should perform a case-insensitive comparison when matching local remotes to the GitHub API payload. GitHub treats usernames, organization names, and repository URLs as inherently case-insensitive, so a local remote pointing to ntut-npc/tattoo should correctly map to the API payload for NTUT-NPC/tattoo.

### Screenshots

<img width="915" height="639" alt="Image" src="https://github.com/user-attachments/assets/fad5e530-ea5c-4fcb-aee7-40f6d1f415b6" />

<img width="915" height="638" alt="Image" src="https://github.com/user-attachments/assets/3715f92e-9de6-40c9-8876-a4c8082b9c98" />

### Version info:
commit=, build date=, build source=Homebrew, version=0.61.0, os=darwin, arch=arm64, git version=2.50.1 (Apple Git-155)

### Terminal info:
Ghostty 1.3.1 on macOS 26.4

### Additional context
When running `lazygit --logs` while experiencing the bug, the logs clearly show that the PRs are being successfully fetched in the background, proving the `gh` CLI context is working:

```text
Apr 10 01:54:43 |INFO| git config --local --get-regexp remote\..*\.gh-resolved (7.045791ms)
Apr 10 01:54:43 |ERRO| <no msg> command="git config --local --get-regexp remote\\..*\\.gh-resolved"
Apr 10 01:54:44 |INFO| Fetched 3 PRs in 436.663916ms
...
Apr 10 01:54:45 |INFO| Fetched 3 PRs in 372.520209ms
```

## Issue 4 (#5498): Change contribution policy

## Issue 5 (#5501): Hide closed pull requests on main branches

The assumption is that if a pull request exists on a main branch, it was usually created by mistake and then closed, and showing it serves no purpose and is only distracting.

We keep showing _open_ pull requests for main branches though, because this allows you to notice that there is one that you probably want to close.

This only affects the display (in the branches list and in the main view); opening the PR in the browser using shift-G is still possible, as is copying its URL to the clipboard.

## Issue 6 (#5507): Add a warning about adding new config options

## Issue 7 (#5508): Don't default the base repo for pull requests to "origin"

When no base repository is configured using gh, we have several heuristics for choosing a likely base repo before prompting the user. One of these was that if the origin remote exists, we'd choose that. This may be the right choice in some cases, but in many others it's not; for example, in the common scenario of a forking setup where the upstream repo's remote is called after its owner, and the fork remote is called origin, we would choose origin as the base repo, which results in not showing any PRs. Don't do that, and instead prompt the user for the base repo in this case.

## Repository Information
- **Repository**: jesseduffield/lazygit
- **Pull Request**: #5487
- **Base Commit**: `bb5d5f2deb88d495b4613328816fbfea954ba9bc`

## Related Issues
- https://github.com/jesseduffield/lazygit/issues/5487
- https://github.com/jesseduffield/lazygit/issues/5490
- https://github.com/jesseduffield/lazygit/issues/5494
- https://github.com/jesseduffield/lazygit/issues/5498
- https://github.com/jesseduffield/lazygit/issues/5501
- https://github.com/jesseduffield/lazygit/issues/5507
- https://github.com/jesseduffield/lazygit/issues/5508
</issue_description>

Can you help me implement the necessary changes to the repository so that the requirements specified in the <issue_description> are met?
I've already taken care of all changes to any of the test files described in the <issue_description>. This means you MUST NOT modify the testing logic or any of the tests in any way!
Also the development Go environment is already set up for you (i.e., all dependencies already installed), so you don't need to install other packages.
Your task is to make the minimal changes to non-test files in the /workspace/lazygit directory to ensure the <issue_description> is satisfied.

Follow these phases to resolve the issue:

Phase 1. READING: read the problem and reword it in clearer terms
   1.1 If there are code or config snippets. Express in words any best practices or conventions in them.
   1.2 Highlight message errors, method names, variables, file names, stack traces, and technical details.
   1.3 Explain the problem in clear terms.
   1.4 Enumerate the steps to reproduce the problem.
   1.5 Highlight any best practices to take into account when testing and fixing the issue.

Phase 2. RUNNING: install and run the tests on the repository
   2.1 Follow the readme.
   2.2 Install the environment and anything needed.
   2.3 Iterate and figure out how to run the tests.

Phase 3. EXPLORATION: find the files that are related to the problem and possible solutions
   3.1 Use `grep` to search for relevant methods, classes, keywords and error messages.
   3.2 Identify all files related to the problem statement.
   3.3 Propose the methods and files to fix the issue and explain why.
   3.4 From the possible file locations, select the most likely location to fix the issue.

Phase 4. TEST CREATION: before implementing any fix, create a script to reproduce and verify the issue
   4.1 Look at existing test files in the repository to understand the test format/structure.
   4.2 Create a minimal reproduction script that reproduces the located issue.
   4.3 Run the reproduction script with `go run <filename.go>` to confirm you are reproducing the issue.
   4.4 Adjust the reproduction script as necessary.

Phase 5. FIX ANALYSIS: state clearly the problem and how to fix it
   5.1 State clearly what the problem is.
   5.2 State clearly where the problem is located.
   5.3 State clearly how the test reproduces the issue.
   5.4 State clearly the best practices to take into account in the fix.
   5.5 State clearly how to fix the problem.

Phase 6. FIX IMPLEMENTATION: Edit the source code to implement your chosen solution.
   6.1 Make minimal, focused changes to fix the issue.

Phase 7. VERIFICATION: Test your implementation thoroughly.
   7.1 Run your reproduction script to verify the fix works.
   7.2 Add edge cases to your test script to ensure comprehensive coverage.
   7.3 Run existing tests related to the modified code with `go test ./...` to ensure you haven't broken anything.

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit bb5d5f2deb88d495b4613328816fbfea954ba9bc.
   8.1 Ensure you've fully addressed all requirements.
   8.2 Run any tests in the repository related to:
      8.2.1 The issue you are fixing
      8.2.2 The files you modified
      8.2.3 The functions you changed
   8.3 If any tests fail, revise your implementation until all tests pass.

Be thorough in your exploration, testing, and reasoning. It's fine if your thinking process is lengthy - quality and completeness are more important than brevity.

IMPORTANT CONSTRAINTS:
- ONLY modify files within the /workspace/lazygit directory
- DO NOT navigate outside this directory (no `cd ..` or absolute paths to other locations)
- DO NOT create, modify, or delete any files outside the repository
- All your changes must be trackable by `git diff` within the repository
- If you need to create test files, create them inside the repository directory