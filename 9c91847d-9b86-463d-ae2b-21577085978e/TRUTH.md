# TRUTH.md - Textualize__rich-873

## Defect

The milestone bundles 7 announced issue(s):
1. (#873): tree renderable
2. (#879): Bump sphinx-rtd-theme from 0.5.0 to 0.5.1
3. (#880): Bump sphinx from 3.4.1 to 3.4.2
4. (#885): Bump ipywidgets from 7.6.2 to 7.6.3
5. (#892): Bump sphinx from 3.4.2 to 3.4.3
6. (#896): Fixed the Progress Display Advanced Usage example
7. (#882): [BUG] Setting color_system seems to affect more than just color

The reference change touches 16 file(s) in python. 8 target test(s) observe the result and 83 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 6 file(s):

- `rich/tree.py`
- `rich/segment.py`
- `rich/style.py`
- `rich/console.py`
- `pyproject.toml`
- `rich/default_styles.py`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (8) and confirm the preserve set (83) still passes.

## Root cause

Two independent capabilities are missing from the library, and the tests exercise both.

First, there is no way to render a hierarchical tree structure. The console can render lists, tables, panels and other renderables, but a tree of labels with guide lines connecting parents to children does not exist. Any attempt to construct such an object, attach child nodes, and print it fails immediately because the type is not defined.

Second, the console has no honest "no color" mode. Today the only way color is suppressed is an early bail-out during capability detection: when the output is not a terminal, is a dumb terminal, or the environment requests no color, the console reports a color system of `None`. That is a coarse, all-or-nothing behaviour tied to terminal detection. There is no way to ask the console to keep its color *system* (so styling, links, and layout still work) while stripping the actual foreground/background colors from the bytes it emits. Because the suppression is entangled with terminal detection, a caller cannot request colorless output on a color-capable terminal, and there is no mechanism that walks the already-rendered output and removes color from each styled span.

Supporting the second capability requires the ability to take a style and produce an equivalent style with its colors dropped but everything else (attributes such as bold/underline, hyperlinks, definitions) preserved — which also does not exist.

## Solution shape

Three cooperating pieces must end up present.

1. A style must be able to yield a colorless copy of itself: same bold/italic/underline attributes, same link, same identity semantics, but with both foreground and background color absent. An empty/null style must map to a null style. Links must remain functional, which means a colorless copy that carries a link still needs a fresh per-instance link identity rather than sharing the original's.

2. The segment layer must offer a transformation over a stream of rendered segments that replaces each segment's style with its colorless equivalent, passing text and control flags through untouched. Segments with no style stay styleless. Because many segments share the same style object, this transformation should reuse computed colorless styles rather than recomputing per segment.

3. The console must gain an explicit colorless mode that is *separate* from terminal detection. It should be settable by the caller and default to auto-detection based on the environment's no-color signal. Crucially, terminal detection should no longer collapse color to nothing merely because a no-color signal is present; instead, when the console still has a color system but is in colorless mode, the rendered segment stream must be run through the colorless transformation just before it is emitted. The result: styling metadata still drives layout and attributes, but the emitted bytes contain no color escape codes.

4. A tree renderable must exist. Construction takes a label (any renderable or string) plus optional styling for the node and for the guide lines, plus a flag controlling whether descendants are drawn. It supports attaching child nodes, each itself a tree, and returns the added child so callers can build nested structures fluently. When rendered it emits its label, then for each child recursively emits the child's rendering prefixed by guide-line glyphs (vertical bars, branch tees, and elbows) whose exact glyph set depends on whether the console is in a plain/ASCII or box-drawing mode, and whose horizontal position deepens with nesting. The last child at each level uses the terminal elbow rather than a tee, and non-last children continue the vertical guide beneath them. Styling for the guides and for the label must be applied through the console's style stack so they compose with ambient style.

The tree and guide-line styles must be registered as named styles in the default theme so they resolve.

## Ordered plan

1. Add the colorless-style capability first, because both the segment transformation and any test of it depend on it. Verify it in isolation: a style with color and bold becomes a style with no color but still bold; a null style stays null; a linked style keeps a link. This is the leaf dependency — nothing else can be tested until it works.

2. Build the segment-stream transformation on top of it. It needs the style capability from step 1 to exist. Confirm that a mix of colored, uncolored, and styleless segments comes out with colors stripped and everything else intact, and that the shared-style reuse does not corrupt any segment.

3. Wire the console's colorless mode. This depends on step 2 for the actual stripping. The key correctness decision here is decoupling: removing the no-color signal from the terminal-detection bail-out and instead applying the stream transformation at emit time, gated on the mode flag *and* the presence of a color system. Test by rendering styled output with the mode on and asserting the emitted bytes carry attributes but no color codes; also confirm auto-detection from the environment still behaves.

4. Independently of 1–3, build the tree renderable and register its two named styles. The tree does not depend on the color work, but its render tests depend on the named styles resolving and on the guide-glyph selection reacting to the console's plain/ASCII vs box-drawing state. Test rendering of a single node, a single branch, nested branches, and the ASCII fallback, checking that last-child elbows differ from mid-child tees and that vertical guides continue beneath non-final children.

Steps 1→2→3 are a strict chain. Step 4 is parallel to that chain and can be done at any point.

## Pitfalls

- Suppressing color by continuing to short-circuit the color system to `None` when the no-color signal is seen. That makes the console lose its color system entirely, so styling and layout that depend on having a color system degrade, and hyperlinks and attribute handling change. The whole point is to keep the color *system* and strip only the emitted colors at the output boundary.

- Applying the stripping transformation unconditionally, or forgetting to gate it on there actually being a color system. If there is no color system there is nothing to strip and running the transformation is wasted work; if you strip regardless of the mode flag you break normal colored output.

- In the colorless style copy, sharing the original's link identity. Two spans that keep a link but share one identity can be merged or mis-tracked; a linked colorless copy needs its own fresh link id.

- Recomputing the colorless style per segment instead of caching by source style. It still passes the tests but is quadratic-ish over large renders and is the kind of regression the reuse in the reference specifically avoids; more subtly, if you cache incorrectly you can hand back the wrong style for a different source.

- For the tree, choosing guide glyphs without consulting whether the console is in ASCII/plain mode — the ASCII render test and the box-drawing render test demand different glyph sets, so a hard-coded glyph set passes one and fails the other.

- Using a branch tee for the final child, or dropping the continuing vertical bar beneath a non-final child. The distinction between last and non-last children at each nesting level is exactly what the single-branch, double-branch and nested tests check.

- Forgetting to register the two tree-related theme styles. Without them the styles referenced during rendering fail to resolve and every tree render test breaks even though the tree logic is correct.

- Making the "no color" console default do something other than reading the environment's no-color signal, which would break the auto-detection expectation while the explicit-on case still passes.

## Provenance

```yaml
uuid: 9c91847d-9b86-463d-ae2b-21577085978e
instance_id: Textualize__rich-873
fix_patch_sha256: a92f6459bd94478e7833612b8b08134df49ddff870627388e1aedd711952a25e
language: python
targets_total: 8
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
