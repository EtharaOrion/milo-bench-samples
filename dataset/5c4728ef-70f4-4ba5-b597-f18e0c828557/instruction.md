I've uploaded a Python code repository in the directory /workspace/astropy. Consider the following issue description:

<issue_description>
# Backport PR #15282 on branch v5.3.x (Fix vounit formatting of fractions and powers)

## Issue 1 (#15288): Backport PR #15282 on branch v5.3.x (Fix vounit formatting of fractions and powers)

Backport PR #15282: Fix vounit formatting of fractions and powers

## Issue 2 (#15289): TST: s390x and ppc64le jobs fail to pull in numpy on v5.3.x

Example log: https://github.com/astropy/astropy/actions/runs/6110923286/job/16585031743

It should have grabbed a wheel but didn't. Maybe because NumPy stopped shipping wheels for these archs? Do we care for v5.3.x? I milestoned this issue so we remember to close it if we don't get to fixing it before we drop v5.3.x support altogether.

```
        Collecting numpy<2,>=1.25
          Downloading numpy-1.25.2.tar.gz (10.8 MB)
```

## Issue 3 (#15308): MNT: Bump actions/checkout from 3 to 4 in /.github/workflows (v5.3.x)

<!-- This comments are hidden when you submit the pull request,
so you do not need to remove them! -->

<!-- Please be sure to check out our contributing guidelines,
https://github.com/astropy/astropy/blob/main/CONTRIBUTING.md .
Please be sure to check out our code of conduct,
https://github.com/astropy/astropy/blob/main/CODE_OF_CONDUCT.md . -->

<!-- If you are new or need to be re-acquainted with Astropy
contributing workflow, please see
http://docs.astropy.org/en/latest/development/workflow/development_workflow.html .
There is even a practical example at
https://docs.astropy.org/en/latest/development/workflow/git_edit_workflow_examples.html#astropy-fix-example . -->

<!-- Please just have a quick search on GitHub to see if a similar
pull request has already been posted.
We have old closed pull requests that might provide useful code or ideas
that directly tie in with your pull request. -->

<!-- We have several automatic features that run when a pull request is open.
They can appear daunting but do not worry because maintainers will help
you navigate them, if necessary. -->

### Description
<!-- Provide a general description of what your pull request does.
Complete the following sentence and add relevant details as you see fit. -->

<!-- In addition please ensure that the pull request title is descriptive
and allows maintainers to infer the applicable subpackage(s). -->

<!-- READ THIS FOR MANUAL BACKPORT FROM A MAINTAINER:
Apply "skip-basebranch-check" label **before** you open the PR! -->

This pull request is to manually backport #15302

<!-- Optional opt-out -->

- [ ] By checking this box, the PR author has requested that maintainers do **NOT** use the "Squash and Merge" button. Maintainers should respect this when possible; however, the final decision is at the discretion of the maintainer that merges the PR.

## Issue 4 (#15324): Backport PR #15322 on branch v5.3.x (TST: test_find_invalid might also cause TimeoutError)

Backport PR #15322: TST: test_find_invalid might also cause TimeoutError

## Issue 5 (#15325): Backport PR #15320 on branch v5.3.x (TMP pin matplotlib as it breaks the docs)

Backport PR #15320: TMP pin matplotlib as it breaks the docs

## Issue 6 (#15330): Backport PR #15328 on branch v5.3.x (Try to fix example plot not working with matplotlib 3.8)

Backport PR #15328: Try to fix example plot not working with matplotlib 3.8

## Issue 7 (#15335): Backport PR #15326 on branch v5.3.x (TestMaskedQuantityInitialization: Fix initialization)

Backport PR #15326: TestMaskedQuantityInitialization: Fix initialization

## Issue 8 (#15340): Backport PR #15339 on branch v5.3.x (Attempt to fix wheel building), removed parallel-and-32bit job

Backport PR #15339: Attempt to fix wheel building

## Issue 9 (#15345): Backport PR #15341 on branch v5.3.x (DOC: Add cycler to intersphinx)

Backport PR #15341: DOC: Add cycler to intersphinx

## Issue 10 (#15349): Backport PR #15334 on branch v5.3.x (Add note to time documentation on format vs internal values)

Backport PR #15334: Add note to time documentation on format vs internal values

## Issue 11 (#15357): Backport PR #15355 on branch v5.3.x (TST: test_api_lookup also catches TimeoutError in CI)

Backport PR #15355: TST: test_api_lookup also catches TimeoutError in CI

## Issue 12 (#15361): Backport PR #15359 on branch v5.3.x (BUG: Close Gzipfile in votable/utils properly)

Backport PR #15359: BUG: Close Gzipfile in votable/utils properly

## Issue 13 (#15242): TST: Use test_all again in devdeps

I changed it to this in https://github.com/astropy/astropy/pull/15235 because not all packages catches up to numpy 2.0.dev breaking changes fast enough (e.g., https://github.com/skyfielders/python-skyfield/pull/896) and also Python 3.12.

https://github.com/astropy/astropy/blob/2dd07e3ba04267b906ba63219f89fada2808ddaf/tox.ini#L105

When numpy 2.0 and Python 3.12 both become stable and widely supported, maybe we can change it back to "test_all" for the devdeps job.

Blocked by:

* https://github.com/skyfielders/python-skyfield/issues/898

## Issue 14 (#15371): Backport PR #15298 on branch v5.3.x (Address ruff's DTZ003 rule violations)

<!-- This comments are hidden when you submit the pull request,
so you do not need to remove them! -->

<!-- Please be sure to check out our contributing guidelines,
https://github.com/astropy/astropy/blob/main/CONTRIBUTING.md .
Please be sure to check out our code of conduct,
https://github.com/astropy/astropy/blob/main/CODE_OF_CONDUCT.md . -->

<!-- If you are new or need to be re-acquainted with Astropy
contributing workflow, please see
http://docs.astropy.org/en/latest/development/workflow/development_workflow.html .
There is even a practical example at
https://docs.astropy.org/en/latest/development/workflow/git_edit_workflow_examples.html#astropy-fix-example . -->

<!-- Please just have a quick search on GitHub to see if a similar
pull request has already been posted.
We have old closed pull requests that might provide useful code or ideas
that directly tie in with your pull request. -->

<!-- We have several automatic features that run when a pull request is open.
They can appear daunting but do not worry because maintainers will help
you navigate them, if necessary. -->

### Description
<!-- Provide a general description of what your pull request does.
Complete the following sentence and add relevant details as you see fit. -->

<!-- In addition please ensure that the pull request title is descriptive
and allows maintainers to infer the applicable subpackage(s). -->

<!-- READ THIS FOR MANUAL BACKPORT FROM A MAINTAINER:
Apply "skip-basebranch-check" label **before** you open the PR! -->

This pull request is to manually backport https://github.com/astropy/astropy/pull/15298 . This is required for https://github.com/astropy/astropy/pull/15370 .

<!-- Optional opt-out -->

- [ ] By checking this box, the PR author has requested that maintainers do **NOT** use the "Squash and Merge" button. Maintainers should respect this when possible; however, the final decision is at the discretion of the maintainer that merges the PR.

## Issue 15 (#15383): Backport PR #15380 on branch v5.3.x (Ensure mask is properly accounted for in Masked.ptp())

Backport PR #15380: Ensure mask is properly accounted for in Masked.ptp()

## Issue 16 (#15389): Backport PR #15373 on branch v5.3.x (Raise a value error when dumping or loading numpy object arrays with yaml)

Backport PR #15373: Raise a value error when dumping or loading numpy object arrays with yaml

## Issue 17 (#15398): Backport PR #15368 on branch v5.3.x (Ensure the cm unit is only defined once.)

Backport PR #15368: Ensure the cm unit is only defined once.

## Issue 18 (#15407): Update IERS Earth rotation and leap second tables in v5.3.x

This is an automated update of the IERS Earth rotation and leap second tables to the v5.3.x branch.

:warning: Please close and re-open this pull request to trigger the CI :warning:

## Issue 19 (#15413): Backport PR #15409 on branch v5.3.x (Fix typo)

Backport PR #15409: Fix typo

## Issue 20 (#15416): TST: IETF_LEAP_SECOND_URL is broken

Example log: https://github.com/astropy/astropy/actions/runs/6388109971/job/17353063986

https://github.com/astropy/astropy/blob/fff1973f9cc62d318de10932b003d5775e914a7f/astropy/utils/iers/tests/test_leap_second.py#L221

https://www.ietf.org/timezones/data/leap-seconds.list goes to a page that says, "ietf.org is no longer serving this file."

## Issue 21 (#15424): Finalizing changelog for v5.3.4

<!-- These comments are hidden when you submit the pull request,
so you do not need to remove them! -->

<!-- Please be sure to check out our contributing guidelines,
https://github.com/astropy/astropy/blob/main/CONTRIBUTING.md .
Please be sure to check out our code of conduct,
https://github.com/astropy/astropy/blob/main/CODE_OF_CONDUCT.md . -->

<!-- If you are new or need to be re-acquainted with Astropy
contributing workflow, please see
http://docs.astropy.org/en/latest/development/workflow/development_workflow.html .
There is even a practical example at
https://docs.astropy.org/en/latest/development/workflow/git_edit_workflow_examples.html#astropy-fix-example . -->

<!-- Please just have a quick search on GitHub to see if a similar
pull request has already been posted.
We have old closed pull requests that might provide useful code or ideas
that directly tie in with your pull request. -->

<!-- We have several automatic features that run when a pull request is open.
They can appear daunting but do not worry because maintainers will help
you navigate them, if necessary. -->

### Description
<!-- Provide a general description of what your pull request does.
Complete the following sentence and add relevant details as you see fit. -->

<!-- In addition please ensure that the pull request title is descriptive
and allows maintainers to infer the applicable subpackage(s). -->

<!-- READ THIS FOR MANUAL BACKPORT FROM A MAINTAINER:
Apply "skip-basebranch-check" label **before** you open the PR! -->

This pull request is to address ...

<!-- If the pull request closes any open issues you can add this.
If you replace <Issue Number> with a number, GitHub will automatically link it.
If this pull request is unrelated to any issues, please remove
the following line. -->

Fixes #<Issue Number>

<!-- Optional opt-out -->

- [ ] By checking this box, the PR author has requested that maintainers do **NOT** use the "Squash and Merge" button. Maintainers should respect this when possible; however, the final decision is at the discretion of the maintainer that merges the PR.

## Repository Information
- **Repository**: astropy/astropy
- **Pull Request**: #15288
- **Base Commit**: `6258f070b71ab42cc6efd4a99345f332ff44ca98`

## Related Issues
- https://github.com/astropy/astropy/issues/15288
- https://github.com/astropy/astropy/issues/15289
- https://github.com/astropy/astropy/issues/15308
- https://github.com/astropy/astropy/issues/15324
- https://github.com/astropy/astropy/issues/15325
- https://github.com/astropy/astropy/issues/15330
- https://github.com/astropy/astropy/issues/15335
- https://github.com/astropy/astropy/issues/15340
- https://github.com/astropy/astropy/issues/15345
- https://github.com/astropy/astropy/issues/15349
- https://github.com/astropy/astropy/issues/15357
- https://github.com/astropy/astropy/issues/15361
- https://github.com/astropy/astropy/issues/15242
- https://github.com/astropy/astropy/issues/15371
- https://github.com/astropy/astropy/issues/15383
- https://github.com/astropy/astropy/issues/15389
- https://github.com/astropy/astropy/issues/15398
- https://github.com/astropy/astropy/issues/15407
- https://github.com/astropy/astropy/issues/15413
- https://github.com/astropy/astropy/issues/15416
- https://github.com/astropy/astropy/issues/15424
</issue_description>

Can you help me implement the necessary changes to the repository so that the requirements specified in the <issue_description> are met?
I've already taken care of all changes to any of the test files described in the <issue_description>. This means you MUST NOT modify the testing logic or any of the tests in any way!
Also the development Python environment is already set up for you (i.e., all dependencies already installed), so you don't need to install other packages.
Your task is to make the minimal changes to non-test files in the /workspace/astropy directory to ensure the <issue_description> is satisfied.

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
   4.3 Run the reproduction script with `python <filename.py>` to confirm you are reproducing the issue.
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
   7.3 Run existing tests related to the modified code with `pytest` to ensure you haven't broken anything.

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit 6258f070b71ab42cc6efd4a99345f332ff44ca98.
   8.1 Ensure you've fully addressed all requirements.
   8.2 Run any tests in the repository related to:
      8.2.1 The issue you are fixing
      8.2.2 The files you modified
      8.2.3 The functions you changed
   8.3 If any tests fail, revise your implementation until all tests pass.

Be thorough in your exploration, testing, and reasoning. It's fine if your thinking process is lengthy - quality and completeness are more important than brevity.

IMPORTANT CONSTRAINTS:
- ONLY modify files within the /workspace/astropy directory
- DO NOT navigate outside this directory (no `cd ..` or absolute paths to other locations)
- DO NOT create, modify, or delete any files outside the repository
- All your changes must be trackable by `git diff` within the repository
- If you need to create test files, create them inside the repository directory