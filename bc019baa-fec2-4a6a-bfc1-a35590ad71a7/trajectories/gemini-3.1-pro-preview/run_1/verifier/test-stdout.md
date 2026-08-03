HEAD is now at 14542d94 Allow manual rebuilds of the CLI
Applied patch to 'tests/apply.test.js' cleanly.
Applied patch to 'tests/arbitrary-variants.test.js' cleanly.
Applied patch to 'tests/opacity.test.js' cleanly.
Applied patch to 'README.md' cleanly.
Applied patch to 'package.json' cleanly.
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
  ✓ opacity (82 ms)
  ✓ colors defined as functions work when opacity plugins are disabled (24 ms)
  ✓ can use <alpha-value> defining custom properties for colors (opacity plugins enabled) (22 ms)
  ✓ can use rgb helper when defining custom properties for colors (opacity plugins disabled) (405 ms)
  ✓ can use hsl helper when defining custom properties for colors (opacity plugins enabled) (39 ms)
  ✓ can use hsl helper when defining custom properties for colors (opacity plugins disabled) (20 ms)
  ✓ Theme function in JS can apply alpha values to colors (1) (18 ms)
  ✓ Theme function in JS can apply alpha values to colors (2) (15 ms)
  ✓ Theme function in JS can apply alpha values to colors (3) (19 ms)
  ✓ Theme function in JS can apply alpha values to colors (4) (16 ms)
  ✓ Theme function in JS can apply alpha values to colors (5) (16 ms)
  ✓ Theme function in JS can apply alpha values to colors (6) (17 ms)
  ✓ Theme function in JS can apply alpha values to colors (7) (14 ms)
  ✓ Theme function prefers existing values in config (16 ms)
  ✓ should be possible to use an <alpha-value> as part of the color definition (6 ms)
  ✓ should be possible to use an <alpha-value> as part of the color definition with an opacity modifiers (5 ms)
  ✓ should be possible to use an <alpha-value> as part of the color definition with an opacity modifiers (5 ms)
  ✓ should be possible to use <alpha-value> inside arbitrary values (5 ms)
  ✓ Theme functions can reference values with slashes in brackets (15 ms)
  ✓ works with opacity values defined as a placeholder or a function in when colors is a function (17 ms)

PASS tests/arbitrary-variants.test.js
  ✓ basic arbitrary variants (465 ms)
  ✓ spaces in selector (using _) (76 ms)
  ✓ arbitrary variants with modifiers (75 ms)
  ✓ variants without & or an at-rule are ignored (60 ms)
  ✓ arbitrary variants are sorted after other variants (61 ms)
  ✓ using the important modifier (60 ms)
  ✓ at-rules (59 ms)
  ✓ nested at-rules (59 ms)
  ✓ at-rules with selector modifications (60 ms)
  ✓ nested at-rules with selector modifications (57 ms)
  ✓ attribute selectors (58 ms)
  ✓ multiple attribute selectors (56 ms)
  ✓ multiple attribute selectors with custom separator (1) (58 ms)
  ✓ multiple attribute selectors with custom separator (2) (56 ms)
  ✓ with @apply (58 ms)
  ✓ keeps escaped underscores (55 ms)
  ✓ keeps escaped underscores with multiple arbitrary variants (54 ms)
  ✓ keeps escaped underscores in arbitrary variants mixed with normal variants (56 ms)
  ✓ allows attribute variants with quotes (57 ms)
  ✓ classes in arbitrary variants should not be prefixed (49 ms)
  ✓ classes in the same arbitrary variant should not be prefixed (50 ms)

PASS tests/apply.test.js
  ✓ @apply (566 ms)
  ✓ @apply error with unknown utility (80 ms)
  ✓ @apply error with nested @screen (50 ms)
  ✓ @apply error with nested @anyatrulehere (47 ms)
  ✓ @apply error when using .group utility (44 ms)
  ✓ @apply error when using a prefixed .group utility (43 ms)
  ✓ @apply error when using .peer utility (42 ms)
  ✓ @apply error when using a prefixed .peer utility (43 ms)
  ✓ @apply classes from outside a @layer (68 ms)
  ✓ @applying classes from outside a @layer respects the source order (60 ms)
  ✓ should remove duplicate properties when using apply with similar properties (54 ms)
  ✓ should apply all the definitions of a class (50 ms)
  ✓ should throw when trying to apply a direct circular dependency (43 ms)
  ✓ should throw when trying to apply an indirect circular dependency (41 ms)
  ✓ should not throw when the selector is different (but contains the base partially) (50 ms)
  ✓ should throw when trying to apply an indirect circular dependency with a modifier (1) (42 ms)
  ✓ should throw when trying to apply an indirect circular dependency with a modifier (2) (41 ms)
  ✓ should not throw when the circular dependency is part of a different selector (1) (47 ms)
  ✓ should not throw when the circular dependency is part of a different selector (2) (48 ms)
  ✓ should throw when the circular dependency is part of the same selector (42 ms)
  ✓ rules with vendor prefixes are still separate when optimizing defaults rules (48 ms)
  ✓ should be possible to apply user css (49 ms)
  ✓ should not be possible to apply user css with variants (41 ms)
  ✓ should not apply unrelated siblings when applying something from within atrules (50 ms)
  ✓ should be possible to apply user css without tailwind directives (23 ms)
  ✓ should be possible to apply a class from another rule with multiple selectors (2 classes) (47 ms)
  ✓ should be possible to apply a class from another rule with multiple selectors (1 class, 1 tag) (47 ms)
  ✓ should be possible to apply a class from another rule with multiple selectors (1 class, 1 id) (47 ms)
  ✓ apply can emit defaults in isolated environments without @tailwind directives (48 ms)
  ✓ apply does not emit defaults in isolated environments without optimizeUniversalDefaults (59 ms)
  ✓ should work outside of layer (67 ms)
  ✓ should work in layer (60 ms)
  ✓ apply partitioning works with media queries (75 ms)
  ✓ should be possible to use apply in plugins (45 ms)
  ✓ should apply using the updated user CSS when the source has changed (42 ms)
  ✓ apply + layer utilities + selector variants (like group) + important selector (48 ms)
  ✓ apply + user CSS + selector variants (like group) + important selector (1) (21 ms)
  ✓ apply + user CSS + selector variants (like group) + important selector (2) (21 ms)
  ✓ can apply user utilities that start with a dash (47 ms)
  multiple instances
    ✓ should be possible to apply multiple "instances" of the same class (45 ms)
    ✓ should be possible to apply a combination of multiple "instances" of the same class (22 ms)
    ✓ should generate the same output, even if it was used in a @layer (45 ms)
    ✓ should be possible to apply a combination of multiple "instances" of the same class (defined in a layer) (49 ms)
    ✓ should properly maintain the order (24 ms)

Test Suites: 3 passed, 3 total
Tests:       85 passed, 85 total
Snapshots:   0 total
Time:        3.572 s
Ran all test suites matching /tests\/apply.test.js|tests\/arbitrary-variants.test.js|tests\/opacity.test.js/i.
Force exiting Jest: Have you considered using `--detectOpenHandles` to detect async operations that kept running after all tests finished?
