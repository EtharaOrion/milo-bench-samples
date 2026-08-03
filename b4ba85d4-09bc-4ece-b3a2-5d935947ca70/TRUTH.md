# TRUTH.md - langchain-ai__langchain-9239

## Defect

The milestone bundles 33 announced issue(s):
1. (#9239): add Epsilla vectorstore
2. (#9290): Improvements to the Clarifai integration
3. (#9431): Update ChatOpenAI._astream to respect finish_reason
4. (#9432): fix: Imports for the ConfluenceLoader:process_page
5. (#9437): Add session to ConfluenceLoader.__init__()
6. (#9448): docs: Add memgraph notebook
7. (#9467): Use PyPI Trusted Publishing to publish langchain packages.
8. (#9481): feat: Add PromptGuard integration
9. (#9521): fix: Updated marqo integration for marqo version 1.0.0+
10. (#9524): Bagatur/doc loader confluence
11. (#9527): Add AINetwork blockchain toolkit integration
12. (#9543): Fix conditional that erroneously always runs.
13. (#9551): Add `SECURITY.md` file to the repo.
14. (#9552): Require manually triggering release workflows.
15. (#9554): Reminder to not report security issues as "bug" type issues.
16. (#9556): pin pydantic api ref build
17. (#9557): Add `py.typed` file to `langchain-experimental`.
18. (#9558): Update `SECURITY.md` email address.
19. (#9561): update data connection -> retrieval
20. (#9562): Eliminate special-casing from test CI workflows.
...and 13 more.

The reference change touches 58 file(s) in python. 7 target test(s) observe the result and 990 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `libs/langchain/langchain/vectorstores/epsilla.py`
- `libs/langchain/langchain/vectorstores/clarifai.py`
- `libs/langchain/langchain/llms/promptguard.py`
- `libs/langchain/langchain/tools/ainetwork/owner.py`
- `libs/langchain/langchain/utilities/promptguard.py`
- `libs/langchain/langchain/tools/ainetwork/app.py`
- `libs/langchain/langchain/document_loaders/confluence.py`
- `libs/langchain/langchain/tools/ainetwork/value.py`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (7) and confirm the preserve set (990) still passes.

## Root cause

The test suite enumerates every concrete subclass of the tool base class and asserts that each one implements its synchronous and asynchronous execution entry points with a signature that accepts a run-manager argument. A new family of blockchain (AINetwork) tools is being introduced. As long as those tool classes either do not exist, or exist but define their execution methods without accepting the run-manager parameter that the harness inspects for, the parametrized signature checks for each named tool fail. The public-API test fails for a related reason: it compares the set of exported tool names against a fixed expectation, so any tool that is defined but not surfaced through the package's public export list (or exported but not defined) makes the exported-name set diverge from what the test expects.

In short: the tools the tests name by identifier (the app, value, rule/owner, and transfer operations plus their shared base) must be reachable as subclasses through normal import, must be listed in the package's public surface, and must expose execution methods whose parameter lists include the callback/run-manager the harness looks for.

## Solution shape

Any correct fix must make the following properties hold:

- A shared abstract tool base and a set of concrete operation tools for the AINetwork blockchain exist as importable classes that derive from the standard tool base class. Each concrete tool carries a name and description and an argument schema, and each one implements both the sync and async execution paths.
- The execution methods of every one of these tools accept the optional run-manager parameter in the same position and shape the harness inspects — i.e. a signature the base tooling recognizes as a valid run entry point, not one that omits the manager. If a class only implements the async path, the base must still satisfy the sync-path check (or the class must provide both). The test parametrizes over both the base and each concrete subclass, so the base's own signature must also conform.
- The package that exposes tools must list these new tools in its public export list so the exported-name set matches the expected set exactly — no missing names, no extras.
- Because the tests discover subclasses by walking the class hierarchy after import, the modules defining these tools must actually be imported when the tools package is loaded; a class that is never imported is never seen as a subclass.

The other files in the reference change (the Epsilla and PromptGuard wrappers, the Clarifai batching rework, the Confluence session support) are unrelated to the named failing tests and are not required to satisfy them; they must simply not break the 990 passing tests. Do not couple your fix to them.

## Ordered plan

1. Read the two failing test modules first. The signature test tells you exactly which class names must appear as subclasses and what property their run methods must have; the public-API test tells you which names must appear in the exported surface. This defines your target set precisely before you write anything.

2. Establish the shared abstract base for the AINetwork tools. Decide where the run-manager-accepting entry points live — base or subclass. Because the harness checks the base class too, the base must itself present a conforming signature. Getting this right first means every subclass inherits a correct contract instead of each re-deriving it.

3. Define each concrete operation tool named by the parametrized tests (app operations, value operations, rule and owner operations, and the transfer operation). Give each a name, description, and argument schema, and ensure each provides the execution methods with the run-manager parameter in the signature the base recognizes. Do this after the base so you are implementing against a fixed contract.

4. Wire the new modules into the tools package so importing the package imports these classes. This must come after the classes exist; its purpose is to make the subclass-walk in the signature test actually discover them.

5. Add every new tool name to the package's public export list. Do this last among the tool steps and cross-check against the public-API test's expected set: the sets must be equal, so an accidental extra or a missing entry both fail.

6. Run the two target test modules, then the full unit suite. The first two runs confirm you hit the named cases; the full run confirms you did not perturb the export set or import graph in a way that trips the 990 other tests.

## Pitfalls

- Implementing only the async execution path and forgetting that the harness also checks the sync path (or the reverse). The parametrization covers the base and every subclass independently; a class that satisfies one entry point but not the other still fails its own case.
- Defining the tool classes but never importing them from the tools package's initializer. They compile fine and pass isolated imports, yet the subclass-discovery test never sees them, so the parametrized cases for those names error out at collection rather than pass.
- Getting the exported-name set almost right: adding the new tools but leaving a typo, or exporting a helper/schema class that the public-API test does not expect. The test compares sets for equality, so one stray name fails it even though every intended tool is present.
- Making the run methods accept a run-manager under a name or position the base tooling does not treat as the manager slot. The signature check is about the recognized parameter, not merely having some extra keyword argument; a decorative parameter that the base ignores will not satisfy it.
- Treating the unrelated files in the reference change as prerequisites. Introducing the Epsilla/PromptGuard/Clarifai/Confluence changes to "match" the reference risks breaking currently-passing tests (e.g. altered Clarifai batching behavior or Confluence credential validation) without advancing any named target. Scope the fix to the AINetwork tools and the tools package surface.

## Provenance

```yaml
uuid: b4ba85d4-09bc-4ece-b3a2-5d935947ca70
instance_id: langchain-ai__langchain-9239
fix_patch_sha256: 2f6289db6595a51ef65229bdbbbd0d542777172d6a6c1fb2c3e768cac5dab1a5
language: python
targets_total: 7
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
