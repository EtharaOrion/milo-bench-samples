I've uploaded a Python code repository in the directory /workspace/rich. Consider the following issue description:

<issue_description>
# Make indent param in console.print_json compatible to json.dumps' indent

## Issue 1 (#1657): Make indent param in console.print_json compatible to json.dumps' indent

## Type of changes

- [ ] Bug fix
- [ ] New feature
- [ ] Documentation / docstrings
- [ ] Tests
- [x] Other

## Checklist

- [x] I've run the latest [black](https://github.com/psf/black) with default args on new code.
- [ ] I've updated CHANGELOG.md and CONTRIBUTORS.md where appropriate.
- [ ] I've added tests for new code.
- [x] I accept that @willmcgugan may be pedantic in the code review.

## Description

This makes `indent` parameter in `console.print_json`, `JSON` and `JSON.from_data` compatible with `json.dumps`'s indent parameter. Please see https://github.com/python/typeshed/blob/095869202817b8f76fabc05f75048c66cc49d9aa/stdlib/json/__init__.pyi#L15.

My main motivation was to add support for `indent=None` but went with full compatibility with the str. Let me know if you don't want the custom indent string to be supported.

## Issue 2 (#1662): [BUG!] Python script with Status adding new line to stdout with echo

**Describe the bug**
In my company CI pipeline with GitHub Actions, recently a weird behavior started to appear when I ran a script that outputed a new environment variable with `print`:

```bash
echo "IMAGE_NAME=$(python -m buggy_deployment_manager --silent build $ENV .)" >> $GITHUB_ENV
```

This week or so, we've discovered it started to break all of our workflow jobs (GHA) with:

```
Error: Unable to process file command 'env' successfully.
Error: Invalid environment variable format '***.dkr.ecr.***.amazonaws.com/some-image-name'
```

Which usually happens when some unsupported character goes into the GITHUB_ENV file.

Going deep into the problem I found out that there was a newline being outputed to $GITHUB_ENV, although there was no print statement other than only one in the `buggy_deployment_manager` module, and no logging or etc was being held in the stdout buffer explicitly.

With pdb and flushing all print outputs, I've discovered that the context manager Status from rich actually (somehow and to somewhere) inside this `buggy_deployment_manager` prints out a newline to `echo` once it ends. This \n only appeared with `echo`, which is a weird behavior, I don't think it was supposed to happen or **why** it happened.

**To Reproduce**

Create a script named `bug.py` with:

```bug.py
from rich.status import Status
print("1 ", end="")
with Status("Go"):
    print("2 ", end="")
print("3 ", end="")
```

And run with:

```bash
#!/bin/bash
echo "WHAT=$(python bug.py)"
```

Instead of:
```
WHAT=1 2 3 
```

It will write:
```
WHAT=1 2 
3 
```

**Platform**

I've used locally on MacOS 12.0.1, Ubuntu 20.04 and within our CI runner ( Debian 11 ) with:
 - Python 3.8.10, 3.9.7, 3.9.8;

## Issue 3 (#1669): Fix win width

## Type of changes

- [ ] Bug fix
- [ ] New feature
- [ ] Documentation / docstrings
- [ ] Tests
- [ ] Other

## Checklist

- [ ] I've run the latest [black](https://github.com/psf/black) with default args on new code.
- [ ] I've updated CHANGELOG.md and CONTRIBUTORS.md where appropriate.
- [ ] I've added tests for new code.
- [ ] I accept that @willmcgugan may be pedantic in the code review.

## Description

Please describe your changes here. If this fixes a bug, please link to the issue, if possible.

## Issue 4 (#1676): [BUG] tests: Equivalent objects fail __eq__ checks

A mildly naive `__repr__` implementation on some objects leads to confusing results

Steps to reproduce
==================

Here is a copy+paste of a simple test case:
```
>>> from rich.style import Style
>>> from rich.text import Span
>>> Span(0,1,'bold')
Span(0, 1, 'bold')
>>> Span(0,1,Style(bold=True))
Span(0, 1, 'bold')
>>> Span(0,1,'bold') == Span(0,1,Style(bold=True))
False
```

Expected result
==============

The two `Span` objects should compare as equal.

Actual behaviour
================

The two `Span` objects compare as unequal, since the `str` and `Style` components are of differing types.

Errata
=====

* This is confusing in tests because the `__repr__` method on `Span` objects string-ifies the `Style` component, making them look completely equivalent; the net result is that tests will fail, and the provided diagnostic messages are of negative help.
* The `Span` object was used as an example, but there could be plenty more just like it in the codebase.

## Issue 5 (#1679): Bump sphinx from 4.2.0 to 4.3.0

Bumps [sphinx](https://github.com/sphinx-doc/sphinx) from 4.2.0 to 4.3.0.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/sphinx-doc/sphinx/blob/4.x/CHANGES">sphinx's changelog</a>.</em></p>
<blockquote>
<h1>Release 4.3.0 (released Nov 11, 2021)</h1>
<h2>Dependencies</h2>
<ul>
<li>Support Python 3.10</li>
</ul>
<h2>Incompatible changes</h2>
<ul>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9649">#9649</a>: <code>searchindex.js</code>: the embedded data has changed format to allow
objects with the same name in different domains.</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9672">#9672</a>: The rendering of Python domain declarations is implemented
with more docutils nodes to allow better CSS styling.
It may break existing styling.</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9672">#9672</a>: the signature of
:py:meth:<code>domains.py.PyObject.get_signature_prefix</code> has changed to
return a list of nodes instead of a plain string.</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9695">#9695</a>: <code>domains.js.JSObject.display_prefix</code> has been changed into a method
<code>get_display_prefix</code> which now returns a list of nodes
instead of a plain string.</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9695">#9695</a>: The rendering of Javascript domain declarations is implemented
with more docutils nodes to allow better CSS styling.
It may break existing styling.</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9450">#9450</a>: mathjax: Load MathJax via &quot;defer&quot; strategy</li>
</ul>
<h2>Deprecated</h2>
<ul>
<li><code>sphinx.ext.autodoc.AttributeDocumenter._datadescriptor</code></li>
<li><code>sphinx.writers.html.HTMLTranslator._fieldlist_row_index</code></li>
<li><code>sphinx.writers.html.HTMLTranslator._table_row_index</code></li>
<li><code>sphinx.writers.html5.HTML5Translator._fieldlist_row_index</code></li>
<li><code>sphinx.writers.html5.HTML5Translator._table_row_index</code></li>
</ul>
<h2>Features added</h2>
<ul>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9639">#9639</a>: autodoc: Support asynchronous generator functions</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9664">#9664</a>: autodoc: <code>autodoc-process-bases</code> supports to inject reST snippet as a
base class</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9691">#9691</a>: C, added new info-field <code>retval</code>
for :rst:dir:<code>c:function</code> and :rst:dir:<code>c:macro</code>.</li>
<li>C++, added new info-field <code>retval</code> for :rst:dir:<code>cpp:function</code>.</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9618">#9618</a>: i18n: Add :confval:<code>gettext_allow_fuzzy_translations</code> to allow &quot;fuzzy&quot;
messages for translation</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9672">#9672</a>: More CSS classes on Python domain descriptions</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9695">#9695</a>: More CSS classes on Javascript domain descriptions</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9683">#9683</a>: Revert the removal of <code>add_stylesheet()</code> API.  It will be kept until</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/3001cc9f8d35a3520bb017c345c29faec66d4848"><code>3001cc9</code></a> Bump to 4.3.0 final</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/d321a971d14e22ec8b231295a84f08961d9faa76"><code>d321a97</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9837">#9837</a> from tk0miya/9833_RemovedInSphinx60Warning</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/53396360848812dd38d98c3fdd2605139ef2c306"><code>5339636</code></a> Fix the type of deprecation warning for get_signature_prefix (refs: <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9833">#9833</a>)</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/5999cdb10dc92fdea71685c20824cbc84807712c"><code>5999cdb</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9833">#9833</a> from jakobandersen/py_get_signature_prefix</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/63bd4b8062eaa65f107ce0b5066f8c7229f1c63c"><code>63bd4b8</code></a> Use warnings.warn and deprecation warning</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/096e28693edb8db078d828ff403380bd27f47e32"><code>096e286</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9628">#9628</a> from tk0miya/9623_suppress_warnings_for_excluded_doc...</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/1317eeedaeef0895e82de06d4a8c8a9080f9d12b"><code>1317eee</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9828">#9828</a> from tk0miya/9618_gettext_allow_fuzzy_translations</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/7357b17e09d5530d9bac7a402ddc0338bf8e7e44"><code>7357b17</code></a> Merge branch '4.x' into 9623_suppress_warnings_for_excluded_document_in_toctree</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/22bec4ffe43babda23a8f0a8db0c7f5b87a24a18"><code>22bec4f</code></a> Fix <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9623">#9623</a>: Separate warning type 'toc.not_readable' to 'toc.excluded'</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/563936b969dfc29ade7d48f1a802d5f6f6348f4c"><code>563936b</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9829">#9829</a> from tk0miya/9450_load_mathjax_as_defer</li>
<li>Additional commits viewable in <a href="https://github.com/sphinx-doc/sphinx/compare/v4.2.0...v4.3.0">compare view</a></li>
</ul>
</details>
<br />


[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=sphinx&package-manager=pip&previous-version=4.2.0&new-version=4.3.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

## Issue 6 (#1682): [BUG] Printing table into console results in infinite loop

Following code ends up with rich being in infinite loop and never finishing:

Platform used: IOS

Code to reproduce the issue:

```
from rich.console import Console
from rich.table import Table

if __name__ == '__main__':
    with open('output.txt', 'w') as file_output:
        console = Console(file=file_output)

        table = Table(title='Model Comparison', show_lines=True)
        table.add_column('Text', justify='left')
        table.add_column('All match', justify='left')
        table.add_column('True Label', justify='center')
        for model_name in ['model_name']:
            table.add_column(f'{model_name}', justify='center')
        table.add_row(
            'เป็นเกมที่ต้องมีความอดทนมากที่สุดตั้งเเต่เคยเล่นมา',
            'differences',
        )
        print('printing to console')
        console.print(table)
```

**Platform**
What platform (Win/Linux/Mac) are you running on? What terminal software are you using?

**Diagnose**
I may ask you to cut and paste the output of the following commands. It may save some time if you do it now.

```
python -m rich.diagnose
╭───────────────────────── <class 'rich.console.Console'> ─────────────────────────╮
│ A high level console interface.                                                  │
│                                                                                  │
│ ╭──────────────────────────────────────────────────────────────────────────────╮ │
│ │ <console width=172 ColorSystem.EIGHT_BIT>                                    │ │
│ ╰──────────────────────────────────────────────────────────────────────────────╯ │
│                                                                                  │
│     color_system = '256'                                                         │
│         encoding = 'utf-8'                                                       │
│             file = <_io.TextIOWrapper name='<stdout>' mode='w' encoding='UTF-8'> │
│           height = 16                                                            │
│    is_alt_screen = False                                                         │
│ is_dumb_terminal = False                                                         │
│   is_interactive = True                                                          │
│       is_jupyter = False                                                         │
│      is_terminal = True                                                          │
│   legacy_windows = False                                                         │
│         no_color = False                                                         │
│          options = ConsoleOptions(                                               │
│                        size=ConsoleDimensions(width=172, height=16),             │
│                        legacy_windows=False,                                     │
│                        min_width=1,                                              │
│                        max_width=172,                                            │
│                        is_terminal=True,                                         │
│                        encoding='utf-8',                                         │
│                        max_height=16,                                            │
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
│             size = ConsoleDimensions(width=172, height=16)                       │
│        soft_wrap = False                                                         │
│           stderr = False                                                         │
│            style = None                                                          │
│         tab_size = 8                                                             │
│            width = 172                                                           │
╰──────────────────────────────────────────────────────────────────────────────────╯
python -m rich._windows

platform="Darwin"
WindowsConsoleFeatures(vt=False, truecolor=False)

pip freeze | grep rich
rich==10.13.0

```

## Issue 7 (#1684): added file

Add `file` to highlighter protocols

## Issue 8 (#1685): Capitalize "PyPI" correctly

## Type of changes

- [ ] Bug fix
- [ ] New feature
- [x] Documentation / docstrings
- [ ] Tests
- [ ] Other

## Checklist

- [ ] I've run the latest [black](https://github.com/psf/black) with default args on new code.
  - (No new code is introduced by this change.)
- [ ] I've updated CHANGELOG.md and CONTRIBUTORS.md where appropriate.
  - (Dunno whether I should for a change this low-impact and trivial. I myself don't mind.)
- [ ] I've added tests for new code.
  - (No new code is introduced by this change.)
- [x] I accept that @willmcgugan may be pedantic in the code review.

## Description

"PyPI" stands for "**Py**thon **P**ackage **I**ndex", so except for the `y` all letters in that abbreviation should be upper case.

## Issue 9 (#1687): Fix broken pager reference

## Type of changes

- [x] Bug fix
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

Missing backtick breaking reference in docs.

## Issue 10 (#1695): [BUG] Please relax typing-extensions versions

**Describe the bug**
The recent `typing-extensions` release is `4.0`. It is backward compatible, a team decided to use SemVer notation for the project.
rich is marked as compatible with `^3.7.4` which doesn't sail smoothly with other libraries.

Maybe the best solution is not pinning the top version and relay on `typing-extensions` stability.
Another option is pinning to `>=3.7.4, <5.0`.

I've tried to prepare a PR but found that `poetry lock` generates a very different lockfile than pushed on GitHub. 
So better to get help from @willmcgugan for this problem, the fix is really trivial.

A new release with relaxed dependency is very appreciated. Thanks!

## Issue 11 (#1689): [BUG] Print's options don't work with Text, but they do with str

Simple code:

```python3
from rich.text import Text
from rich import print

a = Text('aa', end='')
b = Text('bb', end='')
print(a, b, sep=' potatoes ', end='\n\n')
```

Should output:

```
aa potatoes bb


```

The actual output:

```
aabb
```

If you use `str` rather than Text, then it works properly.

## Repository Information
- **Repository**: Textualize/rich
- **Pull Request**: #1657
- **Base Commit**: `ac1a33da175972f895e894121df609d0cb1448fe`

## Related Issues
- https://github.com/Textualize/rich/issues/1657
- https://github.com/Textualize/rich/issues/1662
- https://github.com/Textualize/rich/issues/1669
- https://github.com/Textualize/rich/issues/1676
- https://github.com/Textualize/rich/issues/1679
- https://github.com/Textualize/rich/issues/1682
- https://github.com/Textualize/rich/issues/1684
- https://github.com/Textualize/rich/issues/1685
- https://github.com/Textualize/rich/issues/1687
- https://github.com/Textualize/rich/issues/1695
- https://github.com/Textualize/rich/issues/1689
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

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit ac1a33da175972f895e894121df609d0cb1448fe.
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