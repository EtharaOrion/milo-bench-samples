I've uploaded a Python code repository in the directory /workspace/rich. Consider the following issue description:

<issue_description>
# Add stdin support to rich.json

## Issue 1 (#1449): Add stdin support to rich.json

## Type of changes

- [ ] Bug fix
- [x] New feature
- [ ] Documentation / docstrings
- [ ] Tests
- [ ] Other

## Checklist

- [x] I've run the latest [black](https://github.com/psf/black) with default args on new code.
- [x] I've updated CHANGELOG.md and CONTRIBUTORS.md where appropriate.
- [ ] I've added tests for new code.
- [x] I accept that @willmcgugan may be pedantic in the code review.

## Description

Add support for `rich.json` to read input from stdin (eg. pipes) when no file name is provided.

## Issue 2 (#1453): Bump typing-extensions from 3.10.0.0 to 3.10.0.2

Bumps [typing-extensions](https://github.com/python/typing) from 3.10.0.0 to 3.10.0.2.
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/python/typing/commit/7552efe8b5f96f0e63f8e77711a4cf03cae92921"><code>7552efe</code></a> prepare release 3.10.0.2 (<a href="https://github-redirect.dependabot.com/python/typing/issues/873">#873</a>)</li>
<li><a href="https://github.com/python/typing/commit/58de2e9c5bfb47cc6438a879eb304153bf153b95"><code>58de2e9</code></a> Fix tests for 3.10rc1 and up (<a href="https://github-redirect.dependabot.com/python/typing/issues/872">#872</a>)</li>
<li><a href="https://github.com/python/typing/commit/af13555328b3a9d6cfa941eaa574f841d47187d2"><code>af13555</code></a> fix _GenericAlias import (<a href="https://github-redirect.dependabot.com/python/typing/issues/871">#871</a>)</li>
<li><a href="https://github.com/python/typing/commit/c1cbcace0107b8a4d6e246c403aaa009caf9cc5f"><code>c1cbcac</code></a> Fixes crash on Python3.10-beta.2 and typing_extensions@3.10.0.1 (<a href="https://github-redirect.dependabot.com/python/typing/issues/869">#869</a>)</li>
<li><a href="https://github.com/python/typing/commit/ec052c368f6ab7bb4f83c04824346015cdd9ae97"><code>ec052c3</code></a> Fix linter warnings (<a href="https://github-redirect.dependabot.com/python/typing/issues/868">#868</a>)</li>
<li><a href="https://github.com/python/typing/commit/7d2fae84d7592fdf04380fbbe2d3e667ecedbcf6"><code>7d2fae8</code></a> prepare release 3.10.0.1 (<a href="https://github-redirect.dependabot.com/python/typing/issues/863">#863</a>)</li>
<li><a href="https://github.com/python/typing/commit/a1143792004b6e2e5482f76f419989d9c63a0aea"><code>a114379</code></a> Support most use cases for PEP 612 with Generic (<a href="https://github-redirect.dependabot.com/python/typing/issues/817">#817</a>)</li>
<li><a href="https://github.com/python/typing/commit/c4191ac15aa54c8269ccf2e6292b4a9cc928359e"><code>c4191ac</code></a> Add a missing comma to <code>__all__</code> (<a href="https://github-redirect.dependabot.com/python/typing/issues/808">#808</a>)</li>
<li>See full diff in <a href="https://github.com/python/typing/compare/3.10.0.0...3.10.0.2">compare view</a></li>
</ul>
</details>
<br />


[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=typing-extensions&package-manager=pip&previous-version=3.10.0.0&new-version=3.10.0.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

## Issue 3 (#1454): Bump pytest from 6.2.4 to 6.2.5

Bumps [pytest](https://github.com/pytest-dev/pytest) from 6.2.4 to 6.2.5.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pytest-dev/pytest/releases">pytest's releases</a>.</em></p>
<blockquote>
<h2>6.2.5</h2>
<h1>pytest 6.2.5 (2021-08-29)</h1>
<h2>Trivial/Internal Changes</h2>
<ul>
<li><a href="https://github-redirect.dependabot.com/pytest-dev/pytest/issues/8494">#8494</a>: Python 3.10 is now supported.</li>
<li><a href="https://github-redirect.dependabot.com/pytest-dev/pytest/issues/9040">#9040</a>: Enable compatibility with <code>pluggy 1.0</code> or later.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/pytest-dev/pytest/commit/1569fac603d9a50022e1474b494eebf970a2a3af"><code>1569fac</code></a> Fix CHANGELOG header</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/a3599cacb5a61eda1f1617bc7529110d88a05a1f"><code>a3599ca</code></a> Prepare release version 6.2.5</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/27613b8d70aab70d239523a3d167cc0b2df0b794"><code>27613b8</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/pytest-dev/pytest/issues/9056">#9056</a> from nicoddemus/backport-9053</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/cef74be09472c5610d17a10f5970843c113d73e9"><code>cef74be</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/pytest-dev/pytest/issues/9053">#9053</a> from nicoddemus/change-8494-to-trivial</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/83dc9536696ea021ff180f3ee679264486154c60"><code>83dc953</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/pytest-dev/pytest/issues/9051">#9051</a> from nicoddemus/backport-9047</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/fb38e8d097f5c8fea0ce2c6cb96816a4ccc0d934"><code>fb38e8d</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/pytest-dev/pytest/issues/9047">#9047</a> from nicoddemus/changelog-9040</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/d74baf4a5265ddb173ecdc9369d521e11f62c185"><code>d74baf4</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/pytest-dev/pytest/issues/9042">#9042</a> from nicoddemus/backport-9040</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/d9b8f7cf0adf66becce7eb2a0d11e3d96e6d740b"><code>d9b8f7c</code></a> Backport <a href="https://github-redirect.dependabot.com/pytest-dev/pytest/issues/8896">#8896</a></li>
<li><a href="https://github.com/pytest-dev/pytest/commit/69212d15fa597e058238a6a30d4299c5b4ea68a2"><code>69212d1</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/pytest-dev/pytest/issues/8425">#8425</a> from RonnyPfannschmidt/main-fixes</li>
<li><a href="https://github.com/pytest-dev/pytest/commit/44d3282bb7c36e1979579e254f7120d7f8aa0f00"><code>44d3282</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/pytest-dev/pytest/issues/9040">#9040</a> from nicoddemus/bump-pluggy</li>
<li>Additional commits viewable in <a href="https://github.com/pytest-dev/pytest/compare/6.2.4...6.2.5">compare view</a></li>
</ul>
</details>
<br />


[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pytest&package-manager=pip&previous-version=6.2.4&new-version=6.2.5)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

## Issue 4 (#1456): Fix changelog year

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
- [ ] I accept that @willmcgugan may be pedantic in the code review.

## Description

The year for some versions is reported incorrectly (2020, should be 2021).

## Issue 5 (#1464): Fix typos in `rich.table.Table` docstring

## Type of changes

- [ ] Bug fix
- [ ] New feature
- [X] Documentation / docstrings
- [ ] Tests
- [ ] Other

## Checklist

- [X] I've run the latest [black](https://github.com/psf/black) with default args on new code.
- [ ] I've updated CHANGELOG.md and CONTRIBUTORS.md where appropriate.
- [ ] I've added tests for new code.
- [X] I accept that @willmcgugan may be pedantic in the code review.

## Description

Please describe your changes here. If this fixes a bug, please link to the issue, if possible.

## Issue 6 (#1466): Remove unused imports

## Type of changes

- [ ] Bug fix
- [ ] New feature
- [ ] Documentation / docstrings
- [ ] Tests
- [x] Other

## Checklist

- [x] I've run the latest [black](https://github.com/psf/black) with default args on new code.
- [x] I've updated CHANGELOG.md and CONTRIBUTORS.md where appropriate.
- [x] I've added tests for new code.
- [x] I accept that @willmcgugan may be pedantic in the code review.

## Description

Removes unused imports. These imports were unused by mypy as well.

## Issue 7 (#1467): Use builtin html.escape

## Type of changes

- [x] Bug fix
- [ ] New feature
- [ ] Documentation / docstrings
- [ ] Tests
- [ ] Other

## Checklist

- [x] I've run the latest [black](https://github.com/psf/black) with default args on new code.
- [x] I've updated CHANGELOG.md and CONTRIBUTORS.md where appropriate.
- [x] I've added tests for new code.
- [x] I accept that @willmcgugan may be pedantic in the code review.

## Description

Replace hand-rolled html escape function with builtin `html.escape`.

Has the added benefit of escaping `"` with `&quot;` and `'` with `&#x27;`.

Also deleted a stray print in the test.

## Issue 8 (#1485): Bump sphinx from 4.1.2 to 4.2.0

Bumps [sphinx](https://github.com/sphinx-doc/sphinx) from 4.1.2 to 4.2.0.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/sphinx-doc/sphinx/blob/4.x/CHANGES">sphinx's changelog</a>.</em></p>
<blockquote>
<h1>Release 4.2.0 (released Sep 12, 2021)</h1>
<h2>Features added</h2>
<ul>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9445">#9445</a>: autodoc: Support class properties</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9479">#9479</a>: autodoc: Emit a warning if target is a mocked object</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9560">#9560</a>: autodoc: Allow to refer NewType instances with module name in Python
3.10 or above</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9447">#9447</a>: html theme: Expose the version of Sphinx in the form of tuple as a
template variable <code>sphinx_version_tuple</code></li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9594">#9594</a>: manpage: Suppress the title of man page if description is empty</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9445">#9445</a>: py domain: <code>:py:property:</code> directive supports <code>:classmethod:</code>
option to describe the class property</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9524">#9524</a>: test: SphinxTestApp can take <code>builddir</code> as an argument</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9535">#9535</a>: C and C++, support more fundamental types, including GNU extensions.</li>
</ul>
<h2>Bugs fixed</h2>
<ul>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9608">#9608</a>: apidoc: apidoc does not generate a module definition for implicit
namespace package</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9504">#9504</a>: autodoc: generate incorrect reference to the parent class if the target
class inherites the class having <code>_name</code> attribute</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9537">#9537</a>, <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9589">#9589</a>: autodoc: Some objects under <code>typing</code> module are not displayed
well with the HEAD of 3.10</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9487">#9487</a>: autodoc: typehint for cached_property is not shown</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9509">#9509</a>: autodoc: AttributeError is raised on failed resolving typehints</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9518">#9518</a>: autodoc: autodoc_docstring_signature does not effect to <code>__init__()</code>
and <code>__new__()</code></li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9522">#9522</a>: autodoc: PEP 585 style typehints having arguments (ex. <code>list[int]</code>)
are not displayed well</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9481">#9481</a>: autosummary: some warnings contain non-existing filenames</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9568">#9568</a>: autosummary: summarise overlined sectioned headings correctly</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9600">#9600</a>: autosummary: Type annotations which contain commas in autosummary table
are not removed completely</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9481">#9481</a>: c domain: some warnings contain non-existing filenames</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9481">#9481</a>: cpp domain: some warnings contain non-existing filenames</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9456">#9456</a>: html search: abbreation marks are inserted to the search result if
failed to fetch the content of the page</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9617">#9617</a>: html search: The JS requirement warning is shown if browser is slow</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9267">#9267</a>: html theme: CSS and JS files added by theme were loaded twice</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9585">#9585</a>: py domain: <code>:type:</code> option for :rst:dir:<code>py:property</code> directive does
not create a hyperlink</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9576">#9576</a>: py domain: Literal typehint was converted to a cross reference</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9535">#9535</a> comment: C++, fix parsing of defaulted function parameters that are
function pointers.</li>
<li><a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9564">#9564</a>: smartquotes: don't adjust typography for text with
language-highlighted <code>:code:</code> role.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/21db4b140731a20930f50b8bfd15aa4e0d07944f"><code>21db4b1</code></a> Bump to 4.2.0 final</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/2390ce6e1ad55f3343a47b8a5b85cc05623130b3"><code>2390ce6</code></a> CHANGES: Merge 4.1.3 (unreleased) to 4.2.0</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/b67624ec76e60c7b6d08ff55001fa0ac5921b6bd"><code>b67624e</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9627">#9627</a> from sphinx-doc/bot/pull-translations</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/50d7bfa6b89d9129a77892a5725bfbeae79da307"><code>50d7bfa</code></a> Update message catalogs</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/260f217a3d1a6fcc6780540aa0a63e0ac590d629"><code>260f217</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9594">#9594</a> from hkuno/pr/no_empty_desc_4.x</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/fb141c355fe0b6c163074dd3b48c65a694421b6a"><code>fb141c3</code></a> Update CHANGES for PR <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9594">#9594</a></li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/571929974ad048d4d6d0322686281e7e5185c13a"><code>5719299</code></a> Add a testcase for <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9694">#9694</a></li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/c44ee0ebaa8039a4e1014fa02f485c4693414e17"><code>c44ee0e</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9611">#9611</a> from tk0miya/9560_NewType_module</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/8416813168baa32449af1e9a2047282d57efc9fa"><code>8416813</code></a> Merge pull request <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9616">#9616</a> from jdufresne/fix-url</li>
<li><a href="https://github.com/sphinx-doc/sphinx/commit/3a67b49f5d009eb143bbd2486a36fbeb0b4c21db"><code>3a67b49</code></a> Update CHANGES for PR <a href="https://github-redirect.dependabot.com/sphinx-doc/sphinx/issues/9617">#9617</a></li>
<li>Additional commits viewable in <a href="https://github.com/sphinx-doc/sphinx/compare/v4.1.2...v4.2.0">compare view</a></li>
</ul>
</details>
<br />


[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=sphinx&package-manager=pip&previous-version=4.1.2&new-version=4.2.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

## Issue 9 (#1486): Bump ipywidgets from 7.6.3 to 7.6.5

Bumps [ipywidgets](http://ipython.org) from 7.6.3 to 7.6.5.


[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=ipywidgets&package-manager=pip&previous-version=7.6.3&new-version=7.6.5)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

## Issue 10 (#1171): [BUG] Inconsistent printing behavior between Jupyter Notebook, Google Colab, and normal console

**Describe the bug**
A `rich.console.Console` instance whose target file is `/dev/null` is behaving inconsistently in Jupyter Notebook

**To Reproduce**
The code is
```python
null = open("/dev/null", "w")
console = Console(width=93, record=True, force_terminal=True, file=null)
print("PRINTING")
console.print('xyzzz')
print("DONE PRINTING")
print(console.export_text(clear=False))
print("DONE PRINTING 2")
```

The output when running as a script in python 3.8.8 is the following. It is what I expect the behavior to be.
```
PRINTING
DONE PRINTING
xyzzz

DONE PRINTING 2
```
In Jupyter Notebook running on the same python, the output is:
```
PRINTING

xyzzz

DONE PRINTING

DONE PRINTING 2
```
on a Google Colab instance running Python 3.7.10 and Jupyter Notebook 5.2.2, the output is:
```
PRINTING

xyzzz

DONE PRINTING
xyzzz

DONE PRINTING 2
```

**Platform**
Running Linux Mint 20 x86, shell is `/bin/bash`, terminal emulator for the console output is Alacritty, everything else is being run in Firefox.

**Diagnose**
For my local jupyter notebook:
```
$ !python -m rich.diagnose
╭─────────────────────── <class 'rich.console.Console'> ───────────────────────╮
│ A high level console interface.                                              │
│                                                                              │
│ ╭──────────────────────────────────────────────────────────────────────────╮ │
│ │ <console width=80 ColorSystem.TRUECOLOR>                                 │ │
│ ╰──────────────────────────────────────────────────────────────────────────╯ │
│                                                                              │
│     color_system = 'truecolor'                                               │
│         encoding = 'utf-8'                                                   │
│             file = <_io.TextIOWrapper name='<stdout>' mode='w'               │
│                    encoding='utf-8'>                                         │
│           height = 24                                                        │
│ is_dumb_terminal = False                                                     │
│   is_interactive = True                                                      │
│       is_jupyter = False                                                     │
│      is_terminal = True                                                      │
│   legacy_windows = False                                                     │
│         no_color = False                                                     │
│          options = ConsoleOptions(                                           │
│                        size=ConsoleDimensions(width=80, height=24),          │
│                        legacy_windows=False,                                 │
│                        min_width=1,                                          │
│                        max_width=80,                                         │
│                        is_terminal=True,                                     │
│                        encoding='utf-8',                                     │
│                        justify=None,                                         │
│                        overflow=None,                                        │
│                        no_wrap=False,                                        │
│                        highlight=None,                                       │
│                        height=None                                           │
│                    )                                                         │
│            quiet = False                                                     │
│           record = False                                                     │
│         safe_box = True                                                      │
│             size = ConsoleDimensions(width=80, height=24)                    │
│        soft_wrap = False                                                     │
│           stderr = False                                                     │
│            style = None                                                      │
│         tab_size = 8                                                         │
│            width = 80                                                        │
╰──────────────────────────────────────────────────────────────────────────────╯

$ !python -m rich._windows
platform="Linux"
WindowsConsoleFeatures(vt=False, truecolor=False)
$ !pip freeze | grep rich
rich==9.13.0
```
All run inside of a Jupyter Notebook cell. 

For the Google Colab notebook,
```
$ !python -m rich.diagnose
╭─────────────────────── <class 'rich.console.Console'> ───────────────────────╮
│ A high level console interface.                                              │
│                                                                              │
│ ╭──────────────────────────────────────────────────────────────────────────╮ │
│ │ <console width=80 ColorSystem.STANDARD>                                  │ │
│ ╰──────────────────────────────────────────────────────────────────────────╯ │
│                                                                              │
│     color_system = 'standard'                                                │
│         encoding = 'utf-8'                                                   │
│             file = <_io.TextIOWrapper name='<stdout>' mode='w'               │
│                    encoding='UTF-8'>                                         │
│           height = 25                                                        │
│    is_alt_screen = False                                                     │
│ is_dumb_terminal = False                                                     │
│   is_interactive = True                                                      │
│       is_jupyter = False                                                     │
│      is_terminal = True                                                      │
│   legacy_windows = False                                                     │
│         no_color = False                                                     │
│          options = ConsoleOptions(                                           │
│                        size=ConsoleDimensions(width=80, height=25),          │
│                        legacy_windows=False,                                 │
│                        min_width=1,                                          │
│                        max_width=80,                                         │
│                        is_terminal=True,                                     │
│                        encoding='utf-8',                                     │
│                        justify=None,                                         │
│                        overflow=None,                                        │
│                        no_wrap=False,                                        │
│                        highlight=None,                                       │
│                        markup=None,                                          │
│                        height=None                                           │
│                    )                                                         │
│            quiet = False                                                     │
│           record = False                                                     │
│         safe_box = True                                                      │
│             size = ConsoleDimensions(width=80, height=25)                    │
│        soft_wrap = False                                                     │
│           stderr = False                                                     │
│            style = None                                                      │
│         tab_size = 8                                                         │
│            width = 80                                                        │
╰──────────────────────────────────────────────────────────────────────────────╯

$ !python -m rich._windows
platform="Linux"
WindowsConsoleFeatures(vt=False, truecolor=False)

$ !pip freeze | grep rich
rich==10.1.0

## Issue 11 (#1161): [REQUEST] Add color to custom log levels.

**Have you checked the issues for a similar suggestions?**

I have reviewed #407 (closed) and #419, which allows subclassing the RichHandler, but there is not an obvious way to style levels.

**How would you improve Rich?**

Allow markup of custom log levels provided from the logging module in stdlib.

```python
# Current behavior 
import logging
from rich.logging import RichHandler

logging.basicConfig(
    level=LOG_LEVEL,
    format="%(message)s",
    datefmt="%X",
    handlers=[RichHandler(rich_tracebacks=True, tracebacks_show_locals=True, console=_CONSOLE)],
)
logging.addLevelName(70, "[green]CUSTOM[/]")
logging.log(70, "<MESSAGE>")

"""
Literally prints:
<TIME> [green]CUSTOM[/] <MESSAGE>
"""

# Desired behavior
logging.addLevelName(70, "[green]CUSTOM[/]")

"""
Literally prints (with color):
<TIME> CUSTOM <MESSAGE>
"""
```

**What problem does it solved for you?**

This would allow for more clear custom logging for our plugin-based architecture.

## Issue 12 (#1151): [BUG] Certain line characters (\r particularly) aren't functioning.

**Read the docs**
documentation read 😄 

**Describe the bug**
I'm making a text-based transfer system that takes pages off of a remote server and sends them to clients.
This works well, the problem happens with my "interaction menus."

They are designed in a way to use `\r` to erase the current line and reprint it, however using this library,
my `\r` calls don't seem to work (the text goes down on the next line). The parameters I've given the print function are
`print("\r", text, sep = "", end = "")`

**To Reproduce**
![image](https://user-images.githubusercontent.com/35084023/113336449-0cd2a280-92ec-11eb-9dfa-ac33a3fe1ab5.png)
^ Normally clears the current line and reprints, as to make it look smooth almost like `input()`.

**Platform**
Running on Windows 10 (64-bit), Python v3.9.1, using VSC's built-in terminal, running git bash.

**Diagnose**
![image](https://user-images.githubusercontent.com/35084023/113336677-5f13c380-92ec-11eb-8347-d1f183e54eb6.png)
![image](https://user-images.githubusercontent.com/35084023/113336720-6cc94900-92ec-11eb-9c56-cf7cb8abcbc0.png)
![image](https://user-images.githubusercontent.com/35084023/113336813-89fe1780-92ec-11eb-90d7-e37672644198.png)

## Issue 13 (#1051): [BUG] test failures with TERM=unknown

Hello,
this has been reported to Debian as http://bugs.debian.org/983326 against rich 9.11.0:

```
============================= test session starts ==============================
platform linux -- Python 3.9.2, pytest-6.0.2, py-1.10.0, pluggy-0.13.0
rootdir: /<<PKGBUILDDIR>>
collected 464 items

tests/test_align.py ..........F.....                                     [  3%]
tests/test_ansi.py .                                                     [  3%]
tests/test_bar.py .......                                                [  5%]
tests/test_block_bar.py ....                                             [  6%]
tests/test_box.py ......                                                 [  7%]
tests/test_card.py .                                                     [  7%]
tests/test_cells.py .                                                    [  7%]
tests/test_color.py ................                                     [ 11%]
tests/test_color_triplet.py ...                                          [ 11%]
tests/test_columns.py .                                                  [ 12%]
tests/test_columns_align.py .                                            [ 12%]
tests/test_console.py F............FF.....F......FFF.FFF.........F...... [ 23%]
...FF.                                                                   [ 24%]
tests/test_constrain.py .                                                [ 24%]
tests/test_containers.py ....                                            [ 25%]
tests/test_control.py ..                                                 [ 25%]
tests/test_emoji.py ....                                                 [ 26%]
tests/test_file_proxy.py ..                                              [ 27%]
tests/test_filesize.py ..                                                [ 27%]
tests/test_highlighter.py .....................................          [ 35%]
tests/test_inspect.py ........                                           [ 37%]
tests/test_jupyter.py .                                                  [ 37%]
tests/test_layout.py ..                                                  [ 37%]
tests/test_live.py .FFFFF.F.F                                            [ 40%]
tests/test_live_render.py ....                                           [ 40%]
tests/test_log.py ..                                                     [ 41%]
tests/test_logging.py FF                                                 [ 41%]
tests/test_lrucache.py .                                                 [ 42%]
tests/test_markdown.py ..                                                [ 42%]
tests/test_markdown_no_hyperlinks.py .                                   [ 42%]
tests/test_markup.py ...............                                     [ 45%]
tests/test_measure.py .....                                              [ 46%]
tests/test_padding.py .....                                              [ 48%]
tests/test_palette.py .                                                  [ 48%]
tests/test_panel.py ........                                             [ 50%]
tests/test_pick.py .                                                     [ 50%]
tests/test_pretty.py ................                                    [ 53%]
tests/test_progress.py .........FFFFF......F                             [ 58%]
tests/test_prompt.py ......                                              [ 59%]
tests/test_protocol.py ...                                               [ 60%]
tests/test_ratio.py .......                                              [ 61%]
tests/test_rich_print.py ....                                            [ 62%]
tests/test_rule.py F..FF..                                               [ 64%]
tests/test_screen.py .                                                   [ 64%]
tests/test_segment.py ...............                                    [ 67%]
tests/test_spinner.py ...                                                [ 68%]
tests/test_stack.py .                                                    [ 68%]
tests/test_status.py ..                                                  [ 68%]
tests/test_style.py ......................                               [ 73%]
tests/test_styled.py F                                                   [ 73%]
tests/test_syntax.py ............                                        [ 76%]
tests/test_table.py F....                                                [ 77%]
tests/test_tabulate.py .                                                 [ 77%]
tests/test_text.py ..................................................... [ 89%]
........................                                                 [ 94%]
tests/test_theme.py .....                                                [ 95%]
tests/test_tools.py ....                                                 [ 96%]
tests/test_traceback.py ............                                     [ 98%]
tests/test_tree.py ....s.                                                [100%]

=================================== FAILURES ===================================
____________________________ test_align_right_style ____________________________

    def test_align_right_style():
        console = Console(
            file=io.StringIO(), width=10, color_system="truecolor", force_terminal=True
        )
        console.print(Align("foo", "right", style="on blue"))
>       assert console.file.getvalue() == "\x1b[44m       \x1b[0m\x1b[44mfoo\x1b[0m\n"
E       AssertionError: assert '\x1b[44m    ...mfoo\x1b[0m\n' == '\x1b[44m    ...mfoo\x1b[0m\n'
E         - [44m       [0m[44mfoo[0m
E         + [44m                                                                             [0m[44mfoo[0m

tests/test_align.py:101: AssertionError
______________________________ test_dumb_terminal ______________________________

    def test_dumb_terminal():
        console = Console(force_terminal=True)
>       assert console.color_system is not None
E       assert None is not None
E        +  where None = <console width=80 None>.color_system

tests/test_console.py:29: AssertionError
_______________________________ test_show_cursor _______________________________

    def test_show_cursor():
        console = Console(file=io.StringIO(), force_terminal=True, legacy_windows=False)
        console.show_cursor(False)
        console.print("foo")
        console.show_cursor(True)
>       assert console.file.getvalue() == "\x1b[?25lfoo\n\x1b[?25h"
E       AssertionError: assert 'foo\n' == '\x1b[?25lfoo\n\x1b[?25h'
E         + foo
E         - [?25lfoo
E         - [?25h

tests/test_console.py:168: AssertionError
__________________________________ test_clear __________________________________

    def test_clear():
        console = Console(file=io.StringIO(), force_terminal=True)
        console.clear()
        console.clear(home=False)
>       assert console.file.getvalue() == "\033[2J\033[H" + "\033[2J"
E       AssertionError: assert '' == '\x1b[2J\x1b[H\x1b[2J'
E         - [2J[H[2J

tests/test_console.py:175: AssertionError
_________________________________ test_control _________________________________

    def test_control():
        console = Console(file=io.StringIO(), force_terminal=True)
        console.control("FOO")
        console.print("BAR")
>       assert console.file.getvalue() == "FOOBAR\n"
E       AssertionError: assert 'BAR\n' == 'FOOBAR\n'
E         - FOOBAR
E         + BAR

tests/test_console.py:213: AssertionError
______________________________ test_justify_left _______________________________

    def test_justify_left():
        console = Console(file=io.StringIO(), force_terminal=True, width=20)
        console.print("FOO", justify="left")
>       assert console.file.getvalue() == "FOO                 \n"
E       AssertionError: assert 'FOO         ...           \n' == 'FOO                 \n'
E         - FOO                 
E         + FOO

tests/test_console.py:278: AssertionError
_____________________________ test_justify_center ______________________________

    def test_justify_center():
        console = Console(file=io.StringIO(), force_terminal=True, width=20)
        console.print("FOO", justify="center")
>       assert console.file.getvalue() == "        FOO         \n"
E       AssertionError: assert '            ...           \n' == '        FOO         \n'
E         -         FOO         
E         +                                       FOO

tests/test_console.py:284: AssertionError
______________________________ test_justify_right ______________________________

    def test_justify_right():
        console = Console(file=io.StringIO(), force_terminal=True, width=20)
        console.print("FOO", justify="right")
>       assert console.file.getvalue() == "                 FOO\n"
E       AssertionError: assert '            ...        FOO\n' == '                 FOO\n'
E         -                  FOO
E         +                                                                              FOO

tests/test_console.py:290: AssertionError
_________________________ test_justify_renderable_left _________________________

    def test_justify_renderable_left():
        console = Console(
            file=io.StringIO(), force_terminal=True, width=10, legacy_windows=False
        )
        console.print(Panel("FOO", expand=False, padding=0), justify="left")
>       assert console.file.getvalue() == "╭───╮     \n│FOO│     \n╰───╯     \n"
E       AssertionError: assert '╭───╮       ...           \n' == '╭───╮     \n...n╰───╯     \n'
E         - ╭───╮     
E         - │FOO│     
E         - ╰───╯     
E         + ╭───╮                                                                           
E         + │FOO│                                                                           
E         + ╰───╯

tests/test_console.py:306: AssertionError
________________________ test_justify_renderable_center ________________________

    def test_justify_renderable_center():
        console = Console(
            file=io.StringIO(), force_terminal=True, width=10, legacy_windows=False
        )
        console.print(Panel("FOO", expand=False, padding=0), justify="center")
>       assert console.file.getvalue() == "  ╭───╮   \n  │FOO│   \n  ╰───╯   \n"
E       AssertionError: assert '            ...           \n' == '  ╭───╮   \n...n  ╰───╯   \n'
E         -   ╭───╮   
E         -   │FOO│   
E         -   ╰───╯   
E         +                                      ╭───╮                                      
E         +                                      │FOO│                                      
E         +                                      ╰───╯

tests/test_console.py:314: AssertionError
________________________ test_justify_renderable_right _________________________

    def test_justify_renderable_right():
        console = Console(
            file=io.StringIO(), force_terminal=True, width=20, legacy_windows=False
        )
        console.print(Panel("FOO", expand=False, padding=0), justify="right")
>       assert (
            console.file.getvalue()
            == "               ╭───╮\n               │FOO│\n               ╰───╯\n"
        )
E       AssertionError: assert '            ...      ╰───╯\n' == '            ...      ╰───╯\n'
E         -                ╭───╮
E         -                │FOO│
E         -                ╰───╯
E         +                                                                            ╭───╮
E         +                                                                            │FOO│
E         +                                                                            ╰───╯

tests/test_console.py:322: AssertionError
__________________________________ test_bell ___________________________________

    def test_bell() -> None:
        console = Console(force_terminal=True)
        console.begin_capture()
        console.bell()
>       assert console.end_capture() == "\x07"
E       AssertionError: assert '' == '\x07'
E         - 

tests/test_console.py:412: AssertionError
_________________________________ test_screen __________________________________

    @pytest.mark.skipif(sys.platform == "win32", reason="does not run on windows")
    def test_screen():
        console = Console(color_system=None, force_terminal=True, force_interactive=True)
        with console.capture() as capture:
            with console.screen():
                console.print("Don't panic")
        expected = "\x1b[?1049h\x1b[H\x1b[?25lDon't panic\n\x1b[?1049l\x1b[?25h"
        result = capture.get()
        print(repr(result))
>       assert result == expected
E       assert "Don't panic\n" == '\x1b[?1049h\...049l\x1b[?25h'
E         + Don't panic
E         - [?1049h[H[?25lDon't panic
E         - [?1049l[?25h

tests/test_console.py:526: AssertionError
----------------------------- Captured stdout call -----------------------------
"Don't panic\n"
______________________________ test_screen_update ______________________________

    @pytest.mark.skipif(sys.platform == "win32", reason="does not run on windows")
    def test_screen_update():
        console = Console(width=20, height=4, color_system="truecolor", force_terminal=True)
        with console.capture() as capture:
            with console.screen() as screen:
                screen.update("foo", style="blue")
                screen.update("bar")
                screen.update()
        result = capture.get()
        print(repr(result))
        expected = "\x1b[?1049h\x1b[H\x1b[?25l\x1b[34mfoo\x1b[0m\x1b[34m                 \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\x1b[34mbar\x1b[0m\x1b[34m                 \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\x1b[34mbar\x1b[0m\x1b[34m                 \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\x1b[?1049l\x1b[?25h"
>       assert result == expected
E       AssertionError: assert '\x1b[34mfoo\...      \x1b[0m' == '\x1b[?1049h\...049l\x1b[?25h'
E         - [?1049h[H[?25l[34mfoo[0m[34m                 [0m
E         ? -----------------
E         + [34mfoo[0m[34m                 [0m
E           [34m                    [0m
E           [34m                    [0m
E           [34m                    [0m[34mbar[0m[34m                 [0m
E           [34m                    [0m...
E         
E         ...Full output truncated (8 lines hidden), use '-vv' to show

tests/test_console.py:540: AssertionError
----------------------------- Captured stdout call -----------------------------
'\x1b[34mfoo\x1b[0m\x1b[34m                 \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\x1b[34mbar\x1b[0m\x1b[34m                 \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\x1b[34mbar\x1b[0m\x1b[34m                 \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m'
_____________________________ test_growing_display _____________________________

    def test_growing_display() -> None:
        console = create_capture_console()
        console.begin_capture()
        with Live(console=console, auto_refresh=False) as live:
            display = ""
            for step in range(10):
                display += f"Step {step}\n"
                live.update(display, refresh=True)
        output = console.end_capture()
        print(repr(output))
>       assert (
            output
            == "\x1b[?25lStep 0\n\r\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\nStep 9\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\nStep 9\n\n\x1b[?25h"
        )
E       AssertionError: assert 'Step 0\nStep...8\nStep 9\n\n' == '\x1b[?25lSte...\n\n\x1b[?25h'
E         - [?25lStep 0
E         - 

E         - [2K[1A[2KStep 0
E         - Step 1
E         ?      ^
E         + Step 0
E         ?      ^...
E         
E         ...Full output truncated (74 lines hidden), use '-vv' to show

tests/test_live.py:49: AssertionError
----------------------------- Captured stdout call -----------------------------
'Step 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\nStep 9\n\n'
________________________ test_growing_display_transient ________________________

    def test_growing_display_transient() -> None:
        console = create_capture_console()
        console.begin_capture()
        with Live(console=console, auto_refresh=False, transient=True) as live:
            display = ""
            for step in range(10):
                display += f"Step {step}\n"
                live.update(display, refresh=True)
        output = console.end_capture()
>       assert (
            output
            == "\x1b[?25lStep 0\n\r\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\nStep 9\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\nStep 9\n\n\x1b[?25h\r\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K"
        )
E       AssertionError: assert '\n' == '\x1b[?25lSte...x1b[1A\x1b[2K'
E         Strings contain only whitespace, escaping them using repr()
E         - '\x1b[?25lStep 0\n\r\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\...
E         
E         ...Full output truncated (2 lines hidden), use '-vv' to show

tests/test_live.py:64: AssertionError
____________________ test_growing_display_overflow_ellipsis ____________________

    def test_growing_display_overflow_ellipsis() -> None:
        console = create_capture_console(height=5)
        console.begin_capture()
        with Live(
            console=console, auto_refresh=False, vertical_overflow="ellipsis"
        ) as live:
            display = ""
            for step in range(10):
                display += f"Step {step}\n"
                live.update(display, refresh=True)
        output = console.end_capture()
>       assert (
            output
            == "\x1b[?25lStep 0\n\r\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\n                            ...                             \r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\n                            ...                             \r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\n                            ...                             \r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\n                            ...                             \r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\n                            ...                             \r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\n                            ...                             \r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\nStep 9\n\n\x1b[?25h"
        )
E       AssertionError: assert 'Step 0\nStep...8\nStep 9\n\n' == '\x1b[?25lSte...\n\n\x1b[?25h'
E         - [?25lStep 0
E         - 

E         - [2K[1A[2KStep 0
E         - Step 1
E         ?      ^
E         + Step 0
E         ?      ^...
E         
E         ...Full output truncated (53 lines hidden), use '-vv' to show

tests/test_live.py:81: AssertionError
______________________ test_growing_display_overflow_crop ______________________

    def test_growing_display_overflow_crop() -> None:
        console = create_capture_console(height=5)
        console.begin_capture()
        with Live(console=console, auto_refresh=False, vertical_overflow="crop") as live:
            display = ""
            for step in range(10):
                display += f"Step {step}\n"
                live.update(display, refresh=True)
        output = console.end_capture()
>       assert (
            output
            == "\x1b[?25lStep 0\n\r\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\nStep 9\n\n\x1b[?25h"
        )
E       AssertionError: assert 'Step 0\nStep...8\nStep 9\n\n' == '\x1b[?25lSte...\n\n\x1b[?25h'
E         - [?25lStep 0
E         - 

E         - [2K[1A[2KStep 0
E         - Step 1
E         ?      ^
E         + Step 0
E         ?      ^...
E         
E         ...Full output truncated (53 lines hidden), use '-vv' to show

tests/test_live.py:96: AssertionError
____________________ test_growing_display_overflow_visible _____________________

    def test_growing_display_overflow_visible() -> None:
        console = create_capture_console(height=5)
        console.begin_capture()
        with Live(console=console, auto_refresh=False, vertical_overflow="visible") as live:
            display = ""
            for step in range(10):
                display += f"Step {step}\n"
                live.update(display, refresh=True)
        output = console.end_capture()
>       assert (
            output
            == "\x1b[?25lStep 0\n\r\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\nStep 9\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\nStep 9\n\n\x1b[?25h"
        )
E       AssertionError: assert 'Step 0\nStep...8\nStep 9\n\n' == '\x1b[?25lSte...\n\n\x1b[?25h'
E         - [?25lStep 0
E         - 

E         - [2K[1A[2KStep 0
E         - Step 1
E         ?      ^
E         + Step 0
E         ?      ^...
E         
E         ...Full output truncated (74 lines hidden), use '-vv' to show

tests/test_live.py:111: AssertionError
____________________ test_growing_display_console_redirect _____________________

    def test_growing_display_console_redirect() -> None:
        console = create_capture_console()
        console.begin_capture()
        with Live(console=console, auto_refresh=False) as live:
            display = ""
            for step in range(10):
                console.print(f"Running step {step}")
                display += f"Step {step}\n"
                live.update(display, refresh=True)
        output = console.end_capture()
>       assert (
            output
            == "\x1b[?25lRunning step 0\n\r\x1b[2KStep 0\n\r\x1b[2K\x1b[1A\x1b[2KRunning step 1\nStep 0\n\r\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KRunning step 2\nStep 0\nStep 1\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KRunning step 3\nStep 0\nStep 1\nStep 2\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KRunning step 4\nStep 0\nStep 1\nStep 2\nStep 3\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KRunning step 5\nStep 0\nStep 1\nStep 2\nStep 3\nStep 4\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KRunning step 6\nStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KRunning step 7\nStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KRunning step 8\nStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KRunning step 9\nStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\nStep 9\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\nStep 9\n\n\x1b[?25h"
        )
E       AssertionError: assert 'Running step...8\nStep 9\n\n' == '\x1b[?25lRun...\n\n\x1b[?25h'
E         - [?25lRunning step 0
E         ? ------
E         + Running step 0
E         - 

E         - [2KStep 0
E         - 

E         - [2K[1A[2KRunning step 1...
E         
E         ...Full output truncated (147 lines hidden), use '-vv' to show

tests/test_live.py:143: AssertionError
_______________________________ test_live_screen _______________________________

    def test_live_screen() -> None:
        console = create_capture_console(width=20, height=5)
        console.begin_capture()
        with Live(Text("foo"), screen=True, console=console, auto_refresh=False) as live:
            live.refresh()
        result = console.end_capture()
        print(repr(result))
        expected = "\x1b[?1049h\x1b[H\x1b[?25l\x1b[Hfoo                 \n                    \n                    \n                    \n                    \x1b[Hfoo                 \n                    \n                    \n                    \n                    \x1b[?25h\x1b[?1049l"
>       assert result == expected
E       AssertionError: assert '' == '\x1b[?1049h\...5h\x1b[?1049l'
E         - [?1049h[H[?25l[Hfoo                 
E         -                     
E         -                     
E         -                     
E         -                     [Hfoo                 
E         -                     
E         -                     ...
E         
E         ...Full output truncated (3 lines hidden), use '-vv' to show

tests/test_live.py:172: AssertionError
----------------------------- Captured stdout call -----------------------------
''
________________________________ test_exception ________________________________

    @skip_win
    def test_exception():
        console = Console(
            file=io.StringIO(), force_terminal=True, width=140, color_system="truecolor"
        )
        handler_with_tracebacks = RichHandler(
            console=console, enable_link_path=False, rich_tracebacks=True
        )
        log.addHandler(handler_with_tracebacks)
    
        try:
            1 / 0
        except ZeroDivisionError:
            log.exception("message")
    
        render = handler_with_tracebacks.console.file.getvalue()
        print(render)
    
        assert "ZeroDivisionError" in render
        assert "message" in render
>       assert "division by zero" in render
E       AssertionError: assert 'division by zero' in '\x1b[2;36m[02/22/21 11:41:25]\x1b[0m\x1b[2;36m \x1b[0m\x1b[1;31mERROR   \x1b[0m message                          \x1b...0mdivision by                     \n                             zero                                               \n'

tests/test_logging.py:48: AssertionError
----------------------------- Captured stdout call -----------------------------
[2;36m[02/22/21 11:41:25][0m[2;36m [0m[1;31mERROR   [0m message                          [2mtest_logging.py[0m[2m:41[0m
                             [91m╭─[0m[91m [0m[1;31mTraceback [0m[1;2;31m(most recent call[0m[91m─╮[0m                   
                             [91m│[0m [2;33m/<<BUILDDIR>>/rich-9.11[0m [91m│[0m                   
                             [91m│[0m [2;33m.0/tests/[0m[1;33mtest_logging.py[0m:[94m39[0m  [91m│[0m                   
                             [91m│[0m in [92mtest_exception[0m            [91m│[0m                   
                             [91m│[0m                              [91m│[0m                   
                             [91m│[0m   [2m36 [0m[2m│   [0mlog.addHandler(hand [91m│[0m                   
                             [91m│[0m   [2m37 [0m[2m│   [0m                    [91m│[0m                   
                             [91m│[0m   [2m38 [0m[2m│   [0m[94mtry[0m:                [91m│[0m                   
                             [91m│[0m [31m❱ [0m39 [2m│   │   [0m[94m1[0m / [94m0[0m           [91m│[0m                   
                             [91m│[0m   [2m40 [0m[2m│   [0m[94mexcept[0m [96mZeroDivision[0m [91m│[0m                   
                             [91m│[0m   [2m41 [0m[2m│   │   [0mlog.exception([33m"[0m [91m│[0m                   
                             [91m╰──────────────────────────────╯[0m                   
                             [1;91mZeroDivisionError: [0mdivision by                     
                             zero                                               

------------------------------ Captured log call -------------------------------
ERROR    rich:test_logging.py:41 message
Traceback (most recent call last):
  File "/<<PKGBUILDDIR>>/tests/test_logging.py", line 39, in test_exception
    1 / 0
ZeroDivisionError: division by zero
_______________________ test_exception_with_extra_lines ________________________

    def test_exception_with_extra_lines():
        console = Console(
            file=io.StringIO(), force_terminal=True, width=140, color_system="truecolor"
        )
        handler_extra_lines = RichHandler(
            console=console,
            enable_link_path=False,
            markup=True,
            rich_tracebacks=True,
            tracebacks_extra_lines=5,
        )
        log.addHandler(handler_extra_lines)
    
        try:
            1 / 0
        except ZeroDivisionError:
            log.exception("message")
    
        render = handler_extra_lines.console.file.getvalue()
        print(render)
    
        assert "ZeroDivisionError" in render
        assert "message" in render
>       assert "division by zero" in render
E       AssertionError: assert 'division by zero' in '\x1b[2;36m[02/22/21 11:41:25]\x1b[0m\x1b[2;36m \x1b[0m\x1b[1;31mERROR   \x1b[0m message                          \x1b...0mdivision by                     \n                             zero                                               \n'

tests/test_logging.py:74: AssertionError
----------------------------- Captured stdout call -----------------------------
[2;36m[02/22/21 11:41:25][0m[2;36m [0m[1;31mERROR   [0m message                          [2mtest_logging.py[0m[2m:67[0m
                             [91m╭─[0m[91m [0m[1;31mTraceback [0m[1;2;31m(most recent call[0m[91m─╮[0m                   
                             [91m│[0m [2;33m/<<BUILDDIR>>/rich-9.11[0m [91m│[0m                   
                             [91m│[0m [2;33m.0/tests/[0m[1;33mtest_logging.py[0m:[94m65[0m  [91m│[0m                   
                             [91m│[0m in [92mtest_exception_with_extra[0m [91m│[0m                   
                             [91m│[0m [92m_lines[0m                       [91m│[0m                   
                             [91m│[0m                              [91m│[0m                   
                             [91m│[0m   [2m60 [0m[2m│   │   [0mtracebacks_extr [91m│[0m                   
                             [91m│[0m   [2m61 [0m[2m│   [0m)                   [91m│[0m                   
                             [91m│[0m   [2m62 [0m[2m│   [0mlog.addHandler(hand [91m│[0m                   
                             [91m│[0m   [2m63 [0m[2m│   [0m                    [91m│[0m                   
                             [91m│[0m   [2m64 [0m[2m│   [0m[94mtry[0m:                [91m│[0m                   
                             [91m│[0m [31m❱ [0m65 [2m│   │   [0m[94m1[0m / [94m0[0m           [91m│[0m                   
                             [91m│[0m   [2m66 [0m[2m│   [0m[94mexcept[0m [96mZeroDivision[0m [91m│[0m                   
                             [91m│[0m   [2m67 [0m[2m│   │   [0mlog.exception([33m"[0m [91m│[0m                   
                             [91m│[0m   [2m68 [0m[2m│   [0m                    [91m│[0m                   
                             [91m│[0m   [2m69 [0m[2m│   [0mrender = handler_ex [91m│[0m                   
                             [91m│[0m   [2m70 [0m[2m│   [0m[96mprint[0m(render)       [91m│[0m                   
                             [91m╰──────────────────────────────╯[0m                   
                             [1;91mZeroDivisionError: [0mdivision by                     
                             zero                                               

------------------------------ Captured log call -------------------------------
ERROR    rich:test_logging.py:67 message
Traceback (most recent call last):
  File "/<<PKGBUILDDIR>>/tests/test_logging.py", line 65, in test_exception_with_extra_lines
    1 / 0
ZeroDivisionError: division by zero
_______________________________ test_expand_bar ________________________________

    def test_expand_bar() -> None:
        console = Console(
            file=io.StringIO(),
            force_terminal=True,
            width=10,
            color_system="truecolor",
            legacy_windows=False,
        )
        progress = Progress(
            BarColumn(bar_width=None),
            console=console,
            get_time=lambda: 1.0,
            auto_refresh=False,
        )
        progress.add_task("foo")
        with progress:
            pass
        expected = "\x1b[?25l\x1b[38;5;237m━━━━━━━━━━\x1b[0m\r\x1b[2K\x1b[38;5;237m━━━━━━━━━━\x1b[0m\n\x1b[?25h"
        render_result = console.file.getvalue()
        print("RESULT\n", repr(render_result))
        print("EXPECTED\n", repr(expected))
>       assert render_result == expected
E       AssertionError: assert '\x1b[38;5;23...━━━━\x1b[0m\n' == '\x1b[?25l\x1...0m\n\x1b[?25h'
E         + [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m
E         - [?25l[38;5;237m━━━━━━━━━━[0m

E         - [2K[38;5;237m━━━━━━━━━━[0m
E         - [?25h

tests/test_progress.py:193: AssertionError
----------------------------- Captured stdout call -----------------------------
RESULT
 '\x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m\n'
EXPECTED
 '\x1b[?25l\x1b[38;5;237m━━━━━━━━━━\x1b[0m\r\x1b[2K\x1b[38;5;237m━━━━━━━━━━\x1b[0m\n\x1b[?25h'
_________________________________ test_render __________________________________

    def test_render() -> None:
        expected = "\x1b[?25lfoo  \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\nbar  \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 53%\x1b[0m \x1b[36m-:--:--\x1b[0m\nfoo2 \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2Kfoo  \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\nbar  \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 53%\x1b[0m \x1b[36m-:--:--\x1b[0m\nfoo2 \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h"
        render_result = render_progress()
        print(repr(render_result))
>       assert render_result == expected
E       AssertionError: assert 'foo  \x1b[38...0:00\x1b[0m\n' == '\x1b[?25lfoo...0m\n\x1b[?25h'
E         - [?25lfoo  [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m
E         ? ------
E         + foo  [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m
E         - bar  [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━[0m [35m 53%[0m [36m-:--:--[0m
E         - foo2 [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m

E         - [2K[1A[2K[1A[2Kfoo  [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m
E           bar  [38;2;249;38;114m━━━━━━━...
E         
E         ...Full output truncated (3 lines hidden), use '-vv' to show

tests/test_progress.py:200: AssertionError
----------------------------- Captured stdout call -----------------------------
'foo  \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\nbar  \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 53%\x1b[0m \x1b[36m-:--:--\x1b[0m\nfoo2 \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n'
__________________________________ test_track __________________________________

    def test_track() -> None:
    
        console = Console(
            file=io.StringIO(),
            force_terminal=True,
            width=60,
            color_system="truecolor",
            legacy_windows=False,
        )
        test = ["foo", "bar", "baz"]
        expected_values = iter(test)
        for value in track(
            test, "test", console=console, auto_refresh=False, get_time=MockClock(auto=True)
        ):
            assert value == next(expected_values)
        result = console.file.getvalue()
        print(repr(result))
        expected = "\x1b[?25l\r\x1b[2Ktest \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 33%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;2;249;38;114m╸\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━\x1b[0m \x1b[35m 67%\x1b[0m \x1b[36m0:00:06\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h"
        print("--")
        print("RESULT:")
        print(result)
        print(repr(result))
        print("EXPECTED:")
        print(expected)
        print(repr(expected))
    
>       assert result == expected
E       AssertionError: assert 'test \x1b[38...0:00\x1b[0m\n' == '\x1b[?25l\r\...0m\n\x1b[?25h'
E         - [?25l

E         - [2Ktest [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m

E         - [2Ktest [38;2;249;38;114m━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m 33%[0m [36m-:--:--[0m

E         - [2Ktest [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m[38;2;249;38;114m╸[0m[38;5;237m━━━━━━━━━━━━━[0m [35m 67%[0m [36m0:00:06[0m

E         - [2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m

E         - [2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m...
E         
E         ...Full output truncated (4 lines hidden), use '-vv' to show

tests/test_progress.py:229: AssertionError
----------------------------- Captured stdout call -----------------------------
'test \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n'
--
RESULT:
test [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m

'test \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n'
EXPECTED:
[?25l
[2Ktest [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m
[2Ktest [38;2;249;38;114m━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m 33%[0m [36m-:--:--[0m
[2Ktest [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m[38;2;249;38;114m╸[0m[38;5;237m━━━━━━━━━━━━━[0m [35m 67%[0m [36m0:00:06[0m
[2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
[2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
[?25h
'\x1b[?25l\r\x1b[2Ktest \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 33%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;2;249;38;114m╸\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━\x1b[0m \x1b[35m 67%\x1b[0m \x1b[36m0:00:06\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h'
_____________________________ test_progress_track ______________________________

    def test_progress_track() -> None:
        console = Console(
            file=io.StringIO(),
            force_terminal=True,
            width=60,
            color_system="truecolor",
            legacy_windows=False,
        )
        progress = Progress(
            console=console, auto_refresh=False, get_time=MockClock(auto=True)
        )
        test = ["foo", "bar", "baz"]
        expected_values = iter(test)
        with progress:
            for value in progress.track(test, description="test"):
                assert value == next(expected_values)
        result = console.file.getvalue()
        print(repr(result))
        expected = "\x1b[?25l\r\x1b[2Ktest \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 33%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;2;249;38;114m╸\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━\x1b[0m \x1b[35m 67%\x1b[0m \x1b[36m0:00:06\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h"
    
        print(expected)
        print(repr(expected))
        print(result)
        print(repr(result))
    
>       assert result == expected
E       AssertionError: assert 'test \x1b[38...0:00\x1b[0m\n' == '\x1b[?25l\r\...0m\n\x1b[?25h'
E         - [?25l

E         - [2Ktest [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m

E         - [2Ktest [38;2;249;38;114m━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m 33%[0m [36m-:--:--[0m

E         - [2Ktest [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m[38;2;249;38;114m╸[0m[38;5;237m━━━━━━━━━━━━━[0m [35m 67%[0m [36m0:00:06[0m

E         - [2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m

E         - [2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m...
E         
E         ...Full output truncated (4 lines hidden), use '-vv' to show

tests/test_progress.py:261: AssertionError
----------------------------- Captured stdout call -----------------------------
'test \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n'
[?25l
[2Ktest [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m
[2Ktest [38;2;249;38;114m━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m 33%[0m [36m-:--:--[0m
[2Ktest [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m[38;2;249;38;114m╸[0m[38;5;237m━━━━━━━━━━━━━[0m [35m 67%[0m [36m0:00:06[0m
[2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
[2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
[?25h
'\x1b[?25l\r\x1b[2Ktest \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 33%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;2;249;38;114m╸\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━\x1b[0m \x1b[35m 67%\x1b[0m \x1b[36m0:00:06\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h'
test [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m

'test \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n'
_________________________________ test_columns _________________________________

    def test_columns() -> None:
    
        console = Console(
            file=io.StringIO(),
            force_terminal=True,
            width=80,
            log_time_format="[TIME]",
            color_system="truecolor",
            legacy_windows=False,
            log_path=False,
        )
        progress = Progress(
            "test",
            TextColumn("{task.description}"),
            BarColumn(bar_width=None),
            TimeRemainingColumn(),
            TimeElapsedColumn(),
            FileSizeColumn(),
            TotalFileSizeColumn(),
            DownloadColumn(),
            TransferSpeedColumn(),
            transient=True,
            console=console,
            auto_refresh=False,
            get_time=MockClock(),
        )
        task1 = progress.add_task("foo", total=10)
        task2 = progress.add_task("bar", total=7)
        with progress:
            for n in range(4):
                progress.advance(task1, 3)
                progress.advance(task2, 4)
            print("foo")
            console.log("hello")
            console.print("world")
            progress.refresh()
        from .render import replace_link_ids
    
        result = replace_link_ids(console.file.getvalue())
        print(repr(result))
        expected = "\x1b[?25ltest foo \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:37\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m0/10 bytes\x1b[0m \x1b[31m?\x1b[0m\ntest bar \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:36\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m0/7 bytes \x1b[0m \x1b[31m?\x1b[0m\r\x1b[2K\x1b[1A\x1b[2Kfoo\ntest foo \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:37\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m0/10 bytes\x1b[0m \x1b[31m?\x1b[0m\ntest bar \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:36\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m0/7 bytes \x1b[0m \x1b[31m?\x1b[0m\r\x1b[2K\x1b[1A\x1b[2K\x1b[2;36m[TIME]\x1b[0m\x1b[2;36m \x1b[0mhello                                                                    \ntest foo \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:37\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m0/10 bytes\x1b[0m \x1b[31m?\x1b[0m\ntest bar \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:36\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m0/7 bytes \x1b[0m \x1b[31m?\x1b[0m\r\x1b[2K\x1b[1A\x1b[2Kworld\ntest foo \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:37\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m0/10 bytes\x1b[0m \x1b[31m?\x1b[0m\ntest bar \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:36\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m0/7 bytes \x1b[0m \x1b[31m?\x1b[0m\r\x1b[2K\x1b[1A\x1b[2Ktest foo \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m0:00:00\x1b[0m \x1b[33m0:01:00\x1b[0m \x1b[32m12 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m12/10 bytes\x1b[0m \x1b[31m1 byte/s\x1b[0m\ntest bar \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m0:00:00\x1b[0m \x1b[33m0:00:45\x1b[0m \x1b[32m16 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m16/7 bytes \x1b[0m \x1b[31m1 byte/s\x1b[0m\r\x1b[2K\x1b[1A\x1b[2Ktest foo \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m0:00:00\x1b[0m \x1b[33m0:01:00\x1b[0m \x1b[32m12 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m12/10 bytes\x1b[0m \x1b[31m1 byte/s\x1b[0m\ntest bar \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m0:00:00\x1b[0m \x1b[33m0:00:45\x1b[0m \x1b[32m16 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m16/7 bytes \x1b[0m \x1b[31m1 byte/s\x1b[0m\n\x1b[?25h\r\x1b[1A\x1b[2K\x1b[1A\x1b[2K"
>       assert result == expected
E       AssertionError: assert 'foo\n\x1b[2;...  \nworld\n\n' == '\x1b[?25ltes...x1b[1A\x1b[2K'
E         + foo
E         - [?25ltest foo [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━[0m [36m-:--:--[0m [33m0:00:37[0m [32m0 bytes[0m [32m10 bytes[0m [32m0/10 bytes[0m [31m?[0m
E         - test bar [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━[0m [36m-:--:--[0m [33m0:00:36[0m [32m0 bytes[0m [32m7 bytes [0m [32m0/7 bytes [0m [31m?[0m

E         - [2K[1A[2Kfoo
E         - test foo [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━[0m [36m-:--:--[0m [33m0:00:37[0m [32m0 bytes[0m [32m10 bytes[0m [32m0/10 bytes[0m [31m?[0m
E         - test bar [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━[0m [36m-:--:--[0m [33m0:00:36[0m [32m0 b...
E         
E         ...Full output truncated (17 lines hidden), use '-vv' to show

tests/test_progress.py:309: AssertionError
----------------------------- Captured stdout call -----------------------------
'foo\n\x1b[2;36m[TIME]\x1b[0m\x1b[2;36m \x1b[0mhello                                                                    \nworld\n\n'
__________________________ test_progress_max_refresh ___________________________

    def test_progress_max_refresh() -> None:
        """Test max_refresh argment."""
        time = 0.0
    
        def get_time() -> float:
            nonlocal time
            try:
                return time
            finally:
                time = time + 1.0
    
        console = Console(
            color_system=None, width=80, legacy_windows=False, force_terminal=True
        )
        column = TextColumn("{task.description}")
        column.max_refresh = 3
        progress = Progress(
            column,
            get_time=get_time,
            auto_refresh=False,
            console=console,
        )
        console.begin_capture()
        with progress:
            task_id = progress.add_task("start")
            for tick in range(6):
                progress.update(task_id, description=f"tick {tick}")
                progress.refresh()
        result = console.end_capture()
        print(repr(result))
>       assert (
            result
            == "\x1b[?25l\r\x1b[2Kstart\r\x1b[2Kstart\r\x1b[2Ktick 1\r\x1b[2Ktick 1\r\x1b[2Ktick 3\r\x1b[2Ktick 3\r\x1b[2Ktick 5\r\x1b[2Ktick 5\n\x1b[?25h"
        )
E       AssertionError: assert 'tick 5\n' == '\x1b[?25l\r\... 5\n\x1b[?25h'
E         - [?25l

E         - [2Kstart

E         - [2Kstart

E         - [2Ktick 1

E         - [2Ktick 1

E         - [2Ktick 3

E         - [2Ktick 3
...
E         
E         ...Full output truncated (6 lines hidden), use '-vv' to show

tests/test_progress.py:421: AssertionError
----------------------------- Captured stdout call -----------------------------
'tick 5\n'
__________________________________ test_rule ___________________________________

    def test_rule():
        console = Console(
            width=16, file=io.StringIO(), force_terminal=True, legacy_windows=False
        )
        console.print(Rule())
        console.print(Rule("foo"))
        console.rule(Text("foo", style="bold"))
        console.rule("foobarbazeggfoobarbazegg")
        expected = "\x1b[92m────────────────\x1b[0m\n"
        expected += "\x1b[92m───── \x1b[0mfoo\x1b[92m ──────\x1b[0m\n"
        expected += "\x1b[92m───── \x1b[0m\x1b[1mfoo\x1b[0m\x1b[92m ──────\x1b[0m\n"
        expected += "\x1b[92m─ \x1b[0mfoobarbazeg…\x1b[92m ─\x1b[0m\n"
    
        result = console.file.getvalue()
>       assert result == expected
E       AssertionError: assert '────────────...───────────\n' == '\x1b[92m────...2m ─\x1b[0m\n'
E         - [92m────────────────[0m
E         - [92m───── [0mfoo[92m ──────[0m
E         - [92m───── [0m[1mfoo[0m[92m ──────[0m
E         - [92m─ [0mfoobarbazeg…[92m ─[0m
E         + ────────────────────────────────────────────────────────────────────────────────
E         + ───────────────────────────────────── foo ──────────────────────────────────────
E         + ───────────────────────────────────── foo ──────────────────────────────────────...
E         
E         ...Full output truncated (2 lines hidden), use '-vv' to show

tests/test_rule.py:24: AssertionError
________________________________ test_rule_cjk _________________________________

    def test_rule_cjk():
        console = Console(
            width=16,
            file=io.StringIO(),
            force_terminal=True,
            color_system=None,
            legacy_windows=False,
        )
        console.rule("欢迎！")
        expected = "──── 欢迎！ ────\n"
>       assert console.file.getvalue() == expected
E       AssertionError: assert '────────────...───────────\n' == '──── 欢迎！ ────\n'
E         - ──── 欢迎！ ────
E         + ──────────────────────────────────── 欢迎！ ────────────────────────────────────

tests/test_rule.py:56: AssertionError
_______________________________ test_characters ________________________________

    def test_characters():
        console = Console(
            width=16,
            file=io.StringIO(),
            force_terminal=True,
            color_system=None,
            legacy_windows=False,
        )
        console.rule(characters="+*")
        console.rule("foo", characters="+*")
        console.print(Rule(characters=".,"))
        expected = "+*+*+*+*+*+*+*+*\n"
        expected += "+*+*+ foo +*+*+*\n"
        expected += ".,.,.,.,.,.,.,.,\n"
>       assert console.file.getvalue() == expected
E       AssertionError: assert '+*+*+*+*+*+*...,.,.,.,.,.,\n' == '+*+*+*+*+*+*...,.,.,.,.,.,\n'
E         - +*+*+*+*+*+*+*+*
E         - +*+*+ foo +*+*+*
E         - .,.,.,.,.,.,.,.,
E         + +*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*
E         + +*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+ foo +*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*
E         + .,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,

tests/test_rule.py:73: AssertionError
_________________________________ test_styled __________________________________

    def test_styled():
        styled_foo = Styled("foo", "on red")
        console = Console(file=io.StringIO(), force_terminal=True)
        assert Measurement.get(console, styled_foo, 80) == Measurement(3, 3)
        console.print(styled_foo)
        result = console.file.getvalue()
        expected = "\x1b[41mfoo\x1b[0m\n"
>       assert result == expected
E       AssertionError: assert 'foo\n' == '\x1b[41mfoo\x1b[0m\n'
E         - [41mfoo[0m
E         + foo

tests/test_styled.py:15: AssertionError
______________________________ test_render_table _______________________________

    def test_render_table():
        expected = " test table \n┏━━━━━━┳━┳━┓\n┃ foo  ┃ ┃ ┃\n┡━━━━━━╇━╇━┩\n│ Ave… │ │ │\n└──────┴─┴─┘\n   table    \n  caption   \n   test table    \n┏━━━━━━━━━━━┳━┳━┓\n┃ foo       ┃ ┃ ┃\n┡━━━━━━━━━━━╇━╇━┩\n│ Averlong… │ │ │\n└───────────┴─┴─┘\n  table caption  \n      test table      \n┏━━━━━━━━━━━━━━━━┳━┳━┓\n┃ foo            ┃ ┃ ┃\n┡━━━━━━━━━━━━━━━━╇━╇━┩\n│ Averlongwordg… │ │ │\n└────────────────┴─┴─┘\n    table caption     \n        test table         \n┏━━━━━━━━━━━━━━━━━━━━━┳━┳━┓\n┃ foo                 ┃ ┃ ┃\n┡━━━━━━━━━━━━━━━━━━━━━╇━╇━┩\n│ Averlongwordgoeshe… │ │ │\n└─────────────────────┴─┴─┘\n       table caption       \n          test table          \n┏━━━━━━━━━━━━━━━━━━━━━━┳━━┳━━┓\n┃ foo                  ┃  ┃  ┃\n┡━━━━━━━━━━━━━━━━━━━━━━╇━━╇━━┩\n│ Averlongwordgoeshere │  │  │\n└──────────────────────┴──┴──┘\n        table caption         \n            test table             \n┏━━━━━━━━━━━━━━━━━━━━━━┳━━━━━┳━━━━┓\n┃ foo                  ┃ bar ┃ b… ┃\n┡━━━━━━━━━━━━━━━━━━━━━━╇━━━━━╇━━━━┩\n│ Averlongwordgoeshere │ ba… │    │\n│                      │ pa… │    │\n└──────────────────────┴─────┴────┘\n           table caption           \n               test table               \n┏━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━┳━━━━━┓\n┃ foo                  ┃   bar   ┃ baz ┃\n┡━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━╇━━━━━┩\n│ Averlongwordgoeshere │ banana  │     │\n│                      │ pancak… │     │\n└──────────────────────┴─────────┴─────┘\n             table caption              \n                 test table                  \n┏━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━┳━━━━━┓\n┃ foo                  ┃     bar      ┃ baz ┃\n┡━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━━━━╇━━━━━┩\n│ Averlongwordgoeshere │    banana    │     │\n│                      │   pancakes   │     │\n└──────────────────────┴──────────────┴─────┘\n                table caption                \n                    test table                    \n┏━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━━┳━━━━━┓\n┃ foo                   ┃       bar        ┃ baz ┃\n┡━━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━━━━━━━━╇━━━━━┩\n│ Averlongwordgoeshere  │ banana pancakes  │     │\n└───────────────────────┴──────────────────┴─────┘\n                  table caption                   \n                      test table                       \n┏━━━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━━━━┳━━━━━┓\n┃ foo                      ┃        bar         ┃ baz ┃\n┡━━━━━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━━━━━━━━━━╇━━━━━┩\n│ Averlongwordgoeshere     │  banana pancakes   │     │\n└──────────────────────────┴────────────────────┴─────┘\n                     table caption                     \n                   test table                               \n┏━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━┳━━━━━┓            \n┃ foo                  ┃       bar       ┃ baz ┃            \n┡━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━━━━━━━╇━━━━━┩            \n│ Averlongwordgoeshere │ banana pancakes │     │            \n└──────────────────────┴─────────────────┴─────┘            \n                 table caption                              \n                         test table                         \n      ┏━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━┳━━━━━┓      \n      ┃ foo                  ┃       bar       ┃ baz ┃      \n      ┡━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━━━━━━━╇━━━━━┩      \n      │ Averlongwordgoeshere │ banana pancakes │     │      \n      └──────────────────────┴─────────────────┴─────┘      \n                       table caption                        \n                               test table                   \n            ┏━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━┳━━━━━┓\n            ┃ foo                  ┃       bar       ┃ baz ┃\n            ┡━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━━━━━━━╇━━━━━┩\n            │ Averlongwordgoeshere │ banana pancakes │     │\n            └──────────────────────┴─────────────────┴─────┘\n                             table caption                  \n                        test table                         \n┏━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━┳━━━━━┳━━━━━━━━━━┓\n┃ foo                  ┃       bar       ┃ baz ┃          ┃\n┡━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━━━━━━━╇━━━━━╇━━━━━━━━━━┩\n│ Averlongwordgoeshere │ banana pancakes │     │          │\n│ Coffee               │                 │     │          │\n│ Coffee               │    Chocolate    │     │ cinnamon │\n└──────────────────────┴─────────────────┴─────┴──────────┘\n                       table caption                       \n                        test table                         \n┏━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━┳━━━━━┳━━━━━━━━━━┓\n┃ foo                  ┃       bar       ┃ baz ┃          ┃\n┡━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━━━━━━━╇━━━━━╇━━━━━━━━━━┩\n│ Averlongwordgoeshere │ banana pancakes │     │          │\n├──────────────────────┼─────────────────┼─────┼──────────┤\n│ Coffee               │                 │     │          │\n├──────────────────────┼─────────────────┼─────┼──────────┤\n│ Coffee               │    Chocolate    │     │ cinnamon │\n└──────────────────────┴─────────────────┴─────┴──────────┘\n                       table caption                       \n                        test table                         \n┏━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━┳━━━━━┳━━━━━━━━━━┓\n┃ foo                  ┃       bar       ┃ baz ┃          ┃\n┡━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━━━━━━━╇━━━━━╇━━━━━━━━━━┩\n│ Averlongwordgoeshere │ banana pancakes │     │          │\n├──────────────────────┼─────────────────┼─────┼──────────┤\n│ Coffee               │                 │     │          │\n├──────────────────────┼─────────────────┼─────┼──────────┤\n│ Coffee               │    Chocolate    │     │ cinnamon │\n├──────────────────────┼─────────────────┼─────┼──────────┤\n│ total                │                 │     │          │\n└──────────────────────┴─────────────────┴─────┴──────────┘\n                       table caption                       \n                       test table                        \n foo                  ┃       bar       ┃ baz ┃          \n━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━━━━━━━╇━━━━━╇━━━━━━━━━━\n Averlongwordgoeshere │ banana pancakes │     │          \n──────────────────────┼─────────────────┼─────┼──────────\n Coffee               │                 │     │          \n──────────────────────┼─────────────────┼─────┼──────────\n Coffee               │    Chocolate    │     │ cinnamon \n──────────────────────┼─────────────────┼─────┼──────────\n total                │                 │     │          \n                      table caption                      \n                       test table                        \n                      ┃                 ┃     ┃          \n foo                  ┃       bar       ┃ baz ┃          \n                      ┃                 ┃     ┃          \n━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━━━━━━━╇━━━━━╇━━━━━━━━━━\n                      │                 │     │          \n Averlongwordgoeshere │ banana pancakes │     │          \n                      │                 │     │          \n──────────────────────┼─────────────────┼─────┼──────────\n                      │                 │     │          \n Coffee               │                 │     │          \n                      │                 │     │          \n──────────────────────┼─────────────────┼─────┼──────────\n                      │                 │     │          \n Coffee               │    Chocolate    │     │ cinnamon \n                      │                 │     │          \n──────────────────────┼─────────────────┼─────┼──────────\n                      │                 │     │          \n total                │                 │     │          \n                      │                 │     │          \n                      table caption                      \n      test table       \n                 ┃ ┃ ┃ \n foo             ┃ ┃ ┃ \n                 ┃ ┃ ┃ \n━━━━━━━━━━━━━━━━━╇━╇━╇━\n                 │ │ │ \n Averlongwordgo… │ │ │ \n                 │ │ │ \n─────────────────┼─┼─┼─\n                 │ │ │ \n Coffee          │ │ │ \n                 │ │ │ \n─────────────────┼─┼─┼─\n                 │ │ │ \n Coffee          │ │ │ \n                 │ │ │ \n─────────────────┼─┼─┼─\n                 │ │ │ \n total           │ │ │ \n                 │ │ │ \n     table caption     \n       test table       \n          ┃         ┃ ┃ \n foo      ┃   bar   ┃ ┃ \n          ┃         ┃ ┃ \n━━━━━━━━━━╇━━━━━━━━━╇━╇━\n          │         │ │ \n Averlon… │ banana… │ │ \n          │         │ │ \n──────────┼─────────┼─┼─\n          │         │ │ \n Coffee   │         │ │ \n          │         │ │ \n──────────┼─────────┼─┼─\n          │         │ │ \n Coffee   │ Chocol… │ │ \n          │         │ │ \n──────────┼─────────┼─┼─\n          │         │ │ \n total    │         │ │ \n          │         │ │ \n     table caption      \n                         test table                         \nfoo                      ┃        bar        ┃ baz┃         \n━━━━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━━━━━━━━━╇━━━━╇━━━━━━━━━\nAverlongwordgoeshere     │  banana pancakes  │    │         \n                         │                   │    │         \nCoffee                   │                   │    │         \n                         │                   │    │         \nCoffee                   │     Chocolate     │    │cinnamon \n─────────────────────────┼───────────────────┼────┼─────────\ntotal                    │                   │    │         \n                       table caption                        \n"
>       assert render_tables() == expected
E       AssertionError: assert ' test table ...           \n' == ' test table ...           \n'
E         Skipping 2587 identical leading characters in diff, use -v to show
E         -           
E         +                               
E         - ┏━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━┳━━━━━┓            
E         + ┏━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━┳━━━━━┓                                
E         ?                                                             ++++++++++++++++++++
E         - ┃ foo                  ┃       bar       ┃ baz ┃            ...
E         
E         ...Full output truncated (175 lines hidden), use '-vv' to show

tests/test_table.py:84: AssertionError
=========================== short test summary info ============================
FAILED tests/test_align.py::test_align_right_style - AssertionError: assert '...
FAILED tests/test_console.py::test_dumb_terminal - assert None is not None
FAILED tests/test_console.py::test_show_cursor - AssertionError: assert 'foo\...
FAILED tests/test_console.py::test_clear - AssertionError: assert '' == '\x1b...
FAILED tests/test_console.py::test_control - AssertionError: assert 'BAR\n' =...
FAILED tests/test_console.py::test_justify_left - AssertionError: assert 'FOO...
FAILED tests/test_console.py::test_justify_center - AssertionError: assert ' ...
FAILED tests/test_console.py::test_justify_right - AssertionError: assert '  ...
FAILED tests/test_console.py::test_justify_renderable_left - AssertionError: ...
FAILED tests/test_console.py::test_justify_renderable_center - AssertionError...
FAILED tests/test_console.py::test_justify_renderable_right - AssertionError:...
FAILED tests/test_console.py::test_bell - AssertionError: assert '' == '\x07'
FAILED tests/test_console.py::test_screen - assert "Don't panic\n" == '\x1b[?...
FAILED tests/test_console.py::test_screen_update - AssertionError: assert '\x...
FAILED tests/test_live.py::test_growing_display - AssertionError: assert 'Ste...
FAILED tests/test_live.py::test_growing_display_transient - AssertionError: a...
FAILED tests/test_live.py::test_growing_display_overflow_ellipsis - Assertion...
FAILED tests/test_live.py::test_growing_display_overflow_crop - AssertionErro...
FAILED tests/test_live.py::test_growing_display_overflow_visible - AssertionE...
FAILED tests/test_live.py::test_growing_display_console_redirect - AssertionE...
FAILED tests/test_live.py::test_live_screen - AssertionError: assert '' == '\...
FAILED tests/test_logging.py::test_exception - AssertionError: assert 'divisi...
FAILED tests/test_logging.py::test_exception_with_extra_lines - AssertionErro...
FAILED tests/test_progress.py::test_expand_bar - AssertionError: assert '\x1b...
FAILED tests/test_progress.py::test_render - AssertionError: assert 'foo  \x1...
FAILED tests/test_progress.py::test_track - AssertionError: assert 'test \x1b...
FAILED tests/test_progress.py::test_progress_track - AssertionError: assert '...
FAILED tests/test_progress.py::test_columns - AssertionError: assert 'foo\n\x...
FAILED tests/test_progress.py::test_progress_max_refresh - AssertionError: as...
FAILED tests/test_rule.py::test_rule - AssertionError: assert '────────────.....
FAILED tests/test_rule.py::test_rule_cjk - AssertionError: assert '──────────...
FAILED tests/test_rule.py::test_characters - AssertionError: assert '+*+*+*+*...
FAILED tests/test_styled.py::test_styled - AssertionError: assert 'foo\n' == ...
FAILED tests/test_table.py::test_render_table - AssertionError: assert ' test...
================== 34 failed, 429 passed, 1 skipped in 6.05s ===================
```

## Issue 14 (#1129): [REQUEST] Table row style should overwrite table style

**Describe the bug**
When making a table, setting the `style` on a row does nothing if it's been set on the `table`.

Setting colours in-line with colour strings does work as expected.

**To Reproduce**

```python
from rich.table import Table
from rich import print

table = Table(style="green")
table.add_column("RESULTS SUMMARY")
table.add_row("[✔] 3 Tests Passed", style="green")
table.add_row("[1] 5 Test Warnings", style="yellow")
table.add_row("[✗] 9 Tests Failed", style="red")
print(table)

table = Table(style="green")
table.add_column("RESULTS SUMMARY")
table.add_row("[green][✔] 3 Tests Passed")
table.add_row("[yellow][1] 5 Test Warnings")
table.add_row("[red][✗] 9 Tests Failed")
print(table)
```

<img src="https://user-images.githubusercontent.com/465550/112146178-90e5a580-8bdb-11eb-9f90-f1f878665446.png" height=300>

## Issue 15 (#1050): [BUG] Syntax class does not display all content

**Describe the bug**

When nesting a Syntax class (with line_numbers and word_wrap enabled) inside a Panel inside a Layout, only the first line is displayed.

**To Reproduce**

`print(Layout(Panel(Syntax('import stuff\nwhile True:\n  print("hello!!!!")\n','python',line_numbers=True, word_wrap=True))))`

**Platform**
Linux

## Issue 16 (#1220): [REQUEST] Support UserDict derivatives

**Support for UserDict / UserList**

Ideally I would like `rich.pretty.pprint(x)` for x an instance of a UserDict to render correctly. Right now it comes down to its `__repr__` which is a string. `pprint.pprint` works for such objects.

I tried monkey patching things into the `rich.pretty` package but couldn't get it to work.

Thanks!

## Issue 17 (#1088): [BUG] Using rich.syntax CLI with line numbers and indent has incorrect background

**Read the docs**
Done. For others reading this issue: https://rich.readthedocs.io/en/latest/syntax.html


**Describe the bug**
The background set using `rich.syntax -b` is not applied to the line numbers or indents (`-l -i` flags).

**To Reproduce**
```
python -m rich.syntax -ilb '#000000' rich/diagnose.py
```
![syntax_background_issue](https://user-images.githubusercontent.com/16343359/109925047-124db600-7c76-11eb-9565-56bd5ee3e577.png)

**Code section**
I think this is the relevant section. I found that background_color is set to my `-b` option, but then highlight_number_style is not set to what is expected (?).

The strange thing is that the card printed using `python -m rich` looks completely fine to me.

```python
rich/syntax.py
421     def _get_line_numbers_color(self, blend: float = 0.3) -> Color:
422     ┆   background_color = self._theme.get_background_style().bgcolor
423     ┆   if background_color is None or background_color.is_system_defined:
424     ┆   ┆   return background_color or Color.default()
425     ┆   foreground_color = self._get_token_color(Token.Text)
426     ┆   if foreground_color is None or foreground_color.is_system_defined:
427     ┆   ┆   return foreground_color or Color.default()
428     ┆   new_color = blend_rgb(
429     ┆   ┆   background_color.get_truecolor(),
430     ┆   ┆   foreground_color.get_truecolor(),
431     ┆   ┆   cross_fade=blend,
432     ┆   )
433     ┆   return Color.from_triplet(new_color)
434
435     @property
436     def _numbers_column_width(self) -> int:
437     ┆   """Get the number of characters used to render the numbers column."""
438     ┆   column_width = 0
439     ┆   if self.line_numbers:
440     ┆   ┆   column_width = len(str(self.start_line + self.code.count("\n"))) + 2
441     ┆   return column_width
442
443     def _get_number_styles(self, console: Console) -> Tuple[Style, Style, Style]:
444     ┆   """Get background, number, and highlight styles for line numbers."""
445     ┆   background_style = self._get_base_style()
446     ┆   if background_style.transparent_background:
447     ┆   ┆   return Style.null(), Style(dim=True), Style.null()
448     ┆   if console.color_system in ("256", "truecolor"):
449     ┆   ┆   number_style = Style.chain(
450     ┆   ┆   ┆   background_style,
451     ┆   ┆   ┆   self._theme.get_style_for_token(Token.Text),
452     ┆   ┆   ┆   Style(color=self._get_line_numbers_color()),
453     ┆   ┆   )
454     ┆   ┆   highlight_number_style = Style.chain(
455     ┆   ┆   ┆   background_style,
456     ┆   ┆   ┆   self._theme.get_style_for_token(Token.Text),
457     ┆   ┆   ┆   Style(bold=True, color=self._get_line_numbers_color(0.9)),
458     ┆   ┆   )
459     ┆   else:
460     ┆   ┆   number_style = background_style + Style(dim=True)
461     ┆   ┆   highlight_number_style = background_style + Style(dim=False)
462     ┆   return background_style, number_style, highlight_number_style
```

**Platform**
I'm on Arch Linux using the kitty terminal (tested on alacritty as well).


**Diagnose**
```
$ python -m rich.diagnose
╭─────────────────────────────────────── <class 'rich.console.Console'> ───────────────────────────────────────╮
│ A high level console interface.                                                                              │
│                                                                                                              │
│ ╭──────────────────────────────────────────────────────────────────────────────────────────────────────────╮ │
│ │ <console width=112 ColorSystem.TRUECOLOR>                                                                │ │
│ ╰──────────────────────────────────────────────────────────────────────────────────────────────────────────╯ │
│                                                                                                              │
│     color_system = 'truecolor'                                                                               │
│         encoding = 'utf-8'                                                                                   │
│             file = <_io.TextIOWrapper name='<stdout>' mode='w' encoding='utf-8'>                             │
│           height = 57                                                                                        │
│ is_dumb_terminal = False                                                                                     │
│   is_interactive = True                                                                                      │
│       is_jupyter = False                                                                                     │
│      is_terminal = True                                                                                      │
│   legacy_windows = False                                                                                     │
│         no_color = False                                                                                     │
│          options = ConsoleOptions(size=ConsoleDimensions(width=112, height=57), legacy_windows=False,        │
│                    min_width=1, max_width=112, is_terminal=True, encoding='utf-8', justify=None,             │
│                    overflow=None, no_wrap=False, highlight=None, height=None)                                │
│            quiet = False                                                                                     │
│           record = False                                                                                     │
│         safe_box = True                                                                                      │
│             size = ConsoleDimensions(width=112, height=57)                                                   │
│        soft_wrap = False                                                                                     │
│           stderr = False                                                                                     │
│            style = None                                                                                      │
│         tab_size = 8                                                                                         │
│            width = 112                                                                                       │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
```

I'm happy to help troubleshoot and/or fix the bug once we get it figured out.

## Issue 18 (#1492): [BUG] TypeError not callable : rich.print_exception

Hello !

**Describe the bug**
I use print_exception with uvicorn and print_exception got an exception "Field not Callable", I patched [uvicorn/protocols/http/httptools_impl.py:404](https://github.com/encode/uvicorn/blob/master/uvicorn/protocols/http/httptools_impl.py#L376) this way
```python
        except BaseException as exc:
            msg = "Exception in ASGI application\n"
            # PATCH start
            from rich.console import Console

            self.console = Console()
            self.console.print_exception(extra_lines=5, show_locals=True)
            # PATCH end
            self.logger.error(msg, exc_info=exc)
            if not self.response_started:
                await self.send_500_response()
            else:
                self.transport.close()
```
The exception which occured (the first part is the error in my side ; the second is the error in rich, both printed by uvicorn)
```
future: <Task finished name='Task-5' coro=<RequestResponseCycle.run_asgi() done, defined at .venv/lib/python3.9/site-packages/uvicorn/protocols/http/httptools_impl.py:396> exception=TypeError("'Field' object is not callable")>
Traceback (most recent call last):
  File ".venv/lib/python3.9/site-packages/uvicorn/protocols/http/httptools_impl.py", line 398, in run_asgi
    result = await app(self.scope, self.receive, self.send)
  File ".venv/lib/python3.9/site-packages/uvicorn/middleware/proxy_headers.py", line 45, in __call__
    return await self.app(scope, receive, send)
  File ".venv/lib/python3.9/site-packages/fastapi/applications.py", line 199, in __call__
    await super().__call__(scope, receive, send)
  File ".venv/lib/python3.9/site-packages/starlette/applications.py", line 112, in __call__
    await self.middleware_stack(scope, receive, send)
  File ".venv/lib/python3.9/site-packages/starlette/middleware/errors.py", line 181, in __call__
    raise exc from None
  File ".venv/lib/python3.9/site-packages/starlette/middleware/errors.py", line 159, in __call__
    await self.app(scope, receive, _send)
  File ".venv/lib/python3.9/site-packages/starlette/exceptions.py", line 82, in __call__
    raise exc from None
  File ".venv/lib/python3.9/site-packages/starlette/exceptions.py", line 71, in __call__
    await self.app(scope, receive, sender)
  File ".venv/lib/python3.9/site-packages/starlette/routing.py", line 580, in __call__
    await route.handle(scope, receive, send)
  File ".venv/lib/python3.9/site-packages/starlette/routing.py", line 241, in handle
    await self.app(scope, receive, send)
  File ".venv/lib/python3.9/site-packages/starlette/routing.py", line 52, in app
    response = await func(request)
  File ".venv/lib/python3.9/site-packages/fastapi/routing.py", line 201, in app
    raw_response = await run_endpoint_function(
  File ".venv/lib/python3.9/site-packages/fastapi/routing.py", line 148, in run_endpoint_function
    return await dependant.call(**values)
  File "./openapi_server/utils/routes.py", line 26, in filter_fields
    response = await func(*args, **kwargs)
  File "./openapi_server/apis/geographic_address_api.py", line 74, in list_geographic_address
    return await handler.objects()
  File "business/business/handlers/handler.py", line 39, in objects
    query_set = await self.query_set.limit(self.limit)
  File ".venv/lib/python3.9/site-packages/tortoise/queryset.py", line 900, in __await__
    self._make_query()
  File ".venv/lib/python3.9/site-packages/tortoise/queryset.py", line 862, in _make_query
    self.resolve_filters(
  File ".venv/lib/python3.9/site-packages/tortoise/queryset.py", line 129, in resolve_filters
    modifier &= node.resolve(model, annotations, custom_filters, model._meta.basetable)
  File ".venv/lib/python3.9/site-packages/tortoise/query_utils.py", line 390, in resolve
    return self._resolve_kwargs(model, table)
  File ".venv/lib/python3.9/site-packages/tortoise/query_utils.py", line 344, in _resolve_kwargs
    key, value = self._get_actual_filter_params(model, raw_key, raw_value)
  File ".venv/lib/python3.9/site-packages/tortoise/query_utils.py", line 338, in _get_actual_filter_params
    raise FieldError(f"Unknown filter param '{key}'. Allowed base values are {allowed}")
tortoise.exceptions.FieldError: Unknown filter param 'buildings__id'. Allowed base values are ['X', 'Y', 'buildings_FR', 'coverage_infra_ftto_FR', 'id', 'numéro', 'répétiteur', 'voie', 'voie_id']

Traceback (most recent call last):
  File ".venv/lib/python3.9/site-packages/uvicorn/protocols/http/httptools_impl.py", line 404, in run_asgi
    self.console.print_exception(extra_lines=5, show_locals=True)
  File ".venv/lib/python3.9/site-packages/rich/console.py", line 1719, in print_exception
    traceback = Traceback(
  File ".venv/lib/python3.9/site-packages/rich/traceback.py", line 223, in __init__
    trace = self.extract(
  File ".venv/lib/python3.9/site-packages/rich/traceback.py", line 350, in extract
    locals={
  File ".venv/lib/python3.9/site-packages/rich/traceback.py", line 351, in <dictcomp>
    key: pretty.traverse(
  File ".venv/lib/python3.9/site-packages/rich/pretty.py", line 686, in traverse
    node = _traverse(_object, root=True)
  File ".venv/lib/python3.9/site-packages/rich/pretty.py", line 672, in _traverse
    child_node = _traverse(child)
  File ".venv/lib/python3.9/site-packages/rich/pretty.py", line 509, in _traverse
    args = list(iter_rich_args(obj.__rich_repr__()))
TypeError: 'Field' object is not callable
```

**To Reproduce**
It is complex to reproduce it :/ Maybe I could reproduce it, it seems to come from tortoise orm, I will try later.

**Platform**
Linux

**Diagnose**
I quickly fixed the problem (but it seems to reduce the quantity of details) by patching rich this way ([rich/pretty.py:509](https://github.com/willmcgugan/rich/blob/master/rich/pretty.py#L506)) :
```python
            # PATCH start
            # args = list(iter_rich_args(obj.__rich_repr__()))  # replaced line
            try:
                args = list(iter_rich_args(obj.__rich_repr__()))
            except TypeError:
                args = []
                # print("FAILLED")
            # PATCH end
```

## Repository Information
- **Repository**: Textualize/rich
- **Pull Request**: #1449
- **Base Commit**: `bd34e0a1ef8f59700f19277ec30cf0cb5ff01a08`

## Related Issues
- https://github.com/Textualize/rich/issues/1449
- https://github.com/Textualize/rich/issues/1453
- https://github.com/Textualize/rich/issues/1454
- https://github.com/Textualize/rich/issues/1456
- https://github.com/Textualize/rich/issues/1464
- https://github.com/Textualize/rich/issues/1466
- https://github.com/Textualize/rich/issues/1467
- https://github.com/Textualize/rich/issues/1485
- https://github.com/Textualize/rich/issues/1486
- https://github.com/Textualize/rich/issues/1171
- https://github.com/Textualize/rich/issues/1161
- https://github.com/Textualize/rich/issues/1151
- https://github.com/Textualize/rich/issues/1051
- https://github.com/Textualize/rich/issues/1129
- https://github.com/Textualize/rich/issues/1050
- https://github.com/Textualize/rich/issues/1220
- https://github.com/Textualize/rich/issues/1088
- https://github.com/Textualize/rich/issues/1492
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

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit bd34e0a1ef8f59700f19277ec30cf0cb5ff01a08.
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