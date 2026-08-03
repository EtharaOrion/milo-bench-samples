patching file .github/workflows/_test.yml
patching file libs/langchain/tests/integration_tests/agent/test_ainetwork_agent.py
patching file libs/langchain/tests/integration_tests/chains/test_graph_database_arangodb.py
patching file libs/langchain/tests/integration_tests/document_loaders/test_polars_dataframe.py
patching file libs/langchain/tests/integration_tests/llms/test_promptguard.py
patching file libs/langchain/tests/integration_tests/vectorstores/test_epsilla.py
patching file libs/langchain/tests/integration_tests/vectorstores/test_marqo.py
patching file libs/langchain/tests/unit_tests/document_loaders/test_confluence.py
patching file libs/langchain/tests/unit_tests/tools/test_public_api.py
patching file .github/workflows/_lint.yml
patching file libs/experimental/langchain_experimental/py.typed
patching file libs/langchain/langchain/agents/agent_toolkits/__init__.py
patching file libs/langchain/langchain/agents/agent_toolkits/ainetwork/__init__.py
patching file libs/langchain/langchain/agents/agent_toolkits/ainetwork/toolkit.py
patching file libs/langchain/langchain/chat_models/openai.py
patching file libs/langchain/langchain/document_loaders/__init__.py
patching file libs/langchain/langchain/document_loaders/confluence.py
patching file libs/langchain/langchain/document_loaders/polars_dataframe.py
patching file libs/langchain/langchain/graphs/arangodb_graph.py
patching file libs/langchain/langchain/memory/chat_message_histories/in_memory.py
patching file libs/langchain/langchain/tools/__init__.py
patching file libs/langchain/langchain/tools/ainetwork/__init__.py
patching file libs/langchain/langchain/tools/ainetwork/app.py
patching file libs/langchain/langchain/tools/ainetwork/base.py
patching file libs/langchain/langchain/tools/ainetwork/owner.py
patching file libs/langchain/langchain/tools/ainetwork/rule.py
patching file libs/langchain/langchain/tools/ainetwork/transfer.py
patching file libs/langchain/langchain/tools/ainetwork/utils.py
patching file libs/langchain/langchain/tools/ainetwork/value.py
patching file libs/langchain/langchain/vectorstores/__init__.py
patching file libs/langchain/langchain/vectorstores/epsilla.py
patching file libs/langchain/langchain/vectorstores/marqo.py
patching file libs/langchain/pyproject.toml
================= PYTEST PKG: libs/langchain =================
============================= test session starts ==============================
collected 1207 items

tests/unit_tests/test_bash.py .s...s                                     [  0%]
tests/unit_tests/test_cache.py ..........                                [  1%]
tests/unit_tests/test_dependencies.py ...                                [  1%]
tests/unit_tests/test_document_transformers.py ..                        [  1%]
tests/unit_tests/test_formatting.py ...                                  [  1%]
tests/unit_tests/test_math_utils.py .......                              [  2%]
tests/unit_tests/test_pytest_config.py .                                 [  2%]
tests/unit_tests/test_python.py ........                                 [  3%]
tests/unit_tests/test_schema.py ......                                   [  3%]
tests/unit_tests/test_sql_database.py .....                              [  4%]
tests/unit_tests/test_sql_database_schema.py ..                          [  4%]
tests/unit_tests/test_sqlalchemy.py .                                    [  4%]
tests/unit_tests/test_text_splitter.py ................................. [  7%]
.......                                                                  [  7%]
tests/unit_tests/test_utils.py ..                                        [  7%]
tests/unit_tests/_api/test_deprecation.py ...........                    [  8%]
tests/unit_tests/agents/test_agent.py ........                           [  9%]
tests/unit_tests/agents/test_agent_iterator.py ............              [ 10%]
tests/unit_tests/agents/test_chat.py ..                                  [ 10%]
tests/unit_tests/agents/test_initialize.py .                             [ 10%]
tests/unit_tests/agents/test_mrkl.py ............                        [ 11%]
tests/unit_tests/agents/test_mrkl_output_parser.py .....                 [ 12%]
tests/unit_tests/agents/test_public_api.py .                             [ 12%]
tests/unit_tests/agents/test_react.py ...                                [ 12%]
tests/unit_tests/agents/test_serialization.py .                          [ 12%]
tests/unit_tests/agents/test_sql.py .                                    [ 12%]
tests/unit_tests/agents/test_structured_chat.py ..                       [ 12%]
tests/unit_tests/agents/test_tools.py ..........                         [ 13%]
tests/unit_tests/agents/test_types.py .                                  [ 13%]
tests/unit_tests/callbacks/test_callback_manager.py ..........           [ 14%]
tests/unit_tests/callbacks/test_openai_info.py ..................        [ 16%]
tests/unit_tests/callbacks/test_schemas.py .                             [ 16%]
tests/unit_tests/callbacks/test_streamlit_callback.py ..                 [ 16%]
tests/unit_tests/callbacks/tracers/test_base_tracer.py ...........       [ 17%]
tests/unit_tests/callbacks/tracers/test_langchain.py .                   [ 17%]
tests/unit_tests/callbacks/tracers/test_langchain_v1.py ............     [ 18%]
tests/unit_tests/chains/test_api.py .                                    [ 18%]
tests/unit_tests/chains/test_base.py ..............                      [ 19%]
tests/unit_tests/chains/test_combine_documents.py ..........             [ 20%]
tests/unit_tests/chains/test_constitutional_ai.py .                      [ 20%]
tests/unit_tests/chains/test_conversation.py ...........                 [ 21%]
tests/unit_tests/chains/test_graph_qa.py ..                              [ 21%]
tests/unit_tests/chains/test_hyde.py ..                                  [ 21%]
tests/unit_tests/chains/test_llm.py .....                                [ 22%]
tests/unit_tests/chains/test_llm_bash.py .....                           [ 22%]
tests/unit_tests/chains/test_llm_checker.py .                            [ 22%]
tests/unit_tests/chains/test_llm_math.py ...                             [ 22%]
tests/unit_tests/chains/test_llm_summarization_checker.py .              [ 22%]
tests/unit_tests/chains/test_llm_symbolic_math.py ssssss                 [ 23%]
tests/unit_tests/chains/test_memory.py ....                              [ 23%]
tests/unit_tests/chains/test_natbot.py ..                                [ 23%]
tests/unit_tests/chains/test_neptune_cypher_qa.py .                      [ 24%]
tests/unit_tests/chains/test_qa_with_sources.py ....                     [ 24%]
tests/unit_tests/chains/test_sequential.py ..............                [ 25%]
tests/unit_tests/chains/test_transform.py ..                             [ 25%]
tests/unit_tests/chains/query_constructor/test_parser.py ............... [ 26%]
...............                                                          [ 28%]
tests/unit_tests/chains/question_answering/test_map_rerank_prompt.py ..  [ 28%]
tests/unit_tests/chat_models/test_azureopenai.py ssss                    [ 28%]
tests/unit_tests/chat_models/test_ernie.py ..                            [ 28%]
tests/unit_tests/chat_models/test_google_palm.py ssssssss                [ 29%]
tests/unit_tests/chat_models/test_openai.py ....ss                       [ 29%]
tests/unit_tests/docstore/test_arbitrary_fn.py .                         [ 30%]
tests/unit_tests/docstore/test_inmemory.py .....                         [ 30%]
tests/unit_tests/document_loaders/test_airbyte.py .                      [ 30%]
tests/unit_tests/document_loaders/test_arcgis_loader.py .                [ 30%]
tests/unit_tests/document_loaders/test_base.py .                         [ 30%]
tests/unit_tests/document_loaders/test_bibtex.py ssss                    [ 31%]
tests/unit_tests/document_loaders/test_bshtml.py ss                      [ 31%]
tests/unit_tests/document_loaders/test_confluence.py ssssss              [ 31%]
tests/unit_tests/document_loaders/test_csv_loader.py ....                [ 32%]
tests/unit_tests/document_loaders/test_cube_semantic.py ..               [ 32%]
tests/unit_tests/document_loaders/test_detect_encoding.py ss             [ 32%]
tests/unit_tests/document_loaders/test_directory.py ..                   [ 32%]
tests/unit_tests/document_loaders/test_evernote_loader.py sssssssssss    [ 33%]
tests/unit_tests/document_loaders/test_generic_loader.py ...s.           [ 33%]
tests/unit_tests/document_loaders/test_git.py ss                         [ 34%]
tests/unit_tests/document_loaders/test_github.py .....                   [ 34%]
tests/unit_tests/document_loaders/test_json_loader.py sssssssssss        [ 35%]
tests/unit_tests/document_loaders/test_mediawikidump.py ssss             [ 35%]
tests/unit_tests/document_loaders/test_mhtml.py s                        [ 35%]
tests/unit_tests/document_loaders/test_psychic.py ss                     [ 35%]
tests/unit_tests/document_loaders/test_readthedoc.py ssss                [ 36%]
tests/unit_tests/document_loaders/test_rss.py ss                         [ 36%]
tests/unit_tests/document_loaders/test_telegram.py .s                    [ 36%]
tests/unit_tests/document_loaders/test_trello.py sss                     [ 36%]
tests/unit_tests/document_loaders/test_web_base.py s                     [ 36%]
tests/unit_tests/document_loaders/test_youtube.py ..............         [ 38%]
tests/unit_tests/document_loaders/blob_loaders/test_filesystem_blob_loader.py . [ 38%]
.........s                                                               [ 39%]
tests/unit_tests/document_loaders/blob_loaders/test_public_api.py .      [ 39%]
tests/unit_tests/document_loaders/blob_loaders/test_schema.py .......... [ 39%]
....                                                                     [ 40%]
tests/unit_tests/document_loaders/loaders/vendors/test_docugami.py s.    [ 40%]
tests/unit_tests/document_loaders/parsers/test_generic.py ..             [ 40%]
tests/unit_tests/document_loaders/parsers/test_html_parsers.py s         [ 40%]
tests/unit_tests/document_loaders/parsers/test_pdf_parsers.py ssss       [ 41%]
tests/unit_tests/document_loaders/parsers/test_public_api.py .           [ 41%]
tests/unit_tests/document_loaders/parsers/language/test_javascript.py ss [ 41%]
                                                                         [ 41%]
tests/unit_tests/document_loaders/parsers/language/test_python.py ..     [ 41%]
tests/unit_tests/embeddings/test_caching.py ..                           [ 41%]
tests/unit_tests/embeddings/test_deterministic_embedding.py .            [ 41%]
tests/unit_tests/embeddings/test_openai.py ss                            [ 41%]
tests/unit_tests/evaluation/test_loading.py ssssssssssssss........       [ 43%]
tests/unit_tests/evaluation/agents/test_eval_chain.py ....               [ 43%]
tests/unit_tests/evaluation/comparison/test_eval_chain.py .............. [ 45%]
....                                                                     [ 45%]
tests/unit_tests/evaluation/criteria/test_eval_chain.py ................ [ 46%]
...                                                                      [ 47%]
tests/unit_tests/evaluation/parsing/test_base.py ..............          [ 48%]
tests/unit_tests/evaluation/qa/test_eval_chain.py .........              [ 48%]
tests/unit_tests/evaluation/string_distance/test_base.py sssssssssssssss [ 50%]
sssssssssssssssssssssssssssssssssssssssssssss                            [ 53%]
tests/unit_tests/graphs/test_neptune_graph.py .                          [ 54%]
tests/unit_tests/llms/test_base.py ..                                    [ 54%]
tests/unit_tests/llms/test_callbacks.py ...                              [ 54%]
tests/unit_tests/llms/test_loading.py .                                  [ 54%]
tests/unit_tests/llms/test_openai.py ssssss                              [ 55%]
tests/unit_tests/llms/test_utils.py ..                                   [ 55%]
tests/unit_tests/load/test_dump.py .sssss                                [ 55%]
tests/unit_tests/load/test_load.py ssssssss                              [ 56%]
tests/unit_tests/memory/test_combined_memory.py ..                       [ 56%]
tests/unit_tests/memory/chat_message_histories/test_file.py ...          [ 56%]
tests/unit_tests/memory/chat_message_histories/test_sql.py ...           [ 57%]
tests/unit_tests/memory/chat_message_histories/test_streamlit.py s       [ 57%]
tests/unit_tests/output_parsers/test_base_output_parser.py ............. [ 58%]
..................                                                       [ 59%]
tests/unit_tests/output_parsers/test_boolean_parser.py .                 [ 59%]
tests/unit_tests/output_parsers/test_combining_parser.py .               [ 59%]
tests/unit_tests/output_parsers/test_datetime_parser.py .                [ 59%]
tests/unit_tests/output_parsers/test_enum_parser.py .                    [ 59%]
tests/unit_tests/output_parsers/test_json.py ..........                  [ 60%]
tests/unit_tests/output_parsers/test_list_parser.py ..                   [ 60%]
tests/unit_tests/output_parsers/test_openai_functions.py ..........      [ 61%]
tests/unit_tests/output_parsers/test_pydantic_parser.py ..               [ 61%]
tests/unit_tests/output_parsers/test_regex_dict.py .                     [ 62%]
tests/unit_tests/output_parsers/test_structured_parser.py .              [ 62%]
tests/unit_tests/prompts/test_chat.py .....................              [ 63%]
tests/unit_tests/prompts/test_few_shot.py .......sss..                   [ 64%]
tests/unit_tests/prompts/test_few_shot_with_templates.py .               [ 64%]
tests/unit_tests/prompts/test_length_based_example_selector.py ....      [ 65%]
tests/unit_tests/prompts/test_loading.py .........                       [ 66%]
tests/unit_tests/prompts/test_pipeline_prompt.py ....                    [ 66%]
tests/unit_tests/prompts/test_prompt.py ...........ssssss                [ 67%]
tests/unit_tests/prompts/test_utils.py .                                 [ 67%]
tests/unit_tests/retrievers/test_base.py ......                          [ 68%]
tests/unit_tests/retrievers/test_bm25.py sss                             [ 68%]
tests/unit_tests/retrievers/test_ensemble.py ss                          [ 68%]
tests/unit_tests/retrievers/test_knn.py .                                [ 68%]
tests/unit_tests/retrievers/test_remote_retriever.py .                   [ 68%]
tests/unit_tests/retrievers/test_svm.py sss                              [ 69%]
tests/unit_tests/retrievers/test_tfidf.py ssss                           [ 69%]
tests/unit_tests/retrievers/test_time_weighted_retriever.py .....        [ 69%]
tests/unit_tests/retrievers/self_query/test_chroma.py ...                [ 70%]
tests/unit_tests/retrievers/self_query/test_deeplake.py ...              [ 70%]
tests/unit_tests/retrievers/self_query/test_elasticsearch.py ........... [ 71%]
...                                                                      [ 71%]
tests/unit_tests/retrievers/self_query/test_myscale.py ........          [ 72%]
tests/unit_tests/retrievers/self_query/test_pinecone.py ...              [ 72%]
tests/unit_tests/retrievers/self_query/test_weaviate.py ...              [ 72%]
tests/unit_tests/runnables/test_openai_functions.py .                    [ 72%]
tests/unit_tests/schema/test_messages.py .                               [ 72%]
tests/unit_tests/schema/test_output.py ..                                [ 73%]
tests/unit_tests/schema/test_runnable.py ....................            [ 74%]
tests/unit_tests/smith/evaluation/test_runner_utils.py ................. [ 76%]
..........................                                               [ 78%]
tests/unit_tests/smith/evaluation/test_string_run_evaluator.py .         [ 78%]
tests/unit_tests/storage/test_filesystem.py .....                        [ 78%]
tests/unit_tests/storage/test_in_memory.py ....                          [ 79%]
tests/unit_tests/storage/test_redis.py .                                 [ 79%]
tests/unit_tests/tools/test_base.py .................................... [ 82%]
.                                                                        [ 82%]
tests/unit_tests/tools/test_exported.py .                                [ 82%]
tests/unit_tests/tools/test_json.py ....                                 [ 82%]
tests/unit_tests/tools/test_public_api.py .                              [ 82%]
tests/unit_tests/tools/test_signatures.py .............................. [ 85%]
.....................................................................    [ 90%]
tests/unit_tests/tools/test_zapier.py .................                  [ 92%]
tests/unit_tests/tools/file_management/test_copy.py ...                  [ 92%]
tests/unit_tests/tools/file_management/test_file_search.py ...           [ 92%]
tests/unit_tests/tools/file_management/test_list_dir.py ...              [ 93%]
tests/unit_tests/tools/file_management/test_move.py ...                  [ 93%]
tests/unit_tests/tools/file_management/test_read.py ..                   [ 93%]
tests/unit_tests/tools/file_management/test_toolkit.py ....              [ 93%]
tests/unit_tests/tools/file_management/test_utils.py .....               [ 94%]
tests/unit_tests/tools/file_management/test_write.py ...                 [ 94%]
tests/unit_tests/tools/openapi/test_api_models.py ssss                   [ 94%]
tests/unit_tests/tools/powerbi/test_powerbi.py .                         [ 94%]
tests/unit_tests/tools/python/test_python.py ...........                 [ 95%]
tests/unit_tests/tools/requests/test_tool.py ......                      [ 96%]
tests/unit_tests/tools/shell/test_shell.py .....                         [ 96%]
tests/unit_tests/utilities/test_graphql.py s                             [ 96%]
tests/unit_tests/utilities/test_loading.py ......                        [ 97%]
tests/unit_tests/vectorstores/test_faiss.py sssssssssssssssssssss        [ 99%]
tests/unit_tests/vectorstores/test_sklearn.py ssssss                     [ 99%]
tests/unit_tests/vectorstores/test_utils.py .....                        [100%]

=============================== warnings summary ===============================
langchain/document_transformers/openai_functions.py:13
  /home/langchain/libs/langchain/langchain/document_transformers/openai_functions.py:13: DeprecationWarning: invalid escape sequence '\T'
    """Extract metadata tags from document contents using OpenAI functions.

langchain/document_transformers/openai_functions.py:83
  /home/langchain/libs/langchain/langchain/document_transformers/openai_functions.py:83: DeprecationWarning: invalid escape sequence '\T'
    """Create a DocumentTransformer that uses an OpenAI function chain to automatically

langchain/chains/query_constructor/parser.py:26
  /home/langchain/libs/langchain/langchain/chains/query_constructor/parser.py:26: DeprecationWarning: invalid escape sequence '\d'
    GRAMMAR = """

langchain/document_loaders/acreom.py:52
  /home/langchain/libs/langchain/langchain/document_loaders/acreom.py:52: DeprecationWarning: invalid escape sequence '\s'
    content = re.sub("\s*-\s\[\s\]\s.*|\s*\[\s\]\s.*", "", content)  # rm tasks

langchain/document_loaders/acreom.py:54
  /home/langchain/libs/langchain/langchain/document_loaders/acreom.py:54: DeprecationWarning: invalid escape sequence '\['
    content = re.sub("\[\[.*?\]\]", "", content)  # rm doclinks

langchain/retrievers/kendra.py:23
  /home/langchain/libs/langchain/langchain/retrievers/kendra.py:23: DeprecationWarning: invalid escape sequence '\s'
    res = re.sub("\s+", " ", excerpt).replace("...", "")

langchain/retrievers/self_query/myscale.py:91
  /home/langchain/libs/langchain/langchain/retrievers/self_query/myscale.py:91: DeprecationWarning: invalid escape sequence '\('
    regex = "\((.*?)\)"

langchain/retrievers/self_query/myscale.py:92
  /home/langchain/libs/langchain/langchain/retrievers/self_query/myscale.py:92: DeprecationWarning: invalid escape sequence '\('
    matched = re.search("\(\w+\)", comparison.attribute)

tests/unit_tests/test_sql_database_schema.py::test_table_info
  /home/langchain/libs/langchain/.venv/lib/python3.11/site-packages/duckdb_engine/__init__.py:160: DuckDBEngineWarning: duckdb-engine doesn't yet support reflection on indices
    warnings.warn(

tests/unit_tests/chains/test_llm.py::test_predict_and_parse
  /home/langchain/libs/langchain/langchain/chains/llm.py:278: UserWarning: The predict_and_parse method is deprecated, instead pass an output parser directly to LLMChain.
    warnings.warn(

tests/unit_tests/document_loaders/test_arcgis_loader.py::test_lazy_load
  /home/langchain/libs/langchain/langchain/document_loaders/arcgis_loader.py:46: UserWarning: BeautifulSoup not found. HTML will not be parsed.
    warnings.warn("BeautifulSoup not found. HTML will not be parsed.")

tests/unit_tests/evaluation/agents/test_eval_chain.py::test_trajectory_eval_chain
tests/unit_tests/evaluation/agents/test_eval_chain.py::test_trajectory_eval_chain_no_tools
  /home/langchain/libs/langchain/langchain/evaluation/schema.py:114: UserWarning: Ignoring reference in TrajectoryEvalChain, as it is not expected.
    warn(self._skip_reference_warning)

tests/unit_tests/memory/test_combined_memory.py::test_basic_functionality
  /home/langchain/libs/langchain/langchain/memory/combined.py:37: UserWarning: When using CombinedMemory, input keys should be so the input is known.  Was not set on chat_memory=ChatMessageHistory(messages=[]) output_key=None input_key=None return_messages=False human_prefix='Human' ai_prefix='AI' memory_key='foo'
    warnings.warn(

tests/unit_tests/memory/test_combined_memory.py::test_basic_functionality
  /home/langchain/libs/langchain/langchain/memory/combined.py:37: UserWarning: When using CombinedMemory, input keys should be so the input is known.  Was not set on chat_memory=ChatMessageHistory(messages=[]) output_key=None input_key=None return_messages=False human_prefix='Human' ai_prefix='AI' memory_key='bar'
    warnings.warn(

tests/unit_tests/prompts/test_chat.py::test_chat_from_role_strings
  /home/langchain/libs/langchain/langchain/_api/deprecation.py:265: PendingDeprecationWarning: The function `from_role_strings` will be deprecated in a future version. Use from_messages classmethod instead.
    _warn_deprecated(

tests/unit_tests/tools/shell/test_shell.py::test_shell_input_validation
  /home/langchain/libs/langchain/langchain/tools/shell/tool.py:32: UserWarning: The shell tool has no safeguards by default. Use at your own risk.
    warnings.warn(

-- Docs: https://docs.pytest.org/en/stable/how-to/capture-warnings.html
--------------------------- snapshot report summary ----------------------------
21 snapshots passed. 4 snapshots unused.

Re-run pytest with --snapshot-update to delete unused snapshots.
=========================== short test summary info ============================
PASSED [libs/langchain] tests/unit_tests/test_bash.py::test_pwd_command
PASSED [libs/langchain] tests/unit_tests/test_bash.py::test_incorrect_command
PASSED [libs/langchain] tests/unit_tests/test_bash.py::test_incorrect_command_return_err_output
PASSED [libs/langchain] tests/unit_tests/test_bash.py::test_create_directory_and_files
PASSED [libs/langchain] tests/unit_tests/test_cache.py::test_llm_caching[InMemoryCache]
PASSED [libs/langchain] tests/unit_tests/test_cache.py::test_llm_caching[get_sqlite_cache]
PASSED [libs/langchain] tests/unit_tests/test_cache.py::test_old_sqlite_llm_caching[InMemoryCache]
PASSED [libs/langchain] tests/unit_tests/test_cache.py::test_old_sqlite_llm_caching[get_sqlite_cache]
PASSED [libs/langchain] tests/unit_tests/test_cache.py::test_chat_model_caching[InMemoryCache]
PASSED [libs/langchain] tests/unit_tests/test_cache.py::test_chat_model_caching[get_sqlite_cache]
PASSED [libs/langchain] tests/unit_tests/test_cache.py::test_chat_model_caching_params[InMemoryCache]
PASSED [libs/langchain] tests/unit_tests/test_cache.py::test_chat_model_caching_params[get_sqlite_cache]
PASSED [libs/langchain] tests/unit_tests/test_cache.py::test_llm_cache_clear[InMemoryCache]
PASSED [libs/langchain] tests/unit_tests/test_cache.py::test_llm_cache_clear[get_sqlite_cache]
PASSED [libs/langchain] tests/unit_tests/test_dependencies.py::test_required_dependencies
PASSED [libs/langchain] tests/unit_tests/test_dependencies.py::test_test_group_dependencies
PASSED [libs/langchain] tests/unit_tests/test_dependencies.py::test_imports
PASSED [libs/langchain] tests/unit_tests/test_document_transformers.py::test__filter_similar_embeddings
PASSED [libs/langchain] tests/unit_tests/test_document_transformers.py::test__filter_similar_embeddings_empty
PASSED [libs/langchain] tests/unit_tests/test_formatting.py::test_valid_formatting
PASSED [libs/langchain] tests/unit_tests/test_formatting.py::test_does_not_allow_args
PASSED [libs/langchain] tests/unit_tests/test_formatting.py::test_does_not_allow_extra_kwargs
PASSED [libs/langchain] tests/unit_tests/test_math_utils.py::test_cosine_similarity_zero
PASSED [libs/langchain] tests/unit_tests/test_math_utils.py::test_cosine_similarity_identity
PASSED [libs/langchain] tests/unit_tests/test_math_utils.py::test_cosine_similarity_empty
PASSED [libs/langchain] tests/unit_tests/test_math_utils.py::test_cosine_similarity
PASSED [libs/langchain] tests/unit_tests/test_math_utils.py::test_cosine_similarity_top_k
PASSED [libs/langchain] tests/unit_tests/test_math_utils.py::test_cosine_similarity_score_threshold
PASSED [libs/langchain] tests/unit_tests/test_math_utils.py::test_cosine_similarity_top_k_and_score_threshold
PASSED [libs/langchain] tests/unit_tests/test_pytest_config.py::test_socket_disabled
PASSED [libs/langchain] tests/unit_tests/test_python.py::test_python_repl
PASSED [libs/langchain] tests/unit_tests/test_python.py::test_python_repl_no_previous_variables
PASSED [libs/langchain] tests/unit_tests/test_python.py::test_python_repl_pass_in_locals
PASSED [libs/langchain] tests/unit_tests/test_python.py::test_functionality
PASSED [libs/langchain] tests/unit_tests/test_python.py::test_functionality_multiline
PASSED [libs/langchain] tests/unit_tests/test_python.py::test_python_ast_repl_multiline
PASSED [libs/langchain] tests/unit_tests/test_python.py::test_python_ast_repl_multi_statement
PASSED [libs/langchain] tests/unit_tests/test_python.py::test_function
PASSED [libs/langchain] tests/unit_tests/test_schema.py::TestGetBufferString::test_custom_ai_prefix
PASSED [libs/langchain] tests/unit_tests/test_schema.py::TestGetBufferString::test_custom_human_prefix
PASSED [libs/langchain] tests/unit_tests/test_schema.py::TestGetBufferString::test_empty_input
PASSED [libs/langchain] tests/unit_tests/test_schema.py::TestGetBufferString::test_multiple_msg
PASSED [libs/langchain] tests/unit_tests/test_schema.py::TestGetBufferString::test_valid_single_message
PASSED [libs/langchain] tests/unit_tests/test_schema.py::test_multiple_msg
PASSED [libs/langchain] tests/unit_tests/test_sql_database.py::test_table_info
PASSED [libs/langchain] tests/unit_tests/test_sql_database.py::test_table_info_w_sample_rows
PASSED [libs/langchain] tests/unit_tests/test_sql_database.py::test_sql_database_run
PASSED [libs/langchain] tests/unit_tests/test_sql_database.py::test_sql_database_run_update
PASSED [libs/langchain] tests/unit_tests/test_sql_database.py::test_truncate_word
PASSED [libs/langchain] tests/unit_tests/test_sql_database_schema.py::test_table_info
PASSED [libs/langchain] tests/unit_tests/test_sql_database_schema.py::test_sql_database_run
PASSED [libs/langchain] tests/unit_tests/test_sqlalchemy.py::test_configure_mappers
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_character_text_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_character_text_splitter_empty_doc
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_character_text_splitter_separtor_empty_doc
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_character_text_splitter_long
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_character_text_splitter_short_words_first
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_character_text_splitter_longer_words
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_character_text_splitter_keep_separator_regex[\\.-True]
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_character_text_splitter_keep_separator_regex[.-False]
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_character_text_splitter_discard_separator_regex[\\.-True]
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_character_text_splitter_discard_separator_regex[.-False]
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_character_text_splitting_args
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_merge_splits
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_create_documents
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_create_documents_with_metadata
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_create_documents_with_start_index
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_metadata_not_shallow
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_iterative_text_splitter_keep_separator
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_iterative_text_splitter_discard_separator
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_iterative_text_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_split_documents
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_python_text_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_python_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_golang_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_rst_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_proto_file_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_javascript_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_java_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_cpp_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_scala_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_ruby_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_php_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_swift_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_rust_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_markdown_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_latex_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_html_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_md_header_text_splitter_1
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_md_header_text_splitter_2
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_md_header_text_splitter_3
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_solidity_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_utils.py::test_check_package_version_pass
PASSED [libs/langchain] tests/unit_tests/test_utils.py::test_check_package_version_fail
PASSED [libs/langchain] tests/unit_tests/_api/test_deprecation.py::test_warn_deprecated[kwargs0-The class `OldClass` will be deprecated in a future version. Use NewClass instead.]
PASSED [libs/langchain] tests/unit_tests/_api/test_deprecation.py::test_warn_deprecated[kwargs1-This is a custom message]
PASSED [libs/langchain] tests/unit_tests/_api/test_deprecation.py::test_warn_deprecated[kwargs2-`SomeFunction` was deprecated in LangChain 1.5.0 and will be removed in 2.5.0 Please migrate your code.]
PASSED [libs/langchain] tests/unit_tests/_api/test_deprecation.py::test_undefined_deprecation_schedule
PASSED [libs/langchain] tests/unit_tests/_api/test_deprecation.py::test_deprecated_function
PASSED [libs/langchain] tests/unit_tests/_api/test_deprecation.py::test_deprecated_method
PASSED [libs/langchain] tests/unit_tests/_api/test_deprecation.py::test_deprecated_classmethod
PASSED [libs/langchain] tests/unit_tests/_api/test_deprecation.py::test_deprecated_staticmethod
PASSED [libs/langchain] tests/unit_tests/_api/test_deprecation.py::test_deprecated_property
PASSED [libs/langchain] tests/unit_tests/_api/test_deprecation.py::test_whole_class_deprecation
PASSED [libs/langchain] tests/unit_tests/_api/test_deprecation.py::test_deprecated_method_pydantic
PASSED [libs/langchain] tests/unit_tests/agents/test_agent.py::test_agent_bad_action
PASSED [libs/langchain] tests/unit_tests/agents/test_agent.py::test_agent_stopped_early
PASSED [libs/langchain] tests/unit_tests/agents/test_agent.py::test_agent_with_callbacks
PASSED [libs/langchain] tests/unit_tests/agents/test_agent.py::test_agent_tool_return_direct
PASSED [libs/langchain] tests/unit_tests/agents/test_agent.py::test_agent_tool_return_direct_in_intermediate_steps
PASSED [libs/langchain] tests/unit_tests/agents/test_agent.py::test_agent_with_new_prefix_suffix
PASSED [libs/langchain] tests/unit_tests/agents/test_agent.py::test_agent_lookup_tool
PASSED [libs/langchain] tests/unit_tests/agents/test_agent.py::test_agent_invalid_tool
PASSED [libs/langchain] tests/unit_tests/agents/test_agent_iterator.py::test_agent_iterator_bad_action
PASSED [libs/langchain] tests/unit_tests/agents/test_agent_iterator.py::test_agent_iterator_stopped_early
PASSED [libs/langchain] tests/unit_tests/agents/test_agent_iterator.py::test_agent_async_iterator_stopped_early
PASSED [libs/langchain] tests/unit_tests/agents/test_agent_iterator.py::test_agent_iterator_with_callbacks
PASSED [libs/langchain] tests/unit_tests/agents/test_agent_iterator.py::test_agent_async_iterator_with_callbacks
PASSED [libs/langchain] tests/unit_tests/agents/test_agent_iterator.py::test_agent_iterator_properties_and_setters
PASSED [libs/langchain] tests/unit_tests/agents/test_agent_iterator.py::test_agent_iterator_reset
PASSED [libs/langchain] tests/unit_tests/agents/test_agent_iterator.py::test_agent_iterator_output_structure
PASSED [libs/langchain] tests/unit_tests/agents/test_agent_iterator.py::test_agent_async_iterator_output_structure
PASSED [libs/langchain] tests/unit_tests/agents/test_agent_iterator.py::test_agent_iterator_empty_input
PASSED [libs/langchain] tests/unit_tests/agents/test_agent_iterator.py::test_agent_iterator_custom_stopping_condition
PASSED [libs/langchain] tests/unit_tests/agents/test_agent_iterator.py::test_agent_iterator_failing_tool
PASSED [libs/langchain] tests/unit_tests/agents/test_chat.py::test_parse_with_language
PASSED [libs/langchain] tests/unit_tests/agents/test_chat.py::test_parse_without_language
PASSED [libs/langchain] tests/unit_tests/agents/test_initialize.py::test_initialize_agent_with_str_agent_type
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl.py::test_get_action_and_input
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl.py::test_get_action_and_input_whitespace
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl.py::test_get_action_and_input_newline
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl.py::test_get_action_and_input_newline_after_keyword
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl.py::test_get_action_and_input_sql_query
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl.py::test_get_final_answer
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl.py::test_get_final_answer_new_line
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl.py::test_get_final_answer_multiline
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl.py::test_bad_action_input_line
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl.py::test_bad_action_line
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl.py::test_valid_action_and_answer_raises_exception
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl.py::test_from_chains
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl_output_parser.py::test_valid_action_and_action_input_parse
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl_output_parser.py::test_valid_final_answer_parse
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl_output_parser.py::test_missing_action
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl_output_parser.py::test_missing_action_input
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl_output_parser.py::test_final_answer_and_parsable_action
PASSED [libs/langchain] tests/unit_tests/agents/test_public_api.py::test_public_api
PASSED [libs/langchain] tests/unit_tests/agents/test_react.py::test_predict_until_observation_normal
PASSED [libs/langchain] tests/unit_tests/agents/test_react.py::test_react_chain
PASSED [libs/langchain] tests/unit_tests/agents/test_react.py::test_react_chain_bad_action
PASSED [libs/langchain] tests/unit_tests/agents/test_serialization.py::test_mrkl_serialization
PASSED [libs/langchain] tests/unit_tests/agents/test_sql.py::test_create_sql_agent
PASSED [libs/langchain] tests/unit_tests/agents/test_structured_chat.py::test_parse_with_language
PASSED [libs/langchain] tests/unit_tests/agents/test_structured_chat.py::test_parse_without_language
PASSED [libs/langchain] tests/unit_tests/agents/test_tools.py::test_single_input_agent_raises_error_on_structured_tool[ZeroShotAgent]
PASSED [libs/langchain] tests/unit_tests/agents/test_tools.py::test_single_input_agent_raises_error_on_structured_tool[ChatAgent]
PASSED [libs/langchain] tests/unit_tests/agents/test_tools.py::test_single_input_agent_raises_error_on_structured_tool[ConversationalChatAgent]
PASSED [libs/langchain] tests/unit_tests/agents/test_tools.py::test_single_input_agent_raises_error_on_structured_tool[ConversationalAgent]
PASSED [libs/langchain] tests/unit_tests/agents/test_tools.py::test_single_input_agent_raises_error_on_structured_tool[ReActDocstoreAgent]
PASSED [libs/langchain] tests/unit_tests/agents/test_tools.py::test_single_input_agent_raises_error_on_structured_tool[ReActTextWorldAgent]
PASSED [libs/langchain] tests/unit_tests/agents/test_tools.py::test_single_input_agent_raises_error_on_structured_tool[SelfAskWithSearchAgent]
PASSED [libs/langchain] tests/unit_tests/agents/test_tools.py::test_tool_no_args_specified_assumes_str
PASSED [libs/langchain] tests/unit_tests/agents/test_tools.py::test_load_tools_with_callback_manager_raises_deprecation_warning
PASSED [libs/langchain] tests/unit_tests/agents/test_tools.py::test_load_tools_with_callbacks_is_called
PASSED [libs/langchain] tests/unit_tests/agents/test_types.py::TestTypes::test_confirm_full_coverage
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_callback_manager
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_ignore_llm
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_ignore_chain
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_ignore_agent
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_ignore_retriever
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_async_callback_manager
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_async_callback_manager_sync_handler
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_callback_manager_inheritance
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_duplicate_callbacks
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_callback_manager_configure
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_custom_model
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_finetuned_model
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_azure_openai[gpt-35-turbo-0.0035]
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_azure_openai[gpt-35-turbo-0301-0.0035]
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_azure_openai[gpt-35-turbo-0613-0.0035]
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_azure_openai[gpt-35-turbo-16k-0613-0.007]
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_azure_openai[gpt-35-turbo-16k-0.007]
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_azure_openai[gpt-4-0.09]
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_azure_openai[gpt-4-0314-0.09]
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_azure_openai[gpt-4-0613-0.09]
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_azure_openai[gpt-4-32k-0.18]
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_azure_openai[gpt-4-32k-0314-0.18]
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_azure_openai[gpt-4-32k-0613-0.18]
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_no_cost_invalid_model[gpt-35-turbo-16k-0301]
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_no_cost_invalid_model[gpt-4-0301]
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_llm_end_no_cost_invalid_model[gpt-4-32k-0301]
PASSED [libs/langchain] tests/unit_tests/callbacks/test_openai_info.py::test_on_retry_works
PASSED [libs/langchain] tests/unit_tests/callbacks/test_schemas.py::test_public_api
PASSED [libs/langchain] tests/unit_tests/callbacks/test_streamlit_callback.py::TestImport::test_create_external_handler
PASSED [libs/langchain] tests/unit_tests/callbacks/test_streamlit_callback.py::TestImport::test_create_internal_handler
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_base_tracer.py::test_tracer_llm_run
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_base_tracer.py::test_tracer_chat_model_run
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_base_tracer.py::test_tracer_llm_run_errors_no_start
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_base_tracer.py::test_tracer_multiple_llm_runs
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_base_tracer.py::test_tracer_chain_run
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_base_tracer.py::test_tracer_tool_run
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_base_tracer.py::test_tracer_nested_run
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_base_tracer.py::test_tracer_llm_run_on_error
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_base_tracer.py::test_tracer_chain_run_on_error
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_base_tracer.py::test_tracer_tool_run_on_error
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_base_tracer.py::test_tracer_nested_runs_on_error
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_langchain.py::test_example_id_assignment_threadsafe
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_langchain_v1.py::test_tracer_llm_run
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_langchain_v1.py::test_tracer_chat_model_run
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_langchain_v1.py::test_tracer_llm_run_errors_no_start
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_langchain_v1.py::test_tracer_multiple_llm_runs
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_langchain_v1.py::test_tracer_chain_run
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_langchain_v1.py::test_tracer_tool_run
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_langchain_v1.py::test_tracer_nested_run
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_langchain_v1.py::test_tracer_llm_run_on_error
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_langchain_v1.py::test_tracer_chain_run_on_error
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_langchain_v1.py::test_tracer_tool_run_on_error
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_langchain_v1.py::test_tracer_nested_runs_on_error
PASSED [libs/langchain] tests/unit_tests/callbacks/tracers/test_langchain_v1.py::test_convert_run
PASSED [libs/langchain] tests/unit_tests/chains/test_api.py::test_api_question
PASSED [libs/langchain] tests/unit_tests/chains/test_base.py::test_bad_inputs
PASSED [libs/langchain] tests/unit_tests/chains/test_base.py::test_bad_outputs
PASSED [libs/langchain] tests/unit_tests/chains/test_base.py::test_run_info
PASSED [libs/langchain] tests/unit_tests/chains/test_base.py::test_correct_call
PASSED [libs/langchain] tests/unit_tests/chains/test_base.py::test_single_input_correct
PASSED [libs/langchain] tests/unit_tests/chains/test_base.py::test_single_input_error
PASSED [libs/langchain] tests/unit_tests/chains/test_base.py::test_run_single_arg
PASSED [libs/langchain] tests/unit_tests/chains/test_base.py::test_run_multiple_args_error
PASSED [libs/langchain] tests/unit_tests/chains/test_base.py::test_run_kwargs
PASSED [libs/langchain] tests/unit_tests/chains/test_base.py::test_run_kwargs_error
PASSED [libs/langchain] tests/unit_tests/chains/test_base.py::test_run_args_and_kwargs_error
PASSED [libs/langchain] tests/unit_tests/chains/test_base.py::test_multiple_output_keys_error
PASSED [libs/langchain] tests/unit_tests/chains/test_base.py::test_run_arg_with_memory
PASSED [libs/langchain] tests/unit_tests/chains/test_base.py::test_run_with_callback
PASSED [libs/langchain] tests/unit_tests/chains/test_combine_documents.py::test_multiple_input_keys
PASSED [libs/langchain] tests/unit_tests/chains/test_combine_documents.py::test__split_list_long_single_doc
PASSED [libs/langchain] tests/unit_tests/chains/test_combine_documents.py::test__split_list_single_doc
PASSED [libs/langchain] tests/unit_tests/chains/test_combine_documents.py::test__split_list_double_doc
PASSED [libs/langchain] tests/unit_tests/chains/test_combine_documents.py::test__split_list_works_correctly
PASSED [libs/langchain] tests/unit_tests/chains/test_combine_documents.py::test__collapse_docs_no_metadata
PASSED [libs/langchain] tests/unit_tests/chains/test_combine_documents.py::test__collapse_docs_one_doc
PASSED [libs/langchain] tests/unit_tests/chains/test_combine_documents.py::test__collapse_docs_metadata
PASSED [libs/langchain] tests/unit_tests/chains/test_combine_documents.py::test_format_doc_with_metadata
PASSED [libs/langchain] tests/unit_tests/chains/test_combine_documents.py::test_format_doc_missing_metadata
PASSED [libs/langchain] tests/unit_tests/chains/test_constitutional_ai.py::test_critique_parsing
PASSED [libs/langchain] tests/unit_tests/chains/test_conversation.py::test_memory_ai_prefix
PASSED [libs/langchain] tests/unit_tests/chains/test_conversation.py::test_memory_human_prefix
PASSED [libs/langchain] tests/unit_tests/chains/test_conversation.py::test_conversation_chain_works
PASSED [libs/langchain] tests/unit_tests/chains/test_conversation.py::test_conversation_chain_errors_bad_prompt
PASSED [libs/langchain] tests/unit_tests/chains/test_conversation.py::test_conversation_chain_errors_bad_variable
PASSED [libs/langchain] tests/unit_tests/chains/test_conversation.py::test_conversation_memory[memory0]
PASSED [libs/langchain] tests/unit_tests/chains/test_conversation.py::test_conversation_memory[memory1]
PASSED [libs/langchain] tests/unit_tests/chains/test_conversation.py::test_conversation_memory[memory2]
PASSED [libs/langchain] tests/unit_tests/chains/test_conversation.py::test_clearing_conversation_memory[memory0]
PASSED [libs/langchain] tests/unit_tests/chains/test_conversation.py::test_clearing_conversation_memory[memory1]
PASSED [libs/langchain] tests/unit_tests/chains/test_conversation.py::test_clearing_conversation_memory[memory2]
PASSED [libs/langchain] tests/unit_tests/chains/test_graph_qa.py::test_no_backticks
PASSED [libs/langchain] tests/unit_tests/chains/test_graph_qa.py::test_backticks
PASSED [libs/langchain] tests/unit_tests/chains/test_hyde.py::test_hyde_from_llm
PASSED [libs/langchain] tests/unit_tests/chains/test_hyde.py::test_hyde_from_llm_with_multiple_n
PASSED [libs/langchain] tests/unit_tests/chains/test_llm.py::test_serialization
PASSED [libs/langchain] tests/unit_tests/chains/test_llm.py::test_missing_inputs
PASSED [libs/langchain] tests/unit_tests/chains/test_llm.py::test_valid_call
PASSED [libs/langchain] tests/unit_tests/chains/test_llm.py::test_predict_method
PASSED [libs/langchain] tests/unit_tests/chains/test_llm.py::test_predict_and_parse
PASSED [libs/langchain] tests/unit_tests/chains/test_llm_bash.py::test_simple_question
PASSED [libs/langchain] tests/unit_tests/chains/test_llm_bash.py::test_get_code
PASSED [libs/langchain] tests/unit_tests/chains/test_llm_bash.py::test_parsing_error
PASSED [libs/langchain] tests/unit_tests/chains/test_llm_bash.py::test_get_code_lines_mixed_blocks
PASSED [libs/langchain] tests/unit_tests/chains/test_llm_bash.py::test_get_code_lines_simple_nested_ticks
PASSED [libs/langchain] tests/unit_tests/chains/test_llm_checker.py::test_simple_question
PASSED [libs/langchain] tests/unit_tests/chains/test_llm_math.py::test_simple_question
PASSED [libs/langchain] tests/unit_tests/chains/test_llm_math.py::test_complex_question
PASSED [libs/langchain] tests/unit_tests/chains/test_llm_math.py::test_error
PASSED [libs/langchain] tests/unit_tests/chains/test_llm_summarization_checker.py::test_simple_text
PASSED [libs/langchain] tests/unit_tests/chains/test_memory.py::test_simple_memory
PASSED [libs/langchain] tests/unit_tests/chains/test_memory.py::test_readonly_memory[memory0]
PASSED [libs/langchain] tests/unit_tests/chains/test_memory.py::test_readonly_memory[memory1]
PASSED [libs/langchain] tests/unit_tests/chains/test_memory.py::test_readonly_memory[memory2]
PASSED [libs/langchain] tests/unit_tests/chains/test_natbot.py::test_proper_inputs
PASSED [libs/langchain] tests/unit_tests/chains/test_natbot.py::test_variable_key_naming
PASSED [libs/langchain] tests/unit_tests/chains/test_neptune_cypher_qa.py::test_import
PASSED [libs/langchain] tests/unit_tests/chains/test_qa_with_sources.py::test_spliting_answer_into_answer_and_sources[This Agreement is governed by English law.\nSOURCES: 28-pl-This Agreement is governed by English law.\n-28-pl]
PASSED [libs/langchain] tests/unit_tests/chains/test_qa_with_sources.py::test_spliting_answer_into_answer_and_sources[This Agreement is governed by English law.\nSOURCES: 28-pl\n\nQUESTION: Which state/country's law governs the interpretation of the contract?\nFINAL ANSWER: This Agreement is governed by English law.\nSOURCES: 28-pl-This Agreement is governed by English law.\n-28-pl]
PASSED [libs/langchain] tests/unit_tests/chains/test_qa_with_sources.py::test_spliting_answer_into_answer_and_sources[The president did not mention Michael Jackson in the provided content.\nSOURCES: \n\nNote: Since the content provided does not contain any information about Michael Jackson, there are no sources to cite for this specific question.-The president did not mention Michael Jackson in the provided content.\n-]
PASSED [libs/langchain] tests/unit_tests/chains/test_qa_with_sources.py::test_spliting_answer_into_answer_and_sources[To diagnose the problem, please answer the following questions and send them in one message to IT:\nA1. Are you connected to the office network? VPN will not work from the office network.\nA2. Are you sure about your login/password?\nA3. Are you using any other VPN (e.g. from a client)?\nA4. When was the last time you used the company VPN?\nSOURCES: 1\n\nALTERNATIVE OPTION: Another option is to run the VPN in CLI, but keep in mind that DNS settings may not work and there may be a need for manual modification of the local resolver or /etc/hosts and/or ~/.ssh/config files to be able to connect to machines in the company. With the appropriate packages installed, the only thing needed to establish a connection is to run the command:\nsudo openvpn --config config.ovpn\n\nWe will be asked for a username and password - provide the login details, the same ones that have been used so far for VPN connection, connecting to the company's WiFi, or printers (in the Warsaw office).\n\nFinally, just use the VPN connection.\nSOURCES: 2\n\nALTERNATIVE OPTION (for Windows): Download theOpenVPN client application version 2.6 or newer from the official website: https://openvpn.net/community-downloads/\nSOURCES: 3-To diagnose the problem, please answer the following questions and send them in one message to IT:\nA1. Are you connected to the office network? VPN will not work from the office network.\nA2. Are you sure about your login/password?\nA3. Are you using any other VPN (e.g. from a client)?\nA4. When was the last time you used the company VPN?\n-1]
PASSED [libs/langchain] tests/unit_tests/chains/test_sequential.py::test_sequential_usage_single_inputs
PASSED [libs/langchain] tests/unit_tests/chains/test_sequential.py::test_sequential_usage_multiple_inputs
PASSED [libs/langchain] tests/unit_tests/chains/test_sequential.py::test_sequential_usage_memory
PASSED [libs/langchain] tests/unit_tests/chains/test_sequential.py::test_sequential_internal_chain_use_memory
PASSED [libs/langchain] tests/unit_tests/chains/test_sequential.py::test_sequential_usage_multiple_outputs
PASSED [libs/langchain] tests/unit_tests/chains/test_sequential.py::test_sequential_missing_inputs
PASSED [libs/langchain] tests/unit_tests/chains/test_sequential.py::test_sequential_bad_outputs
PASSED [libs/langchain] tests/unit_tests/chains/test_sequential.py::test_sequential_valid_outputs
PASSED [libs/langchain] tests/unit_tests/chains/test_sequential.py::test_sequential_overlapping_inputs
PASSED [libs/langchain] tests/unit_tests/chains/test_sequential.py::test_simple_sequential_functionality
PASSED [libs/langchain] tests/unit_tests/chains/test_sequential.py::test_simple_sequential_functionality_with_callbacks[False]
PASSED [libs/langchain] tests/unit_tests/chains/test_sequential.py::test_simple_sequential_functionality_with_callbacks[True]
PASSED [libs/langchain] tests/unit_tests/chains/test_sequential.py::test_multi_input_errors
PASSED [libs/langchain] tests/unit_tests/chains/test_sequential.py::test_multi_output_errors
PASSED [libs/langchain] tests/unit_tests/chains/test_transform.py::test_transform_chain
PASSED [libs/langchain] tests/unit_tests/chains/test_transform.py::test_transform_chain_bad_inputs
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_invalid_grammar[]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_invalid_grammar[foo]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_invalid_grammar[foo("bar", "baz")]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_comparison
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_operation
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_nested_operation
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_disallowed_comparator
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_disallowed_operator
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_int_value[-1]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_int_value[0]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_int_value[1000000]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_float_value[-1.001]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_float_value[2e-08]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_float_value[1234567.654321]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_list_value[x0]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_list_value[x1]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_string_value[""]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_string_value[" "]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_string_value["foo"]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_string_value['foo']
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_bool_value[true]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_bool_value[True]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_bool_value[TRUE]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_bool_value[false]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_bool_value[False]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parse_bool_value[FALSE]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parser_unpack_single_arg_operation[eq("foo", 2)-and]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parser_unpack_single_arg_operation[eq("foo", 2)-or]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parser_unpack_single_arg_operation[and(eq("foo", 2), lte("bar", 1.1))-and]
PASSED [libs/langchain] tests/unit_tests/chains/query_constructor/test_parser.py::test_parser_unpack_single_arg_operation[and(eq("foo", 2), lte("bar", 1.1))-or]
PASSED [libs/langchain] tests/unit_tests/chains/question_answering/test_map_rerank_prompt.py::test_parse_scores[foo bar answer.\nScore: 80]
PASSED [libs/langchain] tests/unit_tests/chains/question_answering/test_map_rerank_prompt.py::test_parse_scores[foo bar answer.\nScore: 80 (fully answers the question, but could provide more detail on the specific error message)]
PASSED [libs/langchain] tests/unit_tests/chat_models/test_ernie.py::test__convert_dict_to_message_human
PASSED [libs/langchain] tests/unit_tests/chat_models/test_ernie.py::test__convert_dict_to_message_ai
PASSED [libs/langchain] tests/unit_tests/chat_models/test_openai.py::test_function_message_dict_to_function_message
PASSED [libs/langchain] tests/unit_tests/chat_models/test_openai.py::test__convert_dict_to_message_human
PASSED [libs/langchain] tests/unit_tests/chat_models/test_openai.py::test__convert_dict_to_message_ai
PASSED [libs/langchain] tests/unit_tests/chat_models/test_openai.py::test__convert_dict_to_message_system
PASSED [libs/langchain] tests/unit_tests/docstore/test_arbitrary_fn.py::test_document_found
PASSED [libs/langchain] tests/unit_tests/docstore/test_inmemory.py::test_document_found
PASSED [libs/langchain] tests/unit_tests/docstore/test_inmemory.py::test_document_not_found
PASSED [libs/langchain] tests/unit_tests/docstore/test_inmemory.py::test_adding_document
PASSED [libs/langchain] tests/unit_tests/docstore/test_inmemory.py::test_adding_document_already_exists
PASSED [libs/langchain] tests/unit_tests/docstore/test_inmemory.py::test_default_dict_value_in_constructor
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_airbyte.py::test_airbyte_import
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_arcgis_loader.py::test_lazy_load
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_base.py::test_base_blob_parser
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_csv_loader.py::TestCSVLoader::test_csv_loader_load_valid_data
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_csv_loader.py::TestCSVLoader::test_csv_loader_load_empty_file
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_csv_loader.py::TestCSVLoader::test_csv_loader_load_single_row_file
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_csv_loader.py::TestCSVLoader::test_csv_loader_load_single_column_file
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_cube_semantic.py::TestCubeSemanticLoader::test_get_dimension_values
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_cube_semantic.py::TestCubeSemanticLoader::test_load
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_directory.py::test_raise_error_if_path_not_exist
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_directory.py::test_raise_error_if_path_is_not_directory
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_generic_loader.py::test__init__
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_generic_loader.py::test_from_filesystem_classmethod
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_generic_loader.py::test_from_filesystem_classmethod_with_glob
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_generic_loader.py::test_from_filesystem_using_default_parser
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_github.py::test_initialization
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_github.py::test_invalid_initialization
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_github.py::test_load
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_github.py::test_parse_issue
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_github.py::test_url
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_telegram.py::test_telegram_chat_file_loader
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_youtube.py::test_video_id_extraction[http://www.youtube.com/watch?v=-wtIMTCHWuI--wtIMTCHWuI]
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_youtube.py::test_video_id_extraction[http://youtube.com/watch?v=-wtIMTCHWuI--wtIMTCHWuI]
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_youtube.py::test_video_id_extraction[http://m.youtube.com/watch?v=-wtIMTCHWuI--wtIMTCHWuI]
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_youtube.py::test_video_id_extraction[http://youtu.be/-wtIMTCHWuI--wtIMTCHWuI]
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_youtube.py::test_video_id_extraction[https://youtu.be/-wtIMTCHWuI--wtIMTCHWuI]
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_youtube.py::test_video_id_extraction[https://www.youtube.com/watch?v=lalOy8Mbfdc-lalOy8Mbfdc]
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_youtube.py::test_video_id_extraction[https://m.youtube.com/watch?v=lalOy8Mbfdc-lalOy8Mbfdc]
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_youtube.py::test_video_id_extraction[https://youtube.com/watch?v=lalOy8Mbfdc-lalOy8Mbfdc]
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_youtube.py::test_video_id_extraction[http://youtu.be/lalOy8Mbfdc?t=1-lalOy8Mbfdc]
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_youtube.py::test_video_id_extraction[http://youtu.be/lalOy8Mbfdc?t=1s-lalOy8Mbfdc]
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_youtube.py::test_video_id_extraction[https://youtu.be/lalOy8Mbfdc?t=1-lalOy8Mbfdc]
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_youtube.py::test_video_id_extraction[http://www.youtube-nocookie.com/embed/lalOy8Mbfdc?rel=0-lalOy8Mbfdc]
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_youtube.py::test_video_id_extraction[https://youtu.be/lalOy8Mbfdc?t=1s-lalOy8Mbfdc]
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_youtube.py::test_video_id_extraction[https://www.youtube.com/shorts/cd0Fy92_w_s-cd0Fy92_w_s]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_filesystem_blob_loader.py::test_file_names_exist[params0]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_filesystem_blob_loader.py::test_file_names_exist[params1]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_filesystem_blob_loader.py::test_file_names_exist[params2]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_filesystem_blob_loader.py::test_file_names_exist[params3]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_filesystem_blob_loader.py::test_file_names_exist[params4]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_filesystem_blob_loader.py::test_file_names_exist[params5]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_filesystem_blob_loader.py::test_file_names_exist[params6]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_filesystem_blob_loader.py::test_file_names_exist[params7]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_filesystem_blob_loader.py::test_file_names_exist[params8]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_filesystem_blob_loader.py::test_file_names_exist[params9]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_public_api.py::test_public_api
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_schema.py::test_blob_initialized_with_binary_data
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_schema.py::test_blob_from_pure_path
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_schema.py::test_blob_from_str_path
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_schema.py::test_blob_from_str_data
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_schema.py::test_blob_mimetype_from_str_data
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_schema.py::test_mime_type_inference[test.txt-None-True-text/plain]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_schema.py::test_mime_type_inference[test.txt-None-False-None]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_schema.py::test_mime_type_inference[test.html-None-True-text/html]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_schema.py::test_mime_type_inference[test.html-None-False-None]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_schema.py::test_mime_type_inference[test.html-user_forced_value-True-user_forced_value]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_schema.py::test_mime_type_inference[path5-user_forced_value-True-user_forced_value]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_schema.py::test_mime_type_inference[path6-None-True-text/html]
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_schema.py::test_blob_initialization_validator
PASSED [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_schema.py::test_blob_loader
PASSED [libs/langchain] tests/unit_tests/document_loaders/loaders/vendors/test_docugami.py::test_docugami_initialization
PASSED [libs/langchain] tests/unit_tests/document_loaders/parsers/test_generic.py::TestMimeBasedParser::test_without_fallback_parser
PASSED [libs/langchain] tests/unit_tests/document_loaders/parsers/test_generic.py::TestMimeBasedParser::test_with_fallback_parser
PASSED [libs/langchain] tests/unit_tests/document_loaders/parsers/test_public_api.py::test_parsers_public_api_correct
PASSED [libs/langchain] tests/unit_tests/document_loaders/parsers/language/test_python.py::TestPythonSegmenter::test_extract_functions_classes
PASSED [libs/langchain] tests/unit_tests/document_loaders/parsers/language/test_python.py::TestPythonSegmenter::test_simplify_code
PASSED [libs/langchain] tests/unit_tests/embeddings/test_caching.py::test_embed_documents
PASSED [libs/langchain] tests/unit_tests/embeddings/test_caching.py::test_embed_query
PASSED [libs/langchain] tests/unit_tests/embeddings/test_deterministic_embedding.py::test_deterministic_fake_embeddings
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types0]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types1]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types2]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types3]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types4]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types5]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types6]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types7]
PASSED [libs/langchain] tests/unit_tests/evaluation/agents/test_eval_chain.py::test_trajectory_output_parser_parse
PASSED [libs/langchain] tests/unit_tests/evaluation/agents/test_eval_chain.py::test_trajectory_eval_chain
PASSED [libs/langchain] tests/unit_tests/evaluation/agents/test_eval_chain.py::test_trajectory_eval_chain_no_tools
PASSED [libs/langchain] tests/unit_tests/evaluation/agents/test_eval_chain.py::test_old_api_works
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_enum[conciseness]
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_enum[relevance]
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_enum[correctness]
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_enum[coherence]
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_enum[harmfulness]
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_enum[maliciousness]
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_enum[helpfulness]
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_enum[controversiality]
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_enum[misogyny]
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_enum[criminality]
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_enum[insensitivity]
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_enum[depth]
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_enum[creativity]
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_enum[detail]
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_resolve_criteria_list_enum
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_PairwiseStringResultOutputParser_parse
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_pairwise_string_comparison_chain
PASSED [libs/langchain] tests/unit_tests/evaluation/comparison/test_eval_chain.py::test_labeled_pairwise_string_comparison_chain_missing_ref
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_str
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_CriteriaResultOutputParser_parse
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_enum[conciseness]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_enum[relevance]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_enum[correctness]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_enum[coherence]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_enum[harmfulness]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_enum[maliciousness]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_enum[helpfulness]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_enum[controversiality]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_enum[misogyny]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_enum[criminality]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_enum[insensitivity]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_enum[depth]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_enum[creativity]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_resolve_criteria_enum[detail]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_criteria_eval_chain
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_criteria_eval_chain_missing_reference
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_implements_string_protocol
PASSED [libs/langchain] tests/unit_tests/evaluation/parsing/test_base.py::test_json_validity_evaluator_requires_input
PASSED [libs/langchain] tests/unit_tests/evaluation/parsing/test_base.py::test_json_validity_evaluator_requires_reference
PASSED [libs/langchain] tests/unit_tests/evaluation/parsing/test_base.py::test_json_validity_evaluator_evaluation_name
PASSED [libs/langchain] tests/unit_tests/evaluation/parsing/test_base.py::test_json_validity_evaluator_evaluate_valid_json
PASSED [libs/langchain] tests/unit_tests/evaluation/parsing/test_base.py::test_json_validity_evaluator_evaluate_invalid_json
PASSED [libs/langchain] tests/unit_tests/evaluation/parsing/test_base.py::test_json_equality_evaluator_requires_input
PASSED [libs/langchain] tests/unit_tests/evaluation/parsing/test_base.py::test_json_equality_evaluator_requires_reference
PASSED [libs/langchain] tests/unit_tests/evaluation/parsing/test_base.py::test_json_equality_evaluator_evaluation_name
PASSED [libs/langchain] tests/unit_tests/evaluation/parsing/test_base.py::test_json_equality_evaluator_parse_json
PASSED [libs/langchain] tests/unit_tests/evaluation/parsing/test_base.py::test_json_equality_evaluator_evaluate_strings_equal
PASSED [libs/langchain] tests/unit_tests/evaluation/parsing/test_base.py::test_json_equality_evaluator_evaluate_strings_not_equal
PASSED [libs/langchain] tests/unit_tests/evaluation/parsing/test_base.py::test_json_equality_evaluator_evaluate_strings_custom_operator_equal
PASSED [libs/langchain] tests/unit_tests/evaluation/parsing/test_base.py::test_json_equality_evaluator_evaluate_strings_custom_operator_not_equal
PASSED [libs/langchain] tests/unit_tests/evaluation/parsing/test_base.py::test_json_equality_evaluator_evaluate_lists_permutation_invariant
PASSED [libs/langchain] tests/unit_tests/evaluation/qa/test_eval_chain.py::test_eval_chain
PASSED [libs/langchain] tests/unit_tests/evaluation/qa/test_eval_chain.py::test_context_eval_chain[ContextQAEvalChain]
PASSED [libs/langchain] tests/unit_tests/evaluation/qa/test_eval_chain.py::test_context_eval_chain[CotQAEvalChain]
PASSED [libs/langchain] tests/unit_tests/evaluation/qa/test_eval_chain.py::test_implements_string_evaluator_protocol[QAEvalChain]
PASSED [libs/langchain] tests/unit_tests/evaluation/qa/test_eval_chain.py::test_implements_string_evaluator_protocol[ContextQAEvalChain]
PASSED [libs/langchain] tests/unit_tests/evaluation/qa/test_eval_chain.py::test_implements_string_evaluator_protocol[CotQAEvalChain]
PASSED [libs/langchain] tests/unit_tests/evaluation/qa/test_eval_chain.py::test_returns_expected_results[QAEvalChain]
PASSED [libs/langchain] tests/unit_tests/evaluation/qa/test_eval_chain.py::test_returns_expected_results[ContextQAEvalChain]
PASSED [libs/langchain] tests/unit_tests/evaluation/qa/test_eval_chain.py::test_returns_expected_results[CotQAEvalChain]
PASSED [libs/langchain] tests/unit_tests/graphs/test_neptune_graph.py::test_import
PASSED [libs/langchain] tests/unit_tests/llms/test_base.py::test_caching
PASSED [libs/langchain] tests/unit_tests/llms/test_base.py::test_custom_caching
PASSED [libs/langchain] tests/unit_tests/llms/test_callbacks.py::test_llm_with_callbacks
PASSED [libs/langchain] tests/unit_tests/llms/test_callbacks.py::test_chat_model_with_v1_callbacks
PASSED [libs/langchain] tests/unit_tests/llms/test_callbacks.py::test_chat_model_with_v2_callbacks
PASSED [libs/langchain] tests/unit_tests/llms/test_loading.py::test_saving_loading_round_trip
PASSED [libs/langchain] tests/unit_tests/llms/test_utils.py::test_enforce_stop_tokens
PASSED [libs/langchain] tests/unit_tests/llms/test_utils.py::test_enforce_stop_tokens_none
PASSED [libs/langchain] tests/unit_tests/load/test_dump.py::test_person
PASSED [libs/langchain] tests/unit_tests/memory/test_combined_memory.py::test_basic_functionality
PASSED [libs/langchain] tests/unit_tests/memory/test_combined_memory.py::test_repeated_memory_var
PASSED [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_file.py::test_add_messages
PASSED [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_file.py::test_clear_messages
PASSED [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_file.py::test_multiple_sessions
PASSED [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_sql.py::test_add_messages[SQLite]
PASSED [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_sql.py::test_multiple_sessions[SQLite]
PASSED [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_sql.py::test_clear_messages[SQLite]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[StrOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[BooleanOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[CombiningOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[DatetimeOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[EnumOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[OutputFixingParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[CommaSeparatedListOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[PydanticOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[GuardrailsOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[RegexParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[RegexDictParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[RetryOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[RetryWithErrorOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[SimpleJsonOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[StructuredOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[APIRequesterOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[APIResponderOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[BashOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[MRKLOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[ChatOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[ConvoOutputParser0]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[ConvoOutputParser1]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[ReActOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[SelfAskOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[StructuredChatOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[StructuredChatOutputParserWithRetries]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[XMLAgentOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[TrajectoryOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[CriteriaResultOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_subclass_implements_type[PairwiseStringResultOutputParser]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_base_output_parser.py::test_all_subclasses_implement_unique_type
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_boolean_parser.py::test_boolean_output_parser_parse
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_combining_parser.py::test_combining_dict_result
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_datetime_parser.py::test_datetime_output_parser_parse
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_enum_parser.py::test_enum_output_parser_parse
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_json[```json\n{\n    "foo": "bar"\n}\n```]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_json[\n\n```json\n{\n    "foo": "bar"\n}\n```\n\n]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_json[```json\n{\n\n    "foo": "bar"\n\n}\n```]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_json[\n\n```json\n\n{\n\n    "foo": "bar"\n\n}\n\n```\n\n]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_json[\n\n```\n\n{\n\n    "foo": "bar"\n\n}\n\n```\n\n]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_json[{\n    "foo": "bar"\n}]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_json[\n{\n    "foo": "bar"\n}\n]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_json[Thought: I need to use the search tool\n\nAction:\n```\n{\n  "foo": "bar"\n}\n```]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_json[```\n{\n  "foo": "bar"\n}\n```\nThis should do the trick]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_json_with_code_blocks
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_list_parser.py::test_single_item
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_list_parser.py::test_multiple_items
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_openai_functions.py::test_json_output_function_parser
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_openai_functions.py::test_json_output_function_parser_strictness[config0]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_openai_functions.py::test_json_output_function_parser_strictness[config1]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_openai_functions.py::test_json_output_function_parser_strictness[config2]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_openai_functions.py::test_json_output_function_parser_strictness[config3]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_openai_functions.py::test_json_output_function_parser_strictness[config4]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_openai_functions.py::test_exceptions_raised_while_parsing[bad_message0]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_openai_functions.py::test_exceptions_raised_while_parsing[bad_message1]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_openai_functions.py::test_exceptions_raised_while_parsing[bad_message2]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_openai_functions.py::test_exceptions_raised_while_parsing[bad_message3]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_pydantic_parser.py::test_pydantic_output_parser
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_pydantic_parser.py::test_pydantic_output_parser_fail
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_regex_dict.py::test_regex_dict_result
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_structured_parser.py::test_parse
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_create_chat_prompt_template_from_template
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_create_chat_prompt_template_from_template_partial
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_message_prompt_template_from_template_file
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_chat_prompt_template
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_chat_prompt_template_from_messages
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_chat_prompt_template_from_messages_using_role_strings
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_chat_prompt_template_with_messages
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_chat_invalid_input_variables_extra
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_chat_invalid_input_variables_missing
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_infer_variables
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_chat_valid_with_partial_variables
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_chat_valid_infer_variables
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_chat_from_role_strings
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_convert_to_message[args0-expected0]
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_convert_to_message[{question}-expected1]
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_convert_to_message[args2-expected2]
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_convert_to_message[args3-expected3]
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_chat_prompt_template_indexing
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_chat_prompt_template_append_and_extend
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_convert_to_message_is_strict
PASSED [libs/langchain] tests/unit_tests/prompts/test_chat.py::test_chat_message_partial
PASSED [libs/langchain] tests/unit_tests/prompts/test_few_shot.py::test_suffix_only
PASSED [libs/langchain] tests/unit_tests/prompts/test_few_shot.py::test_prompt_missing_input_variables
PASSED [libs/langchain] tests/unit_tests/prompts/test_few_shot.py::test_prompt_extra_input_variables
PASSED [libs/langchain] tests/unit_tests/prompts/test_few_shot.py::test_few_shot_functionality
PASSED [libs/langchain] tests/unit_tests/prompts/test_few_shot.py::test_partial_init_string
PASSED [libs/langchain] tests/unit_tests/prompts/test_few_shot.py::test_partial_init_func
PASSED [libs/langchain] tests/unit_tests/prompts/test_few_shot.py::test_partial
PASSED [libs/langchain] tests/unit_tests/prompts/test_few_shot.py::test_few_shot_chat_message_prompt_template
PASSED [libs/langchain] tests/unit_tests/prompts/test_few_shot.py::test_few_shot_chat_message_prompt_template_with_selector
PASSED [libs/langchain] tests/unit_tests/prompts/test_few_shot_with_templates.py::test_prompttemplate_prefix_suffix
PASSED [libs/langchain] tests/unit_tests/prompts/test_length_based_example_selector.py::test_selector_valid
PASSED [libs/langchain] tests/unit_tests/prompts/test_length_based_example_selector.py::test_selector_add_example
PASSED [libs/langchain] tests/unit_tests/prompts/test_length_based_example_selector.py::test_selector_trims_one_example
PASSED [libs/langchain] tests/unit_tests/prompts/test_length_based_example_selector.py::test_selector_trims_all_examples
PASSED [libs/langchain] tests/unit_tests/prompts/test_loading.py::test_loading_from_YAML
PASSED [libs/langchain] tests/unit_tests/prompts/test_loading.py::test_loading_from_JSON
PASSED [libs/langchain] tests/unit_tests/prompts/test_loading.py::test_saving_loading_round_trip
PASSED [libs/langchain] tests/unit_tests/prompts/test_loading.py::test_loading_with_template_as_file
PASSED [libs/langchain] tests/unit_tests/prompts/test_loading.py::test_loading_few_shot_prompt_from_yaml
PASSED [libs/langchain] tests/unit_tests/prompts/test_loading.py::test_loading_few_shot_prompt_from_json
PASSED [libs/langchain] tests/unit_tests/prompts/test_loading.py::test_loading_few_shot_prompt_when_examples_in_config
PASSED [libs/langchain] tests/unit_tests/prompts/test_loading.py::test_loading_few_shot_prompt_example_prompt
PASSED [libs/langchain] tests/unit_tests/prompts/test_loading.py::test_loading_with_output_parser
PASSED [libs/langchain] tests/unit_tests/prompts/test_pipeline_prompt.py::test_get_input_variables
PASSED [libs/langchain] tests/unit_tests/prompts/test_pipeline_prompt.py::test_simple_pipeline
PASSED [libs/langchain] tests/unit_tests/prompts/test_pipeline_prompt.py::test_multi_variable_pipeline
PASSED [libs/langchain] tests/unit_tests/prompts/test_pipeline_prompt.py::test_partial_with_chat_prompts
PASSED [libs/langchain] tests/unit_tests/prompts/test_prompt.py::test_prompt_valid
PASSED [libs/langchain] tests/unit_tests/prompts/test_prompt.py::test_prompt_from_template
PASSED [libs/langchain] tests/unit_tests/prompts/test_prompt.py::test_prompt_missing_input_variables
PASSED [libs/langchain] tests/unit_tests/prompts/test_prompt.py::test_prompt_extra_input_variables
PASSED [libs/langchain] tests/unit_tests/prompts/test_prompt.py::test_prompt_wrong_input_variables
PASSED [libs/langchain] tests/unit_tests/prompts/test_prompt.py::test_prompt_from_examples_valid
PASSED [libs/langchain] tests/unit_tests/prompts/test_prompt.py::test_prompt_invalid_template_format
PASSED [libs/langchain] tests/unit_tests/prompts/test_prompt.py::test_prompt_from_file
PASSED [libs/langchain] tests/unit_tests/prompts/test_prompt.py::test_partial_init_string
PASSED [libs/langchain] tests/unit_tests/prompts/test_prompt.py::test_partial_init_func
PASSED [libs/langchain] tests/unit_tests/prompts/test_prompt.py::test_partial
PASSED [libs/langchain] tests/unit_tests/prompts/test_utils.py::test_sorted_vals
PASSED [libs/langchain] tests/unit_tests/retrievers/test_base.py::test_fake_retriever_v1_upgrade
PASSED [libs/langchain] tests/unit_tests/retrievers/test_base.py::test_fake_retriever_v1_upgrade_async
PASSED [libs/langchain] tests/unit_tests/retrievers/test_base.py::test_fake_retriever_v1_with_kwargs_upgrade
PASSED [libs/langchain] tests/unit_tests/retrievers/test_base.py::test_fake_retriever_v1_with_kwargs_upgrade_async
PASSED [libs/langchain] tests/unit_tests/retrievers/test_base.py::test_fake_retriever_v2
PASSED [libs/langchain] tests/unit_tests/retrievers/test_base.py::test_fake_retriever_v2_async
PASSED [libs/langchain] tests/unit_tests/retrievers/test_knn.py::TestKNNRetriever::test_from_texts
PASSED [libs/langchain] tests/unit_tests/retrievers/test_remote_retriever.py::test_RemoteLangChainRetriever_get_relevant_documents
PASSED [libs/langchain] tests/unit_tests/retrievers/test_time_weighted_retriever.py::test__get_hours_passed
PASSED [libs/langchain] tests/unit_tests/retrievers/test_time_weighted_retriever.py::test_get_combined_score
PASSED [libs/langchain] tests/unit_tests/retrievers/test_time_weighted_retriever.py::test_get_salient_docs
PASSED [libs/langchain] tests/unit_tests/retrievers/test_time_weighted_retriever.py::test_get_relevant_documents
PASSED [libs/langchain] tests/unit_tests/retrievers/test_time_weighted_retriever.py::test_add_documents
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_chroma.py::test_visit_comparison
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_chroma.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_chroma.py::test_visit_structured_query
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_deeplake.py::test_visit_comparison
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_deeplake.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_deeplake.py::test_visit_structured_query
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_elasticsearch.py::test_visit_comparison
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_elasticsearch.py::test_visit_comparison_range_gt
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_elasticsearch.py::test_visit_comparison_range_gte
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_elasticsearch.py::test_visit_comparison_range_lt
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_elasticsearch.py::test_visit_comparison_range_lte
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_elasticsearch.py::test_visit_comparison_range_match
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_elasticsearch.py::test_visit_comparison_range_like
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_elasticsearch.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_elasticsearch.py::test_visit_operation_or
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_elasticsearch.py::test_visit_operation_not
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_elasticsearch.py::test_visit_structured_query
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_elasticsearch.py::test_visit_structured_query_filter
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_elasticsearch.py::test_visit_structured_query_filter_and
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_elasticsearch.py::test_visit_structured_query_complex
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_comparison[triplet0]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_comparison[triplet1]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_comparison[triplet2]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_comparison[triplet3]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_comparison[triplet4]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_comparison[triplet5]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_structured_query
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_pinecone.py::test_visit_comparison
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_pinecone.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_pinecone.py::test_visit_structured_query
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_weaviate.py::test_visit_comparison
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_weaviate.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_weaviate.py::test_visit_structured_query
PASSED [libs/langchain] tests/unit_tests/runnables/test_openai_functions.py::test_openai_functions_router
PASSED [libs/langchain] tests/unit_tests/schema/test_messages.py::test_message_chunks
PASSED [libs/langchain] tests/unit_tests/schema/test_output.py::test_generation_chunk
PASSED [libs/langchain] tests/unit_tests/schema/test_output.py::test_chat_generation_chunk
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_default_method_implementations
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_prompt
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_prompt_with_chat_model
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_prompt_with_llm
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_prompt_with_chat_model_and_parser
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_combining_sequences
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_seq_dict_prompt_llm
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_seq_prompt_dict
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_router_runnable
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_seq_prompt_map
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_map_stream
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_map_stream_iterator_input
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_map_astream
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_map_astream_iterator_input
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_bind_bind
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_deep_stream
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_deep_astream
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_llm_with_fallbacks[llm_with_fallbacks]
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_llm_with_fallbacks[llm_with_multi_fallbacks]
PASSED [libs/langchain] tests/unit_tests/schema/test_runnable.py::test_llm_with_fallbacks[llm_chain_with_fallbacks]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__get_messages_valid[inputs0]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__get_messages_valid[inputs1]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__get_messages_valid[inputs2]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__get_messages_valid[inputs3]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__get_messages_valid[inputs4]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__get_prompts_valid[inputs0]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__get_prompts_valid[inputs1]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__get_prompts_valid[inputs2]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__get_prompts_valid[inputs3]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__validate_example_inputs_for_language_model[inputs0]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__validate_example_inputs_for_language_model[inputs1]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__validate_example_inputs_for_language_model[inputs2]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__validate_example_inputs_for_language_model[inputs3]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__validate_example_inputs_for_language_model_invalid[inputs0]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__validate_example_inputs_for_chain_single_input
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__validate_example_inputs_for_chain_input_mapper
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__validate_example_inputs_for_chain_multi_io
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__validate_example_inputs_for_chain_single_input_multi_expect
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__get_prompts_invalid[inputs0]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_llm_or_chain_with_input_mapper
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__get_messages_invalid[inputs0]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__get_messages_invalid[inputs1]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__get_messages_invalid[inputs2]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test__get_messages_invalid[inputs3]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_llm_all_formats[inputs0]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_llm_all_formats[inputs1]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_llm_all_formats[inputs2]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_llm_all_formats[inputs3]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_llm_all_formats[inputs4]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_llm_all_formats[inputs5]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_llm_all_formats[inputs6]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_llm_all_formats[inputs7]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_llm_all_formats[inputs8]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_chat_model_all_formats[inputs0]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_chat_model_all_formats[inputs1]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_chat_model_all_formats[inputs2]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_chat_model_all_formats[inputs3]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_chat_model_all_formats[inputs4]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_chat_model_all_formats[inputs5]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_chat_model_all_formats[inputs6]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_chat_model_all_formats[inputs7]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_run_chat_model_all_formats[inputs8]
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_runner_utils.py::test_arun_on_dataset
PASSED [libs/langchain] tests/unit_tests/smith/evaluation/test_string_run_evaluator.py::test_evaluate_run
PASSED [libs/langchain] tests/unit_tests/storage/test_filesystem.py::test_mset_and_mget
PASSED [libs/langchain] tests/unit_tests/storage/test_filesystem.py::test_mdelete
PASSED [libs/langchain] tests/unit_tests/storage/test_filesystem.py::test_set_invalid_key
PASSED [libs/langchain] tests/unit_tests/storage/test_filesystem.py::test_set_key_and_verify_content
PASSED [libs/langchain] tests/unit_tests/storage/test_filesystem.py::test_yield_keys
PASSED [libs/langchain] tests/unit_tests/storage/test_in_memory.py::test_mget
PASSED [libs/langchain] tests/unit_tests/storage/test_in_memory.py::test_mset
PASSED [libs/langchain] tests/unit_tests/storage/test_in_memory.py::test_mdelete
PASSED [libs/langchain] tests/unit_tests/storage/test_in_memory.py::test_yield_keys
PASSED [libs/langchain] tests/unit_tests/storage/test_redis.py::test_import_storage
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_unnamed_decorator
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_structured_args
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_misannotated_base_tool_raises_error
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_forward_ref_annotated_base_tool_accepted
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_subclass_annotated_base_tool_accepted
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_decorator_with_specified_schema
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_decorated_function_schema_equivalent
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_args_kwargs_filtered
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_structured_args_decorator_no_infer_schema
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_structured_single_str_decorator_no_infer_schema
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_structured_tool_types_parsed
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_base_tool_inheritance_base_schema
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_tool_lambda_args_schema
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_structured_tool_from_function_docstring
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_structured_tool_from_function_docstring_complex_args
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_structured_tool_lambda_multi_args_schema
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_tool_partial_function_args_schema
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_empty_args_decorator
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_tool_from_function_with_run_manager
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_structured_tool_from_function_with_run_manager
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_named_tool_decorator
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_named_tool_decorator_return_direct
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_unnamed_tool_decorator_return_direct
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_tool_with_kwargs
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_missing_docstring
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_create_tool_positional_args
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_create_tool_keyword_args
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_create_async_tool
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_exception_handling_bool
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_exception_handling_str
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_exception_handling_callable
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_exception_handling_non_tool_exception
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_async_exception_handling_bool
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_async_exception_handling_str
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_async_exception_handling_callable
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_async_exception_handling_non_tool_exception
PASSED [libs/langchain] tests/unit_tests/tools/test_base.py::test_structured_tool_from_function
PASSED [libs/langchain] tests/unit_tests/tools/test_exported.py::test_tool_names_unique
PASSED [libs/langchain] tests/unit_tests/tools/test_json.py::test_json_spec_from_file
PASSED [libs/langchain] tests/unit_tests/tools/test_json.py::test_json_spec_keys
PASSED [libs/langchain] tests/unit_tests/tools/test_json.py::test_json_spec_value
PASSED [libs/langchain] tests/unit_tests/tools/test_json.py::test_json_spec_value_max_length
PASSED [libs/langchain] tests/unit_tests/tools/test_public_api.py::test_public_api
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[Tool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[NLATool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[StructuredTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AINBaseTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AINAppOps]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AINOwnerOps]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AINRuleOps]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AINTransfer]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AINValueOps]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ArxivQueryRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AzureCogsFormRecognizerTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AzureCogsImageAnalysisTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AzureCogsSpeech2TextTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AzureCogsText2SpeechTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[BingSearchRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[BingSearchResults]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[BraveSearch]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[DuckDuckGoSearchRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[DuckDuckGoSearchResults]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[CopyFileTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[DeleteFileTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[FileSearchTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ListDirectoryTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[MoveFileTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ReadFileTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[WriteFileTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GmailCreateDraft]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GmailGetMessage]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GmailGetThread]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GmailSearch]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GmailSendMessage]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GooglePlacesTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GoogleSearchRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GoogleSearchResults]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GoogleSerperRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GoogleSerperResults]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[BaseGraphQLTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[HumanInputRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[IFTTTWebhook]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[JiraAction]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[JsonListKeysTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[JsonGetValueTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[MetaphorSearchResults]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[O365CreateDraftMessage]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[O365SearchEvents]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[O365SearchEmails]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[O365SendEvent]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[O365SendMessage]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[OpenWeatherMapQueryRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ClickTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[CurrentWebPageTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ExtractHyperlinksTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ExtractTextTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GetElementsTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[NavigateTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[NavigateBackTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AIPluginTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[QueryPowerBITool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[InfoPowerBITool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ListPowerBITool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[PubmedQueryRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[PythonREPLTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[PythonAstREPLTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[RequestsGetTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[RequestsPostTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[RequestsPatchTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[RequestsPutTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[RequestsDeleteTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[SceneXplainTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[SearxSearchRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[SearxSearchResults]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ShellTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[SleepTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[QuerySparkSQLTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[InfoSparkSQLTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ListSparkSQLTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[QueryCheckerTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[QuerySQLDataBaseTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[InfoSQLDatabaseTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ListSQLDatabaseTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[QuerySQLCheckerTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[SteamshipImageGenerationTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[VectorStoreQATool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[VectorStoreQAWithSourcesTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[WikipediaQueryRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[WolframAlphaQueryRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[YouTubeSearchTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ZapierNLARunAction]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ZapierNLAListActions]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[InvalidTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ExceptionTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AmadeusClosestAirport]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AmadeusFlightSearch]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[MultionCreateSession]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[MultionUpdateSession]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GoldenQueryRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[DataForSeoAPISearchRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[DataForSeoAPISearchResults]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[NucliaUnderstandingAPI]
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_default_base_prompt
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_custom_base_prompt
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_custom_base_prompt_fail
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_format_headers_api_key
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_format_headers_access_token
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_create_action_payload
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_create_action_payload_preview
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_create_action_payload_with_params
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_apreview
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_arun
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_alist
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_wrapper_fails_no_api_key_or_access_token_initialization
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_wrapper_api_key_initialization
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_wrapper_access_token_initialization
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_list_raises_401_invalid_api_key
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_list_raises_401_invalid_access_token
PASSED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_list_raises_other_error
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_copy.py::test_copy_file_with_root_dir
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_copy.py::test_copy_file_errs_outside_root_dir
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_copy.py::test_copy_file
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_file_search.py::test_file_search_with_root_dir
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_file_search.py::test_file_search_errs_outside_root_dir
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_file_search.py::test_file_search
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_list_dir.py::test_list_directory_with_root_dir
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_list_dir.py::test_list_directory_errs_outside_root_dir
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_list_dir.py::test_list_directory
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_move.py::test_move_file_with_root_dir
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_move.py::test_move_file_errs_outside_root_dir
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_move.py::test_move_file
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_read.py::test_read_file_with_root_dir
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_read.py::test_read_file
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_toolkit.py::test_file_toolkit_get_tools
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_toolkit.py::test_file_toolkit_get_tools_with_selection
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_toolkit.py::test_file_toolkit_invalid_tool
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_toolkit.py::test_file_toolkit_root_dir
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_utils.py::test_get_validated_relative_path_errs_on_absolute
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_utils.py::test_get_validated_relative_path_errs_on_parent_dir
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_utils.py::test_get_validated_relative_path
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_utils.py::test_get_validated_relative_path_errs_for_symlink_outside_root
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_utils.py::test_get_validated_relative_path_for_symlink_inside_root
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_write.py::test_write_file_with_root_dir
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_write.py::test_write_file_errs_outside_root_dir
PASSED [libs/langchain] tests/unit_tests/tools/file_management/test_write.py::test_write_file
PASSED [libs/langchain] tests/unit_tests/tools/powerbi/test_powerbi.py::test_power_bi_can_be_imported
PASSED [libs/langchain] tests/unit_tests/tools/python/test_python.py::test_python_repl_tool_single_input
PASSED [libs/langchain] tests/unit_tests/tools/python/test_python.py::test_python_repl_print
PASSED [libs/langchain] tests/unit_tests/tools/python/test_python.py::test_python_ast_repl_tool_single_input
PASSED [libs/langchain] tests/unit_tests/tools/python/test_python.py::test_python_ast_repl_return
PASSED [libs/langchain] tests/unit_tests/tools/python/test_python.py::test_python_ast_repl_print
PASSED [libs/langchain] tests/unit_tests/tools/python/test_python.py::test_repl_print_python_backticks
PASSED [libs/langchain] tests/unit_tests/tools/python/test_python.py::test_python_ast_repl_raise_exception
PASSED [libs/langchain] tests/unit_tests/tools/python/test_python.py::test_python_ast_repl_one_line_print
PASSED [libs/langchain] tests/unit_tests/tools/python/test_python.py::test_python_ast_repl_one_line_return
PASSED [libs/langchain] tests/unit_tests/tools/python/test_python.py::test_python_ast_repl_one_line_exception
PASSED [libs/langchain] tests/unit_tests/tools/python/test_python.py::test_sanitize_input
PASSED [libs/langchain] tests/unit_tests/tools/requests/test_tool.py::test_parse_input
PASSED [libs/langchain] tests/unit_tests/tools/requests/test_tool.py::test_requests_get_tool
PASSED [libs/langchain] tests/unit_tests/tools/requests/test_tool.py::test_requests_post_tool
PASSED [libs/langchain] tests/unit_tests/tools/requests/test_tool.py::test_requests_patch_tool
PASSED [libs/langchain] tests/unit_tests/tools/requests/test_tool.py::test_requests_put_tool
PASSED [libs/langchain] tests/unit_tests/tools/requests/test_tool.py::test_requests_delete_tool
PASSED [libs/langchain] tests/unit_tests/tools/shell/test_shell.py::test_shell_input_validation
PASSED [libs/langchain] tests/unit_tests/tools/shell/test_shell.py::test_shell_tool_init
PASSED [libs/langchain] tests/unit_tests/tools/shell/test_shell.py::test_shell_tool_run
PASSED [libs/langchain] tests/unit_tests/tools/shell/test_shell.py::test_shell_tool_arun
PASSED [libs/langchain] tests/unit_tests/tools/shell/test_shell.py::test_shell_tool_run_str
PASSED [libs/langchain] tests/unit_tests/utilities/test_loading.py::test_non_hub_path
PASSED [libs/langchain] tests/unit_tests/utilities/test_loading.py::test_invalid_prefix
PASSED [libs/langchain] tests/unit_tests/utilities/test_loading.py::test_invalid_suffix
PASSED [libs/langchain] tests/unit_tests/utilities/test_loading.py::test_success[None]
PASSED [libs/langchain] tests/unit_tests/utilities/test_loading.py::test_success[v0.3]
PASSED [libs/langchain] tests/unit_tests/utilities/test_loading.py::test_failed_request
PASSED [libs/langchain] tests/unit_tests/vectorstores/test_utils.py::test_maximal_marginal_relevance_lambda_zero
PASSED [libs/langchain] tests/unit_tests/vectorstores/test_utils.py::test_maximal_marginal_relevance_lambda_one
PASSED [libs/langchain] tests/unit_tests/vectorstores/test_utils.py::test_maximal_marginal_relevance
PASSED [libs/langchain] tests/unit_tests/vectorstores/test_utils.py::test_maximal_marginal_relevance_query_dim
PASSED [libs/langchain] tests/unit_tests/vectorstores/test_utils.py::test_filter_list_metadata
SKIPPED [1] [libs/langchain] tests/unit_tests/test_bash.py:24: flaky on GHA, TODO to fix
SKIPPED [1] [libs/langchain] tests/unit_tests/test_bash.py:91: flaky on GHA, TODO to fix
SKIPPED [1] [libs/langchain] tests/unit_tests/chains/test_llm_symbolic_math.py:34: Requires pkg: `sympy`
SKIPPED [1] [libs/langchain] tests/unit_tests/chains/test_llm_symbolic_math.py:42: Requires pkg: `sympy`
SKIPPED [1] [libs/langchain] tests/unit_tests/chains/test_llm_symbolic_math.py:52: Requires pkg: `sympy`
SKIPPED [1] [libs/langchain] tests/unit_tests/chains/test_llm_symbolic_math.py:60: Requires pkg: `sympy`
SKIPPED [1] [libs/langchain] tests/unit_tests/chains/test_llm_symbolic_math.py:70: Requires pkg: `sympy`
SKIPPED [1] [libs/langchain] tests/unit_tests/chains/test_llm_symbolic_math.py:78: Requires pkg: `sympy`
SKIPPED [4] [libs/langchain] tests/unit_tests/chat_models/test_azureopenai.py:14: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:14: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:44: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:56: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:68: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:80: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:93: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:100: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:107: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_openai.py:76: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_openai.py:98: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_bibtex.py:10: Requires pkg: `fitz`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_bibtex.py:28: Requires pkg: `fitz`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_bibtex.py:36: Requires pkg: `fitz`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_bibtex.py:54: Requires pkg: `fitz`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_bshtml.py:12: Requires pkg: `bs4`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_bshtml.py:29: default encoding is utf8
SKIPPED [6] [libs/langchain] tests/unit_tests/document_loaders/test_confluence.py: Requires pkg: `atlassian`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_detect_encoding.py:9: Requires pkg: `chardet`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_detect_encoding.py:29: slow test
SKIPPED [11] [libs/langchain] tests/unit_tests/document_loaders/test_evernote_loader.py: Requires pkg: `lxml`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_generic_loader.py:91: Requires pkg: `tqdm`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_git.py:29: Requires pkg: `git`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_git.py:47: Requires pkg: `git`
SKIPPED [7] [libs/langchain] tests/unit_tests/document_loaders/test_json_loader.py: Requires pkg: `jq`
SKIPPED [2] [libs/langchain] tests/unit_tests/document_loaders/test_json_loader.py:172: Requires pkg: `jq`
SKIPPED [2] [libs/langchain] tests/unit_tests/document_loaders/test_json_loader.py:225: Requires pkg: `jq`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_mediawikidump.py:10: Requires pkg: `mwparserfromhell`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_mediawikidump.py:17: Requires pkg: `mwparserfromhell`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_mediawikidump.py:27: Requires pkg: `mwparserfromhell`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_mediawikidump.py:38: Requires pkg: `mwparserfromhell`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_mhtml.py:11: Requires pkg: `bs4`
SKIPPED [2] [libs/langchain] tests/unit_tests/document_loaders/test_psychic.py: Requires pkg: `psychicapi`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_readthedoc.py:10: Requires pkg: `bs4`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_readthedoc.py:17: Requires pkg: `bs4`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_readthedoc.py:24: Requires pkg: `bs4`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_readthedoc.py:34: Requires pkg: `bs4`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_rss.py:6: Requires pkg: `feedparser`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_rss.py:13: Requires pkg: `feedparser`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_telegram.py:23: Requires pkg: `telethon`
SKIPPED [3] [libs/langchain] tests/unit_tests/document_loaders/test_trello.py: Requires pkg: `trello`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_web_base.py:7: Requires pkg: `bs4`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/blob_loaders/test_filesystem_blob_loader.py:149: Requires pkg: `tqdm`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/loaders/vendors/test_docugami.py:11: Requires pkg: `lxml`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/parsers/test_html_parsers.py:13: Requires pkg: `bs4`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/parsers/test_pdf_parsers.py:56: Requires pkg: `pypdf`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/parsers/test_pdf_parsers.py:62: Requires pkg: `pdfminer`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/parsers/test_pdf_parsers.py:69: Requires pkg: `fitz`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/parsers/test_pdf_parsers.py:75: Requires pkg: `pypdfium2`
SKIPPED [2] [libs/langchain] tests/unit_tests/document_loaders/parsers/language/test_javascript.py: Requires pkg: `esprima`
SKIPPED [1] [libs/langchain] tests/unit_tests/embeddings/test_openai.py:10: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/embeddings/test_openai.py:16: Requires pkg: `openai`
SKIPPED [14] [libs/langchain] tests/unit_tests/evaluation/test_loading.py:13: Requires pkg: `rapidfuzz`
SKIPPED [6] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:10: Requires pkg: `rapidfuzz`
SKIPPED [6] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:20: Requires pkg: `rapidfuzz`
SKIPPED [12] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:31: Requires pkg: `rapidfuzz`
SKIPPED [6] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:46: Requires pkg: `rapidfuzz`
SKIPPED [12] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:59: Requires pkg: `rapidfuzz`
SKIPPED [6] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:75: Requires pkg: `rapidfuzz`
SKIPPED [6] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:89: Requires pkg: `rapidfuzz`
SKIPPED [6] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:102: Requires pkg: `rapidfuzz`
SKIPPED [1] [libs/langchain] tests/unit_tests/llms/test_openai.py:17: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/llms/test_openai.py:25: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/llms/test_openai.py:31: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/llms/test_openai.py:37: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/llms/test_openai.py:58: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/llms/test_openai.py:88: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_dump.py:62: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_dump.py:75: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_dump.py:83: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_dump.py:105: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_dump.py:132: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:16: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:27: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:42: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:66: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:81: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:92: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:107: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:131: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_streamlit.py:33: Requires pkg: `streamlit`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_few_shot.py:212: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_few_shot.py:235: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_few_shot.py:265: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_prompt.py:150: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_prompt.py:165: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_prompt.py:194: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_prompt.py:225: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_prompt.py:236: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_prompt.py:247: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/test_bm25.py:7: Requires pkg: `rank_bm25`
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/test_bm25.py:15: Requires pkg: `rank_bm25`
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/test_bm25.py:25: Requires pkg: `rank_bm25`
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/test_ensemble.py:8: Requires pkg: `rank_bm25`
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/test_ensemble.py:26: Requires pkg: `rank_bm25`
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/test_svm.py:9: Requires pkg: `sklearn`
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/test_svm.py:17: Requires pkg: `sklearn`
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/test_svm.py:29: Requires pkg: `sklearn`
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/test_tfidf.py:11: Requires pkg: `sklearn`
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/test_tfidf.py:19: Requires pkg: `sklearn`
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/test_tfidf.py:29: Requires pkg: `sklearn`
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/test_tfidf.py:41: Requires pkg: `sklearn`
SKIPPED [1] [libs/langchain] tests/unit_tests/tools/openapi/test_api_models.py:81: Requires pkg: `openapi_schema_pydantic`
SKIPPED [1] [libs/langchain] tests/unit_tests/tools/openapi/test_api_models.py:102: Requires pkg: `openapi_schema_pydantic`
SKIPPED [1] [libs/langchain] tests/unit_tests/tools/openapi/test_api_models.py:143: Requires pkg: `openapi_schema_pydantic`
SKIPPED [1] [libs/langchain] tests/unit_tests/tools/openapi/test_api_models.py:174: Requires pkg: `openapi_schema_pydantic`
SKIPPED [1] [libs/langchain] tests/unit_tests/utilities/test_graphql.py:79: Requires pkg: `gql`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:15: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:33: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:52: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:71: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:91: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:116: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:131: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:146: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:160: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:175: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:199: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:222: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:251: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:262: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:274: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:282: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:294: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:309: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:327: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:338: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_faiss.py:347: Requires pkg: `faiss`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_sklearn.py:10: Requires pkg: `sklearn`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_sklearn.py:20: Requires pkg: `sklearn`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_sklearn.py:34: Requires pkg: `sklearn`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_sklearn.py:52: Requires pkg: `sklearn`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_sklearn.py:79: Requires pkg: `sklearn`
SKIPPED [1] [libs/langchain] tests/unit_tests/vectorstores/test_sklearn.py:89: Requires pkg: `sklearn`
================ 970 passed, 237 skipped, 17 warnings in 5.84s =================
================= PYTEST PKG: libs/experimental =================
============================= test session starts ==============================
collected 27 items

tests/unit_tests/test_mock.py .                                          [  3%]
tests/unit_tests/test_pal.py ............                                [ 48%]
tests/unit_tests/test_smartllm.py ......                                 [ 70%]
tests/unit_tests/test_tot.py ........                                    [100%]

=============================== warnings summary ===============================
tests/unit_tests/test_tot.py::test_solve_sudoku
tests/unit_tests/test_tot.py::test_solve_sudoku_k_too_small
  /home/langchain/libs/experimental/.venv/lib/python3.11/site-packages/langchain/chains/llm.py:275: UserWarning: The predict_and_parse method is deprecated, instead pass an output parser directly to LLMChain.
    warnings.warn(

-- Docs: https://docs.pytest.org/en/stable/how-to/capture-warnings.html
=========================== short test summary info ============================
PASSED [libs/experimental] tests/unit_tests/test_mock.py::test_mock
PASSED [libs/experimental] tests/unit_tests/test_pal.py::test_math_question_1
PASSED [libs/experimental] tests/unit_tests/test_pal.py::test_math_question_2
PASSED [libs/experimental] tests/unit_tests/test_pal.py::test_math_question_3
PASSED [libs/experimental] tests/unit_tests/test_pal.py::test_math_question_infinite_loop
PASSED [libs/experimental] tests/unit_tests/test_pal.py::test_color_question_1
PASSED [libs/experimental] tests/unit_tests/test_pal.py::test_color_question_2
PASSED [libs/experimental] tests/unit_tests/test_pal.py::test_valid_code_validation
PASSED [libs/experimental] tests/unit_tests/test_pal.py::test_different_solution_expr_code_validation
PASSED [libs/experimental] tests/unit_tests/test_pal.py::test_illegal_command_exec_disallowed_code_validation
PASSED [libs/experimental] tests/unit_tests/test_pal.py::test_illegal_command_exec_allowed_code_validation
PASSED [libs/experimental] tests/unit_tests/test_pal.py::test_no_imports_code_validation
PASSED [libs/experimental] tests/unit_tests/test_pal.py::test_no_imports_disallowed_code_validation
PASSED [libs/experimental] tests/unit_tests/test_smartllm.py::test_ideation
PASSED [libs/experimental] tests/unit_tests/test_smartllm.py::test_critique
PASSED [libs/experimental] tests/unit_tests/test_smartllm.py::test_resolver
PASSED [libs/experimental] tests/unit_tests/test_smartllm.py::test_all_steps
PASSED [libs/experimental] tests/unit_tests/test_smartllm.py::test_intermediate_output
PASSED [libs/experimental] tests/unit_tests/test_smartllm.py::test_all_steps_with_chat_model
PASSED [libs/experimental] tests/unit_tests/test_tot.py::test_solve_sudoku
PASSED [libs/experimental] tests/unit_tests/test_tot.py::test_solve_sudoku_k_too_small
PASSED [libs/experimental] tests/unit_tests/test_tot.py::ControllerTestCase::test_empty
PASSED [libs/experimental] tests/unit_tests/test_tot.py::ControllerTestCase::test_one_thoghts
PASSED [libs/experimental] tests/unit_tests/test_tot.py::ControllerTestCase::test_thoughts_rollback
PASSED [libs/experimental] tests/unit_tests/test_tot.py::ControllerTestCase::test_thoughts_rollback_invalid
PASSED [libs/experimental] tests/unit_tests/test_tot.py::ControllerTestCase::test_two_thoghts
PASSED [libs/experimental] tests/unit_tests/test_tot.py::ControllerTestCase::test_two_thoughts_invalid
======================== 27 passed, 2 warnings in 2.05s ========================
