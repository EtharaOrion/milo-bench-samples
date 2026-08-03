# TRUTH.md - fastfetch-cli__fastfetch-2115

## Defect

The milestone bundles 11 announced issue(s):
1. (#2115): Rebranding HydraPWK to NetHydra
2. (#2119): JsonSchema: correct references for keyboard, mouse items
3. (#2123): Logo (Builtin): fix colors of deepin and UOS
4. (#2105): [BUG] Terminal Font not shown for rxvt-unicode
5. (#2121): [FEAT] Report version for niri WM
6. (#2127): [BUG] LocalIP not shown due to unexpected inclusion of `lo` when detecting default routes
7. (#2129): [BUG] CPU speed missing on IBM Machine 8561 (IBM/s390x architecture)
8. (#2124): [FEAT] Get current logo ansi with json format
9. (#2136): [BUG] shell version info lost after upgrade
10. (#2135): Request to add Xinux logo
11. (#2138): macOS large Apple logo: add missing warm band using ANSI LIGHT_RED

The reference change touches 406 file(s) in c. 5 target test(s) observe the result and 0 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `src/common/impl/font.c`
- `src/common/edidHelper.h`
- `src/common/apple/smc_temps.c`
- `src/common/impl/networking_windows.c`
- `src/common/FFstrbuf.h`
- `src/modules/logo/logo.c`
- `src/common/impl/FFstrbuf.c`
- `src/common/time.h`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (5) and confirm the preserve set (0) still passes.

## Root cause

The failing tests all concern logo output emitted as JSON. There is a build/rename churn happening across the codebase in this change (include paths moving from a `util/` layout to a `common/` layout, and several inline string-buffer helpers being converted to out-of-line functions), but the observable behaviour the tests pin down is that the logo module cannot participate in the JSON pipeline.

Every other module in the project exposes a quartet of entry points: a plain printer, a JSON-object option parser, a JSON-result generator, and a module metadata hook. The logo functionality exists, but it is not wired up as a first-class module with these entry points. When the harness requests logo output in JSON form (a named builtin logo, a small logo, a distro logo by lowercased name, a logo that used to exist but was removed), the dispatch either has nowhere to route the request or produces no structured result, so the expected JSON — either the logo characters or a specific, controlled error — never appears. The tests that check for a *removed* logo (the "gone" case) and a *type-restricted* logo (only builtin/small allowed) are checking that the module emits the correct error object, which likewise requires the module to own that logic.

So the wrong behaviour is: logo has no module surface that the JSON machinery can call, therefore no JSON result (neither success nor the intended error strings) is produced.

## Solution shape

The logo capability must be presented as a proper module implementation, so that the generic JSON path can drive it. Concretely, the module must end up with:

- A plain (non-JSON) print entry that refuses to run and reports that this output is only meaningful in JSON form.
- A JSON option-parsing entry that walks the supplied object, ignores the always-present structural keys (the type discriminator and the condition), and reports any other key as unknown.
- A JSON result generator that:
  - Reads the current logo configuration.
  - Maps the configured logo *type* to a size: a small type → small size; builtin/auto → default; and **any other type is rejected** with an error object saying only builtin and small logo types are supported. This is what the "only builtin/small" and the macos-band and small-logo tests exercise.
  - Resolves the requested logo by its source name (when a source is given) to a builtin logo of the chosen size, and otherwise falls back to the auto/default selection. Name resolution must be case-insensitive enough that a lowercased distro name still finds its logo (the deepin-lowercase test), and must yield the correct object — including the intended "not found / gone" behaviour — for a name whose logo no longer exists.
  - Serialises the resolved logo into the JSON result, or emits the error object when resolution/type checks fail.

The routing that already exists for other modules must recognise the logo module so these entries are actually invoked.

Pseudocode for the result generator:

```
size = UNKNOWN
if type == small: size = SMALL
else if type not in {builtin, auto}:
    result.error = "Only 'builtin' and 'small' logo types are supported"
    return false
logo = source given ? lookupBuiltinByName(source, size) : autoSelect(size)
if !logo: emit the appropriate not-found/error result
else: serialise logo into result
```

## Ordered plan

1. Confirm how the JSON pipeline discovers and dispatches modules, by reading an existing module that already provides the print/parse/generate/metadata quartet. This tells you the exact signatures and error-reporting conventions you must match; do it first because every later step must conform to that contract.

2. Locate the existing logo selection and builtin-lookup facilities (name → builtin logo, with size). You need these before writing the generator, because the generator is mostly glue over them; knowing their exact semantics (case sensitivity, what "auto" does, how a missing logo is signalled) determines how much logic you must add versus reuse.

3. Implement the plain print entry as a refusal that states JSON-only. This is trivial and establishes the module compiles and links against the module framework before you attempt the harder generator.

4. Implement the option parser: iterate the object, skip the type and condition keys, flag anything else. This is required for the tests to even reach the generator without an "unknown key" failure, and it is independent of the lookup work, so it can be done alongside step 3.

5. Implement the generator per the shape above: type→size mapping with rejection of unsupported types, then source-name resolution or auto fallback, then serialise or error. This depends on steps 1 and 2. Verify each test category maps to a branch here: small type, unsupported type (macos-band), lowercased name resolution, and a removed-logo name.

6. Register the module so the dispatcher routes to your entries. Until this is done every earlier step is dead code and all five tests stay red. Run the tests last to confirm both the success outputs and the two error-string cases.

The include-path and string-buffer refactors elsewhere are enabling churn: they only matter insofar as the project builds. Treat "does it compile against the current header layout" as a gate, not as a behavioural goal.

## Pitfalls

- **Only handling the success path.** Two of the five tests are negative: a logo type that isn't builtin/small must yield the specific error object, and a logo name that used to exist but was removed must yield the correct not-found result rather than silently producing empty output or falling through to auto-selection. A generator that only serialises found logos passes the positive tests and fails the "gone" and "band" cases.

- **Getting the type→size mapping wrong.** It is tempting to reject everything except builtin, but small must be accepted and mapped to the small size, and auto must be treated like builtin (default size), not rejected. Rejecting auto, or accepting arbitrary types, breaks the type-restriction test.

- **Case-sensitive name lookup.** The deepin test passes a lowercased name. If the builtin lookup you reuse is case-sensitive and the canonical name isn't lowercase, resolution fails and you emit a not-found result for a logo that exists. Verify the lookup normalises case (or normalise before calling it).

- **Forgetting to register the module.** A complete, correct implementation that the dispatcher never calls fails all five tests identically to having written nothing. This is the single step most easily overlooked because the code looks finished.

- **Mishandling the always-present keys in the parser.** If the option parser treats the type discriminator or the condition key as unknown, every JSON invocation errors out before the generator runs — masking a correct generator with a spurious "unknown key" failure.

- **Assuming the string-buffer/include refactors are behavioural.** They are not what the tests observe; do not spend effort "fixing" the string-buffer semantics to change output. The tests only require that the logo module produces the right JSON, on a tree that builds.

## Provenance

```yaml
uuid: d8072ca7-2029-4733-9dc6-78050639cf13
instance_id: fastfetch-cli__fastfetch-2115
fix_patch_sha256: 922e35d07794d1259c39b6c5d656efb1315e9aff9f1fbceaa8b1a3b3dec5ee1b
language: c
targets_total: 5
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
