# TRUTH.md - langchain-ai__langchain-10480

## Defect

The milestone bundles 26 announced issue(s):
1. (#10480): Fix tool arguments formatting in StructuredChatAgent
2. (#12780): UnboundLocalError in langchain.retrievers.google_vertex_ai_search
3. (#13210): fix: Reduce post-processing time for `DocAIParser`
4. (#13299): bugfix in using search_kwargs in Vectara retriever
5. (#13320): feat: add ERNIE-Bot-4 Function Calling
6. (#13381): Minor redis improvements
7. (#13388): DeepLake Backwards compatibility fix
8. (#13403): Add llama2-13b-chat-v1 support to `chat_models.BedrockChat`
9. (#13539): New update broke embeddings models
10. (#13448): Feature cognitive health
11. (#13451): VertexAI LLM count_tokens method requires list of prompts
12. (#13492): docs updating `AzureML` notebooks
13. (#13496): Fix hunyuan appid type
14. (#13502): FIX: doc-string - langchain.vectorstores.dashvector.DashVector
15. (#13512): AstraDB: use includeSimilarity option instead of $similarity
16. (#13507): VLLMOpenAI -- create() got an unexpected keyword argument 'api_key'
17. (#13520): Fix Astra integration tests
18. (#13525): Introduce search_kwargs for Custom Parameters in BingSearchAPIWrapper
19. (#13535): DOCS `langchain decorators` update
20. (#13540): updated langchain stack img to be svg
...and 6 more.

The reference change touches 46 file(s) in python. 36 target test(s) observe the result and 1408 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `libs/langchain/langchain/chains/ernie_functions/base.py`
- `libs/langchain/langchain/output_parsers/ernie_functions.py`
- `libs/langchain/langchain/vectorstores/redis/filters.py`
- `libs/langchain/langchain/tools/azure_cognitive_services/text_analytics_health.py`
- `libs/langchain/langchain/retrievers/embedchain.py`
- `libs/langchain/langchain/vectorstores/redis/base.py`
- `libs/langchain/langchain/utils/ernie_functions.py`
- `libs/langchain/langchain/document_loaders/parsers/docai.py`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (36) and confirm the preserve set (1408) still passes.

## Root cause

The Redis vector store's filter-building code has two independent defects that the tests observe.

The numeric filter operators embed the comparison value into a query template using float formatting. That path forces every numeric bound through a `%f`-style conversion, so a bound that is `None` (meaning "no filter" / an open-ended range) cannot be rendered — there is nothing to format, and the code has no branch that recognizes the "no value supplied" case. The consequence is that a numeric filter with a `None` value either raises or emits a malformed query fragment instead of a neutral, match-everything expression.

The tag filter accepts a value that is meant to be one of: a single string, a collection of strings, an empty collection, an empty string, or `None`. The existing code only distinguishes "is a list" from "is a single value," and within the list branch it insists every element already be a string. It has no notion of a nullable tag (empty string, empty list, list containing `None` mixed with real tags). So an empty or null tag does not collapse to a wildcard "match anything," and a collection carrying falsy entries is not cleaned — it either errors on the type check or produces a query that filters on empty/`None` tokens.

Separately, the tools package's public-API and import tests enumerate every exported tool. A newly reachable tool class (the Azure text-analytics-for-health wrapper) must be importable and listed in the package's public surface, or the "all imports" and "public api" enumeration tests fail because the declared surface and the actual module contents disagree.

The structured-chat prompt tests fail for an adjacent reason: the expected system-message text they assert against no longer matches what the prompt assembly produces, so the assertions must be reconciled with the current rendered prompt.

## Solution shape

Three properties must hold.

1. **Nullable numeric filters render as a wildcard.** When a numeric filter has no concrete value (value is `None`), `str(expression)` must yield the "match everything" token rather than attempting numeric interpolation. The range templates should interpolate the bound generically (as a value, not strictly as a float) so that the same templates work whether the bound is an int, float, or the open-ended sentinel. Equality/inequality/`gt`/`lt`/`ge`/`le` all share this: if no value was set, short-circuit to the wildcard before touching the template.

2. **Tag filters normalize nullable and collection inputs.** The accepted input types must widen to include list, set, tuple, plain string, and `None`. Given a collection, keep only truthy members and coerce each to a string; given a falsy scalar (empty string) or absent value, treat it as "no tags." When the normalized tag set is empty, `str(expression)` must produce the wildcard rather than a filter against empty tokens. Membership of real tags must still be escaped and joined as before. The internal value-type check must permit this full set of container/scalar/None types instead of a single concrete type.

Pseudocode for the tag path:
```
if input is list/set/tuple:
    tags = [str(v) for v in input if v]      # drop falsy, stringify
elif input is falsy (empty string / None):
    tags = []
elif input is str:
    tags = [input]
store tags
...
def render():
    if not tags: return wildcard
    return escaped-join(tags)
```

3. **Public tool surface stays consistent.** The new health-analytics tool must be importable from the tools package and appear in whatever list drives the enumeration tests, so the declared exports equal the actual module members.

4. **Structured-chat prompt assertions match the produced prompt.** Whatever the prompt builder now emits for single- and multiple-tool system messages must equal the strings the tests assert.

## Ordered plan

1. Start with the numeric filter, because its failures (`eq_none`, `ne_none`, `le_none`, and the concrete-value cases) point directly at the templates. Change the range templates so the bound is interpolated generically rather than as a strict float, and add a guard at render time that returns the wildcard when no value is present. Rerun the numeric tests; the concrete cases confirm the template still formats real numbers, the `_none` cases confirm the wildcard path.

2. Move to the tag filter, since its tests (`nullable_tags`, `text_filter` empty/none/like variants, the varied-tags escaping case) depend on the normalization you have not yet added. Widen the accepted input types, add the collection-cleaning branch, add the empty-scalar/None branch, and make render short-circuit to the wildcard when no tags remain. The `varied` case verifies escaping of spaces and special characters survives the rewrite; the nullable cases verify the wildcard collapse. This step depends on nothing but must come before you trust any tag test.

3. Only after the filter behavior is correct, address the enumeration tests: make the new health tool importable from the package and add it to the public export list. These tests are pure surface checks, so they pass or fail independently of the filter work — do them separately so a filter regression is not misread as an import failure.

4. Finally reconcile the structured-chat prompt assertions with the current rendered output. This is orthogonal to everything above; do it last so it does not mask a real filter or import problem.

## Pitfalls

- **Fixing only equality for None.** The nullable path must cover every numeric operator, not just `eq`/`ne`. The tests exercise `le_none` specifically; a guard placed only in the equality branch passes some `_none` cases and silently mis-renders the range ones.

- **Keeping the float format specifier.** If you leave the templates formatting the bound as a float, a wildcard sentinel or a non-float value cannot be interpolated even after you add the None guard for one operator. The interpolation itself must become value-generic.

- **Cleaning the collection but not the empty-string scalar.** An empty string is a distinct nullable case from an empty list; if you only handle empty collections, the `empty_string` tag test still filters on an empty token. Both a falsy scalar and a truthy-filtered-away collection must resolve to the wildcard.

- **Dropping truthiness filtering.** The mixed `[None, tag]` case requires discarding the falsy member while keeping the real one. A plain `str()` map over the collection without the truthiness filter yields a query matching `None`.

- **Widening the type union in the signature but not the runtime type-check.** The internal set-value validation must also accept the broadened container/scalar/None types, or a set or tuple input passes the annotation but is rejected at runtime.

- **Adding the tool import but not the export list (or vice versa).** Both the "all imports" and "public api" tests must agree; satisfying one without the other leaves the enumeration inconsistent and one test still red.

- **Editing the prompt template to make the test pass** rather than confirming the test asserts the genuinely-produced prompt. If the prompt text is actually correct and only the expected strings drifted, changing the builder to match a stale expectation reintroduces a real defect.

## Provenance

```yaml
uuid: 0ae03990-71bf-4ab7-9788-d4084b1817c7
instance_id: langchain-ai__langchain-10480
fix_patch_sha256: 03e863e468b55d2b06e4c2f750c5fc4fa24c6108633711b6581f4d4f6a5bc24b
language: python
targets_total: 36
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
