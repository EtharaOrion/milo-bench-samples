I've uploaded a Python code repository in the directory /workspace/langchain. Consider the following issue description:

<issue_description>
# add Epsilla vectorstore

## Issue 1 (#9239): add Epsilla vectorstore

[Epsilla](https://github.com/epsilla-cloud/vectordb) vectordb is an open-source vector database that leverages the advanced academic parallel graph traversal techniques for vector indexing.
This PR adds basic integration with [pyepsilla](https://github.com/epsilla-cloud/epsilla-python-client)(Epsilla vectordb python client) as a vectorstore.

## Issue 2 (#9290): Improvements to the Clarifai integration

- Improved docs
 - Improved performance in multiple ways through batching, threading, etc.
 - fixed error message 
 - Added support for metadata filtering during similarity search.

@baskaryan PTAL

## Issue 3 (#9431): Update ChatOpenAI._astream to respect finish_reason

Currently, ChatOpenAI._astream does not reflect finish_reason to generation_info. Change it to reflect that.

## Issue 4 (#9432): fix: Imports for the ConfluenceLoader:process_page

### Description
When we're loading documents using `ConfluenceLoader`:`load` function and, if both `include_comments=True` and `keep_markdown_format=True`, we're getting an error saying `NameError: free variable 'BeautifulSoup' referenced before assignment in enclosing scope`.
    
    loader = ConfluenceLoader(url="URI", token="TOKEN")
    documents = loader.load(
        space_key="SPACE", 
        include_comments=True, 
        keep_markdown_format=True, 
    )

This happens because previous imports only consider the `keep_markdown_format` parameter, however to include the comments, it's using `BeautifulSoup`

Now it's fixed to handle all four scenarios considering both `include_comments` and `keep_markdown_format`.

### Twitter
`@SathinduGA`

## Issue 5 (#9437): Add session to ConfluenceLoader.__init__()

- Description: Allows the user of `ConfluenceLoader` to pass a `requests.Session` object in lieu of an authentication mechanism
- Issue: None
- Dependencies: None
- Tag maintainer: @hwchase17

## Issue 6 (#9448): docs: Add memgraph notebook

- Description: added graph_memgraph_qa.ipynb which shows how to use LLMs to provide a natural language interface to a Memgraph database using [MemgraphGraph](https://github.com/langchain-ai/langchain/pull/8591) class.
  - Dependencies: given that the notebook utilizes the MemgraphGraph class, it relies on both this class and several Python packages that are installed in the notebook using pip (langchain, openai, neo4j, gqlalchemy). The notebook is dependent on having a functional Memgraph instance running, as it requires this instance to establish a connection.

## Issue 7 (#9467): Use PyPI Trusted Publishing to publish langchain packages.

Trusted Publishing is the current best practice for publishing Python packages. Rather than long-lived secret keys, it uses OpenID Connect (OIDC) to allow our GitHub runner to directly authenticate itself to PyPI and get a short-lived publishing token. This locks down publishing quite a bit:
- There's no long-lived publish key to steal anymore.
- Publishing is *only* allowed via the *specifically designated* GitHub workflow in the designated repo.

It also is operationally easier: no keys means there's nothing that needs to be periodically rotated, nothing to worry about leaking, and nobody can accidentally publish a release from their laptop because they happened to have PyPI keys set up.

After this gets merged, we'll need to configure PyPI to start expecting trusted publishing. It's only a few clicks and should only take a minute; instructions are here: https://docs.pypi.org/trusted-publishers/adding-a-publisher/

More info:
- https://blog.pypi.org/posts/2023-04-20-introducing-trusted-publishers/
- https://github.com/pypa/gh-action-pypi-publish

## Issue 8 (#9481): feat: Add PromptGuard integration

Add PromptGuard integration
-------
There are two approaches to integrate PromptGuard with a LangChain application.

1. PromptGuardLLMWrapper
2. functions that can be used in LangChain expression.

-----
- Dependencies
`promptguard` python package, which is a runtime requirement if you'd try out the demo.

-  @baskaryan @hwchase17 Thanks for the ideas and suggestions along the development process.

## Issue 9 (#9521): fix: Updated marqo integration for marqo version 1.0.0+

- Description: Updated marqo integration to use tensor_fields instead of non_tensor_fields. Upgraded marqo version to 1.2.4
  - Dependencies: marqo 1.2.4

## Issue 10 (#9524): Bagatur/doc loader confluence

## Issue 11 (#9527): Add AINetwork blockchain toolkit integration

# Description
This PR introduces a new toolkit for interacting with the AINetwork blockchain. The toolkit provides a set of tools for performing various operations on the AINetwork blockchain, such as transferring AIN, reading and writing values to the blockchain database, managing apps, setting rules and owners. 

# Dependencies
[ain-py](https://github.com/ainblockchain/ain-py) >= 1.0.2

# Misc
The example notebook (langchain/docs/extras/integrations/toolkits/ainetwork.ipynb) is in the PR

## Issue 12 (#9543): Fix conditional that erroneously always runs.

The input it means to test for is `"libs/langchain"` and not `"langchain"`.

## Issue 13 (#9551): Add `SECURITY.md` file to the repo.

## Issue 14 (#9552): Require manually triggering release workflows.

## Issue 15 (#9554): Reminder to not report security issues as "bug" type issues.

Updated the issue template that pops up when users open a new issue.

## Issue 16 (#9556): pin pydantic api ref build

## Issue 17 (#9557): Add `py.typed` file to `langchain-experimental`.

The package is linted with mypy, so its type hints are correct and should be exposed publicly. Without this file, the type hints remain private and cannot be used by downstream users of the package.

## Issue 18 (#9558): Update `SECURITY.md` email address.

## Issue 19 (#9561): update data connection -> retrieval

## Issue 20 (#9562): Eliminate special-casing from test CI workflows.

The previous approach was relying on `_test.yml` taking an input parameter, and then doing almost completely orthogonal things for each parameter value. I've separated out each of those test situations as its own job or workflow file, which eliminated all the special-casing and, in my opinion, improved maintainability by making it much more obvious what code runs when.

## Issue 21 (#9563): add variables for field names

## Issue 22 (#9565): Fix typo

Corrected a minor documentation typo here: https://python.langchain.com/docs/modules/model_io/models/llms/#generate-batch-calls-richer-outputs

## Issue 23 (#9567): Use the GitHub-suggested safer pattern for shell interpolation.

Using `${{ }}` to construct shell commands is risky, since the `${{ }}` interpolation runs first and ignores shell quoting rules. This means that shell commands that look safely quoted, like `echo "${{ github.event.issue.title }}"`, are actually vulnerable to shell injection.

More details here: https://github.blog/2023-08-09-four-tips-to-keep-your-github-actions-workflows-secure/

## Issue 24 (#9568): Bagatur/confluence val

<!-- Thank you for contributing to LangChain!

Replace this entire comment with:
  - Description: a description of the change, 
  - Issue: the issue # it fixes (if applicable),
  - Dependencies: any dependencies required for this change,
  - Tag maintainer: for a quicker response, tag the relevant maintainer (see below),
  - Twitter handle: we announce bigger features on Twitter. If your PR gets announced and you'd like a mention, we'll gladly shout you out!

Please make sure your PR is passing linting and testing before submitting. Run `make format`, `make lint` and `make test` to check this locally.

See contribution guidelines for more information on how to write/run tests, lint, etc: 
https://github.com/hwchase17/langchain/blob/master/.github/CONTRIBUTING.md

If you're adding a new integration, please include:
  1. a test for the integration, preferably unit tests that do not rely on network access,
  2. an example notebook showing its use. These live is docs/extras directory.

If no one reviews your PR within a few days, please @-mention one of @baskaryan, @eyurtsev, @hwchase17, @rlancemartin.
 -->

## Issue 25 (#9569): Add missing param to parent document retriever notebook

## Issue 26 (#9571): Document AzureML Deployment Example

Description: Link an example of deploying a Langchain app to an AzureML online endpoint to the deployments documentation page.

## Issue 27 (#9574): bugfix: ArangoDB Empty Schema Case

- Introduces a conditional in `ArangoGraph.generate_schema()` to exclude empty ArangoDB Collections from the schema
- Add empty collection test case

Issue: N/A
Dependencies: None

## Issue 28 (#9588): Replacing Exception type from ValueError to ImportError

I have restructured the code to ensure uniform handling of ImportError. In place of previously used ValueError, I've adopted the standard practice of raising ImportError with explanatory messages. This modification enhances code readability and clarifies that any problems stem from module importation.

@eyurtsev , @baskaryan 

Thanks

## Issue 29 (#9594): Fix ChatMessageHistory

The initialization of the array of ChatMessageHistory is buggy.
The list is shared with all instances.

## Issue 30 (#9610): Add to support polars

### Description
Polars is a DataFrame interface on top of an OLAP Query Engine implemented in Rust.
Polars is faster to read than pandas, so I'm looking forward to seeing it added to the document loader.

### Issue
N/A

### Dependencies
polars (https://pola-rs.github.io/polars-book/user-guide/)

### Tag maintainer
x

### Twitter handle
N/A

## Issue 31 (#9613): Bagatur/litellm model name

## Issue 32 (#9615): bump 271

## Issue 33 (#9617): Explicitly add the `contents: write` permission for publishing releases.

## Repository Information
- **Repository**: langchain-ai/langchain
- **Pull Request**: #9239
- **Base Commit**: `c7a5bb603177257a38572bc6723eb018ebf34064`

## Related Issues
- https://github.com/langchain-ai/langchain/issues/9239
- https://github.com/langchain-ai/langchain/issues/9290
- https://github.com/langchain-ai/langchain/issues/9431
- https://github.com/langchain-ai/langchain/issues/9432
- https://github.com/langchain-ai/langchain/issues/9437
- https://github.com/langchain-ai/langchain/issues/9448
- https://github.com/langchain-ai/langchain/issues/9467
- https://github.com/langchain-ai/langchain/issues/9481
- https://github.com/langchain-ai/langchain/issues/9521
- https://github.com/langchain-ai/langchain/issues/9524
- https://github.com/langchain-ai/langchain/issues/9527
- https://github.com/langchain-ai/langchain/issues/9543
- https://github.com/langchain-ai/langchain/issues/9551
- https://github.com/langchain-ai/langchain/issues/9552
- https://github.com/langchain-ai/langchain/issues/9554
- https://github.com/langchain-ai/langchain/issues/9556
- https://github.com/langchain-ai/langchain/issues/9557
- https://github.com/langchain-ai/langchain/issues/9558
- https://github.com/langchain-ai/langchain/issues/9561
- https://github.com/langchain-ai/langchain/issues/9562
- https://github.com/langchain-ai/langchain/issues/9563
- https://github.com/langchain-ai/langchain/issues/9565
- https://github.com/langchain-ai/langchain/issues/9567
- https://github.com/langchain-ai/langchain/issues/9568
- https://github.com/langchain-ai/langchain/issues/9569
- https://github.com/langchain-ai/langchain/issues/9571
- https://github.com/langchain-ai/langchain/issues/9574
- https://github.com/langchain-ai/langchain/issues/9588
- https://github.com/langchain-ai/langchain/issues/9594
- https://github.com/langchain-ai/langchain/issues/9610
- https://github.com/langchain-ai/langchain/issues/9613
- https://github.com/langchain-ai/langchain/issues/9615
- https://github.com/langchain-ai/langchain/issues/9617
</issue_description>

Can you help me implement the necessary changes to the repository so that the requirements specified in the <issue_description> are met?
I've already taken care of all changes to any of the test files described in the <issue_description>. This means you MUST NOT modify the testing logic or any of the tests in any way!
Also the development Python environment is already set up for you (i.e., all dependencies already installed), so you don't need to install other packages.
Your task is to make the minimal changes to non-test files in the /workspace/langchain directory to ensure the <issue_description> is satisfied.

Follow these phases to resolve the issue:

Phase 1. READING: read the problem and reword it in clearer terms
   1.1 If there are code or config snippets. Express in words any best practices or conventions in them.
   1.2 Highlight message errors, method names, variables, file names, stack traces, and technical details.
   1.3 Explain the problem in clear terms.
   1.4 Enumerate the steps to reproduce the problem.
   1.5 Highlight any best practices to take into account when testing and fixing the issue.

Phase 2. RUNNING: install and run the tests on the repository
   2.1 Follow the readme.
   2.2 Install the environment and anything needed.
   2.3 Iterate and figure out how to run the tests.

Phase 3. EXPLORATION: find the files that are related to the problem and possible solutions
   3.1 Use `grep` to search for relevant methods, classes, keywords and error messages.
   3.2 Identify all files related to the problem statement.
   3.3 Propose the methods and files to fix the issue and explain why.
   3.4 From the possible file locations, select the most likely location to fix the issue.

Phase 4. TEST CREATION: before implementing any fix, create a script to reproduce and verify the issue
   4.1 Look at existing test files in the repository to understand the test format/structure.
   4.2 Create a minimal reproduction script that reproduces the located issue.
   4.3 Run the reproduction script with `python <filename.py>` to confirm you are reproducing the issue.
   4.4 Adjust the reproduction script as necessary.

Phase 5. FIX ANALYSIS: state clearly the problem and how to fix it
   5.1 State clearly what the problem is.
   5.2 State clearly where the problem is located.
   5.3 State clearly how the test reproduces the issue.
   5.4 State clearly the best practices to take into account in the fix.
   5.5 State clearly how to fix the problem.

Phase 6. FIX IMPLEMENTATION: Edit the source code to implement your chosen solution.
   6.1 Make minimal, focused changes to fix the issue.

Phase 7. VERIFICATION: Test your implementation thoroughly.
   7.1 Run your reproduction script to verify the fix works.
   7.2 Add edge cases to your test script to ensure comprehensive coverage.
   7.3 Run existing tests related to the modified code with `pytest` to ensure you haven't broken anything.

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit c7a5bb603177257a38572bc6723eb018ebf34064.
   8.1 Ensure you've fully addressed all requirements.
   8.2 Run any tests in the repository related to:
      8.2.1 The issue you are fixing
      8.2.2 The files you modified
      8.2.3 The functions you changed
   8.3 If any tests fail, revise your implementation until all tests pass.

Be thorough in your exploration, testing, and reasoning. It's fine if your thinking process is lengthy - quality and completeness are more important than brevity.

IMPORTANT CONSTRAINTS:
- ONLY modify files within the /workspace/langchain directory
- DO NOT navigate outside this directory (no `cd ..` or absolute paths to other locations)
- DO NOT create, modify, or delete any files outside the repository
- All your changes must be trackable by `git diff` within the repository
- If you need to create test files, create them inside the repository directory