I've uploaded a Go code repository in the directory /workspace/gqlgen. Consider the following issue description:

<issue_description>
# chore(deps-dev): bump vite from 5.4.6 to 5.4.7 in /integration

## Issue 1 (#3296): chore(deps-dev): bump vite from 5.4.6 to 5.4.7 in /integration

Bumps [vite](https://github.com/vitejs/vite/tree/HEAD/packages/vite) from 5.4.6 to 5.4.7.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite/blob/v5.4.7/packages/vite/CHANGELOG.md">vite's changelog</a>.</em></p>
<blockquote>
<h2><!-- raw HTML omitted -->5.4.7 (2024-09-20)<!-- raw HTML omitted --></h2>
<ul>
<li>fix: treat config file as ESM in Deno (<a href="https://github.com/vitejs/vite/tree/HEAD/packages/vite/issues/18158">#18158</a>) (<a href="https://github.com/vitejs/vite/commit/b5908a24ba0808380e3c8ec415624b108c65e08d">b5908a2</a>), closes <a href="https://redirect.github.com/vitejs/vite/issues/18158">#18158</a></li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/vitejs/vite/commit/a403e73d18e73f410d13ee769d343b8c68ff97e6"><code>a403e73</code></a> release: v5.4.7</li>
<li><a href="https://github.com/vitejs/vite/commit/b5908a24ba0808380e3c8ec415624b108c65e08d"><code>b5908a2</code></a> fix: treat config file as ESM in Deno (<a href="https://github.com/vitejs/vite/tree/HEAD/packages/vite/issues/18158">#18158</a>)</li>
<li>See full diff in <a href="https://github.com/vitejs/vite/commits/v5.4.7/packages/vite">compare view</a></li>
</ul>
</details>
<br />


[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=vite&package-manager=npm_and_yarn&previous-version=5.4.6&new-version=5.4.7)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)


</details>

## Issue 2 (#3299): chore(deps): bump rollup from 4.21.0 to 4.22.4 in /integration in the npm_and_yarn group

Bumps the npm_and_yarn group in /integration with 1 update: [rollup](https://github.com/rollup/rollup).

Updates `rollup` from 4.21.0 to 4.22.4
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/rollup/rollup/releases">rollup's releases</a>.</em></p>
<blockquote>
<h2>v4.22.4</h2>
<h2>4.22.4</h2>
<p><em>2024-09-21</em></p>
<h3>Bug Fixes</h3>
<ul>
<li>Fix a vulnerability in generated code that affects IIFE, UMD and CJS bundles when run in a browser context (<a href="https://redirect.github.com/rollup/rollup/issues/5671">#5671</a>)</li>
</ul>
<h3>Pull Requests</h3>
<ul>
<li><a href="https://redirect.github.com/rollup/rollup/pull/5670">#5670</a>: refactor: Use object.prototype to check for reserved properties (<a href="https://github.com/YuHyeonWook"><code>@​YuHyeonWook</code></a>)</li>
<li><a href="https://redirect.github.com/rollup/rollup/pull/5671">#5671</a>: Fix DOM Clobbering CVE (<a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
</ul>
<h2>v4.22.3</h2>
<h2>4.22.3</h2>
<p><em>2024-09-21</em></p>
<h3>Bug Fixes</h3>
<ul>
<li>Ensure that mutations in modules without side effects are observed while properly handling transitive dependencies (<a href="https://redirect.github.com/rollup/rollup/issues/5669">#5669</a>)</li>
</ul>
<h3>Pull Requests</h3>
<ul>
<li><a href="https://redirect.github.com/rollup/rollup/pull/5669">#5669</a>: Ensure impure dependencies of pure modules are added (<a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
</ul>
<h2>v4.22.2</h2>
<h2>4.22.2</h2>
<p><em>2024-09-20</em></p>
<h3>Bug Fixes</h3>
<ul>
<li>Revert fix for side effect free modules until other issues are investigated (<a href="https://redirect.github.com/rollup/rollup/issues/5667">#5667</a>)</li>
</ul>
<h3>Pull Requests</h3>
<ul>
<li><a href="https://redirect.github.com/rollup/rollup/pull/5667">#5667</a>: Partially revert <a href="https://redirect.github.com/rollup/rollup/issues/5658">#5658</a> and re-apply <a href="https://redirect.github.com/rollup/rollup/issues/5644">#5644</a> (<a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
</ul>
<h2>v4.22.1</h2>
<h2>4.22.1</h2>
<p><em>2024-09-20</em></p>
<h3>Bug Fixes</h3>
<ul>
<li>Revert <a href="https://redirect.github.com/rollup/rollup/issues/5644">#5644</a> &quot;stable chunk hashes&quot; while issues are being investigated</li>
</ul>
<h3>Pull Requests</h3>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/rollup/rollup/blob/master/CHANGELOG.md">rollup's changelog</a>.</em></p>
<blockquote>
<h2>4.22.4</h2>
<p><em>2024-09-21</em></p>
<h3>Bug Fixes</h3>
<ul>
<li>Fix a vulnerability in generated code that affects IIFE, UMD and CJS bundles when run in a browser context (<a href="https://redirect.github.com/rollup/rollup/issues/5671">#5671</a>)</li>
</ul>
<h3>Pull Requests</h3>
<ul>
<li><a href="https://redirect.github.com/rollup/rollup/pull/5670">#5670</a>: refactor: Use object.prototype to check for reserved properties (<a href="https://github.com/YuHyeonWook"><code>@​YuHyeonWook</code></a>)</li>
<li><a href="https://redirect.github.com/rollup/rollup/pull/5671">#5671</a>: Fix DOM Clobbering CVE (<a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
</ul>
<h2>4.22.3</h2>
<p><em>2024-09-21</em></p>
<h3>Bug Fixes</h3>
<ul>
<li>Ensure that mutations in modules without side effects are observed while properly handling transitive dependencies (<a href="https://redirect.github.com/rollup/rollup/issues/5669">#5669</a>)</li>
</ul>
<h3>Pull Requests</h3>
<ul>
<li><a href="https://redirect.github.com/rollup/rollup/pull/5669">#5669</a>: Ensure impure dependencies of pure modules are added (<a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
</ul>
<h2>4.22.2</h2>
<p><em>2024-09-20</em></p>
<h3>Bug Fixes</h3>
<ul>
<li>Revert fix for side effect free modules until other issues are investigated (<a href="https://redirect.github.com/rollup/rollup/issues/5667">#5667</a>)</li>
</ul>
<h3>Pull Requests</h3>
<ul>
<li><a href="https://redirect.github.com/rollup/rollup/pull/5667">#5667</a>: Partially revert <a href="https://redirect.github.com/rollup/rollup/issues/5658">#5658</a> and re-apply <a href="https://redirect.github.com/rollup/rollup/issues/5644">#5644</a> (<a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
</ul>
<h2>4.22.1</h2>
<p><em>2024-09-20</em></p>
<h3>Bug Fixes</h3>
<ul>
<li>Revert <a href="https://redirect.github.com/rollup/rollup/issues/5644">#5644</a> &quot;stable chunk hashes&quot; while issues are being investigated</li>
</ul>
<h3>Pull Requests</h3>
<ul>
<li><a href="https://redirect.github.com/rollup/rollup/pull/5663">#5663</a>: chore(deps): update dependency inquirer to v11 (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot], <a href="https://github.com/lukastaegert"><code>@​lukastaegert</code></a>)</li>
<li><a href="https://redirect.github.com/rollup/rollup/pull/5664">#5664</a>: chore(deps): lock file maintenance minor/patch updates (<a href="https://github.com/renovate"><code>@​renovate</code></a>[bot])</li>
<li><a href="https://redirect.github.com/rollup/rollup/pull/5665">#5665</a>: fix: type in CI file (<a href="https://github.com/YuHyeonWook"><code>@​YuHyeonWook</code></a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/rollup/rollup/commit/79c0aba353ca84c0e22c3cfe9eee433ba83f3670"><code>79c0aba</code></a> 4.22.4</li>
<li><a href="https://github.com/rollup/rollup/commit/e2552c9e955e0a61f70f508200ee9f752f85a541"><code>e2552c9</code></a> Fix DOM Clobbering CVE (<a href="https://redirect.github.com/rollup/rollup/issues/5671">#5671</a>)</li>
<li><a href="https://github.com/rollup/rollup/commit/10ab90ea612f80de21c6c433c2d792eaf7b45f1c"><code>10ab90e</code></a> refactor: Use object.prototype to check for reserved properties (<a href="https://redirect.github.com/rollup/rollup/issues/5670">#5670</a>)</li>
<li><a href="https://github.com/rollup/rollup/commit/e1cba8e84a0c01dd16580ba7a2536a988dfb4e18"><code>e1cba8e</code></a> 4.22.3</li>
<li><a href="https://github.com/rollup/rollup/commit/59cec3e86748369ce887f8fdb4ef7351335ab281"><code>59cec3e</code></a> Ensure impure dependencies of pure modules are added (<a href="https://redirect.github.com/rollup/rollup/issues/5669">#5669</a>)</li>
<li><a href="https://github.com/rollup/rollup/commit/b86ffd776cfa906573d36c3f019316d02445d9ef"><code>b86ffd7</code></a> 4.22.2</li>
<li><a href="https://github.com/rollup/rollup/commit/d5ff63de9e317283f059bde06320bca11cf90488"><code>d5ff63d</code></a> Partially revert <a href="https://redirect.github.com/rollup/rollup/issues/5658">#5658</a> and re-apply <a href="https://redirect.github.com/rollup/rollup/issues/5644">#5644</a> (<a href="https://redirect.github.com/rollup/rollup/issues/5667">#5667</a>)</li>
<li><a href="https://github.com/rollup/rollup/commit/0a821d931894f7f6f4ee33285b6f0925e10c8348"><code>0a821d9</code></a> Create SECURITY.md</li>
<li><a href="https://github.com/rollup/rollup/commit/76e962daca5b7352bf199c28fa0a10ad4745c5e7"><code>76e962d</code></a> 4.22.1</li>
<li><a href="https://github.com/rollup/rollup/commit/68c23da8824e05e84460a9a5bf18c4e91912a52a"><code>68c23da</code></a> Partially revert <a href="https://redirect.github.com/rollup/rollup/issues/5644">#5644</a></li>
<li>Additional commits viewable in <a href="https://github.com/rollup/rollup/compare/v4.21.0...v4.22.4">compare view</a></li>
</ul>
</details>
<br />


[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=rollup&package-manager=npm_and_yarn&previous-version=4.21.0&new-version=4.22.4)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore <dependency name> major version` will close this group update PR and stop Dependabot creating any more for the specific dependency's major version (unless you unignore this specific dependency's major version or upgrade to it yourself)
- `@dependabot ignore <dependency name> minor version` will close this group update PR and stop Dependabot creating any more for the specific dependency's minor version (unless you unignore this specific dependency's minor version or upgrade to it yourself)
- `@dependabot ignore <dependency name>` will close this group update PR and stop Dependabot creating any more for the specific dependency (unless you unignore this specific dependency or upgrade to it yourself)
- `@dependabot unignore <dependency name>` will remove all of the ignore conditions of the specified dependency
- `@dependabot unignore <dependency name> <ignore condition>` will remove the ignore condition of the specified dependency and ignore conditions
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/99designs/gqlgen/network/alerts).

</details>

## Issue 3 (#3302): Handle common initialisms as the non-first word

If a common initialisms was the prefix of the second word (or any word other the first one) of an identifier, it was treated as  initialism even though the next rune was uppercase. e.g. "USER_IDENTITY".

This PR should resolve this issue

I have:
 - [x] Added tests covering the bug / feature (see [testing](https://github.com/99designs/gqlgen/blob/master/TESTING.md))
 - [ ] Updated any relevant documentation (see [docs](https://github.com/99designs/gqlgen/tree/master/docs/content))

## Issue 4 (#3303): Add CSPs to list of common initialisms

Describe your PR and link to any relevant issues. 

I have:
 - [ ] Added tests covering the bug / feature (see [testing](https://github.com/99designs/gqlgen/blob/master/TESTING.md))
 - [ ] Updated any relevant documentation (see [docs](https://github.com/99designs/gqlgen/tree/master/docs/content))

## Issue 5 (#3301): Bug found when generating schema including arrays of type Any

### What happened?

We have a schema that uses an array of type Any as one of the field's types. Starting with `v0.17.48`, when we `go run github.com/99designs/gqlgen generate`, we encounter a breaking error that essentially adds an extra pointer when unmarshaling: <img width="404" alt="Screenshot 2024-09-25 at 3 12 48 PM" src="https://github.com/user-attachments/assets/ffb1543d-2298-4b13-ab9f-2f8afa7e71eb">

### What did you expect?

Code generation to continue to work even when including a type of `[Any]` in the schema

### Minimal graphql.schema and models to reproduce

```graphqls
scalar Any

type Broken {
   fakeField: [Any]!
}
```

### versions
 - `gqlgen >=v0.17.48`
 - `go v1.23.1`

## Issue 6 (#3305): Update subscriptions.md

Fix tabs issue, causing indentation issues in the code example.

I have:
 - [x] Added tests covering the bug / feature (see [testing](https://github.com/99designs/gqlgen/blob/master/TESTING.md))
 - [x] Updated any relevant documentation (see [docs](https://github.com/99designs/gqlgen/tree/master/docs/content))

## Issue 7 (#3307): Update gqlparser to v2.5.17

## What's Changed in [gqlparser v2.5.7](https://github.com/vektah/gqlparser/releases/tag/v2.5.17)
* validator: better error message when InputObject is not a map by @vbmithr in https://github.com/vektah/gqlparser/pull/307
* validator: make rules exported and allow custom set of rules for Validate by @kgrigorev in https://github.com/vektah/gqlparser/pull/320
* Supporting directive on the schema by @hori0926 in https://github.com/vektah/gqlparser/pull/318
* Bump prettier from 3.3.1 to 3.3.2 in /validator/imported in the actions-deps group by @dependabot in https://github.com/vektah/gqlparser/pull/308
* Bump the actions-deps group in /validator/imported with 6 updates by @dependabot in https://github.com/vektah/gqlparser/pull/310
* Bump golangci/golangci-lint-action from 6.0.1 to 6.1.0 in the actions-deps group by @dependabot in https://github.com/vektah/gqlparser/pull/313
* Bump the actions-deps group across 1 directory with 4 updates by @dependabot in https://github.com/vektah/gqlparser/pull/312
* Bump @babel/preset-env from 7.25.3 to 7.25.4 in /validator/imported in the actions-deps group by @dependabot in https://github.com/vektah/gqlparser/pull/314

**Full Changelog**: https://github.com/vektah/gqlparser/compare/v2.5.16...v2.5.17


Signed-off-by: Steve Coffman <steve@khanacademy.org>

## Issue 8 (#3311): chore(deps-dev): bump vite from 5.4.7 to 5.4.8 in /integration

Bumps [vite](https://github.com/vitejs/vite/tree/HEAD/packages/vite) from 5.4.7 to 5.4.8.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/vitejs/vite/blob/v5.4.8/packages/vite/CHANGELOG.md">vite's changelog</a>.</em></p>
<blockquote>
<h2><!-- raw HTML omitted -->5.4.8 (2024-09-25)<!-- raw HTML omitted --></h2>
<ul>
<li>fix(css): backport <a href="https://github.com/vitejs/vite/tree/HEAD/packages/vite/issues/18113">#18113</a>, fix missing source file warning with sass modern api custom importer (<a href="https://github.com/vitejs/vite/tree/HEAD/packages/vite/issues/18">#18</a> (<a href="https://github.com/vitejs/vite/commit/7d47fc1c749053095a3345ca1d47406a5f31792a">7d47fc1</a>), closes <a href="https://redirect.github.com/vitejs/vite/issues/18183">#18183</a></li>
<li>fix(css): backport <a href="https://github.com/vitejs/vite/tree/HEAD/packages/vite/issues/18128">#18128</a>, ensure sass compiler initialized only once (<a href="https://github.com/vitejs/vite/tree/HEAD/packages/vite/issues/18184">#18184</a>) (<a href="https://github.com/vitejs/vite/commit/8464d976b1d9280ed915622c0e7477b36bdb7d8c">8464d97</a>), closes <a href="https://redirect.github.com/vitejs/vite/issues/18128">#18128</a> <a href="https://redirect.github.com/vitejs/vite/issues/18184">#18184</a></li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/vitejs/vite/commit/0474550c9fe0b252536b8d1f5190b3aca8723b71"><code>0474550</code></a> release: v5.4.8</li>
<li><a href="https://github.com/vitejs/vite/commit/8464d976b1d9280ed915622c0e7477b36bdb7d8c"><code>8464d97</code></a> fix(css): backport <a href="https://github.com/vitejs/vite/tree/HEAD/packages/vite/issues/18128">#18128</a>, ensure sass compiler initialized only once (<a href="https://github.com/vitejs/vite/tree/HEAD/packages/vite/issues/18184">#18184</a>)</li>
<li><a href="https://github.com/vitejs/vite/commit/7d47fc1c749053095a3345ca1d47406a5f31792a"><code>7d47fc1</code></a> fix(css): backport <a href="https://github.com/vitejs/vite/tree/HEAD/packages/vite/issues/18113">#18113</a>, fix missing source file warning with sass modern a...</li>
<li>See full diff in <a href="https://github.com/vitejs/vite/commits/v5.4.8/packages/vite">compare view</a></li>
</ul>
</details>
<br />


[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=vite&package-manager=npm_and_yarn&previous-version=5.4.7&new-version=5.4.8)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)


</details>

## Repository Information
- **Repository**: 99designs/gqlgen
- **Pull Request**: #3296
- **Base Commit**: `96f9a869387f750684b8c549fa4fb034fb6a6d8b`

## Related Issues
- https://github.com/99designs/gqlgen/issues/3296
- https://github.com/99designs/gqlgen/issues/3299
- https://github.com/99designs/gqlgen/issues/3302
- https://github.com/99designs/gqlgen/issues/3303
- https://github.com/99designs/gqlgen/issues/3301
- https://github.com/99designs/gqlgen/issues/3305
- https://github.com/99designs/gqlgen/issues/3307
- https://github.com/99designs/gqlgen/issues/3311
</issue_description>

Can you help me implement the necessary changes to the repository so that the requirements specified in the <issue_description> are met?
I've already taken care of all changes to any of the test files described in the <issue_description>. This means you MUST NOT modify the testing logic or any of the tests in any way!
Also the development Go environment is already set up for you (i.e., all dependencies already installed), so you don't need to install other packages.
Your task is to make the minimal changes to non-test files in the /workspace/gqlgen directory to ensure the <issue_description> is satisfied.

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

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit 96f9a869387f750684b8c549fa4fb034fb6a6d8b.
   8.1 Ensure you've fully addressed all requirements.
   8.2 Run any tests in the repository related to:
      8.2.1 The issue you are fixing
      8.2.2 The files you modified
      8.2.3 The functions you changed
   8.3 If any tests fail, revise your implementation until all tests pass.

Be thorough in your exploration, testing, and reasoning. It's fine if your thinking process is lengthy - quality and completeness are more important than brevity.

IMPORTANT CONSTRAINTS:
- ONLY modify files within the /workspace/gqlgen directory
- DO NOT navigate outside this directory (no `cd ..` or absolute paths to other locations)
- DO NOT create, modify, or delete any files outside the repository
- All your changes must be trackable by `git diff` within the repository
- If you need to create test files, create them inside the repository directory