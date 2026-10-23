# TRUTH.md - babel__babel-13294

## Defect

The milestone bundles 26 announced issue(s):
1. (#13294): fix(parser): [Babel8] Align error codes between Flow and TypeScript
2. (#13170): [Bug]: `sourceFileName` vs. `sourceFilename` scattered differently over project, sometimes typed wrong
3. (#13299): [Bug]: Class Private Fields/Accessors/Methods must not be re-initialized on instance
4. (#13609): perf: partially replace `.concat` with `.push`
5. (#13623): Workaround for hanging e2e-breaking Babel test
6. (#13699): `@babel/eslint-parser` should support `ecmaVersion: latest`
7. (#12960): Symbol required for Private Static Field in check can be shadowed
8. (#13663): [Bug]: Nested workspaces can't be defined with dot notation
9. (#13673): Update test262
10. (#13679): convert `@babel/helpers` to typescript
11. (#13674): [Bug]: Invalid `static` property for StaticBlock
12. (#13685): Use named imports for babel types
13. (#13686): convert `@babel/helper-skip-transparent-expression-wrappers` to typescript
14. (#2): missing templates when installed via npm
15. (#13694): [Bug]: Parser accepts illegal syntax `obj.[prop]`
16. (#13696): Update test262
17. (#13697): fix: pass `browserslistEnv` to `resolveTargets`
18. (#13705): Update test262
19. (#13714): test(parser): add no_plugin tests for module blocks
20. (#13715): [babel 8] fix: stricter rest element builder check
...and 6 more.

The reference change touches 149 file(s) in typescript. 113 target test(s) observe the result and 14322 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `packages/babel-plugin-proposal-private-property-in-object/src/index.js`
- `packages/babel-traverse/src/scope/index.ts`
- `packages/babel-traverse/src/path/conversion.ts`
- `packages/babel-helper-create-class-features-plugin/src/fields.ts`
- `packages/babel-core/src/tools/build-external-helpers.ts`
- `packages/babel-helpers/src/index.ts`
- `packages/babel-helper-member-expression-to-functions/src/index.ts`
- `packages/babel-traverse/src/path/inference/inferers.ts`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (113) and confirm the preserve set (14322) still passes.

## Root cause

Two independent problems are folded into this change; the visible test failures come from both.

The first is a name-collision bug in the class-features transform. When a class body is lowered (private fields, private methods, static blocks, getters/setters), the transform rewrites references to the class by name using a captured identifier for the class reference. If a *local* binding inside or around the class shadows that class-reference name, the rewritten code resolves to the shadowing binding instead of the intended class. The generated helper calls then operate on the wrong value. The tests exercising private methods/fields, getters/setters, `super`, static blocks, nested classes, and derived classes all depend on the transform emitting references that bind to the real class even when an inner variable reuses the same name (see the regression around a class reference being shadowed).

The second is a module-shape / typing problem. Several packages import the whole `@babel/types` module as a namespace and call builders and predicates off it, and one plugin wires up a syntax plugin via `inherits`. When these modules are consumed as compiled ES modules with interop, the namespace object and the default export are not the same shape the code assumes: a plugin passed through `inherits` must be the plugin object itself, not the module record wrapping it, and the type-level `import * as t` cannot simultaneously be used as a value namespace and a type namespace once the files are TypeScript. The `.babelrc`/config and TypeScript-parsing tests fail because the affected packages don't load or type-check correctly in this form.

## Solution shape

Two properties must hold.

**Class-reference references must not be captured by shadowing bindings.** Before (or as) the transform emits references to the class by its captured name, it must guarantee that no binding *between* the emission site's scope and the class's own binding reuses that name. The correct behaviour: walk outward from the scope where the reference is emitted, and for every scope that has a binding of the class-reference name which is *not* the class's own binding, rename that shadowing binding to a fresh name. Stop when you reach the scope whose binding of that name is the class itself (identity comparison against the known inner class binding), or when the name is no longer bound.

```
fixShadowing(name, scope, classBinding):
  while scope has binding for `name`
        and scope's binding for `name` is not classBinding:
    scope.rename(name)   # renames the shadow, leaving the class ref free
    scope = scope.parent
```

This must run at **every** site that emits a reference to the class name — at minimum both the top-level entry into the class transform and the per-member (referenced-identifier) rewrites. A fix that only unshadows at one of these sites will pass some cases and leave others (e.g. references inside individual member bodies) still bound to the shadow. The class's own binding identity must be threaded through to these sites so the loop knows where to stop; otherwise the loop either never terminates or renames the class itself.

**The affected modules must expose and consume the correct value/type shapes.** Where a module is used both as a value (calling builders/predicates) and as a type namespace, split those: import the specific builder/predicate functions as values and keep a separate type-only namespace import for the `t.X` type annotations. Where a syntax plugin is passed to `inherits`, pass the plugin object that the module actually exports as its default, not the module namespace record.

## Ordered plan

1. **Reproduce the class-name shadowing failure first**, because it's the behavioural core. Take one failing private-method or getter/setter case where a local variable reuses the class name, and confirm the emitted output binds the helper call to the local variable rather than the class. This tells you the fix is about reference resolution, not helper generation.

2. **Locate every place the transform emits a reference to the class by its captured name.** There is more than one: the entry point that sets up the class transform, and the visitor that rewrites referenced identifiers per member. You must enumerate these before writing the fix, because the fix has to be applied at each — finding only one is the most likely way to pass a subset of tests and fail the rest.

3. **Thread the class's own binding identifier to those sites.** The unshadowing loop needs an identity to compare against so it stops at the real class and never renames it. Do this before writing the loop, since the loop's termination condition depends on it.

4. **Write the outward-walking rename loop** and call it at each emission site with the class-reference name, the current scope, and the class binding. Verify termination on cases where the name isn't bound at all (the loop must not spin) — this is why the condition checks both "has binding" and "binding is not the class".

5. **Re-run the class transform tests** (private methods, private fields, super, static blocks, nested/derived classes, getters/setters). These should now pass. If some nested cases still fail, you missed an emission site in step 2.

6. **Separately, address the module-shape failures.** For the plugin wired via `inherits`, pass the default export of the syntax plugin rather than its namespace. For the modules that use `import * as t` as both value and type, replace the value uses with named imports of the exact builders/predicates and retain a type-only namespace for annotations. Run the config-loading and TypeScript-parsing tests to confirm.

Steps 1–5 are strictly ordered (each depends on the previous). Step 6 is independent of 1–5 and can be done in either order relative to them, but must be completed for the config and TS tests.

## Pitfalls

- **Unshadowing at only one call site.** The entry point and the per-member reference rewriter both emit the class name. Fixing only the entry point passes the top-level cases but leaves references inside individual member bodies bound to the shadow — exactly the nested-class and per-method tests will still fail.

- **Renaming the class itself.** If the loop's stop condition is just "name is bound," it will rename the class's own binding and break everything. The condition must compare binding identity against the known class binding and stop there. Forgetting to thread that identity through leaves the loop with nothing to compare against.

- **Non-terminating loop.** In some scopes the name-lookup can return no usable binding even though a naive "keep going up" walk expects one; the loop must also stop when the name is not bound, or it will spin or throw. Check both conditions each iteration.

- **Converting a namespace value use into a type-only import and losing the runtime call.** When splitting `import * as t`, the builder/predicate calls are *runtime values* and must remain value imports; only the `t.SomeType` annotations become the type-only namespace. Making the whole thing type-only removes the builders at runtime and breaks the transforms silently in compiled output.

- **Passing the wrong object to `inherits`.** Passing the module namespace record instead of the plugin object it exports as default looks right (the property exists) but hands the plugin machinery a wrapper, so the inherited syntax plugin never actually applies — the TypeScript static-block parsing tests will fail even though nothing errors loudly.

- **Making the test agree with the bug.** Do not "fix" a shadowing test by renaming the local variable in the fixture; the point is that the transform must handle a collision, not that the fixture avoids one.

## Provenance

```yaml
uuid: a43e74e0-ade1-445b-af96-b5c8b561ef27
instance_id: babel__babel-13294
fix_patch_sha256: 195eabf29efbf39ac611178bd74d83623cb2cacfc3057479dab5e299d23bdd69
language: typescript
targets_total: 113
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
