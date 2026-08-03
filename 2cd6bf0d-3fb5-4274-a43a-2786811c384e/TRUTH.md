# TRUTH.md - Textualize__rich-1449

## Defect

The milestone bundles 18 announced issue(s):
1. (#1449): Add stdin support to rich.json
2. (#1453): Bump typing-extensions from 3.10.0.0 to 3.10.0.2
3. (#1454): Bump pytest from 6.2.4 to 6.2.5
4. (#1456): Fix changelog year
5. (#1464): Fix typos in `rich.table.Table` docstring
6. (#1466): Remove unused imports
7. (#1467): Use builtin html.escape
8. (#1485): Bump sphinx from 4.1.2 to 4.2.0
9. (#1486): Bump ipywidgets from 7.6.3 to 7.6.5
10. (#1171): [BUG] Inconsistent printing behavior between Jupyter Notebook, Google Colab, and normal console
11. (#1161): [REQUEST] Add color to custom log levels.
12. (#1151): [BUG] Certain line characters (\r particularly) aren't functioning.
13. (#1051): [BUG] test failures with TERM=unknown
14. (#1129): [REQUEST] Table row style should overwrite table style
15. (#1050): [BUG] Syntax class does not display all content
16. (#1220): [REQUEST] Support UserDict derivatives
17. (#1088): [BUG] Using rich.syntax CLI with line numbers and indent has incorrect background
18. (#1492): [BUG] TypeError not callable : rich.print_exception

The reference change touches 18 file(s) in python. 2 target test(s) observe the result and 88 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `rich/pretty.py`
- `rich/_emoji_replace.py`
- `rich/json.py`
- `rich/console.py`
- `pyproject.toml`
- `rich/__main__.py`
- `rich/columns.py`
- `rich/protocol.py`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (2) and confirm the preserve set (88) still passes.

## Root cause

Two independent defects are observed by the two tests.

The first defect is in the pretty-printing traversal. When it inspects an object to decide how to render it, it asks whether the object exposes a rich-repr method by probing for that attribute, and if present, immediately invokes it. It does the same probing for attrs-style objects. The problem is that an object can lie: a class whose attribute lookup (`__getattr__` or a custom `__getattribute__`) returns something truthy for *any* attribute name will falsely appear to have a rich-repr method (and to be an attrs object). The traversal then either calls a method that isn't really there or treats a non-attrs object as one, and the probe/call happens without any guard, so a deceptive or exception-raising attribute access propagates out and crashes the pretty printer instead of falling back to a plain repr.

The second defect is in the HTML export path of the console. It defines its own local helper to escape `&`, `<`, and `>` for HTML output. That hand-rolled escaper is incomplete relative to the standard HTML-escaping behaviour — notably it does not escape the double-quote character — so exported HTML for content containing quotes (especially inside attribute contexts) differs from what the test expects the correct, full escaping to produce.

## Solution shape

Two properties must hold.

For pretty-printing: before trusting that an object has a rich-repr method or is an attrs object, the code must determine whether the object *fakes* all attribute access. Concretely, probe for the presence of a nonsense attribute name that no real object would define; if that probe returns truthy (or itself raises), treat the object as a liar and refuse to believe any of its introspection-driven capabilities. All the capability checks (rich-repr detection *and* attrs detection) must be gated on this "not a liar" condition. Additionally, both the presence check and the actual invocation of the rich-repr method must be wrapped so that any exception during introspection degrades gracefully to the ordinary fallback rendering rather than escaping.

```
liar = truthy-probe-of(obj, some_impossible_attribute_name), or True if that raises
result = None
if not liar:
    try:
        if has(obj, rich_repr) and not isclass(obj): result = obj.rich_repr()
    except: pass
if result is not None:      use rich-repr args
elif is_attrs(obj) and not liar:   use attrs fields
else:                        fall back to normal repr
```

For HTML export: the escaping applied to exported text must match complete, standard HTML entity escaping (including the double-quote character), not a partial three-character substitution.

## Ordered plan

1. Start with the HTML test, since it is the simpler and self-contained failure. Run it and inspect the difference between produced and expected output; you will see the discrepancy centres on a character the local escaper omits. Replace the partial escaping with full standard HTML escaping. This is independent of everything else, so do it first to shrink the problem.

2. Turn to the pretty-printing test. Read what a "lying" object is: a fixture whose attribute access always succeeds. Confirm the failure comes from the introspection branch believing the object has capabilities it doesn't. This tells you the fix must live where the renderer decides between rich-repr, attrs, and plain repr.

3. Introduce the liar detection: probe an attribute name guaranteed not to exist on any legitimate object, treating a truthy result as proof of lying, and treating a raised exception during that probe as lying too.

4. Gate every capability decision on the liar flag — not just the rich-repr branch but the attrs branch as well; this is the step that turns a narrow fix into a correct one.

5. Wrap the rich-repr presence check and its invocation so exceptions fall through to the default path. Re-run both named tests, then the full suite to confirm the other 88 still pass. The remaining touched files (import cleanups, JSON stdin handling, version bumps) are incidental and not exercised by these two tests; do not let them distract from the two behavioural fixes.

## Pitfalls

- Fixing only the rich-repr branch and leaving the attrs detection ungated: a lying object also passes the attrs check, so it must be excluded there too. A fix that guards one branch but not the other passes only if the test object happens to trip the guarded branch first — brittle and incomplete.
- Detecting the liar by wrapping only the *call* to the rich-repr method in a try/except: the object doesn't necessarily raise; it lies successfully by returning something. Presence must be disbelieved, not merely survived. Conversely, forgetting that the presence probe itself can raise (for objects whose attribute access throws) leaves a second crash path.
- Choosing a plausible attribute name for the liar probe: it must be something no real class would ever define, or you'll misclassify legitimate objects as liars and break normal rendering (this would silently regress the 88 passing tests).
- For the HTML fix, hand-adding just the quote replacement to the existing partial escaper reproduces the same fragility that caused the bug; the point is to defer to the complete, canonical escaping so nothing else is missed.
- Making the pretty test pass by special-casing the fixture's type rather than the general "object that answers every attribute" behaviour — that makes the test agree with a narrow hack, not the real defect.

## Provenance

```yaml
uuid: 2cd6bf0d-3fb5-4274-a43a-2786811c384e
instance_id: Textualize__rich-1449
fix_patch_sha256: d0fe5472e445c8e95c415f64e3a24c4ce598ea2c89f076b345b8e426fa7ea21f
language: python
targets_total: 2
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
