I've uploaded a Typescript code repository in the directory /workspace/babel. Consider the following issue description:

<issue_description>
# fix(parser): [Babel8] Align error codes between Flow and TypeScript

## Issue 1 (#13294): fix(parser): [Babel8] Align error codes between Flow and TypeScript

<!--
Before making a PR, please read our contributing guidelines
https://github.com/babel/babel/blob/main/CONTRIBUTING.md

Please note that the Babel Team requires two approvals before merging most PRs.

For issue references: Add a comma-separated list of a [closing word](https://help.github.com/articles/closing-issues-via-commit-messages/) followed by the ticket number fixed by the PR. (it should be underlined in the preview if done correctly)

If you are making a change that should have a docs update: submit another PR to https://github.com/babel/website
-->

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| Fixed Issues?            |  N
| Patch: Bug Fix?          | Y
| Tests Added + Pass?      | Yes
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->
Errors with exactly the same message had different error codes, so align them.

<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13294"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 2 (#13170): [Bug]: `sourceFileName` vs. `sourceFilename` scattered differently over project, sometimes typed wrong

### 

- [ ] Would you like to work on a fix?

### How are you using Babel?

Programmatic API (`babel.transform`, `babel.parse`)

### Input code

n/a

### Configuration file name

_No response_

### Configuration

n/a

### Current and expected behavior

```js
  function myFancyBabelPlugin() {
    return {
      parserOverride(contents, options) {
        if (
          options.sourceFileName &&
```

^-- type error “Did you mean 'sourceFilename'”, but `sourceFilename` is undefined and `sourceFileName` is set.
A bit of searching shows differently cased values: https://github.com/babel/babel/search?q=sourceFilename+path%3Apackages.

### Environment

```sh
$ npx envinfo --preset
Need to install the following packages:
  envinfo
Ok to proceed? (y) y

No "true" preset found.
```

### Possible solution

picking either

### Additional context

Actual code is here: https://github.com/wooorm/xdm/blob/main/test/babel.js#L37-L41.

## Issue 3 (#13299): [Bug]: Class Private Fields/Accessors/Methods must not be re-initialized on instance

### 💻

- [ ] Would you like to work on a fix?

### How are you using Babel?

Programmatic API (`babel.transform`, `babel.parse`)

### Input code

(See "Prevent private class members from being added more than once" section in https://github.com/evanw/esbuild/releases/tag/v0.11.20#:~:text=Prevent%20private%20class%20members%20from%20being%20added%20more%20than%20once)

```js
class Base {
  constructor(obj) {
    return obj;
  }
}

let counter = 0;
class Derived extends Base {
  #foo = ++counter;
  static get(obj) {
    return obj.#foo;
  }
}

const foo = {};
new Derived(foo);
assert.equals(Derived.get(foo), 1);

// This should throw an error, private fields must not be re-initialized
// on an object that already contains the field.
assert.throws(() => {
  new Derived(foo);
});
// ^ That should have thrown, but it doesn't.

// Must not re-initialize the field
assert.equals(Derived.get(foo), 1);
// But the counter is incremented (the initializer runs, but the field
// should not re-add)
assert.equals(counter, 2);
```

[REPL](https://babeljs.io/repl/#?browsers=Chrome%2075&build=&builtIns=false&corejs=3.6&spec=false&loose=false&code_lz=MYGwhgzhAEBCkFNoG8BQ1rAPYDsIBcAnAV2Hy0IAosAjAKwEoV0NpCF9jCdpa6BuFgF9UI1CA6YsxHPgSFoAXmgAGQaEgwAIvICWANwQATaAgAecnEZjwISNBgDEAMyxYl0ANSfsMuYUEMAjB8XWBoAHMOanomB1Z2Tm5eegA6FzdA6BExbDx8aFd3ZWQhQRwEAHdoHUIDY0oihkFNeXxUhABHYjAQCEpa-qNUqPxGtwYAGmgARmbUVAB6RegAFQALXRgIdekQE3x1wixqsB55Y8JpgAc6_RCkZ10EfZgAW2ICaBwsApokdgAWl0OF0oV6ugAXsYlitcNAzik6AgyNBDiEESB2GAjABPKSyMAgmCHR7PfapVCtQjtQ7HSr9ShMRQAPmYGAq1UGhiM4yw8yE82W0AAemt1hidnsTBLDGijiccNMaMQCmDoEYsAgIDgAOTtBbCgCynwKPwKQJBYN0EOh8rJLyMVKgbQ63V6_W5xhG0Sa0zmgmFsFV9qkfnk0C2kZwwHYbwQsmM0EopOj1ttEZIeGVIdTT0dsOgUuI-2-vzYCEBOKMDGddhpbp6fUovkTV2gACZmkA&debug=false&forceAllTransforms=false&shippedProposals=true&circleciRepo=&evaluate=false&fileSize=false&timeTravel=false&sourceType=module&lineWrap=true&presets=env&prettier=true&targets=&version=7.14.1&externalPlugins=)

### Configuration file name

babel.config.json

### Configuration

```json
{
  "presets": [
    [
      "@babel/preset-env",
      {
        "shippedProposals": true,
        "targets": {
          "chrome": "75"
        }
      }
    ]
  ]
}
```

### Current and expected behavior

Currently, this will re-initialize the field `#foo`, but this is incorrect. It should throw an error when trying to initialize the field a second time.

### Environment

- Babel version: v7.14.1

### Possible solution

We should create new `initializePrivateFieldSpec`, `initializePrivateAccessorSpec`, and `initializePrivateMethodSpec` ~~(and `static` versions)~~ [helpers](https://github.com/babel/babel/blob/main/packages/babel-helpers/src/helpers.js) to initialize the field to a descriptor. Inside the helpers, we should check if the `WeakMap`/`WeakSet` that represents the transformed field already contains the `instance` key. If so, throw. Else, initialize.

Or, we could just have a simple `checkPrivateFieldInitSpec` which does the check, but doesn't initialize. We'd then call the `check` before initializing a field.

After creating the helpers, we should call them in the appropriate place in https://github.com/babel/babel/blob/main/packages/babel-helper-create-class-features-plugin/src/fields.js (look for any function that ends in "InitSpec").

### Additional context

This is a medium difficulty issue, so could be tackled by someone with a little experience making changes to Babel.

## Issue 4 (#13609): perf: partially replace `.concat` with `.push`

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| Fixed Issues?            |  <!-- remove the (`) quotes and write "Fixes" before the number to link the issues -->
| Patch: Bug Fix?          | 
| Major: Breaking Change?  |
| Minor: New Feature?      |
| Tests Added + Pass?      | Yes
| Documentation PR Link    | <!-- If only readme change, add `[skip ci]` to your commits -->
| Any Dependency Changes?  |
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->
We change `this.concat(arr)` calls with `Array.prototype.push.apply(this, arr)`.
`Array.prototype.push.apply(this, arr)` is quicker than `.push(...arr)` because it does not need to spread the array.

<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13609"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 5 (#13623): Workaround for hanging e2e-breaking Babel test

<!--
Before making a PR, please read our contributing guidelines
https://github.com/babel/babel/blob/main/CONTRIBUTING.md

Please note that the Babel Team requires two approvals before merging most PRs.

For issue references: Add a comma-separated list of a [closing word](https://help.github.com/articles/closing-issues-via-commit-messages/) followed by the ticket number fixed by the PR. (it should be underlined in the preview if done correctly)

If you are making a change that should have a docs update: submit another PR to https://github.com/babel/website
-->

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| Fixed Issues?            | 
| Patch: Bug Fix?          |
| Major: Breaking Change?  |
| Minor: New Feature?      |
| Tests Added + Pass?      | Yes
| Documentation PR Link    | <!-- If only readme change, add `[skip ci]` to your commits -->
| Any Dependency Changes?  |
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->

> Jest hangs forever in the Babel 8 e2e test, but we don't know yet why.
> Until we figure it out (see https://github.com/babel/babel/pull/13618 we can force exit so that CircleCI doesn't report it as a failure.

<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13623"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 6 (#13699): `@babel/eslint-parser` should support `ecmaVersion: latest`

### 💻

- [ ] Would you like to work on this feature?

### What problem are you trying to solve?

From [`eslint@7.30`](https://eslint.org/blog/2021/07/eslint-v7.30.0-released), `eslint` default parser supports `latest` as `ecmaVersion`, but `@babel/eslint-parser` does not support it. Seems it should be fixed.

### Describe the solution you'd like

^

### Describe alternatives you've considered

^

### Documentation, Adoption, Migration Strategy

_No response_

## Issue 7 (#12960): Symbol required for Private Static Field in check can be shadowed

## Bug Report

- [ ] I would like to work on a fix!


**Current behavior**
When accessing or checking for a private static field, the generated code references the class constructor, which could be shadowed.

https://babeljs.io/repl#?browsers=defaults%2C%20not%20ie%2011%2C%20not%20ie_mob%2011&build=&builtIns=false&spec=false&loose=false&code_lz=FAYwNghgzlAEAqBTKAXWBvYtZdqiKAliLAMQAesAvLAIy64C2iKAFgPYAmAFAJQa5sIdgDtUCZGhq0A3ILKVCI2ADcZsAPQaJ4wnCisIndgHdEnWEtgBzRCMQAnAudjDOiefJUA6Cuq06aHp4hsZmFla29k4oLm4e2AC-wIlAA&debug=false&forceAllTransforms=false&shippedProposals=false&circleciRepo=&evaluate=false&fileSize=false&timeTravel=false&sourceType=module&lineWrap=true&presets=env%2Creact%2Cstage-2&prettier=false&targets=&version=7.13.7&externalPlugins=

**Input Code**

```js

class Test {
  
  static #x = 1
  
  method() {
    const Test = 1;
    #x in v; // Test is shadowed in generated code
    
    v.#x; // Test is shadowed in generated code
  }
}
```

**Expected behavior**
Either a warning, or generated code avoids the issue.

**Babel Configuration (babel.config.js, .babelrc, package.json#babel, cli command, .eslintrc)**

presets: 'stage-2'

**Environment**
babel playground

**Possible Solution**

Perhaps the generated code could capture a separate reference in a temp variable before it's shadowed.

## Issue 8 (#13663): [Bug]: Nested workspaces can't be defined with dot notation

### 💻

- [ ] Would you like to work on a fix?

### How are you using Babel?

@babel/cli

### Input code

```ts
// Works
namespace proj {
  namespace data {
    namespace util {
      namespace api {
        console.log("JJJJ");
      }
    }
  }
}

// Doesn't work
namespace proj.data.util.api {
  console.log("JJJJ");
}
```

### Configuration file name

_No response_

### Configuration

```json
{
  "presets": [
    "@babel/preset-typescript"
  ]
}
```

### Current and expected behavior

Nested workspaces definition with dot notation works fine with `tsc` but crushes Babel.

```
TypeError: /Users/gene/_/j/project/packages/gas/src/data/util/auth.ts: @babel/template placeholder "$1": Property expression of ExpressionStatement expected node to be of a type ["Expression"] but instead got "TSModuleBlock"
    at Object.validate (/Users/gene/_/j/project/node_modules/@babel/types/lib/definitions/utils.js:130:11)
    at validateField (/Users/gene/_/j/project/node_modules/@babel/types/lib/validators/validate.js:24:9)
    at validate (/Users/gene/_/j/project/node_modules/@babel/types/lib/validators/validate.js:17:3)
    at builder (/Users/gene/_/j/project/node_modules/@babel/types/lib/builders/builder.js:38:27)
    at Object.expressionStatement (/Users/gene/_/j/project/node_modules/@babel/types/lib/builders/generated/index.js:320:31)
    at applyReplacement (/Users/gene/_/j/project/node_modules/@babel/template/lib/populate.js:82:27)
    at /Users/gene/_/j/project/node_modules/@babel/template/lib/populate.js:32:7
    at Array.forEach (<anonymous>)
    at populatePlaceholders (/Users/gene/_/j/project/node_modules/@babel/template/lib/populate.js:30:43)
    at /Users/gene/_/j/project/node_modules/@babel/template/lib/literal.js:35:53 {
  code: 'BABEL_TRANSFORM_ERROR'
}
```

### Environment

Babel version: 7.15.0
OS: macOS 11.5.1
Node: 12.22.1
Yarn: 1.22.10
npm: 6.14.12
Yarn Workspaces: 1.22.10

### Possible solution

_No response_

### Additional context

_No response_

## Issue 9 (#13673): Update test262

Update test262 to [45a913c057892bdd26f7bc06a59a0c7420f2d3ec](https://github.com/tc39/test262/commit/45a913c057892bdd26f7bc06a59a0c7420f2d3ec).

<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13673"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 10 (#13679): convert `@babel/helpers` to typescript

<!--
Before making a PR, please read our contributing guidelines
https://github.com/babel/babel/blob/main/CONTRIBUTING.md

Please note that the Babel Team requires two approvals before merging most PRs.

For issue references: Add a comma-separated list of a [closing word](https://help.github.com/articles/closing-issues-via-commit-messages/) followed by the ticket number fixed by the PR. (it should be underlined in the preview if done correctly)

If you are making a change that should have a docs update: submit another PR to https://github.com/babel/website
-->

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| Fixed Issues?            |
| Patch: Bug Fix?          |
| Major: Breaking Change?  |
| Minor: New Feature?      |
| Tests Added + Pass?      |
| Documentation PR Link    | <!-- If only readme change, add `[skip ci]` to your commits -->
| Any Dependency Changes?  |
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->


<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13679"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 11 (#13674): [Bug]: Invalid `static` property for StaticBlock

### 💻

- [X] Would you like to work on a fix?

### How are you using Babel?

Programmatic API (`babel.transform`, `babel.parse`)

### Input code

```ts
class Foo {
  static {}
}
```

### Configuration file name

_No response_

### Configuration

```js
const { parse } = require("@babel/parser");
const code = `class Foo {
  static {}
}`;
parse(code, { plugins: ["typescript", "classStaticBlock" ]});
```

### Current and expected behavior

**Current:**
```json
{
  "type": "Program",
  "sourceType": "script",
  "interpreter": null,
  "body": [
    {
      "type": "ClassDeclaration",
      "id": {
        "type": "Identifier",
        "name": "Foo"
      },
      "superClass": null,
      "body": {
        "type": "ClassBody",
        "body": [
          {
            "type": "StaticBlock",
            "static": true,
            "body": []
          }
        ]
      }
    }
  ]
}
```
**Expected:**
```diff
{
  "type": "Program",
  "sourceType": "script",
  "interpreter": null,
  "body": [
    {
      "type": "ClassDeclaration",
      "id": {
        "type": "Identifier",
        "name": "Foo"
      },
      "superClass": null,
      "body": {
        "type": "ClassBody",
        "body": [
          {
            "type": "StaticBlock",
-            "static": true,
            "body": []
          }
        ]
      }
    }
  ]
}
```

### Environment

- Babel version: current `main`

### Possible solution

_No response_

### Additional context

_No response_

## Issue 12 (#13685): Use named imports for babel types

<!--
Before making a PR, please read our contributing guidelines
https://github.com/babel/babel/blob/main/CONTRIBUTING.md

Please note that the Babel Team requires two approvals before merging most PRs.

For issue references: Add a comma-separated list of a [closing word](https://help.github.com/articles/closing-issues-via-commit-messages/) followed by the ticket number fixed by the PR. (it should be underlined in the preview if done correctly)

If you are making a change that should have a docs update: submit another PR to https://github.com/babel/website
-->

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| Fixed Issues?            | 
| Patch: Bug Fix?          |
| Major: Breaking Change?  |
| Minor: New Feature?      |
| Tests Added + Pass?      | Yes
| Documentation PR Link    | <!-- If only readme change, add `[skip ci]` to your commits -->
| Any Dependency Changes?  |
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->
This PR is a follow-up to https://github.com/babel/babel/pull/13593#pullrequestreview-713153031. In this PR we transform `@babel/types` namespace imports (e.g. `import * as t from "@babel/types"` to named imports (e.g. `import { isIdentifier } from "@babel/types"`). The named imports allow us to perform further optimization when transforming to commonjs modules. 

## Example
For example, before this PR, the named imports

```js
import { isIdentifier } from "@babel/types";
isIdentifier(node)
```
are transformed as

```js
const babel$types = require("@babel/types");
babel$types.isIdentifier(node)
```

After this PR, the named imports are transformed as
```js
const _t = require("@babel/types");
const { isIdentifier } = _t
isIdentifier(node)
```

In #13593 we have identified a bottleneck of generator performance, accessing methods from `@babel/types` namespace is very slow. The optimized output now accesses namespace only once (per module).

Note that we can not generalize the optimization to any imports because ES imports are live bindings, which means if a module changed its exports on-the-fly, the updated values will be synchronized to the consumers. However, in the transpiled code, we takes a snapshot of these imports once and they won't be updated since then. 

This approach is safe for most `@babel/types` usage in our current codebase since we don't modify the types exports, except in [`babel-traverse/src/path/index.ts`](https://github.com/babel/babel/pull/13685/files#diff-27416390498f2592e145d52827962ebec3148a504602e5ba9755746f3d13afbbR229-R232) where `@babel/traverse` is modifying the exports of `@babel/types`. Such usage is rare and we should consider if we should move on to a new approach.

The first commit is produced by a custom [codemod](https://gist.github.com/JLHwung/1f7e3234b960a6ffdd58e3b100cb9020).

## Comparison to plugin-only approach
My first draft is a plugin transforming namespace `import * as t` to destructuring. Compared to current approach, the first approach has the following constraints:

- Hard to determine which packages should be published because changes are only in build settings.
- A valid method usage like `const addComment = t.addComment` becomes invalid after built, though we could avoid naming conflicts by sacrificing code readability.

## Limitations
This PR does not change the indirect `@babel/types` usage such as

- Use `@babel/types` from `@babel/core`
```js
import { types as t } from "@babel/core"
```
- Use `@babel/types` from the callback parameters of a plugin
```js
module.exports = function({ types: t }) {
  
}
```

I think they should be updated, too. I will address them in separate PRs.

## Further thoughts
Should we come up with a parameterized (🤷) assumption for commonjs transform?
```js
{
  noImportLiveBindings: ["@babel/types"]
}
```

<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13685"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 13 (#13686): convert `@babel/helper-skip-transparent-expression-wrappers` to typescript

<!--
Before making a PR, please read our contributing guidelines
https://github.com/babel/babel/blob/main/CONTRIBUTING.md

Please note that the Babel Team requires two approvals before merging most PRs.

For issue references: Add a comma-separated list of a [closing word](https://help.github.com/articles/closing-issues-via-commit-messages/) followed by the ticket number fixed by the PR. (it should be underlined in the preview if done correctly)

If you are making a change that should have a docs update: submit another PR to https://github.com/babel/website
-->

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| Fixed Issues?            | Replaces #13640, only JS => TS changes
| Patch: Bug Fix?          | :heavy_minus_sign: 
| Major: Breaking Change?  | :heavy_minus_sign: 
| Minor: New Feature?      | :heavy_minus_sign: 
| Tests Added + Pass?      | Yes
| Documentation PR Link    | <!-- If only readme change, add `[skip ci]` to your commits -->
| Any Dependency Changes?  |
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->


<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13686"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 14 (#2): missing templates when installed via npm

`npm install sebmck/6to5`

```
λ node
> to5 = require('6to5')
Error: ENOENT, no such file or directory '/Code/6to5test/node_modules/6to5/lib/6to5/templates'
    at Object.fs.readdirSync (fs.js:654:18)
    at Object.<anonymous> (/Code/6to5test/node_modules/6to5/lib/6to5/util.js:201:13)
    at Module._compile (module.js:456:26)
    at Object.Module._extensions..js (module.js:474:10)
    at Module.load (module.js:356:32)
    at Function.Module._load (module.js:312:12)
    at Module.require (module.js:364:17)
    at require (module.js:380:17)
    at Object.<anonymous> (/Code/6to5test/node_modules/6to5/lib/6to5/transform.js:4:16)
    at Module._compile (module.js:456:26)
```

https://github.com/sebmck/6to5/blob/master/.npmignore#L5

Seems as if your intention is to only include them for dev/test, but `util` needs to be fixed to not puke when they're absent.

## Issue 15 (#13694): [Bug]: Parser accepts illegal syntax `obj.[prop]`

### 💻

- [ ] Would you like to work on a fix?

### How are you using Babel?

Programmatic API (`babel.transform`, `babel.parse`)

### Input code

```js
val = obj.[prop];
```

[REPL](https://babeljs.io/repl/#?browsers=defaults%2C%20not%20ie%2011%2C%20not%20ie_mob%2011&build=&builtIns=false&corejs=3.6&spec=false&loose=false&code_lz=G4QwNgBAvBD2BGArAdAbQA4CdboLoG4AoIA&debug=false&forceAllTransforms=true&shippedProposals=false&circleciRepo=&evaluate=true&fileSize=false&timeTravel=false&sourceType=script&lineWrap=true&presets=&prettier=true&targets=&version=7.15.3&externalPlugins=&assumptions=%7B%7D)

### Configuration file name

n/a

### Configuration

n/a

### Current and expected behavior

`obj.[prop]` is not legal Javascript (note the `.` before `[`). Would expect parser to throw an error.

Instead, it parses it as if it was `obj[prop]` (i.e. without the `.`).

### Environment

```
System:
  OS: macOS Mojave 10.14.6
Binaries:
  Node: 16.7.0 - ~/.nvm/versions/node/v16.7.0/bin/node
  npm: 7.20.3 - ~/.nvm/versions/node/v16.7.0/bin/npm
npmPackages:
  @babel/core: ^7.15.0 => 7.15.0 
  @babel/generator: ^7.15.0 => 7.15.0 
  @babel/helper-module-transforms: ^7.15.0 => 7.15.0 
  @babel/helper-plugin-utils: ^7.14.5 => 7.14.5 
  @babel/parser: ^7.15.3 => 7.15.3 
  @babel/plugin-transform-arrow-functions: ^7.14.5 => 7.14.5 
  @babel/plugin-transform-modules-commonjs: ^7.15.0 => 7.15.0 
  @babel/plugin-transform-react-jsx: ^7.14.9 => 7.14.9 
  @babel/plugin-transform-strict-mode: ^7.14.5 => 7.14.5 
  @babel/register: ^7.15.3 => 7.15.3 
  @babel/traverse: ^7.15.0 => 7.15.0 
  @babel/types: ^7.15.0 => 7.15.0 
  babel-jest: ^27.0.6 => 27.0.6 
  babel-plugin-dynamic-import-node: ^2.3.3 => 2.3.3 
  eslint: ^7.32.0 => 7.32.0 
  jest: ^27.0.6 => 27.0.6
```

### Possible solution

_No response_

### Additional context

_No response_

## Issue 16 (#13696): Update test262

Update test262 to [2c4f2665ec86f01bff7e42d3a5b54c9a09f9a362](https://github.com/tc39/test262/commit/2c4f2665ec86f01bff7e42d3a5b54c9a09f9a362).

<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13696"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 17 (#13697): fix: pass `browserslistEnv` to `resolveTargets`

<!--
Before making a PR, please read our contributing guidelines
https://github.com/babel/babel/blob/main/CONTRIBUTING.md

Please note that the Babel Team requires two approvals before merging most PRs.

For issue references: Add a comma-separated list of a [closing word](https://help.github.com/articles/closing-issues-via-commit-messages/) followed by the ticket number fixed by the PR. (it should be underlined in the preview if done correctly)

If you are making a change that should have a docs update: submit another PR to https://github.com/babel/website
-->

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| Patch: Bug Fix?          | Yes
| Tests Added + Pass?      | Yes
| Any Dependency Changes?  | No
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->
In case of explicitly specifying browserslist query with `extends` keyword, `browserslistEnv` option was not passed to browserslist itself leading to wrong resolved targets

<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13697"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 18 (#13705): Update test262

Update test262 to [836111dc3cca6345563dbf86a2dbc108a7e2939c](https://github.com/tc39/test262/commit/836111dc3cca6345563dbf86a2dbc108a7e2939c).

<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13705"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 19 (#13714): test(parser): add no_plugin tests for module blocks

<!--
Before making a PR, please read our contributing guidelines
https://github.com/babel/babel/blob/main/CONTRIBUTING.md

Please note that the Babel Team requires two approvals before merging most PRs.

For issue references: Add a comma-separated list of a [closing word](https://help.github.com/articles/closing-issues-via-commit-messages/) followed by the ticket number fixed by the PR. (it should be underlined in the preview if done correctly)

If you are making a change that should have a docs update: submit another PR to https://github.com/babel/website
-->

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| Patch: Bug Fix?          | Y
| Tests Added + Pass?      | Yes
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->
I noticed that we don't have no_plugin tests for module blocks proposal.

<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13714"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 20 (#13715): [babel 8] fix: stricter rest element builder check

<!--
Before making a PR, please read our contributing guidelines
https://github.com/babel/babel/blob/main/CONTRIBUTING.md

Please note that the Babel Team requires two approvals before merging most PRs.

For issue references: Add a comma-separated list of a [closing word](https://help.github.com/articles/closing-issues-via-commit-messages/) followed by the ticket number fixed by the PR. (it should be underlined in the preview if done correctly)

If you are making a change that should have a docs update: submit another PR to https://github.com/babel/website
-->

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| Fixed Issues?            | When `BABEL_TYPES_8_BREAKING` is enabled, the `RestElement` constructor incorrectly allows AssignmentPattern as argument
| Patch: Bug Fix?          | Yes
| Major: Breaking Change?  |
| Minor: New Feature?      |
| Tests Added + Pass?      | Yes
| Documentation PR Link    | <!-- If only readme change, add `[skip ci]` to your commits -->
| Any Dependency Changes?  |
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->
Per https://tc39.es/ecma262/#prod-BindingPattern, a binding pattern can only be either ArrayPattern or ObjectPattern.

## Issue 21 (#13717): archive stage 4 parser plugins

<!--
Before making a PR, please read our contributing guidelines
https://github.com/babel/babel/blob/main/CONTRIBUTING.md

Please note that the Babel Team requires two approvals before merging most PRs.

For issue references: Add a comma-separated list of a [closing word](https://help.github.com/articles/closing-issues-via-commit-messages/) followed by the ticket number fixed by the PR. (it should be underlined in the preview if done correctly)

If you are making a change that should have a docs update: submit another PR to https://github.com/babel/website
-->

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->
Archive three stage 4 parser plugins.

Babel Archives PR: https://github.com/babel/babel-archive/pull/10

<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13717"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 22 (#13720): Don't load top-level config in internal test

<!--
Before making a PR, please read our contributing guidelines
https://github.com/babel/babel/blob/main/CONTRIBUTING.md

Please note that the Babel Team requires two approvals before merging most PRs.

For issue references: Add a comma-separated list of a [closing word](https://help.github.com/articles/closing-issues-via-commit-messages/) followed by the ticket number fixed by the PR. (it should be underlined in the preview if done correctly)

If you are making a change that should have a docs update: submit another PR to https://github.com/babel/website
-->

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->

I accidentally found this while working on https://github.com/babel/babel/pull/13414. This test was loading the top-level `babel.config.js` file, rather than being isolated.

<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13720"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 23 (#13721): Use `import.meta.url` instead of `__dirname`

<!--
Before making a PR, please read our contributing guidelines
https://github.com/babel/babel/blob/main/CONTRIBUTING.md

Please note that the Babel Team requires two approvals before merging most PRs.

For issue references: Add a comma-separated list of a [closing word](https://help.github.com/articles/closing-issues-via-commit-messages/) followed by the ticket number fixed by the PR. (it should be underlined in the preview if done correctly)

If you are making a change that should have a docs update: submit another PR to https://github.com/babel/website
-->

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->

This aligns with the rest of the code base, where we use `import.meta.url` to make the transition to ESM easier.

<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13721"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 24 (#13723): `getBindingIdentifiers` should return params for private methods

<!--
Before making a PR, please read our contributing guidelines
https://github.com/babel/babel/blob/main/CONTRIBUTING.md

Please note that the Babel Team requires two approvals before merging most PRs.

For issue references: Add a comma-separated list of a [closing word](https://help.github.com/articles/closing-issues-via-commit-messages/) followed by the ticket number fixed by the PR. (it should be underlined in the preview if done correctly)

If you are making a change that should have a docs update: submit another PR to https://github.com/babel/website
-->

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| Fixed Issues?            | `t.getBindingIdentifiers` does not return parameter bindings for private class methods
| Patch: Bug Fix?          | Y
| Tests Added + Pass?      | Yes
| Documentation PR Link    | <!-- If only readme change, add `[skip ci]` to your commits -->
| Any Dependency Changes?  |
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->
Also include minor tweaks around scope tracking.

## Performant issue
The `getBindingIdentifiers` is generally slow due to heavy dynamics: it even allows monkey-patching its visitor keys: `getBindingIdentifiers.keys` can be modified by external plugins. In my local perf test, dropping `getBindingIdentifiers.keys` can achieves 10x performance boost:

<details>

```
baseline 16 binding identifiers in patterns: 61_364 ops/sec ±0.78% (0.016ms)
baseline 32 binding identifiers in patterns: 27_504 ops/sec ±1.76% (0.036ms)
baseline 64 binding identifiers in patterns: 11_901 ops/sec ±0.75% (0.084ms)
baseline 128 binding identifiers in patterns: 4_260 ops/sec ±1.49% (0.235ms)
current 16 binding identifiers in patterns: 422_790 ops/sec ±1.03% (0.002ms)
current 32 binding identifiers in patterns: 193_291 ops/sec ±1.5% (0.005ms)
current 64 binding identifiers in patterns: 75_164 ops/sec ±1.45% (0.013ms)
current 128 binding identifiers in patterns: 27_211 ops/sec ±1.04% (0.037ms)
current2 16 binding identifiers in patterns: 432_890 ops/sec ±1.55% (0.002ms)
current2 32 binding identifiers in patterns: 250_765 ops/sec ±0.94% (0.004ms)
current2 64 binding identifiers in patterns: 118_529 ops/sec ±1.45% (0.008ms)
current2 128 binding identifiers in patterns: 58_682 ops/sec ±1.88% (0.017ms)
```

`current` is new implementation inlining visitor keys, `current2` is a new implementation based on `current` which returns bindings in tail-first order: so we can avoid unnecessary memcpy introduced by `array.shift` in 

https://github.com/babel/babel/blob/804a94f829a3b2429d591b2f65bde92254c6ad21/packages/babel-types/src/retrievers/getBindingIdentifiers.ts#L43

</details>

we should reconsider whether we are going to support `getBindingIdentifiers.keys` in Babel 8.

<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13723"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 25 (#13724): Use `npm@7` for CRA e2e test

<!--
Before making a PR, please read our contributing guidelines
https://github.com/babel/babel/blob/main/CONTRIBUTING.md

Please note that the Babel Team requires two approvals before merging most PRs.

For issue references: Add a comma-separated list of a [closing word](https://help.github.com/articles/closing-issues-via-commit-messages/) followed by the ticket number fixed by the PR. (it should be underlined in the preview if done correctly)

If you are making a change that should have a docs update: submit another PR to https://github.com/babel/website
-->

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| Tests Added + Pass?      | Yes
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->

This is needed because of https://github.com/facebook/create-react-app/commit/ece4dbf3a58168f07b8cad631aef569cd89d3c2f.


<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13724"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Issue 26 (#13725): Don't manually update npm in CRA test on CircleCI

<!--
Before making a PR, please read our contributing guidelines
https://github.com/babel/babel/blob/main/CONTRIBUTING.md

Please note that the Babel Team requires two approvals before merging most PRs.

For issue references: Add a comma-separated list of a [closing word](https://help.github.com/articles/closing-issues-via-commit-messages/) followed by the ticket number fixed by the PR. (it should be underlined in the preview if done correctly)

If you are making a change that should have a docs update: submit another PR to https://github.com/babel/website
-->

| Q                        | A <!--(Can use an emoji 👍) -->
| ------------------------ | ---
| Tests Added + Pass?      | Yes
| License                  | MIT

<!-- Describe your changes below in as much detail as possible -->

It fails on CircleCI because we need higher permission. I'll merge this if both GH actions and CircleCI pass, and if both of them have npm 7.

<a href="https://gitpod.io/#https://github.com/babel/babel/pull/13725"><img src="https://gitpod.io/button/open-in-gitpod.svg"/></a>

## Repository Information
- **Repository**: babel/babel
- **Pull Request**: #13294
- **Base Commit**: `a5624ea457c6e271545ffd3b7a3e82b90d09efa7`

## Related Issues
- https://github.com/babel/babel/issues/13294
- https://github.com/babel/babel/issues/13170
- https://github.com/babel/babel/issues/13299
- https://github.com/babel/babel/issues/13609
- https://github.com/babel/babel/issues/13623
- https://github.com/babel/babel/issues/13699
- https://github.com/babel/babel/issues/12960
- https://github.com/babel/babel/issues/13663
- https://github.com/babel/babel/issues/13673
- https://github.com/babel/babel/issues/13679
- https://github.com/babel/babel/issues/13674
- https://github.com/babel/babel/issues/13685
- https://github.com/babel/babel/issues/13686
- https://github.com/babel/babel/issues/2
- https://github.com/babel/babel/issues/13694
- https://github.com/babel/babel/issues/13696
- https://github.com/babel/babel/issues/13697
- https://github.com/babel/babel/issues/13705
- https://github.com/babel/babel/issues/13714
- https://github.com/babel/babel/issues/13715
- https://github.com/babel/babel/issues/13717
- https://github.com/babel/babel/issues/13720
- https://github.com/babel/babel/issues/13721
- https://github.com/babel/babel/issues/13723
- https://github.com/babel/babel/issues/13724
- https://github.com/babel/babel/issues/13725
</issue_description>

Can you help me implement the necessary changes to the repository so that the requirements specified in the <issue_description> are met?
I've already taken care of all changes to any of the test files described in the <issue_description>. This means you MUST NOT modify the testing logic or any of the tests in any way!
Also the development Typescript environment is already set up for you (i.e., all dependencies already installed), so you don't need to install other packages.
Your task is to make the minimal changes to non-test files in the /workspace/babel directory to ensure the <issue_description> is satisfied.

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
   4.3 Run the reproduction script with `npx ts-node <filename.ts>` to confirm you are reproducing the issue.
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
   7.3 Run existing tests related to the modified code with `npm test` to ensure you haven't broken anything.

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit a5624ea457c6e271545ffd3b7a3e82b90d09efa7.
   8.1 Ensure you've fully addressed all requirements.
   8.2 Run any tests in the repository related to:
      8.2.1 The issue you are fixing
      8.2.2 The files you modified
      8.2.3 The functions you changed
   8.3 If any tests fail, revise your implementation until all tests pass.

Be thorough in your exploration, testing, and reasoning. It's fine if your thinking process is lengthy - quality and completeness are more important than brevity.

IMPORTANT CONSTRAINTS:
- ONLY modify files within the /workspace/babel directory
- DO NOT navigate outside this directory (no `cd ..` or absolute paths to other locations)
- DO NOT create, modify, or delete any files outside the repository
- All your changes must be trackable by `git diff` within the repository
- If you need to create test files, create them inside the repository directory