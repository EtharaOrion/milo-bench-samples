# TRUTH.md - langchain-ai__langchain-11513

## Defect

The milestone bundles 24 announced issue(s):
1. (#11505): Add support for google scholar querying with serpapi
2. (#11804): Minor typo fix
3. (#11956): Bug fix tongyi.py to be compatible with DashScope API
4. (#12022): Add Tencent Hunyuan chat model
5. (#12040): More security notes
6. (#12042): update `interface` notebook
7. (#12043): add cookbook table
8. (#12045): Add zapier deprecation warning
9. (#12046): Always add run ID
10. (#12047): Fix documentation typo in Clickhouse Class
11. (#12053): Bagatur/mv singlestore doc
12. (#12055): clear nb img output
13. (#12056): Fix typo
14. (#12060): Update figures in multi-modal Cookbooks
15. (#12062): Fix superfluous Auto-fixing parser documents
16. (#12065): Support runnable factories in .configurable_alts()
17. (#12075): Fix typos in whatsapp.ipynb and telegram.ipynb
18. (#12080): Add neo4j graph environment variables
19. (#12084): fix: Add `_serving_config` property to `GoogleVertexAISearchRetriever`
20. (#12089): Minor update to doc/text in IPYNB example
...and 4 more.

The reference change touches 61 file(s) in python. 12 target test(s) observe the result and 1313 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `libs/langchain/langchain/chat_models/hunyuan.py`
- `libs/langchain/langchain/utilities/tavily_search.py`
- `libs/langchain/langchain/utilities/google_scholar.py`
- `cookbook/Semi_structured_multi_modal_RAG_LLaMA2.ipynb`
- `cookbook/Semi_structured_and_multi_modal_RAG.ipynb`
- `libs/langchain/langchain/tools/tavily_search/tool.py`
- `libs/langchain/langchain/tools/zapier/tool.py`
- `libs/langchain/langchain/tools/google_scholar/tool.py`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (12) and confirm the preserve set (1313) still passes.

## Root cause

The failing tests reference modules and classes that do not exist in the tree. Three distinct integrations are being introduced from scratch:

- A chat model for Tencent's Hunyuan service. Its unit tests import helper functions that convert between LangChain message objects and the wire-format dictionaries the API expects (and the reverse, including streaming deltas), plus a signature-shape test. None of these helpers or the model class are defined, so every import in that test module raises `ModuleNotFoundError`.
- A Google Scholar search tool plus its backing API wrapper. The signature test parametrized over `GoogleScholarQueryRun` enumerates all `BaseTool` subclasses and asserts each `_run` accepts a run-manager argument; the tool cannot appear in that enumeration because its class is never defined and never imported into the tools package.
- A Tavily search wrapper and tool, which are not directly asserted by a named test but are part of the same batch of new integrations.

The `test_configurable_alts_factory` failure and the "1313 other tests" constraint indicate that the new code must be wired in without breaking existing package-level imports — i.e. any registration in `__init__` aggregation modules must resolve cleanly and not shadow or collide with existing exports.

The Zapier tool edits are unrelated to correctness of the new code: the tool is being marked as deprecated so its behavior emits deprecation warnings rather than being removed.

## Solution shape

The code must end up with these observable properties:

1. **Hunyuan message conversion helpers exist and round-trip correctly.**
   - A function mapping a `BaseMessage` to a dict must emit a `role` keyed by message type: chat messages carry their own role, human messages map to a user role, AI messages to an assistant role, system messages to a system role, and the content is preserved. An unsupported message type must raise.
   - A function mapping a response dict back to a `BaseMessage` must produce a `HumanMessage` for the user role, an `AIMessage` for the assistant role, and fall back to a generic `ChatMessage` carrying the raw role string for anything else.
   - A function mapping a streaming delta dict to a message chunk must produce the human/assistant/other chunk variants analogously, driven by the role field.
   - A chat model class must exist whose constructor signature matches what the signature test inspects (secret-valued credential fields, base URL/path defaults, generation parameters), validated through a root validator that pulls credentials from constructor args or environment.

2. **Google Scholar tool and wrapper exist and satisfy the run-manager contract.**
   - A `BaseTool` subclass whose synchronous run method accepts an optional run-manager keyword and delegates to a wrapper's run method.
   - The tool must be reachable from the subclass enumeration the signature test walks — meaning it must be importable through the tools package's public surface.
   - A wrapper `BaseModel` that validates a SerpAPI key from args/environment and formats scholar results.

3. **Tavily wrapper and tool exist**, analogous in structure (a `BaseModel` wrapper holding an API key with forbidden extras; a tool delegating to it and returning results or a stringified error).

4. **Zapier tools emit deprecation warnings** at each entry point rather than silently operating.

5. **All new symbols are exported** through the relevant aggregation modules so existing import-time tests keep passing.

## Ordered plan

1. **Read the three new-integration test modules first.** They are the specification. The Hunyuan test file pins the exact role strings, the exact chunk classes, and the constructor field names the signature test compares against. Extract that contract before writing any implementation — the conversion functions have no freedom in their output shape.

2. **Implement the Hunyuan conversion helpers** to match the message-to-dict, dict-to-message, and delta-to-chunk expectations. This comes before the model class because the class's generate/stream paths call these helpers, and the helper tests fail independently of the class. Getting them right first isolates failures.

3. **Implement the Hunyuan model class** with the field set the signature test inspects, including secret-typed credentials and a validator that reads from environment. Its correctness is confirmed by the signature test passing.

4. **Implement the Google Scholar wrapper, then its tool.** The wrapper must exist first because the tool holds a typed reference to it. The tool's run method must take the optional run-manager parameter — this is exactly what the parametrized signature test checks.

5. **Export the Google Scholar tool through the tools package surface.** The signature test discovers subclasses by walking imported classes; if the tool is defined but never imported into the aggregation module, it will not appear and the parametrized case will simply not exist (or fail to collect). This step depends on step 4 and gates that specific test.

6. **Implement the Tavily wrapper and tool** the same way, and export them.

7. **Add the Zapier deprecation warnings** at each tool entry point. Independent of the above; do it whenever convenient.

8. **Run the full unit suite** to confirm the 1313 existing tests still pass — specifically that no aggregation-module import now raises and that `test_configurable_alts_factory` is unaffected, which it will be only if your new exports don't perturb existing ones.

## Pitfalls

- **Defining the Google Scholar tool but not importing it into the tools package.** The signature test enumerates loaded subclasses; a class that is never imported is never registered, so the `[GoogleScholarQueryRun]` parametrization will not run — which reads as the test not being fixed. The export is not optional decoration; it is what makes the test exist.

- **Making the run method reject the run-manager argument.** The signature test's whole point is that every tool's synchronous run accepts an optional run-manager keyword. A run method with only the query parameter will fail the general contract even though the tool otherwise works.

- **Getting the role mapping backwards or incomplete in the conversion helpers.** The dict-to-message and delta-to-chunk functions must have an explicit fallback branch for unrecognized roles that preserves the raw role on a generic chat message/chunk — there is a dedicated "other role" test. Handling only human and assistant passes most cases but fails that one.

- **Message-to-dict must raise on unsupported types rather than silently coercing.** A permissive default that emits some role for any input will diverge from the expected raise.

- **Using plain string fields for credentials when the signature test expects secret-typed fields.** The signature comparison inspects declared field types; a mismatch there fails `test__signature` even if the model otherwise functions.

- **Breaking an existing aggregation import while adding new exports.** A typo or circular import in the tools or utilities `__init__` will cascade into the 1313 "must keep passing" tests, including `test_configurable_alts_factory`, which imports through those surfaces. Verify the whole suite, not just the named new tests.

## Provenance

```yaml
uuid: 1083ba1f-46cc-4d4e-9847-d39f0c9f681d
instance_id: langchain-ai__langchain-11513
fix_patch_sha256: 3826b2c19f8910157448c1beaa5f7b4b5bf253803c069706fed3c1fb3ee14cb2
language: python
targets_total: 12
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
