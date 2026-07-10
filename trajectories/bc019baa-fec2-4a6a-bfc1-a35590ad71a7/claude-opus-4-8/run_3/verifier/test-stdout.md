HEAD is now at 14542d94 Allow manual rebuilds of the CLI
Applied patch to 'tests/apply.test.js' cleanly.
Applied patch to 'tests/arbitrary-variants.test.js' cleanly.
Applied patch to 'tests/opacity.test.js' cleanly.
Applied patch to 'CHANGELOG.md' cleanly.
Applied patch to 'README.md' cleanly.
Applied patch to 'package.json' cleanly.
Applied patch to 'src/lib/expandApplyAtRules.js' cleanly.
Applied patch to 'src/lib/generateRules.js' cleanly.
Applied patch to 'src/util/resolveConfig.js' cleanly.

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
  ✓ opacity (80 ms)
  ✓ colors defined as functions work when opacity plugins are disabled (23 ms)
  ✓ can use <alpha-value> defining custom properties for colors (opacity plugins enabled) (21 ms)
  ✓ can use rgb helper when defining custom properties for colors (opacity plugins disabled) (417 ms)
  ✓ can use hsl helper when defining custom properties for colors (opacity plugins enabled) (23 ms)
  ✓ can use hsl helper when defining custom properties for colors (opacity plugins disabled) (19 ms)
  ✓ Theme function in JS can apply alpha values to colors (1) (17 ms)
  ✓ Theme function in JS can apply alpha values to colors (2) (19 ms)
  ✓ Theme function in JS can apply alpha values to colors (3) (19 ms)
  ✓ Theme function in JS can apply alpha values to colors (4) (16 ms)
  ✓ Theme function in JS can apply alpha values to colors (5) (16 ms)
  ✓ Theme function in JS can apply alpha values to colors (6) (14 ms)
  ✓ Theme function in JS can apply alpha values to colors (7) (16 ms)
  ✓ Theme function prefers existing values in config (16 ms)
  ✓ should be possible to use an <alpha-value> as part of the color definition (5 ms)
  ✓ should be possible to use an <alpha-value> as part of the color definition with an opacity modifiers (6 ms)
  ✓ should be possible to use an <alpha-value> as part of the color definition with an opacity modifiers (6 ms)
  ✓ should be possible to use <alpha-value> inside arbitrary values (5 ms)
  ✓ Theme functions can reference values with slashes in brackets (16 ms)
  ✓ works with opacity values defined as a placeholder or a function in when colors is a function (15 ms)

PASS tests/arbitrary-variants.test.js
  ✓ basic arbitrary variants (457 ms)
  ✓ spaces in selector (using _) (68 ms)
  ✓ arbitrary variants with modifiers (84 ms)
  ✓ variants without & or an at-rule are ignored (64 ms)
  ✓ arbitrary variants are sorted after other variants (59 ms)
  ✓ using the important modifier (57 ms)
  ✓ at-rules (57 ms)
  ✓ nested at-rules (56 ms)
  ✓ at-rules with selector modifications (59 ms)
  ✓ nested at-rules with selector modifications (55 ms)
  ✓ attribute selectors (55 ms)
  ✓ multiple attribute selectors (54 ms)
  ✓ multiple attribute selectors with custom separator (1) (57 ms)
  ✓ multiple attribute selectors with custom separator (2) (54 ms)
  ✓ with @apply (56 ms)
  ✓ keeps escaped underscores (54 ms)
  ✓ keeps escaped underscores with multiple arbitrary variants (52 ms)
  ✓ keeps escaped underscores in arbitrary variants mixed with normal variants (55 ms)
  ✓ allows attribute variants with quotes (55 ms)
  ✓ classes in arbitrary variants should not be prefixed (47 ms)
  ✓ classes in the same arbitrary variant should not be prefixed (48 ms)

PASS tests/apply.test.js
  ✓ @apply (553 ms)
  ✓ @apply error with unknown utility (78 ms)
  ✓ @apply error with nested @screen (48 ms)
  ✓ @apply error with nested @anyatrulehere (46 ms)
  ✓ @apply error when using .group utility (41 ms)
  ✓ @apply error when using a prefixed .group utility (42 ms)
  ✓ @apply error when using .peer utility (41 ms)
  ✓ @apply error when using a prefixed .peer utility (41 ms)
  ✓ @apply classes from outside a @layer (64 ms)
  ✓ @applying classes from outside a @layer respects the source order (58 ms)
  ✓ should remove duplicate properties when using apply with similar properties (54 ms)
  ✓ should apply all the definitions of a class (47 ms)
  ✓ should throw when trying to apply a direct circular dependency (42 ms)
  ✓ should throw when trying to apply an indirect circular dependency (40 ms)
  ✓ should not throw when the selector is different (but contains the base partially) (48 ms)
  ✓ should throw when trying to apply an indirect circular dependency with a modifier (1) (40 ms)
  ✓ should throw when trying to apply an indirect circular dependency with a modifier (2) (41 ms)
  ✓ should not throw when the circular dependency is part of a different selector (1) (46 ms)
  ✓ should not throw when the circular dependency is part of a different selector (2) (46 ms)
  ✓ should throw when the circular dependency is part of the same selector (41 ms)
  ✓ rules with vendor prefixes are still separate when optimizing defaults rules (47 ms)
  ✓ should be possible to apply user css (47 ms)
  ✓ should not be possible to apply user css with variants (40 ms)
  ✓ should not apply unrelated siblings when applying something from within atrules (49 ms)
  ✓ should be possible to apply user css without tailwind directives (21 ms)
  ✓ should be possible to apply a class from another rule with multiple selectors (2 classes) (44 ms)
  ✓ should be possible to apply a class from another rule with multiple selectors (1 class, 1 tag) (46 ms)
  ✓ should be possible to apply a class from another rule with multiple selectors (1 class, 1 id) (45 ms)
  ✓ apply can emit defaults in isolated environments without @tailwind directives (46 ms)
  ✓ apply does not emit defaults in isolated environments without optimizeUniversalDefaults (57 ms)
  ✓ should work outside of layer (66 ms)
  ✓ should work in layer (60 ms)
  ✓ apply partitioning works with media queries (75 ms)
  ✓ should be possible to use apply in plugins (44 ms)
  ✓ should apply using the updated user CSS when the source has changed (42 ms)
  ✓ apply + layer utilities + selector variants (like group) + important selector (47 ms)
  ✓ apply + user CSS + selector variants (like group) + important selector (1) (21 ms)
  ✓ apply + user CSS + selector variants (like group) + important selector (2) (21 ms)
  ✓ can apply user utilities that start with a dash (45 ms)
  multiple instances
    ✓ should be possible to apply multiple "instances" of the same class (43 ms)
    ✓ should be possible to apply a combination of multiple "instances" of the same class (21 ms)
    ✓ should generate the same output, even if it was used in a @layer (44 ms)
    ✓ should be possible to apply a combination of multiple "instances" of the same class (defined in a layer) (47 ms)
    ✓ should properly maintain the order (23 ms)

Test Suites: 3 passed, 3 total
Tests:       85 passed, 85 total
Snapshots:   0 total
Time:        3.444 s
Ran all test suites matching /tests\/apply.test.js|tests\/arbitrary-variants.test.js|tests\/opacity.test.js/i.
Force exiting Jest: Have you considered using `--detectOpenHandles` to detect async operations that kept running after all tests finished?
