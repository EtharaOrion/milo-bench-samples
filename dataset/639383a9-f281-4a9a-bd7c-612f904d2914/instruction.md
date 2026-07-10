I've uploaded a Python code repository in the directory /workspace/rich. Consider the following issue description:

<issue_description>
# add example with dynamic group of progress bars

## Issue 1 (#1504): add example with dynamic group of progress bars

## Type of changes

- [ ] Bug fix
- [ ] New feature
- [x] Documentation / docstrings
- [ ] Tests
- [x] Other: examples

## Checklist

- [x] I've run the latest [black](https://github.com/psf/black) with default args on new code.
- [x] I've updated CHANGELOG.md and CONTRIBUTORS.md where appropriate.
- [ ] I've added tests for new code.
   - Is this required for examples too? If so, happy to look into it...
- [x] I accept that @willmcgugan may be pedantic in the code review.

## Description

Additional example for progress bars, more dynamic in nature than the existing [live_progress.py](https://github.com/willmcgugan/rich/blob/master/examples/live_progress.py>); see also discussion in #1500 .

Screenshot while running:

![image](https://user-images.githubusercontent.com/620876/133919699-76d80e9e-8bc8-4cee-bc32-ea27aad50797.png)

Screenshot when done:

![image](https://user-images.githubusercontent.com/620876/133919701-dd850902-5d01-4c20-ac8c-d9236a41ee6f.png)

## Issue 2 (#1680): Proofread Swiss German readme

## Type of changes

- [ ] Bug fix
- [ ] New feature
- [x] Documentation / docstrings
- [ ] Tests
- [ ] Other

## Checklist

- [ ] I've run the latest [black](https://github.com/psf/black) with default args on new code.
- [ ] I've updated CHANGELOG.md and CONTRIBUTORS.md where appropriate.
- [ ] I've added tests for new code.
- [x] I accept that @willmcgugan may be pedantic in the code review.

## Description

Less typos, yay! There's no official written version of Swiss German, and this version reads horrible to me to be honest (but I know the author, so I can say so :laughing:), but I only fixed the obvious typos.

## Issue 3 (#1698): Improve formatting of live command

## Type of changes

- [ ] Bug fix
- [ ] New feature
- [x] Documentation / docstrings
- [ ] Tests
- [ ] Other

## Checklist

- [ ] I've run the latest [black](https://github.com/psf/black) with default args on new code.
- [ ] I've updated CHANGELOG.md and CONTRIBUTORS.md where appropriate.
- [ ] I've added tests for new code.
- [x] I accept that @willmcgugan may be pedantic in the code review.

## Description

Improve the formatting by monospacing the following command:

<img width="762" alt="Screen Shot 2021-11-16 at 11 10 08 AM" src="https://user-images.githubusercontent.com/10340167/142022228-165eecb5-ca76-4edf-b833-05b60ae9e676.png">

## Issue 4 (#1670): [BUG] Text objects pre-formatted with ANSI escapes miscalculate their width

When attempting to use "pre-formatted" strings from a third-party library with Rich tables, it seems to use the "whole width" of the string for header calculation rather than the "visible width"

Steps to reproduce
==============

A simple test case, I'm using [colored](https://pypi.org/project/colored/) to illustrate:

```
from colored import bg, fg, attr

from rich.box import ASCII
from rich.console import Console
from rich.table import Table
from rich.text import Text

# simulate getting a "cooked" string from a library
text = bg(28) + fg(186) + 'this is test text' + attr(0)

table = Table(box=ASCII)
table.add_column('column')
table.add_row(Text(text))

Console().print(table)
```

Expected result
============

```
+-------------------+
| column            |
|-------------------|
| this is test text |
+-------------------+
```


Actual behavior
===========

```
+-----------------------------------------+
| column                                  |
|-----------------------------------------|
| this is test text |
+-----------------------------------------+
```

Errata
=====

I see class methods like `Text.from_markup` and `Text.styled` that would appear to be useful for creating `Text` objects from "cooked" inputs, but they don't appear to be made for this particular flavor.  And attempting to adjust the `Text._length` property implicitly truncates the string.

Platform
======
```
╭───────────────────────── <class 'rich.console.Console'> ─────────────────────────╮
│ A high level console interface.                                                  │
│                                                                                  │
│ ╭──────────────────────────────────────────────────────────────────────────────╮ │
│ │ <console width=120 ColorSystem.TRUECOLOR>                                    │ │
│ ╰──────────────────────────────────────────────────────────────────────────────╯ │
│                                                                                  │
│     color_system = 'truecolor'                                                   │
│         encoding = 'utf-8'                                                       │
│             file = <_io.TextIOWrapper name='<stdout>' mode='w' encoding='utf-8'> │
│           height = 77                                                            │
│    is_alt_screen = False                                                         │
│ is_dumb_terminal = False                                                         │
│   is_interactive = True                                                          │
│       is_jupyter = False                                                         │
│      is_terminal = True                                                          │
│   legacy_windows = False                                                         │
│         no_color = False                                                         │
│          options = ConsoleOptions(                                               │
│                        size=ConsoleDimensions(width=120, height=77),             │
│                        legacy_windows=False,                                     │
│                        min_width=1,                                              │
│                        max_width=120,                                            │
│                        is_terminal=True,                                         │
│                        encoding='utf-8',                                         │
│                        max_height=77,                                            │
│                        justify=None,                                             │
│                        overflow=None,                                            │
│                        no_wrap=False,                                            │
│                        highlight=None,                                           │
│                        markup=None,                                              │
│                        height=None                                               │
│                    )                                                             │
│            quiet = False                                                         │
│           record = False                                                         │
│         safe_box = True                                                          │
│             size = ConsoleDimensions(width=120, height=77)                       │
│        soft_wrap = False                                                         │
│           stderr = False                                                         │
│            style = None                                                          │
│         tab_size = 8                                                             │
│            width = 120                                                           │
╰──────────────────────────────────────────────────────────────────────────────────╯
platform="Darwin"
WindowsConsoleFeatures(vt=False, truecolor=False)
rich==10.13.0
```

## Issue 5 (#1707): Bump black from 21.10b0 to 21.11b1

Bumps [black](https://github.com/psf/black) from 21.10b0 to 21.11b1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/psf/black/releases">black's releases</a>.</em></p>
<blockquote>
<h2>21.11b1</h2>
<h3><em>Black</em></h3>
<ul>
<li>Bumped regex version minimum to 2021.4.4 to fix Pattern class usage (<a href="https://github-redirect.dependabot.com/psf/black/issues/2621">#2621</a>)</li>
</ul>
<h2>21.11b0</h2>
<h3><em>Black</em></h3>
<ul>
<li>Warn about Python 2 deprecation in more cases by improving Python 2 only syntax
detection (<a href="https://github-redirect.dependabot.com/psf/black/issues/2592">#2592</a>)</li>
<li>Add experimental PyPy support (<a href="https://github-redirect.dependabot.com/psf/black/issues/2559">#2559</a>)</li>
<li>Add partial support for the match statement. As it's experimental, it's only enabled
when <code>--target-version py310</code> is explicitly specified (<a href="https://github-redirect.dependabot.com/psf/black/issues/2586">#2586</a>)</li>
<li>Add support for parenthesized with (<a href="https://github-redirect.dependabot.com/psf/black/issues/2586">#2586</a>)</li>
<li>Declare support for Python 3.10 for running Black (<a href="https://github-redirect.dependabot.com/psf/black/issues/2562">#2562</a>)</li>
</ul>
<h3>Integrations</h3>
<ul>
<li>Fixed vim plugin with Python 3.10 by removing deprecated distutils import (<a href="https://github-redirect.dependabot.com/psf/black/issues/2610">#2610</a>)</li>
<li>The vim plugin now parses <code>skip_magic_trailing_comma</code> from pyproject.toml (<a href="https://github-redirect.dependabot.com/psf/black/issues/2613">#2613</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/psf/black/blob/main/CHANGES.md">black's changelog</a>.</em></p>
<blockquote>
<h2>21.11b1</h2>
<h3><em>Black</em></h3>
<ul>
<li>Bumped regex version minimum to 2021.4.4 to fix Pattern class usage (<a href="https://github-redirect.dependabot.com/psf/black/issues/2621">#2621</a>)</li>
</ul>
<h2>21.11b0</h2>
<h3><em>Black</em></h3>
<ul>
<li>Warn about Python 2 deprecation in more cases by improving Python 2 only syntax
detection (<a href="https://github-redirect.dependabot.com/psf/black/issues/2592">#2592</a>)</li>
<li>Add experimental PyPy support (<a href="https://github-redirect.dependabot.com/psf/black/issues/2559">#2559</a>)</li>
<li>Add partial support for the match statement. As it's experimental, it's only enabled
when <code>--target-version py310</code> is explicitly specified (<a href="https://github-redirect.dependabot.com/psf/black/issues/2586">#2586</a>)</li>
<li>Add support for parenthesized with (<a href="https://github-redirect.dependabot.com/psf/black/issues/2586">#2586</a>)</li>
<li>Declare support for Python 3.10 for running Black (<a href="https://github-redirect.dependabot.com/psf/black/issues/2562">#2562</a>)</li>
</ul>
<h3>Integrations</h3>
<ul>
<li>Fixed vim plugin with Python 3.10 by removing deprecated distutils import (<a href="https://github-redirect.dependabot.com/psf/black/issues/2610">#2610</a>)</li>
<li>The vim plugin now parses <code>skip_magic_trailing_comma</code> from pyproject.toml (<a href="https://github-redirect.dependabot.com/psf/black/issues/2613">#2613</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li>See full diff in <a href="https://github.com/psf/black/commits">compare view</a></li>
</ul>
</details>
<br />


[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=black&package-manager=pip&previous-version=21.10b0&new-version=21.11b1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

Dependabot will resolve any conflicts with this PR as long as you don't alter it yourself. You can also trigger a rebase manually by commenting `@dependabot rebase`.

[//]: # (dependabot-automerge-start)
[//]: # (dependabot-automerge-end)

---

<details>
<summary>Dependabot commands and options</summary>
<br />

You can trigger Dependabot actions by commenting on this PR:
- `@dependabot rebase` will rebase this PR
- `@dependabot recreate` will recreate this PR, overwriting any edits that have been made to it
- `@dependabot merge` will merge this PR after your CI passes on it
- `@dependabot squash and merge` will squash and merge this PR after your CI passes on it
- `@dependabot cancel merge` will cancel a previously requested merge and block automerging
- `@dependabot reopen` will reopen this PR if it is closed
- `@dependabot close` will close this PR and stop Dependabot recreating it. You can achieve the same result by closing it manually
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)


</details>

## Issue 6 (#1708): Fix small typo on the Portuguese README

## Type of changes

- [ ] Bug fix
- [ ] New feature
- [x] Documentation / docstrings
- [ ] Tests
- [ ] Other

## Checklist

- [ ] I've run the latest [black](https://github.com/psf/black) with default args on new code.
- [ ] I've updated CHANGELOG.md and CONTRIBUTORS.md where appropriate.
- [ ] I've added tests for new code.
- [x] I accept that @willmcgugan may be pedantic in the code review.

## Description

Title explains it all.

## Issue 7 (#1722): Fix failing codespell test

## Type of changes

- [ ] Bug fix
- [ ] New feature
- [x] Documentation / docstrings
- [ ] Tests
- [ ] Other

## Checklist

- [x] I've run the latest [black](https://github.com/psf/black) with default args on new code.
- [ ] I've updated CHANGELOG.md and CONTRIBUTORS.md where appropriate.
- [ ] I've added tests for new code.
- [x] I accept that @willmcgugan may be pedantic in the code review.

## Description

Change the spelling of sequece to sequence to fix the failing codespell test.

## Issue 8 (#1721): [BUG] the percent column is causing problems (flickering).

`"[progress.percentage]{task.percentage:>1.0f}%"`

During progress, appears (with each iteration update or auto update of progress) '_progress.percentage_' It should not be there. This issue is not present in rich 9.
Watch the animation with and without a problem.
Problem on Linux and Android (Windows did not check)

![rich 10 14](https://user-images.githubusercontent.com/61022210/143541642-89510fc6-2dc3-406a-807d-6ac9a49ffae0.gif)
Rich 10.14

![rich 9](https://user-images.githubusercontent.com/61022210/143541649-c8d345ce-ec99-4d72-9bde-f93066cad3ad.gif)
Rich 9

## Issue 9 (#1530): [BUG] live displays and console printing are not thread safe

There seems to be some sort of threading/race issue with the console and the rich handler (or maybe with live dislays in general?) that causes log lines to get lost or misplaced when used with live displays or status displays.

**To Reproduce**
Here's a code example that will print out the logs from a queue in a separate thread. Note the log lines aren't then all expected to be above the status, but I was expecting the status to not interfere with it if it's thread safe. In particular the status isn't even getting properly wiped here.

```python
import atexit
import logging
import logging.handlers
import queue

import rich.logging
import rich.console

logger = logging.getLogger(__name__)
console = rich.console.Console()

root_logger = logging.getLogger("")
rhandler = rich.logging.RichHandler(console=console)
que = queue.Queue()
queue_handler = logging.handlers.QueueHandler(que)
listener = logging.handlers.QueueListener(que, rhandler)
root_logger.addHandler(queue_handler)
listener.start()
atexit.register(lambda x: x.stop(), listener)

with console.status("testing"):
    for n in range(1000):
        logger.error(n)
```
With this a variety of things can happen, the status can get leftover in a line printed at the same time as a log message or sometimes it can even eat a log message entirely.

Here's an example where it ate a line entirely
![failure](https://i.imgur.com/uWQYuK9.png)

a lot of the time I get other goofy stuff like this
![other failure](https://i.imgur.com/BBN2xOF.png)

**Platform**
Gentoo Linux / kitty 0.23.1

**Diagnose**

```console
pyffstream ❯ python -m rich.diagnose
python -m rich._windows
pip freeze | grep rich
╭───────────────────────── <class 'rich.console.Console'> ─────────────────────────╮
│ A high level console interface.                                                  │
│                                                                                  │
│ ╭──────────────────────────────────────────────────────────────────────────────╮ │
│ │ <console width=147 ColorSystem.TRUECOLOR>                                    │ │
│ ╰──────────────────────────────────────────────────────────────────────────────╯ │
│                                                                                  │
│     color_system = 'truecolor'                                                   │
│         encoding = 'utf-8'                                                       │
│             file = <_io.TextIOWrapper name='<stdout>' mode='w' encoding='utf-8'> │
│           height = 41                                                            │
│    is_alt_screen = False                                                         │
│ is_dumb_terminal = False                                                         │
│   is_interactive = True                                                          │
│       is_jupyter = False                                                         │
│      is_terminal = True                                                          │
│   legacy_windows = False                                                         │
│         no_color = False                                                         │
│          options = ConsoleOptions(                                               │
│                        size=ConsoleDimensions(width=147, height=41),             │
│                        legacy_windows=False,                                     │
│                        min_width=1,                                              │
│                        max_width=147,                                            │
│                        is_terminal=True,                                         │
│                        encoding='utf-8',                                         │
│                        max_height=41,                                            │
│                        justify=None,                                             │
│                        overflow=None,                                            │
│                        no_wrap=False,                                            │
│                        highlight=None,                                           │
│                        markup=None,                                              │
│                        height=None                                               │
│                    )                                                             │
│            quiet = False                                                         │
│           record = False                                                         │
│         safe_box = True                                                          │
│             size = ConsoleDimensions(width=147, height=41)                       │
│        soft_wrap = False                                                         │
│           stderr = False                                                         │
│            style = None                                                          │
│         tab_size = 8                                                             │
│            width = 147                                                           │
╰──────────────────────────────────────────────────────────────────────────────────╯
platform="Linux"
WindowsConsoleFeatures(vt=False, truecolor=False)
rich==10.11.0

```

## Repository Information
- **Repository**: Textualize/rich
- **Pull Request**: #1504
- **Base Commit**: `008854c40772f647dfcb873bc3489e8a1c02d598`

## Related Issues
- https://github.com/Textualize/rich/issues/1504
- https://github.com/Textualize/rich/issues/1680
- https://github.com/Textualize/rich/issues/1698
- https://github.com/Textualize/rich/issues/1670
- https://github.com/Textualize/rich/issues/1707
- https://github.com/Textualize/rich/issues/1708
- https://github.com/Textualize/rich/issues/1722
- https://github.com/Textualize/rich/issues/1721
- https://github.com/Textualize/rich/issues/1530
</issue_description>

Can you help me implement the necessary changes to the repository so that the requirements specified in the <issue_description> are met?
I've already taken care of all changes to any of the test files described in the <issue_description>. This means you MUST NOT modify the testing logic or any of the tests in any way!
Also the development Python environment is already set up for you (i.e., all dependencies already installed), so you don't need to install other packages.
Your task is to make the minimal changes to non-test files in the /workspace/rich directory to ensure the <issue_description> is satisfied.

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

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit 008854c40772f647dfcb873bc3489e8a1c02d598.
   8.1 Ensure you've fully addressed all requirements.
   8.2 Run any tests in the repository related to:
      8.2.1 The issue you are fixing
      8.2.2 The files you modified
      8.2.3 The functions you changed
   8.3 If any tests fail, revise your implementation until all tests pass.

Be thorough in your exploration, testing, and reasoning. It's fine if your thinking process is lengthy - quality and completeness are more important than brevity.

IMPORTANT CONSTRAINTS:
- ONLY modify files within the /workspace/rich directory
- DO NOT navigate outside this directory (no `cd ..` or absolute paths to other locations)
- DO NOT create, modify, or delete any files outside the repository
- All your changes must be trackable by `git diff` within the repository
- If you need to create test files, create them inside the repository directory