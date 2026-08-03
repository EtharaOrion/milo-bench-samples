# TRUTH.md - Textualize__rich-294

## Defect

The milestone bundles 7 announced issue(s):
1. (#294): Fix broken HTML encoding
2. (#297): Added tests and fixed documentation
3. (#300): fix spelling typo
4. (#302): Add title_justify and caption_justify options to Table to support lef…
5. (#298): [REQUEST] Adding rich tracebacks support to RichHandler
6. (#305): Capture
7. (#307): traceback improvements

The reference change touches 20 file(s) in python. 43 target test(s) observe the result and 45 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `rich/traceback.py`
- `rich/console.py`
- `rich/tabulate.py`
- `rich/logging.py`
- `rich/syntax.py`
- `rich/table.py`
- `rich/style.py`
- `rich/default_styles.py`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (43) and confirm the preserve set (45) still passes.

## Root cause

The traceback renderer builds its output by hand-assembling styled text lines for each frame — filename, line number, function name — using named theme styles like the ones that identify a filename or a line number. It never shows the actual source code around the failing line. This has two consequences the tests observe:

1. **No source context.** The logging handler cannot surface source lines with syntax highlighting or extra lines of context, because the traceback component has no mechanism to read a file and render a highlighted excerpt. Tests that expect a rich traceback with configurable context lines have nothing to assert against.

2. **A rich-traceback path is missing entirely.** The logging handler formats exceptions only as flat message text; there is no option to attach a rendered `Traceback` renderable to the log record, so exception logging never produces the structured output the tests require.

Separately, the wider test suite fails because of interface gaps the change fills:

- The console lacks a supported way to capture printed output into a string and to begin/end a capture buffer. Export- and save-oriented console tests, plus input tests, depend on this capture surface existing and behaving correctly.
- The syntax theme lookup is inlined in the syntax renderer's constructor, so the traceback code (which now needs a theme to color source, background, and token categories) cannot obtain a resolved theme object the same way.
- Constructing a blank `Style()` repeatedly is used in hot paths; a test asserts that a cheaper "empty style" constructor exists and yields a value equal to the plain constructor.
- The table renderer hard-codes centered justification for title and caption; tabulate offers no way to pass justification through. A test expects tabulate to forward title/caption text and justification.

## Solution shape

Make the following properties hold:

- **Style:** There must be an alternate constructor producing a style with no attributes set that compares equal to the default-constructed style but avoids the normal init work. Its precomputed hash must match that of the default style.

- **Syntax theme resolution:** Theme resolution (name → theme instance, passing through an already-resolved instance) must be exposed as a reusable operation, not buried in the renderer's `__init__`. Both the syntax renderer and the traceback renderer must use it. A theme instance must be able to yield a background style and per-token-category styles (general text, string, function name, number).

- **Traceback rendering:** The renderer must resolve a pygments-style theme (defaulting to a dark ANSI theme), derive background and token styles from it, and render each stack inside a titled, bordered panel whose title reads as "most recent call last" and whose border style distinguishes syntax errors from ordinary tracebacks. The frame rendering must be able to include actual highlighted source lines with a configurable number of surrounding lines and optional word wrap. `from_exception` must accept and thread through width, extra context lines, theme override, and word-wrap options, and tolerate an optional/None traceback object.

- **Console capture:** The console must support entering and leaving a buffered capture mode and returning the captured text, plus a context-manager wrapper that raises if its result is read before it exits.

- **Table:** Title and caption must each have an independently configurable justification, defaulting to centered, and the render helper for those annotations must honor the requested justification rather than always centering.

- **Tabulate:** `tabulate_mapping` must accept optional caption and title/caption justification and forward them to the constructed table.

- **Logging:** The handler must accept options enabling rich tracebacks and controlling their width, extra lines, theme, and word wrap. When enabled and a record carries real exception info, it must build a `Traceback.from_exception` renderable from that info and emit it alongside the message.

- **Default styles:** Replace the per-element traceback styles (filename/lineno/name) with styles for the panel title and for the two border variants (ordinary and syntax-error).

## Ordered plan

1. **Add the empty-style constructor first.** It has no dependencies and its test is isolated. Everything downstream (table, syntax, traceback) will substitute blank-style constructions with it, so having it in place avoids churn later.

2. **Expose theme resolution on the syntax renderer.** The traceback renderer depends on being able to resolve a theme the same way, and derive background/token styles from the result. Do this before touching traceback so traceback can call into a stable surface.

3. **Add console capture surface.** A large fraction of the failing console tests only need capture/begin/end/context-manager behavior; this is independent of traceback and can be validated on its own. Doing it now unblocks most of the console test list.

4. **Rework the traceback renderer.** With theme resolution and empty-style available, switch frame rendering from hand-built name/lineno/filename lines to a panel-wrapped, source-highlighted layout, and thread width/extra-lines/theme/word-wrap through `from_exception`, tolerating a missing traceback. This is the core behavioral change.

5. **Update default styles** to match the new traceback rendering (title and border variants), since step 4 references style names that must exist.

6. **Wire the logging handler** to build and emit a traceback renderable from record exception info when its new rich-traceback options are enabled. This depends on step 4's `from_exception` signature being final.

7. **Add title/caption justification to the table** and forward it from tabulate. This is independent of the traceback work but shares the empty-style change; order relative to steps 2–6 is free.

Each step's tests confirm it before the next: the style test gates step 1, console tests gate step 3, the logging exception tests gate steps 4–6 together, and the tabulate test gates step 7.

## Pitfalls

- **The empty-style hash must equal the default style's hash and the two must compare equal.** If you skip precomputing the hash or set attribute fields inconsistently, `Style() == empty()` fails even though the object "looks" blank — the test checks equality directly.

- **Theme resolution has three inputs, not two.** An already-resolved theme instance must pass through unchanged; only a string name gets mapped to an ANSI theme (if known) or a pygments theme. Handling only the string cases breaks callers that hand in an instance.

- **The traceback default theme matters.** Tests render tracebacks without specifying a theme, so the default must be a concrete resolvable theme. Leaving the theme unset or platform-dependent will produce inconsistent output; the fix standardizes on a dark ANSI theme.

- **The capture context manager must fail loudly if read early.** Returning `None` or an empty string when the result isn't ready hides bugs; the intended behavior is to raise. A test may exercise the guard.

- **Logging must ignore empty exception info.** `record.exc_info` can be present but equal to a triple of `None`s; treating that as a real exception and calling `from_exception` on it will crash. Guard for both presence and non-null contents.

- **Table justification must actually flow into the render options.** It's easy to add the constructor parameters but leave the annotation renderer hard-coded to center. The render step must use the requested justification, or the tabulate test that sets a non-default caption justification won't observe any difference.

- **`from_exception` must accept an optional/None traceback.** With the new signature it can be called where no traceback object exists; a non-optional type or unconditional traversal of it will fail.

## Provenance

```yaml
uuid: 7b1d4b08-dcd4-43d1-a277-cbc72fb75a58
instance_id: Textualize__rich-294
fix_patch_sha256: 80f7dead2eefcac6c33be129b97f0025521e365d442f3b61fc687d44ee5908d0
language: python
targets_total: 43
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
