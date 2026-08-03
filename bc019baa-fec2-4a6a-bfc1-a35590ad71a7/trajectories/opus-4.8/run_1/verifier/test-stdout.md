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
    * <rootDir>/integrations/rollup-sass/package.json
    * <rootDir>/integrations/rollup/package.json

PASS tests/opacity.test.js
  ✓ opacity (107 ms)
  ✓ colors defined as functions work when opacity plugins are disabled (26 ms)
  ✓ can use <alpha-value> defining custom properties for colors (opacity plugins enabled) (33 ms)
  ✓ can use rgb helper when defining custom properties for colors (opacity plugins disabled) (469 ms)
  ✓ can use hsl helper when defining custom properties for colors (opacity plugins enabled) (26 ms)
  ✓ can use hsl helper when defining custom properties for colors (opacity plugins disabled) (23 ms)
  ✓ Theme function in JS can apply alpha values to colors (1) (36 ms)
  ✓ Theme function in JS can apply alpha values to colors (2) (19 ms)
  ✓ Theme function in JS can apply alpha values to colors (3) (20 ms)
  ✓ Theme function in JS can apply alpha values to colors (4) (21 ms)
  ✓ Theme function in JS can apply alpha values to colors (5) (15 ms)
  ✓ Theme function in JS can apply alpha values to colors (6) (18 ms)
  ✓ Theme function in JS can apply alpha values to colors (7) (14 ms)
  ✓ Theme function prefers existing values in config (23 ms)
  ✓ should be possible to use an <alpha-value> as part of the color definition (6 ms)
  ✓ should be possible to use an <alpha-value> as part of the color definition with an opacity modifiers (7 ms)
  ✓ should be possible to use an <alpha-value> as part of the color definition with an opacity modifiers (6 ms)
  ✓ should be possible to use <alpha-value> inside arbitrary values (27 ms)
  ✓ Theme functions can reference values with slashes in brackets (16 ms)
  ✓ works with opacity values defined as a placeholder or a function in when colors is a function (24 ms)

PASS tests/arbitrary-variants.test.js
  ✓ basic arbitrary variants (512 ms)
  ✓ spaces in selector (using _) (98 ms)
  ✓ arbitrary variants with modifiers (114 ms)
  ✓ variants without & or an at-rule are ignored (83 ms)
  ✓ arbitrary variants are sorted after other variants (94 ms)
  ✓ using the important modifier (72 ms)
  ✓ at-rules (73 ms)
  ✓ nested at-rules (82 ms)
  ✓ at-rules with selector modifications (68 ms)
  ✓ nested at-rules with selector modifications (67 ms)
  ✓ attribute selectors (73 ms)
  ✓ multiple attribute selectors (73 ms)
  ✓ multiple attribute selectors with custom separator (1) (74 ms)
  ✓ multiple attribute selectors with custom separator (2) (82 ms)
  ✓ with @apply (78 ms)
  ✓ keeps escaped underscores (63 ms)
  ✓ keeps escaped underscores with multiple arbitrary variants (68 ms)
  ✓ keeps escaped underscores in arbitrary variants mixed with normal variants (66 ms)
  ✓ allows attribute variants with quotes (64 ms)
  ✓ classes in arbitrary variants should not be prefixed (61 ms)
  ✓ classes in the same arbitrary variant should not be prefixed (63 ms)

PASS tests/apply.test.js
  ✓ @apply (674 ms)
  ✓ @apply error with unknown utility (110 ms)
  ✓ @apply error with nested @screen (74 ms)
  ✓ @apply error with nested @anyatrulehere (75 ms)
  ✓ @apply error when using .group utility (53 ms)
  ✓ @apply error when using a prefixed .group utility (49 ms)
  ✓ @apply error when using .peer utility (49 ms)
  ✓ @apply error when using a prefixed .peer utility (54 ms)
  ✓ @apply classes from outside a @layer (78 ms)
  ✓ @applying classes from outside a @layer respects the source order (75 ms)
  ✓ should remove duplicate properties when using apply with similar properties (71 ms)
  ✓ should apply all the definitions of a class (56 ms)
  ✓ should throw when trying to apply a direct circular dependency (64 ms)
  ✓ should throw when trying to apply an indirect circular dependency (75 ms)
  ✓ should not throw when the selector is different (but contains the base partially) (66 ms)
  ✓ should throw when trying to apply an indirect circular dependency with a modifier (1) (70 ms)
  ✓ should throw when trying to apply an indirect circular dependency with a modifier (2) (51 ms)
  ✓ should not throw when the circular dependency is part of a different selector (1) (56 ms)
  ✓ should not throw when the circular dependency is part of a different selector (2) (56 ms)
  ✓ should throw when the circular dependency is part of the same selector (54 ms)
  ✓ rules with vendor prefixes are still separate when optimizing defaults rules (56 ms)
  ✓ should be possible to apply user css (61 ms)
  ✓ should not be possible to apply user css with variants (56 ms)
  ✓ should not apply unrelated siblings when applying something from within atrules (64 ms)
  ✓ should be possible to apply user css without tailwind directives (25 ms)
  ✓ should be possible to apply a class from another rule with multiple selectors (2 classes) (56 ms)
  ✓ should be possible to apply a class from another rule with multiple selectors (1 class, 1 tag) (55 ms)
  ✓ should be possible to apply a class from another rule with multiple selectors (1 class, 1 id) (54 ms)
  ✓ apply can emit defaults in isolated environments without @tailwind directives (57 ms)
  ✓ apply does not emit defaults in isolated environments without optimizeUniversalDefaults (69 ms)
  ✓ should work outside of layer (94 ms)
  ✓ should work in layer (72 ms)
  ✓ apply partitioning works with media queries (90 ms)
  ✓ should be possible to use apply in plugins (51 ms)
  ✓ should apply using the updated user CSS when the source has changed (47 ms)
  ✓ apply + layer utilities + selector variants (like group) + important selector (60 ms)
  ✓ apply + user CSS + selector variants (like group) + important selector (1) (26 ms)
  ✓ apply + user CSS + selector variants (like group) + important selector (2) (25 ms)
  ✓ can apply user utilities that start with a dash (60 ms)
  multiple instances
    ✓ should be possible to apply multiple "instances" of the same class (52 ms)
    ✓ should be possible to apply a combination of multiple "instances" of the same class (24 ms)
    ✓ should generate the same output, even if it was used in a @layer (57 ms)
    ✓ should be possible to apply a combination of multiple "instances" of the same class (defined in a layer) (59 ms)
    ✓ should properly maintain the order (26 ms)

Test Suites: 3 passed, 3 total
Tests:       85 passed, 85 total
Snapshots:   0 total
Time:        4.933 s
Ran all test suites matching /tests\/apply.test.js|tests\/arbitrary-variants.test.js|tests\/opacity.test.js/i.
Force exiting Jest: Have you considered using `--detectOpenHandles` to detect async operations that kept running after all tests finished?
