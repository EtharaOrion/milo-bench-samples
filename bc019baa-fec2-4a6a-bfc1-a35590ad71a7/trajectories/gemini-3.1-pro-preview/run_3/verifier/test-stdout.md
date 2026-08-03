HEAD is now at 14542d94 Allow manual rebuilds of the CLI
Applied patch to 'tests/apply.test.js' cleanly.
Applied patch to 'tests/arbitrary-variants.test.js' cleanly.
Applied patch to 'tests/opacity.test.js' cleanly.
Applied patch to 'README.md' cleanly.
Applied patch to 'package.json' cleanly.
Applied patch to 'src/lib/generateRules.js' cleanly.
Applied patch to 'src/util/resolveConfig.js' cleanly.
Falling back to direct application...
error: cannot apply binary patch to 'tailwindcss-3.1.7.tgz' without full index line
error: tailwindcss-3.1.7.tgz: patch does not apply
Checking patch tests/apply.test.js...
Hunk #1 succeeded at 1584 (offset 36 lines).
Checking patch tests/arbitrary-variants.test.js...
Hunk #1 succeeded at 615 (offset 49 lines).
Checking patch tests/opacity.test.js...
Hunk #1 succeeded at 828 (offset 67 lines).
Applied patch tests/apply.test.js cleanly.
Applied patch tests/arbitrary-variants.test.js cleanly.
Applied patch tests/opacity.test.js cleanly.
Checking patch README.md...
Checking patch package.json...
Checking patch src/lib/generateRules.js...
Checking patch src/util/resolveConfig.js...
Checking patch tailwindcss-3.1.7.tgz...
error: cannot apply binary patch to 'tailwindcss-3.1.7.tgz' without full index line
error: tailwindcss-3.1.7.tgz: patch does not apply
Applied patch README.md cleanly.
Applied patch package.json cleanly.
Applied patch src/lib/generateRules.js cleanly.
Applied patch src/util/resolveConfig.js cleanly.

> tailwindcss@3.1.7 generate
> npm run generate:plugin-list && npm run generate:types


> tailwindcss@3.1.7 generate:plugin-list
> node -r @swc/register scripts/create-plugin-list.js


> tailwindcss@3.1.7 generate:types
> node -r @swc/register scripts/generate-types.js

jest-haste-map: Haste module naming collision: rollup.js
  The following files share their name; please adjust your hasteImpl:
    * <rootDir>/integrations/rollup/package.json
    * <rootDir>/integrations/rollup-sass/package.json

PASS tests/opacity.test.js
  ✓ opacity (82 ms)
  ✓ colors defined as functions work when opacity plugins are disabled (23 ms)
  ✓ can use <alpha-value> defining custom properties for colors (opacity plugins enabled) (22 ms)
  ✓ can use rgb helper when defining custom properties for colors (opacity plugins disabled) (419 ms)
  ✓ can use hsl helper when defining custom properties for colors (opacity plugins enabled) (24 ms)
  ✓ can use hsl helper when defining custom properties for colors (opacity plugins disabled) (19 ms)
  ✓ Theme function in JS can apply alpha values to colors (1) (18 ms)
  ✓ Theme function in JS can apply alpha values to colors (2) (18 ms)
  ✓ Theme function in JS can apply alpha values to colors (3) (19 ms)
  ✓ Theme function in JS can apply alpha values to colors (4) (16 ms)
  ✓ Theme function in JS can apply alpha values to colors (5) (16 ms)
  ✓ Theme function in JS can apply alpha values to colors (6) (15 ms)
  ✓ Theme function in JS can apply alpha values to colors (7) (16 ms)
  ✓ Theme function prefers existing values in config (16 ms)
  ✓ should be possible to use an <alpha-value> as part of the color definition (6 ms)
  ✓ should be possible to use an <alpha-value> as part of the color definition with an opacity modifiers (6 ms)
  ✓ should be possible to use an <alpha-value> as part of the color definition with an opacity modifiers (5 ms)
  ✓ should be possible to use <alpha-value> inside arbitrary values (6 ms)
  ✓ Theme functions can reference values with slashes in brackets (17 ms)
  ✓ works with opacity values defined as a placeholder or a function in when colors is a function (15 ms)
  ✓ works with opacity values defined as a placeholder or a function in when colors is a function (8 ms)

PASS tests/arbitrary-variants.test.js
  ✓ basic arbitrary variants (466 ms)
  ✓ spaces in selector (using _) (83 ms)
  ✓ arbitrary variants with modifiers (72 ms)
  ✓ variants without & or an at-rule are ignored (60 ms)
  ✓ arbitrary variants are sorted after other variants (61 ms)
  ✓ using the important modifier (59 ms)
  ✓ at-rules (58 ms)
  ✓ nested at-rules (57 ms)
  ✓ at-rules with selector modifications (59 ms)
  ✓ nested at-rules with selector modifications (56 ms)
  ✓ attribute selectors (56 ms)
  ✓ multiple attribute selectors (54 ms)
  ✓ multiple attribute selectors with custom separator (1) (57 ms)
  ✓ multiple attribute selectors with custom separator (2) (55 ms)
  ✓ with @apply (57 ms)
  ✓ keeps escaped underscores (53 ms)
  ✓ keeps escaped underscores with multiple arbitrary variants (54 ms)
  ✓ keeps escaped underscores in arbitrary variants mixed with normal variants (55 ms)
  ✓ allows attribute variants with quotes (56 ms)
  ✓ classes in arbitrary variants should not be prefixed (49 ms)
  ✓ classes in the same arbitrary variant should not be prefixed (50 ms)
  ✓ classes in the same arbitrary variant should not be prefixed (25 ms)

PASS tests/apply.test.js
  ✓ @apply (562 ms)
  ✓ @apply error with unknown utility (79 ms)
  ✓ @apply error with nested @screen (50 ms)
  ✓ @apply error with nested @anyatrulehere (46 ms)
  ✓ @apply error when using .group utility (44 ms)
  ✓ @apply error when using a prefixed .group utility (43 ms)
  ✓ @apply error when using .peer utility (42 ms)
  ✓ @apply error when using a prefixed .peer utility (42 ms)
  ✓ @apply classes from outside a @layer (65 ms)
  ✓ @applying classes from outside a @layer respects the source order (59 ms)
  ✓ should remove duplicate properties when using apply with similar properties (53 ms)
  ✓ should apply all the definitions of a class (49 ms)
  ✓ should throw when trying to apply a direct circular dependency (42 ms)
  ✓ should throw when trying to apply an indirect circular dependency (40 ms)
  ✓ should not throw when the selector is different (but contains the base partially) (49 ms)
  ✓ should throw when trying to apply an indirect circular dependency with a modifier (1) (42 ms)
  ✓ should throw when trying to apply an indirect circular dependency with a modifier (2) (40 ms)
  ✓ should not throw when the circular dependency is part of a different selector (1) (46 ms)
  ✓ should not throw when the circular dependency is part of a different selector (2) (47 ms)
  ✓ should throw when the circular dependency is part of the same selector (42 ms)
  ✓ rules with vendor prefixes are still separate when optimizing defaults rules (47 ms)
  ✓ should be possible to apply user css (49 ms)
  ✓ should not be possible to apply user css with variants (41 ms)
  ✓ should not apply unrelated siblings when applying something from within atrules (48 ms)
  ✓ should be possible to apply user css without tailwind directives (21 ms)
  ✓ should be possible to apply a class from another rule with multiple selectors (2 classes) (46 ms)
  ✓ should be possible to apply a class from another rule with multiple selectors (1 class, 1 tag) (46 ms)
  ✓ should be possible to apply a class from another rule with multiple selectors (1 class, 1 id) (46 ms)
  ✓ apply can emit defaults in isolated environments without @tailwind directives (47 ms)
  ✓ apply does not emit defaults in isolated environments without optimizeUniversalDefaults (58 ms)
  ✓ should work outside of layer (65 ms)
  ✓ should work in layer (60 ms)
  ✓ apply partitioning works with media queries (74 ms)
  ✓ should be possible to use apply in plugins (44 ms)
  ✓ should apply using the updated user CSS when the source has changed (41 ms)
  ✓ apply + layer utilities + selector variants (like group) + important selector (46 ms)
  ✓ apply + user CSS + selector variants (like group) + important selector (1) (21 ms)
  ✓ apply + user CSS + selector variants (like group) + important selector (2) (21 ms)
  ✓ can apply user utilities that start with a dash (46 ms)
  ✓ can apply user utilities that start with a dash (22 ms)
  multiple instances
    ✓ should be possible to apply multiple "instances" of the same class (44 ms)
    ✓ should be possible to apply a combination of multiple "instances" of the same class (22 ms)
    ✓ should generate the same output, even if it was used in a @layer (44 ms)
    ✓ should be possible to apply a combination of multiple "instances" of the same class (defined in a layer) (47 ms)
    ✓ should properly maintain the order (24 ms)

Test Suites: 3 passed, 3 total
Tests:       88 passed, 88 total
Snapshots:   0 total
Time:        3.553 s
Ran all test suites matching /tests\/apply.test.js|tests\/arbitrary-variants.test.js|tests\/opacity.test.js/i.
Force exiting Jest: Have you considered using `--detectOpenHandles` to detect async operations that kept running after all tests finished?
