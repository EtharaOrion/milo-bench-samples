# TRUTH.md - Textualize__rich-1657

## Defect

The milestone bundles 11 announced issue(s):
1. (#1657): Make indent param in console.print_json compatible to json.dumps' indent
2. (#1662): [BUG!] Python script with Status adding new line to stdout with echo
3. (#1669): Fix win width
4. (#1676): [BUG] tests: Equivalent objects fail __eq__ checks
5. (#1679): Bump sphinx from 4.2.0 to 4.3.0
6. (#1682): [BUG] Printing table into console results in infinite loop
7. (#1684): added file
8. (#1685): Capitalize "PyPI" correctly
9. (#1687): Fix broken pager reference
10. (#1695): [BUG] Please relax typing-extensions versions
11. (#1689): [BUG] Print's options don't work with Text, but they do with str

The reference change touches 26 file(s) in python. 4 target test(s) observe the result and 89 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `rich/console.py`
- `rich/protocol.py`
- `rich/pretty.py`
- `rich/json.py`
- `rich/measure.py`
- `rich/cells.py`
- `pyproject.toml`
- `rich/progress.py`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (4) and confirm the preserve set (89) still passes.

## Root cause

Four distinct defects converge here, each observable through one of the failing tests.

**Recursive `__rich__` casting is missing and unsafe.** The console and the measurement layer cast a renderable to a concrete renderable by calling `__rich__` exactly once, inline, wherever they encounter it. This is wrong in two ways. First, if an object's `__rich__` returns another object that itself defines `__rich__`, the single call leaves an un-rendered wrapper behind — deep chains of casts never resolve. Second, because the casting logic is duplicated across call sites, each site independently has to guard against pathological objects (mocks that answer `hasattr` for every attribute name), and each site can drift. There is no shared, loop-based cast that terminates safely on cyclic or infinite-attribute objects.

**`set_cell_size` mishandles the empty/zero case.** When asked to fit text into zero cells, or when the text is effectively empty, the slicing arithmetic computes an end index and a `before` slice that don't correspond to "nothing." Given a request for zero width the function does not short-circuit to an empty string, and the boundary slice is off by one relative to the character position it found, so it can return a non-empty result where none fits.

**Printing plain `Text` alongside other renderables loses formatting.** When `print` receives multiple arguments and one is a `Text` instance, the code path that batches renderables doesn't recognize `Text` as something to append through the text-aware accumulator, so multiple-argument prints that include a `Text` object don't render as expected.

**A non-interactive/file console writes lines inefficiently and a live/progress display doesn't emit a newline when it can't animate.** When output is redirected to a file (non-interactive), the live/progress machinery needs to flush a newline so growing displays advance, and the writeback loop over split lines is done via a bulk call that behaves differently than iterating.

## Solution shape

The casting behaviour is the spine. Introduce one shared operation that, given any object, repeatedly applies `__rich__` until the result no longer offers it, and returns the final renderable. It must:

- Loop, not call once, so `__rich__` returning another castable object fully resolves.
- Skip classes (only cast instances), because a class may define `__rich__` as an unbound method.
- Detect objects that claim to possess every attribute (probe with an implausible attribute name) and fall back to their `repr` instead of calling a phantom method.
- Guard against infinite loops when a cast cycles back to a previously seen type, terminating instead of spinning.

Every place that previously inlined a single `__rich__` call — console printing and measurement — must delegate to this shared operation.

For cell sizing: `set_cell_size(text, total)` must return an empty string when `total` is zero (or the text is empty), and when it locates the split position, the slice must include the character at that position rather than stopping one short.

For multi-argument printing: the batching path must treat a `Text` instance as text to append through the text accumulator, parallel to how plain strings are handled.

For file/non-interactive display: when the console is not interactive, emit a newline so successive frames advance, and only reset the total when it actually differs. The line-writeback should iterate over split lines writing each individually.

The `indent` parameters that were `int` should widen to accept `None`, `int`, or `str`, in both the console and JSON APIs.

## Ordered plan

1. **Build the shared recursive cast first**, because three other edits consume it. Give it the loop, the class check, the all-attributes-probe fallback, and the visited-type guard. Verify against a deep chain of `__rich__`-returning objects — this is exactly what `test_cast_deep` exercises: an object whose `__rich__` yields another such object, several levels down, must resolve to the innermost renderable.

2. **Replace the inline single-call casts** in console printing and in measurement with calls to the shared operation. This depends on step 1 existing. The measurement site and both console sites must all route through it, or deep casts still leak at whichever site you missed.

3. **Fix the multi-argument print path** to append `Text` through the text accumulator. This is independent of casting but shares the console file; `test_print_text_multiple` fails until a `Text` among several arguments renders correctly.

4. **Fix `set_cell_size`** for the zero/empty case and the off-by-one slice. Independent of the above. `test_set_cell_size_infinite` drives the zero-width and empty boundaries.

5. **Fix the non-interactive display newline and line-by-line writeback.** `test_growing_display_file_console` needs the newline emission when output is a file so the growing display advances.

6. Widen the `indent` type annotations last — cosmetic/typing, gated by no test but part of the general contract.

Steps 1→2 are strictly ordered. Steps 3, 4, 5 are mutually independent and can be done in any order once you know which test each targets.

## Pitfalls

- **Casting once instead of looping.** A fix that keeps a single `__rich__` call but hardens it against mocks passes nothing new — `test_cast_deep` specifically requires resolving a multi-level chain. The loop is the point.

- **Fixing one call site.** There are at least three inline casts (two in console printing, one in measurement). Routing only the print path through the shared operation leaves measurement casting a wrapper object, which silently mis-measures deeply-cast renderables even though the named tests may pass.

- **Forgetting the infinite-loop guard.** If you loop on `__rich__` without tracking seen types, an object whose `__rich__` returns something that casts back to it spins forever. The visited-set (keyed by type, breaking on repeat) is what makes the loop safe — omitting it trades a leak for a hang.

- **Dropping the all-attributes probe.** Objects like mocks answer `hasattr(obj, anything)` truthfully. Without the implausible-attribute-name check that falls back to `repr`, the loop will invoke a fabricated `__rich__` and produce garbage or recurse. This guard must live inside the loop, checked each iteration.

- **The cell slice off-by-one.** Making the empty case return an empty string but leaving the boundary slice stopping one character short will pass the infinite/zero test yet truncate real text by one cell everywhere else — a fix that agrees with a narrower test while introducing a general regression.

- **Not short-circuiting zero total.** Computing the end index from the full length without the `total == 0` guard can produce a non-empty slice for a zero-width request; the explicit early return for falsy total is required.

- **Treating `Text` as a generic renderable in the multi-arg path.** It must go through the text accumulator, not the generic append, or its style/formatting is lost when combined with other arguments.

## Provenance

```yaml
uuid: 21f9747a-dccd-4012-b74b-1b6d67705adb
instance_id: Textualize__rich-1657
fix_patch_sha256: 7cabb58c5c62fd0f40c2518f41cba65af2b4bcd64e5d4b1072bb2668d426c5b2
language: python
targets_total: 4
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
