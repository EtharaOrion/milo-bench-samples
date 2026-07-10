
WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

Get:1 http://deb.debian.org/debian trixie InRelease [140 kB]
Get:2 http://deb.debian.org/debian trixie-updates InRelease [47.3 kB]
Get:3 http://deb.debian.org/debian-security trixie-security InRelease [43.4 kB]
Get:4 http://deb.debian.org/debian trixie/main arm64 Packages [9608 kB]
Get:5 http://deb.debian.org/debian trixie-updates/main arm64 Packages [5404 B]
Get:6 http://deb.debian.org/debian-security trixie-security/main arm64 Packages [222 kB]
Fetched 10.1 MB in 1s (12.7 MB/s)
Reading package lists...
Building dependency tree...
Reading state information...
All packages are up to date.

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

Reading package lists...
Building dependency tree...
Reading state information...
patch is already the newest version (2.8-2).
patch set to manually installed.
Summary:
  Upgrading: 0, Installing: 0, Removing: 0, Not Upgrading: 0
================= PYTEST PKG: libs/langchain =================
============================= test session starts ==============================
collected 1524 items / 1 error

tests/unit_tests/test_cache.py ..........                                [  0%]
tests/unit_tests/test_dependencies.py ...                                [  0%]
tests/unit_tests/test_document_transformers.py ..                        [  0%]
tests/unit_tests/test_formatting.py ...                                  [  1%]
tests/unit_tests/test_globals.py ....                                    [  1%]
tests/unit_tests/test_pytest_config.py .                                 [  1%]
tests/unit_tests/test_python.py ........                                 [  2%]
tests/unit_tests/test_schema.py .......                                  [  2%]
tests/unit_tests/test_sql_database.py .....                              [  2%]
tests/unit_tests/test_sql_database_schema.py ..                          [  2%]
tests/unit_tests/test_sqlalchemy.py .                                    [  3%]
tests/unit_tests/test_text_splitter.py ................................. [  5%]
..........                                                               [  5%]
tests/unit_tests/test_utils.py ..                                        [  5%]
tests/unit_tests/_api/test_deprecation.py ...........                    [  6%]
tests/unit_tests/agents/test_agent.py ........                           [  7%]
tests/unit_tests/agents/test_agent_iterator.py ............              [  8%]
tests/unit_tests/agents/test_chat.py ..                                  [  8%]
tests/unit_tests/agents/test_initialize.py .                             [  8%]
tests/unit_tests/agents/test_mrkl.py ............                        [  8%]
tests/unit_tests/agents/test_mrkl_output_parser.py ......                [  9%]
tests/unit_tests/agents/test_openai_functions_multi.py .....             [  9%]
tests/unit_tests/agents/test_public_api.py .                             [  9%]
tests/unit_tests/agents/test_react.py ...                                [  9%]
tests/unit_tests/agents/test_serialization.py .                          [ 10%]
tests/unit_tests/agents/test_sql.py .                                    [ 10%]
tests/unit_tests/agents/test_structured_chat.py ..                       [ 10%]
tests/unit_tests/agents/test_tools.py ..........                         [ 10%]
tests/unit_tests/agents/test_types.py .                                  [ 10%]
tests/unit_tests/agents/format_scratchpad/test_log.py ....               [ 11%]
tests/unit_tests/agents/format_scratchpad/test_log_to_messages.py ....   [ 11%]
tests/unit_tests/agents/format_scratchpad/test_openai_functions.py ..    [ 11%]
tests/unit_tests/agents/format_scratchpad/test_xml.py ...                [ 11%]
tests/unit_tests/agents/output_parsers/test_json.py ..                   [ 11%]
tests/unit_tests/agents/output_parsers/test_openai_functions.py .....    [ 12%]
tests/unit_tests/agents/output_parsers/test_react_json_single_input.py . [ 12%]
.                                                                        [ 12%]
tests/unit_tests/agents/output_parsers/test_react_single_input.py ...    [ 12%]
tests/unit_tests/agents/output_parsers/test_self_ask.py ....             [ 12%]
tests/unit_tests/agents/output_parsers/test_xml.py ..                    [ 12%]
tests/unit_tests/callbacks/test_callback_manager.py .............        [ 13%]
tests/unit_tests/callbacks/test_openai_info.py ..................        [ 15%]
tests/unit_tests/callbacks/test_run_collector.py .                       [ 15%]
tests/unit_tests/callbacks/test_schemas.py .                             [ 15%]
tests/unit_tests/callbacks/test_streamlit_callback.py ..                 [ 15%]
tests/unit_tests/callbacks/tracers/test_base_tracer.py ...........       [ 16%]
tests/unit_tests/callbacks/tracers/test_langchain.py .                   [ 16%]
tests/unit_tests/callbacks/tracers/test_langchain_v1.py ............     [ 16%]
tests/unit_tests/chains/test_api.py .                                    [ 16%]
tests/unit_tests/chains/test_base.py ..............                      [ 17%]
tests/unit_tests/chains/test_combine_documents.py ..........             [ 18%]
tests/unit_tests/chains/test_constitutional_ai.py .                      [ 18%]
tests/unit_tests/chains/test_conversation.py ...........                 [ 19%]
tests/unit_tests/chains/test_conversation_retrieval.py ..                [ 19%]
tests/unit_tests/chains/test_graph_qa.py .......                         [ 19%]
tests/unit_tests/chains/test_hyde.py ..                                  [ 20%]
tests/unit_tests/chains/test_llm.py .....                                [ 20%]
tests/unit_tests/chains/test_llm_checker.py .                            [ 20%]
tests/unit_tests/chains/test_llm_math.py sss                             [ 20%]
tests/unit_tests/chains/test_llm_summarization_checker.py .              [ 20%]
tests/unit_tests/chains/test_memory.py ....                              [ 20%]
tests/unit_tests/chains/test_natbot.py ..                                [ 21%]
tests/unit_tests/chains/test_neptune_cypher_qa.py .                      [ 21%]
tests/unit_tests/chains/test_qa_with_sources.py ........                 [ 21%]
tests/unit_tests/chains/test_sequential.py ..............                [ 22%]
tests/unit_tests/chains/test_transform.py ..                             [ 22%]
tests/unit_tests/chains/query_constructor/test_parser.py ............... [ 23%]
...............                                                          [ 24%]
tests/unit_tests/chains/question_answering/test_map_rerank_prompt.py ..  [ 24%]
tests/unit_tests/chat_loaders/test_slack.py .                            [ 24%]
tests/unit_tests/chat_loaders/test_telegram.py ...sss                    [ 25%]
tests/unit_tests/chat_loaders/test_whatsapp.py .                         [ 25%]
tests/unit_tests/chat_models/test_anthropic.py ssssss...                 [ 25%]
tests/unit_tests/chat_models/test_azureopenai.py ssss                    [ 26%]
tests/unit_tests/chat_models/test_baichuan.py ..........                 [ 26%]
tests/unit_tests/chat_models/test_ernie.py ....                          [ 27%]
tests/unit_tests/chat_models/test_google_palm.py ssssssss                [ 27%]
tests/unit_tests/chat_models/test_openai.py s....ss                      [ 28%]
tests/unit_tests/docstore/test_arbitrary_fn.py .                         [ 28%]
tests/unit_tests/docstore/test_inmemory.py .....                         [ 28%]
tests/unit_tests/document_loaders/test_airbyte.py .                      [ 28%]
tests/unit_tests/document_loaders/test_arcgis_loader.py ........         [ 29%]
tests/unit_tests/document_loaders/test_assemblyai.py sss                 [ 29%]
tests/unit_tests/document_loaders/test_base.py .                         [ 29%]
tests/unit_tests/document_loaders/test_bibtex.py ssss                    [ 29%]
tests/unit_tests/document_loaders/test_bshtml.py ss                      [ 29%]
tests/unit_tests/document_loaders/test_confluence.py sssssss             [ 30%]
tests/unit_tests/document_loaders/test_csv_loader.py ....                [ 30%]
tests/unit_tests/document_loaders/test_cube_semantic.py ..               [ 30%]
tests/unit_tests/document_loaders/test_detect_encoding.py sss            [ 30%]
tests/unit_tests/document_loaders/test_directory.py ..                   [ 30%]
tests/unit_tests/document_loaders/test_evernote_loader.py sssssssssss    [ 31%]
tests/unit_tests/document_loaders/test_generic_loader.py ...s.           [ 31%]
tests/unit_tests/document_loaders/test_git.py ss                         [ 32%]
tests/unit_tests/document_loaders/test_github.py ......                  [ 32%]
tests/unit_tests/document_loaders/test_json_loader.py sssssssssssss      [ 33%]
tests/unit_tests/document_loaders/test_mediawikidump.py ssss             [ 33%]
tests/unit_tests/document_loaders/test_mhtml.py s                        [ 33%]
tests/unit_tests/document_loaders/test_mongodb.py s                      [ 33%]
tests/unit_tests/document_loaders/test_obsidian.py .............         [ 34%]
tests/unit_tests/document_loaders/test_psychic.py ss                     [ 34%]
tests/unit_tests/document_loaders/test_readthedoc.py ssss                [ 34%]
tests/unit_tests/document_loaders/test_rspace_loader.py ...              [ 35%]
tests/unit_tests/document_loaders/test_rss.py ss                         [ 35%]
tests/unit_tests/document_loaders/test_telegram.py .s                    [ 35%]
tests/unit_tests/document_loaders/test_trello.py sss                     [ 35%]
tests/unit_tests/document_loaders/test_web_base.py s.                    [ 35%]
tests/unit_tests/document_loaders/test_youtube.py ..............         [ 36%]
tests/unit_tests/document_loaders/blob_loaders/test_filesystem_blob_loader.py . [ 36%]
.........s                                                               [ 37%]
tests/unit_tests/document_loaders/blob_loaders/test_public_api.py .      [ 37%]
tests/unit_tests/document_loaders/blob_loaders/test_schema.py .......... [ 38%]
....                                                                     [ 38%]
tests/unit_tests/document_loaders/loaders/vendors/test_docugami.py s.    [ 38%]
tests/unit_tests/document_loaders/parsers/test_generic.py ..             [ 38%]
tests/unit_tests/document_loaders/parsers/test_html_parsers.py s         [ 38%]
tests/unit_tests/document_loaders/parsers/test_pdf_parsers.py sssss      [ 39%]
tests/unit_tests/document_loaders/parsers/test_public_api.py .           [ 39%]
tests/unit_tests/document_loaders/parsers/language/test_javascript.py ss [ 39%]
                                                                         [ 39%]
tests/unit_tests/document_loaders/parsers/language/test_python.py ..     [ 39%]
tests/unit_tests/embeddings/test_caching.py ..                           [ 39%]
tests/unit_tests/embeddings/test_deterministic_embedding.py .            [ 39%]
tests/unit_tests/embeddings/test_gradient_ai.py ...                      [ 39%]
tests/unit_tests/embeddings/test_openai.py ss                            [ 39%]
tests/unit_tests/evaluation/test_loading.py ssssssssssssssssss.......... [ 41%]
                                                                         [ 41%]
tests/unit_tests/evaluation/agents/test_eval_chain.py ....               [ 41%]
tests/unit_tests/evaluation/comparison/test_eval_chain.py .............. [ 42%]
....                                                                     [ 43%]
tests/unit_tests/evaluation/criteria/test_eval_chain.py ................ [ 44%]
.....                                                                    [ 44%]
tests/unit_tests/evaluation/exact_match/test_base.py ..                  [ 44%]
tests/unit_tests/evaluation/parsing/test_base.py ..............          [ 45%]
tests/unit_tests/evaluation/qa/test_eval_chain.py .............          [ 46%]
tests/unit_tests/evaluation/regex_match/test_base.py ..                  [ 46%]
tests/unit_tests/evaluation/scoring/test_eval_chain.py ...               [ 46%]
tests/unit_tests/evaluation/string_distance/test_base.py sssssssssssssss [ 47%]
ssssssssssssssssssssssssssssssssssssssss                                 [ 50%]
tests/unit_tests/graphs/test_neptune_graph.py .                          [ 50%]
tests/unit_tests/indexes/test_api.py .                                   [ 50%]
tests/unit_tests/indexes/test_hashed_document.py .....                   [ 50%]
tests/unit_tests/indexes/test_indexing.py .s.s.s.s.s.s.s.s...            [ 52%]
tests/unit_tests/indexes/test_sql_record_manager.py .s.s.s.s.s.s.s       [ 53%]
tests/unit_tests/llms/test_base.py ..                                    [ 53%]
tests/unit_tests/llms/test_bedrock.py .                                  [ 53%]
tests/unit_tests/llms/test_callbacks.py ...                              [ 53%]
tests/unit_tests/llms/test_gradient_ai.py ...                            [ 53%]
tests/unit_tests/llms/test_imports.py .                                  [ 53%]
tests/unit_tests/llms/test_loading.py .                                  [ 53%]
tests/unit_tests/llms/test_openai.py ssssss                              [ 54%]
tests/unit_tests/llms/test_utils.py ..                                   [ 54%]
tests/unit_tests/load/test_dump.py .sssss                                [ 54%]
tests/unit_tests/load/test_load.py ssssssss                              [ 55%]
tests/unit_tests/memory/test_combined_memory.py ..                       [ 55%]
tests/unit_tests/memory/chat_message_histories/test_file.py ...          [ 55%]
tests/unit_tests/memory/chat_message_histories/test_sql.py ....          [ 55%]
tests/unit_tests/memory/chat_message_histories/test_streamlit.py s       [ 55%]
tests/unit_tests/output_parsers/test_boolean_parser.py .                 [ 55%]
tests/unit_tests/output_parsers/test_combining_parser.py .               [ 55%]
tests/unit_tests/output_parsers/test_datetime_parser.py .                [ 56%]
tests/unit_tests/output_parsers/test_enum_parser.py .                    [ 56%]
tests/unit_tests/output_parsers/test_json.py ........................... [ 57%]
                                                                         [ 57%]
tests/unit_tests/output_parsers/test_list_parser.py ....                 [ 58%]
tests/unit_tests/output_parsers/test_openai_functions.py ..........      [ 58%]
tests/unit_tests/output_parsers/test_pydantic_parser.py ..               [ 58%]
tests/unit_tests/output_parsers/test_regex_dict.py .                     [ 58%]
tests/unit_tests/output_parsers/test_structured_parser.py .              [ 59%]
tests/unit_tests/output_parsers/test_xml_parser.py ......                [ 59%]
tests/unit_tests/prompts/test_chat.py .....................              [ 60%]
tests/unit_tests/prompts/test_few_shot.py .......sss..                   [ 61%]
tests/unit_tests/prompts/test_few_shot_with_templates.py ..              [ 61%]
tests/unit_tests/prompts/test_length_based_example_selector.py ....      [ 62%]
tests/unit_tests/prompts/test_loading.py ...........                     [ 62%]
tests/unit_tests/prompts/test_pipeline_prompt.py ....                    [ 62%]
tests/unit_tests/prompts/test_prompt.py ...........ssssss                [ 64%]
tests/unit_tests/prompts/test_utils.py .                                 [ 64%]
tests/unit_tests/retrievers/test_base.py ......                          [ 64%]
tests/unit_tests/retrievers/test_bm25.py sss                             [ 64%]
tests/unit_tests/retrievers/test_ensemble.py ss                          [ 64%]
tests/unit_tests/retrievers/test_knn.py .                                [ 64%]
tests/unit_tests/retrievers/test_multi_query.py .......                  [ 65%]
tests/unit_tests/retrievers/test_remote_retriever.py .                   [ 65%]
tests/unit_tests/retrievers/test_svm.py sss                              [ 65%]
tests/unit_tests/retrievers/test_tfidf.py ssss                           [ 65%]
tests/unit_tests/retrievers/test_time_weighted_retriever.py .....        [ 66%]
tests/unit_tests/retrievers/test_web_research.py .....                   [ 66%]
tests/unit_tests/retrievers/test_you.py .                                [ 66%]
tests/unit_tests/retrievers/self_query/test_base.py ..                   [ 66%]
tests/unit_tests/retrievers/self_query/test_chroma.py ...                [ 66%]
tests/unit_tests/retrievers/self_query/test_dashvector.py ........       [ 67%]
tests/unit_tests/retrievers/self_query/test_deeplake.py ...              [ 67%]
tests/unit_tests/retrievers/self_query/test_elasticsearch.py ........... [ 68%]
...                                                                      [ 68%]
tests/unit_tests/retrievers/self_query/test_milvus.py ...                [ 68%]
tests/unit_tests/retrievers/self_query/test_myscale.py ........          [ 69%]
tests/unit_tests/retrievers/self_query/test_opensearch.py ...            [ 69%]
tests/unit_tests/retrievers/self_query/test_pinecone.py ...              [ 69%]
tests/unit_tests/retrievers/self_query/test_redis.py .......             [ 70%]
tests/unit_tests/retrievers/self_query/test_supabase.py ...              [ 70%]
tests/unit_tests/retrievers/self_query/test_timescalevector.py sss       [ 70%]
tests/unit_tests/retrievers/self_query/test_vectara.py ...               [ 70%]
tests/unit_tests/retrievers/self_query/test_weaviate.py ........         [ 71%]
tests/unit_tests/runnables/test_hub.py ...                               [ 71%]
tests/unit_tests/runnables/test_openai_functions.py .                    [ 71%]
tests/unit_tests/schema/test_messages.py ....                            [ 71%]
tests/unit_tests/schema/test_output.py ..                                [ 71%]
tests/unit_tests/schema/runnable/test_locals.py ................         [ 73%]
tests/unit_tests/schema/runnable/test_runnable.py .....F................ [ 74%]
........................................                                 [ 77%]
tests/unit_tests/schema/runnable/test_utils.py .....                     [ 77%]
tests/unit_tests/smith/evaluation/test_runner_utils.py ................. [ 78%]
..........................                                               [ 80%]
tests/unit_tests/smith/evaluation/test_string_run_evaluator.py .         [ 80%]
tests/unit_tests/storage/test_filesystem.py .....                        [ 80%]
tests/unit_tests/storage/test_in_memory.py ....                          [ 80%]
tests/unit_tests/storage/test_lc_store.py ..                             [ 81%]
tests/unit_tests/storage/test_redis.py .                                 [ 81%]
tests/unit_tests/storage/test_upstash_redis.py s                         [ 81%]
tests/unit_tests/tools/test_base.py .................................... [ 83%]
.                                                                        [ 83%]
tests/unit_tests/tools/test_exported.py .                                [ 83%]
tests/unit_tests/tools/test_json.py ....                                 [ 83%]
tests/unit_tests/tools/test_public_api.py .                              [ 83%]
tests/unit_tests/tools/test_render.py ..                                 [ 84%]
tests/unit_tests/tools/test_signatures.py .............................. [ 86%]
...................................................................      [ 90%]
tests/unit_tests/tools/test_zapier.py FFFFFFFFFFFFFFFFF                  [ 91%]
tests/unit_tests/tools/eden_ai/test_tools.py .....                       [ 91%]
tests/unit_tests/tools/file_management/test_copy.py ...                  [ 92%]
tests/unit_tests/tools/file_management/test_file_search.py ...           [ 92%]
tests/unit_tests/tools/file_management/test_list_dir.py ...              [ 92%]
tests/unit_tests/tools/file_management/test_move.py ...                  [ 92%]
tests/unit_tests/tools/file_management/test_read.py ..                   [ 92%]
tests/unit_tests/tools/file_management/test_toolkit.py ....              [ 93%]
tests/unit_tests/tools/file_management/test_utils.py .....               [ 93%]
tests/unit_tests/tools/file_management/test_write.py ...                 [ 93%]
tests/unit_tests/tools/openapi/test_api_models.py ssss                   [ 93%]
tests/unit_tests/tools/powerbi/test_powerbi.py .                         [ 93%]
tests/unit_tests/tools/python/test_python.py ...........                 [ 94%]
tests/unit_tests/tools/requests/test_tool.py ......                      [ 95%]
tests/unit_tests/tools/shell/test_shell.py .....                         [ 95%]
tests/unit_tests/utilities/test_arxiv.py s                               [ 95%]
tests/unit_tests/utilities/test_graphql.py s                             [ 95%]
tests/unit_tests/utilities/test_loading.py ......                        [ 95%]
tests/unit_tests/utils/test_html.py .........                            [ 96%]
tests/unit_tests/utils/test_iter.py ....                                 [ 96%]
tests/unit_tests/utils/test_json_schema.py .......                       [ 97%]
tests/unit_tests/utils/test_math.py .......                              [ 97%]
tests/unit_tests/utils/test_openai_functions.py ..                       [ 97%]
tests/unit_tests/vectorstores/test_faiss.py sssssssssssssssssssss        [ 99%]
tests/unit_tests/vectorstores/test_imports.py .                          [ 99%]
tests/unit_tests/vectorstores/test_sklearn.py ssssss                     [ 99%]
tests/unit_tests/vectorstores/test_utils.py .....                        [100%]

=============================== warnings summary ===============================
langchain/indexes/_sql_record_manager.py:46
  /home/langchain/libs/langchain/langchain/indexes/_sql_record_manager.py:46: MovedIn20Warning: The ``declarative_base()`` function is now available as sqlalchemy.orm.declarative_base(). (deprecated since: 2.0) (Background on SQLAlchemy 2.0 at: https://sqlalche.me/e/b8d9)
    Base = declarative_base()

tests/unit_tests/test_globals.py::test_debug_is_settable_directly
  /home/langchain/libs/langchain/langchain/__init__.py:34: UserWarning: Importing debug from langchain root module is no longer supported. Please use langchain.globals.set_debug() / langchain.globals.get_debug() instead.
    warnings.warn(

tests/unit_tests/test_globals.py::test_verbose_is_settable_directly
  /home/langchain/libs/langchain/langchain/__init__.py:34: UserWarning: Importing verbose from langchain root module is no longer supported. Please use langchain.globals.set_verbose() / langchain.globals.get_verbose() instead.
    warnings.warn(

tests/unit_tests/test_python.py::test_functionality_multiline
tests/unit_tests/tools/python/test_python.py::test_python_repl_tool_single_input
tests/unit_tests/tools/python/test_python.py::test_python_repl_print
  /home/langchain/libs/langchain/langchain/tools/python/tool.py:63: LangChainPendingDeprecationWarning: On 2023-10-27 this module will be be deprecated from langchain, and will be available from the langchain-experimental package.This code is already available in langchain-experimental.See https://github.com/langchain-ai/langchain/discussions/11680.
    warn_deprecated(

tests/unit_tests/test_python.py: 2 warnings
tests/unit_tests/tools/python/test_python.py: 9 warnings
  /home/langchain/libs/langchain/langchain/tools/python/tool.py:140: LangChainPendingDeprecationWarning: On 2023-10-27 this module will be be deprecated from langchain, and will be available from the langchain-experimental package.This code is already available in langchain-experimental.See https://github.com/langchain-ai/langchain/discussions/11680.
    warn_deprecated(

tests/unit_tests/test_sql_database_schema.py::test_table_info
  /home/langchain/libs/langchain/.venv/lib/python3.11/site-packages/duckdb_engine/__init__.py:162: DuckDBEngineWarning: duckdb-engine doesn't yet support reflection on indices
    warnings.warn(

tests/unit_tests/chains/test_llm.py::test_predict_and_parse
  /home/langchain/libs/langchain/langchain/chains/llm.py:280: UserWarning: The predict_and_parse method is deprecated, instead pass an output parser directly to LLMChain.
    warnings.warn(

tests/unit_tests/document_loaders/test_arcgis_loader.py::test_lazy_load
tests/unit_tests/document_loaders/test_arcgis_loader.py::test_initialization_with_string_layer
tests/unit_tests/document_loaders/test_arcgis_loader.py::test_layer_description_provided_by_user
tests/unit_tests/document_loaders/test_arcgis_loader.py::test_get_layer_properties_with_description
tests/unit_tests/document_loaders/test_arcgis_loader.py::test_load_method
tests/unit_tests/document_loaders/test_arcgis_loader.py::test_geometry_returned
tests/unit_tests/document_loaders/test_arcgis_loader.py::test_geometry_not_returned
  /home/langchain/libs/langchain/langchain/document_loaders/arcgis_loader.py:47: UserWarning: BeautifulSoup not found. HTML will not be parsed.
    warnings.warn("BeautifulSoup not found. HTML will not be parsed.")

tests/unit_tests/evaluation/agents/test_eval_chain.py::test_trajectory_eval_chain
tests/unit_tests/evaluation/agents/test_eval_chain.py::test_trajectory_eval_chain_no_tools
  /home/langchain/libs/langchain/langchain/evaluation/schema.py:124: UserWarning: Ignoring reference in TrajectoryEvalChain, as it is not expected.
    warn(self._skip_reference_warning)

tests/unit_tests/memory/test_combined_memory.py::test_basic_functionality
  /home/langchain/libs/langchain/langchain/memory/combined.py:37: UserWarning: When using CombinedMemory, input keys should be so the input is known.  Was not set on memory_key='foo'
    warnings.warn(

tests/unit_tests/memory/test_combined_memory.py::test_basic_functionality
  /home/langchain/libs/langchain/langchain/memory/combined.py:37: UserWarning: When using CombinedMemory, input keys should be so the input is known.  Was not set on memory_key='bar'
    warnings.warn(

tests/unit_tests/prompts/test_chat.py::test_chat_from_role_strings
  /home/langchain/libs/langchain/langchain/_api/deprecation.py:189: LangChainPendingDeprecationWarning: The function `from_role_strings` will be deprecated in a future version. Use from_messages classmethod instead.
    warn_deprecated(

tests/unit_tests/tools/shell/test_shell.py::test_shell_input_validation
  /home/langchain/libs/langchain/langchain/tools/shell/tool.py:31: UserWarning: The shell tool has no safeguards by default. Use at your own risk.
    warnings.warn(

-- Docs: https://docs.pytest.org/en/stable/how-to/capture-warnings.html
--------------------------- snapshot report summary ----------------------------
35 snapshots passed. 4 snapshots unused.

Re-run pytest with --snapshot-update to delete unused snapshots.
=========================== short test summary info ============================
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
PASSED [libs/langchain] tests/unit_tests/test_globals.py::test_debug_is_settable_directly
PASSED [libs/langchain] tests/unit_tests/test_globals.py::test_debug_is_settable_via_setter
PASSED [libs/langchain] tests/unit_tests/test_globals.py::test_verbose_is_settable_directly
PASSED [libs/langchain] tests/unit_tests/test_globals.py::test_verbose_is_settable_via_setter
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
PASSED [libs/langchain] tests/unit_tests/test_schema.py::test_serialization_of_wellknown_objects
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
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_typescript_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_java_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_kotlin_code_splitter
PASSED [libs/langchain] tests/unit_tests/test_text_splitter.py::test_csharp_code_splitter
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
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl_output_parser.py::test_final_answer_before_parsable_action
PASSED [libs/langchain] tests/unit_tests/agents/test_mrkl_output_parser.py::test_final_answer_after_parsable_action
PASSED [libs/langchain] tests/unit_tests/agents/test_openai_functions_multi.py::TestParseAIMessage::test_not_an_ai
PASSED [libs/langchain] tests/unit_tests/agents/test_openai_functions_multi.py::TestParseAIMessage::test_model_response
PASSED [libs/langchain] tests/unit_tests/agents/test_openai_functions_multi.py::TestParseAIMessage::test_func_call
PASSED [libs/langchain] tests/unit_tests/agents/test_openai_functions_multi.py::TestParseAIMessage::test_func_call_oldstyle
PASSED [libs/langchain] tests/unit_tests/agents/test_openai_functions_multi.py::TestParseAIMessage::test_func_call_invalid
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
PASSED [libs/langchain] tests/unit_tests/agents/format_scratchpad/test_log.py::test_single_agent_action_observation
PASSED [libs/langchain] tests/unit_tests/agents/format_scratchpad/test_log.py::test_multiple_agent_actions_observations
PASSED [libs/langchain] tests/unit_tests/agents/format_scratchpad/test_log.py::test_custom_prefixes
PASSED [libs/langchain] tests/unit_tests/agents/format_scratchpad/test_log.py::test_empty_intermediate_steps
PASSED [libs/langchain] tests/unit_tests/agents/format_scratchpad/test_log_to_messages.py::test_single_intermediate_step_default_response
PASSED [libs/langchain] tests/unit_tests/agents/format_scratchpad/test_log_to_messages.py::test_multiple_intermediate_steps_default_response
PASSED [libs/langchain] tests/unit_tests/agents/format_scratchpad/test_log_to_messages.py::test_custom_template_tool_response
PASSED [libs/langchain] tests/unit_tests/agents/format_scratchpad/test_log_to_messages.py::test_empty_steps
PASSED [libs/langchain] tests/unit_tests/agents/format_scratchpad/test_openai_functions.py::test_calls_convert_agent_action_to_messages
PASSED [libs/langchain] tests/unit_tests/agents/format_scratchpad/test_openai_functions.py::test_handles_empty_input_list
PASSED [libs/langchain] tests/unit_tests/agents/format_scratchpad/test_xml.py::test_single_agent_action_observation
PASSED [libs/langchain] tests/unit_tests/agents/format_scratchpad/test_xml.py::test_multiple_agent_actions_observations
PASSED [libs/langchain] tests/unit_tests/agents/format_scratchpad/test_xml.py::test_empty_list_agent_actions
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_json.py::test_tool_usage
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_json.py::test_finish
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_openai_functions.py::test_not_an_ai
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_openai_functions.py::test_model_response
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_openai_functions.py::test_func_call
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_openai_functions.py::test_func_call_oldstyle
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_openai_functions.py::test_func_call_invalid
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_react_json_single_input.py::test_action
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_react_json_single_input.py::test_finish
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_react_single_input.py::test_action
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_react_single_input.py::test_finish
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_react_single_input.py::test_action_with_finish
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_self_ask.py::test_follow_up
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_self_ask.py::test_follow_up_custom
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_self_ask.py::test_finish
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_self_ask.py::test_finish_custom
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_xml.py::test_tool_usage
PASSED [libs/langchain] tests/unit_tests/agents/output_parsers/test_xml.py::test_finish
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_callback_manager
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_callback_manager_with_async
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_callback_manager_with_async_with_running_loop
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_ignore_llm
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_ignore_chain
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_ignore_agent
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_ignore_retriever
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_async_callback_manager
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_async_callback_manager_sync_handler
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_callback_manager_inheritance
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_duplicate_callbacks
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_callback_manager_configure
PASSED [libs/langchain] tests/unit_tests/callbacks/test_callback_manager.py::test_callback_manager_configure_context_vars
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
PASSED [libs/langchain] tests/unit_tests/callbacks/test_run_collector.py::test_collect_runs
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
PASSED [libs/langchain] tests/unit_tests/chains/test_conversation_retrieval.py::test_fixed_message_response_when_no_docs_found
PASSED [libs/langchain] tests/unit_tests/chains/test_conversation_retrieval.py::test_fixed_message_response_when_docs_found
PASSED [libs/langchain] tests/unit_tests/chains/test_graph_qa.py::test_no_backticks
PASSED [libs/langchain] tests/unit_tests/chains/test_graph_qa.py::test_backticks
PASSED [libs/langchain] tests/unit_tests/chains/test_graph_qa.py::test_exclude_types
PASSED [libs/langchain] tests/unit_tests/chains/test_graph_qa.py::test_include_types
PASSED [libs/langchain] tests/unit_tests/chains/test_graph_qa.py::test_include_types2
PASSED [libs/langchain] tests/unit_tests/chains/test_graph_qa.py::test_include_types3
PASSED [libs/langchain] tests/unit_tests/chains/test_graph_qa.py::test_validating_cypher_statements
PASSED [libs/langchain] tests/unit_tests/chains/test_hyde.py::test_hyde_from_llm
PASSED [libs/langchain] tests/unit_tests/chains/test_hyde.py::test_hyde_from_llm_with_multiple_n
PASSED [libs/langchain] tests/unit_tests/chains/test_llm.py::test_serialization
PASSED [libs/langchain] tests/unit_tests/chains/test_llm.py::test_missing_inputs
PASSED [libs/langchain] tests/unit_tests/chains/test_llm.py::test_valid_call
PASSED [libs/langchain] tests/unit_tests/chains/test_llm.py::test_predict_method
PASSED [libs/langchain] tests/unit_tests/chains/test_llm.py::test_predict_and_parse
PASSED [libs/langchain] tests/unit_tests/chains/test_llm_checker.py::test_simple_question
PASSED [libs/langchain] tests/unit_tests/chains/test_llm_summarization_checker.py::test_simple_text
PASSED [libs/langchain] tests/unit_tests/chains/test_memory.py::test_simple_memory
PASSED [libs/langchain] tests/unit_tests/chains/test_memory.py::test_readonly_memory[memory0]
PASSED [libs/langchain] tests/unit_tests/chains/test_memory.py::test_readonly_memory[memory1]
PASSED [libs/langchain] tests/unit_tests/chains/test_memory.py::test_readonly_memory[memory2]
PASSED [libs/langchain] tests/unit_tests/chains/test_natbot.py::test_proper_inputs
PASSED [libs/langchain] tests/unit_tests/chains/test_natbot.py::test_variable_key_naming
PASSED [libs/langchain] tests/unit_tests/chains/test_neptune_cypher_qa.py::test_import
PASSED [libs/langchain] tests/unit_tests/chains/test_qa_with_sources.py::test_spliting_answer_into_answer_and_sources[This Agreement is governed by English law.\nSOURCES: 28-pl-This Agreement is governed by English law.\n-28-pl]
PASSED [libs/langchain] tests/unit_tests/chains/test_qa_with_sources.py::test_spliting_answer_into_answer_and_sources[This Agreement is governed by English law.\nSources: 28-pl-This Agreement is governed by English law.\n-28-pl]
PASSED [libs/langchain] tests/unit_tests/chains/test_qa_with_sources.py::test_spliting_answer_into_answer_and_sources[This Agreement is governed by English law.\nsource: 28-pl-This Agreement is governed by English law.\n-28-pl]
PASSED [libs/langchain] tests/unit_tests/chains/test_qa_with_sources.py::test_spliting_answer_into_answer_and_sources[This Agreement is governed by English law.\nSource: 28-pl-This Agreement is governed by English law.\n-28-pl]
PASSED [libs/langchain] tests/unit_tests/chains/test_qa_with_sources.py::test_spliting_answer_into_answer_and_sources[According to the sources the agreement is governed by English law.\nSource: 28-pl-According to the sources the agreement is governed by English law.\n-28-pl]
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
PASSED [libs/langchain] tests/unit_tests/chat_loaders/test_slack.py::test_slack_chat_loader
PASSED [libs/langchain] tests/unit_tests/chat_loaders/test_telegram.py::test_telegram_chat_loader[telegram_chat_json]
PASSED [libs/langchain] tests/unit_tests/chat_loaders/test_telegram.py::test_telegram_chat_loader[telegram_chat_json.zip]
PASSED [libs/langchain] tests/unit_tests/chat_loaders/test_telegram.py::test_telegram_chat_loader[telegram_chat_json/result.json]
PASSED [libs/langchain] tests/unit_tests/chat_loaders/test_whatsapp.py::test_whatsapp_chat_loader
PASSED [libs/langchain] tests/unit_tests/chat_models/test_anthropic.py::test_formatting[messages0-\n\nHuman: Hello\n\nAssistant:]
PASSED [libs/langchain] tests/unit_tests/chat_models/test_anthropic.py::test_formatting[messages1-\n\nHuman: Hello\n\nAssistant: Answer:]
PASSED [libs/langchain] tests/unit_tests/chat_models/test_anthropic.py::test_formatting[messages2-You're an assistant\n\nHuman: Hello\n\nAssistant: Answer:]
PASSED [libs/langchain] tests/unit_tests/chat_models/test_baichuan.py::test__convert_message_to_dict_human
PASSED [libs/langchain] tests/unit_tests/chat_models/test_baichuan.py::test__convert_message_to_dict_ai
PASSED [libs/langchain] tests/unit_tests/chat_models/test_baichuan.py::test__convert_message_to_dict_system
PASSED [libs/langchain] tests/unit_tests/chat_models/test_baichuan.py::test__convert_message_to_dict_function
PASSED [libs/langchain] tests/unit_tests/chat_models/test_baichuan.py::test__convert_dict_to_message_human
PASSED [libs/langchain] tests/unit_tests/chat_models/test_baichuan.py::test__convert_dict_to_message_ai
PASSED [libs/langchain] tests/unit_tests/chat_models/test_baichuan.py::test__convert_dict_to_message_other_role
PASSED [libs/langchain] tests/unit_tests/chat_models/test_baichuan.py::test__convert_delta_to_message_assistant
PASSED [libs/langchain] tests/unit_tests/chat_models/test_baichuan.py::test__convert_delta_to_message_human
PASSED [libs/langchain] tests/unit_tests/chat_models/test_baichuan.py::test__signature
PASSED [libs/langchain] tests/unit_tests/chat_models/test_ernie.py::test__convert_dict_to_message_human
PASSED [libs/langchain] tests/unit_tests/chat_models/test_ernie.py::test__convert_dict_to_message_ai
PASSED [libs/langchain] tests/unit_tests/chat_models/test_ernie.py::test__convert_dict_to_message_system
PASSED [libs/langchain] tests/unit_tests/chat_models/test_ernie.py::test__convert_dict_to_message_function
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
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_arcgis_loader.py::test_initialization_with_string_layer
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_arcgis_loader.py::test_layer_description_provided_by_user
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_arcgis_loader.py::test_initialization_without_arcgis
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_arcgis_loader.py::test_get_layer_properties_with_description
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_arcgis_loader.py::test_load_method
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_arcgis_loader.py::test_geometry_returned
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_arcgis_loader.py::test_geometry_not_returned
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
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_github.py::test_initialization_ghe
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_github.py::test_invalid_initialization
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_github.py::test_load
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_github.py::test_parse_issue
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_github.py::test_url
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_obsidian.py::test_page_content_loaded
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_obsidian.py::test_disable_collect_metadata
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_obsidian.py::test_metadata_without_frontmatter
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_obsidian.py::test_metadata_with_frontmatter
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_obsidian.py::test_metadata_with_bad_frontmatter
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_obsidian.py::test_metadata_with_tags_and_frontmatter
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_obsidian.py::test_tags_in_page_content
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_obsidian.py::test_boolean_metadata
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_obsidian.py::test_float_metadata
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_obsidian.py::test_int_metadata
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_obsidian.py::test_string_metadata
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_obsidian.py::test_array_metadata
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_obsidian.py::test_dict_metadata
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_rspace_loader.py::TestRSpaceLoader::test_missing_apikey_raises_validation_error
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_rspace_loader.py::TestRSpaceLoader::test_missing_url_raises_validation_error
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_rspace_loader.py::TestRSpaceLoader::test_valid_arguments
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_telegram.py::test_telegram_chat_file_loader
PASSED [libs/langchain] tests/unit_tests/document_loaders/test_web_base.py::TestWebBaseLoader::test_web_path_parameter
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
PASSED [libs/langchain] tests/unit_tests/embeddings/test_gradient_ai.py::test_gradient_llm_sync
PASSED [libs/langchain] tests/unit_tests/embeddings/test_gradient_ai.py::test_gradient_llm_large_batch_size
PASSED [libs/langchain] tests/unit_tests/embeddings/test_gradient_ai.py::test_gradient_wrong_setup
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types0]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types1]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types2]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types3]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types4]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types5]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types6]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types7]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types8]
PASSED [libs/langchain] tests/unit_tests/evaluation/test_loading.py::test_eval_chain_requires_references[evaluator_types9]
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
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_CriteriaResultOutputParser_parse[Y-want0]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_CriteriaResultOutputParser_parse[Here is my step-by-step reasoning for the given criteria:\nThe criterion is: "Do you like cake?" I like cake.\nY-want1]
PASSED [libs/langchain] tests/unit_tests/evaluation/criteria/test_eval_chain.py::test_CriteriaResultOutputParser_parse[ NThe submission N is correct, accurate, and factual. It accurately identifies the specific effects of knowledge and interest on these factors. Therefore, the submission Y meets the criteria. Y-want2]
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
PASSED [libs/langchain] tests/unit_tests/evaluation/exact_match/test_base.py::test_default_exact_matching
PASSED [libs/langchain] tests/unit_tests/evaluation/exact_match/test_base.py::test_exact_matching_with_ignore_case
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
PASSED [libs/langchain] tests/unit_tests/evaluation/qa/test_eval_chain.py::test_qa_output_parser[ GRADE: CORRECT\n\nQUESTION: according to the passage, what is the main reason that the author wrote this passage?\nSTUDENT ANSWER: to explain the importance of washing your hands\nTRUE ANSWER: to explain the importance of washing your hands\nGRADE:-expected0]
PASSED [libs/langchain] tests/unit_tests/evaluation/qa/test_eval_chain.py::test_qa_output_parser[ Here is my step-by-step reasoning to grade the student's answer:\n\n1. The question asks who founded the Roanoke settlement.\n\n2. The context states that the grade incorrect answer is Walter Raleigh. \n\n3. The student's answer is "Sir Walter Raleigh".\n\n4. The student's answer matches the context, which states the answer is Walter Raleigh. \n\n5. The addition of "Sir" in the student's answer does not contradict the context. It provides extra detail about Walter Raleigh's title, but the core answer of Walter Raleigh is still correct.\n\n6. Therefore, the student's answer contains the same factual information as the true answer, so it should be graded as correct.\n\nGRADE: CORRECT-expected1]
PASSED [libs/langchain] tests/unit_tests/evaluation/qa/test_eval_chain.py::test_qa_output_parser[  CORRECT\n\nQUESTION: who was the first president of the united states?\nSTUDENT ANSWER: George Washington \nTRUE ANSWER: George Washington was the first president of the United States.\nGRADE:-expected2]
PASSED [libs/langchain] tests/unit_tests/evaluation/qa/test_eval_chain.py::test_qa_output_parser[The student's answer is "Regent's Park," which matches the correct answer given in the context. Therefore, the student's answer is CORRECT.-expected3]
PASSED [libs/langchain] tests/unit_tests/evaluation/regex_match/test_base.py::test_default_regex_matching
PASSED [libs/langchain] tests/unit_tests/evaluation/regex_match/test_base.py::test_regex_matching_with_ignore_case
PASSED [libs/langchain] tests/unit_tests/evaluation/scoring/test_eval_chain.py::test_PairwiseStringResultOutputParser_parse
PASSED [libs/langchain] tests/unit_tests/evaluation/scoring/test_eval_chain.py::test_pairwise_string_comparison_chain
PASSED [libs/langchain] tests/unit_tests/evaluation/scoring/test_eval_chain.py::test_labeled_pairwise_string_comparison_chain_missing_ref
PASSED [libs/langchain] tests/unit_tests/graphs/test_neptune_graph.py::test_import
PASSED [libs/langchain] tests/unit_tests/indexes/test_api.py::test_all
PASSED [libs/langchain] tests/unit_tests/indexes/test_hashed_document.py::test_hashed_document_hashing
PASSED [libs/langchain] tests/unit_tests/indexes/test_hashed_document.py::test_hashing_with_missing_content
PASSED [libs/langchain] tests/unit_tests/indexes/test_hashed_document.py::test_uid_auto_assigned_to_hash
PASSED [libs/langchain] tests/unit_tests/indexes/test_hashed_document.py::test_to_document
PASSED [libs/langchain] tests/unit_tests/indexes/test_hashed_document.py::test_from_document
PASSED [libs/langchain] tests/unit_tests/indexes/test_indexing.py::test_indexing_same_content
PASSED [libs/langchain] tests/unit_tests/indexes/test_indexing.py::test_index_simple_delete_full
PASSED [libs/langchain] tests/unit_tests/indexes/test_indexing.py::test_incremental_fails_with_bad_source_ids
PASSED [libs/langchain] tests/unit_tests/indexes/test_indexing.py::test_no_delete
PASSED [libs/langchain] tests/unit_tests/indexes/test_indexing.py::test_incremental_delete
PASSED [libs/langchain] tests/unit_tests/indexes/test_indexing.py::test_indexing_with_no_docs
PASSED [libs/langchain] tests/unit_tests/indexes/test_indexing.py::test_deduplication
PASSED [libs/langchain] tests/unit_tests/indexes/test_indexing.py::test_cleanup_with_different_batchsize
PASSED [libs/langchain] tests/unit_tests/indexes/test_indexing.py::test_deduplication_v2
PASSED [libs/langchain] tests/unit_tests/indexes/test_indexing.py::test_abatch
PASSED [libs/langchain] tests/unit_tests/indexes/test_indexing.py::test_compatible_vectorstore_documentation
PASSED [libs/langchain] tests/unit_tests/indexes/test_sql_record_manager.py::test_update
PASSED [libs/langchain] tests/unit_tests/indexes/test_sql_record_manager.py::test_update_timestamp
PASSED [libs/langchain] tests/unit_tests/indexes/test_sql_record_manager.py::test_update_with_group_ids
PASSED [libs/langchain] tests/unit_tests/indexes/test_sql_record_manager.py::test_exists
PASSED [libs/langchain] tests/unit_tests/indexes/test_sql_record_manager.py::test_list_keys
PASSED [libs/langchain] tests/unit_tests/indexes/test_sql_record_manager.py::test_namespace_is_used
PASSED [libs/langchain] tests/unit_tests/indexes/test_sql_record_manager.py::test_delete_keys
PASSED [libs/langchain] tests/unit_tests/llms/test_base.py::test_caching
PASSED [libs/langchain] tests/unit_tests/llms/test_base.py::test_custom_caching
PASSED [libs/langchain] tests/unit_tests/llms/test_bedrock.py::test__human_assistant_format
PASSED [libs/langchain] tests/unit_tests/llms/test_callbacks.py::test_llm_with_callbacks
PASSED [libs/langchain] tests/unit_tests/llms/test_callbacks.py::test_chat_model_with_v1_callbacks
PASSED [libs/langchain] tests/unit_tests/llms/test_callbacks.py::test_chat_model_with_v2_callbacks
PASSED [libs/langchain] tests/unit_tests/llms/test_gradient_ai.py::test_gradient_llm_sync[setup0]
PASSED [libs/langchain] tests/unit_tests/llms/test_gradient_ai.py::test_gradient_llm_sync[setup1]
PASSED [libs/langchain] tests/unit_tests/llms/test_gradient_ai.py::test_gradient_llm_sync_batch[setup0]
PASSED [libs/langchain] tests/unit_tests/llms/test_imports.py::test_all_imports
PASSED [libs/langchain] tests/unit_tests/llms/test_loading.py::test_saving_loading_round_trip
PASSED [libs/langchain] tests/unit_tests/llms/test_utils.py::test_enforce_stop_tokens
PASSED [libs/langchain] tests/unit_tests/llms/test_utils.py::test_enforce_stop_tokens_none
PASSED [libs/langchain] tests/unit_tests/load/test_dump.py::test_person
PASSED [libs/langchain] tests/unit_tests/memory/test_combined_memory.py::test_basic_functionality
PASSED [libs/langchain] tests/unit_tests/memory/test_combined_memory.py::test_repeated_memory_var
PASSED [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_file.py::test_add_messages
PASSED [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_file.py::test_clear_messages
PASSED [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_file.py::test_multiple_sessions
PASSED [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_sql.py::test_add_messages
PASSED [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_sql.py::test_multiple_sessions
PASSED [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_sql.py::test_clear_messages
PASSED [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_sql.py::test_model_no_session_id_field_error
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
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_nested_json_with_escaped_quotes[```json\n{\n    "action": "Final Answer",\n    "action_input": "{"foo": "bar", "bar": "foo"}"\n}\n```0]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_nested_json_with_escaped_quotes[```json\n{\n    "action": "Final Answer",\n    "action_input": "{"foo": "bar", "bar": "foo"}"\n}\n```1]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_nested_json_with_escaped_quotes[```json\n{\n    "action": "Final Answer",\n    "action_input": "{\\"foo\\": \\"bar\\", \\"bar\\": \\"foo\\"}"\n}\n```]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_json_with_python_dict
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_partial_json[json_strings0]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_partial_json[json_strings1]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_partial_json[json_strings2]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_partial_json[json_strings3]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_parse_partial_json[json_strings4]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_partial_text_json_output_parser
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_partial_functions_json_output_parser
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_partial_text_json_output_parser_diff
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_partial_functions_json_output_parser_diff
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_partial_text_json_output_parser_async
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_partial_functions_json_output_parser_async
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_partial_text_json_output_parser_diff_async
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_json.py::test_partial_functions_json_output_parser_diff_async
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_list_parser.py::test_single_item
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_list_parser.py::test_multiple_items
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_list_parser.py::test_numbered_list
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_list_parser.py::test_markdown_list
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
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_xml_parser.py::test_xml_output_parser[<?xml version="1.0" encoding="UTF-8"?>\n<foo>\n    <bar>\n        <baz></baz>\n        <baz>slim.shady</baz>\n    </bar>\n    <baz>tag</baz>\n</foo>]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_xml_parser.py::test_xml_output_parser[\n<foo>\n    <bar>\n        <baz></baz>\n        <baz>slim.shady</baz>\n    </bar>\n    <baz>tag</baz>\n</foo>]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_xml_parser.py::test_xml_output_parser_fail[foo></foo>]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_xml_parser.py::test_xml_output_parser_fail[<foo></foo]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_xml_parser.py::test_xml_output_parser_fail[foo></foo]
PASSED [libs/langchain] tests/unit_tests/output_parsers/test_xml_parser.py::test_xml_output_parser_fail[foofoo]
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
PASSED [libs/langchain] tests/unit_tests/prompts/test_few_shot_with_templates.py::test_prompttemplate_validation
PASSED [libs/langchain] tests/unit_tests/prompts/test_length_based_example_selector.py::test_selector_valid
PASSED [libs/langchain] tests/unit_tests/prompts/test_length_based_example_selector.py::test_selector_add_example
PASSED [libs/langchain] tests/unit_tests/prompts/test_length_based_example_selector.py::test_selector_trims_one_example
PASSED [libs/langchain] tests/unit_tests/prompts/test_length_based_example_selector.py::test_selector_trims_all_examples
PASSED [libs/langchain] tests/unit_tests/prompts/test_loading.py::test_loading_from_YAML
PASSED [libs/langchain] tests/unit_tests/prompts/test_loading.py::test_loading_from_JSON
PASSED [libs/langchain] tests/unit_tests/prompts/test_loading.py::test_loading_jinja_from_JSON
PASSED [libs/langchain] tests/unit_tests/prompts/test_loading.py::test_loading_jinja_from_YAML
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
PASSED [libs/langchain] tests/unit_tests/retrievers/test_multi_query.py::test__unique_documents[documents0-expected0]
PASSED [libs/langchain] tests/unit_tests/retrievers/test_multi_query.py::test__unique_documents[documents1-expected1]
PASSED [libs/langchain] tests/unit_tests/retrievers/test_multi_query.py::test__unique_documents[documents2-expected2]
PASSED [libs/langchain] tests/unit_tests/retrievers/test_multi_query.py::test__unique_documents[documents3-expected3]
PASSED [libs/langchain] tests/unit_tests/retrievers/test_multi_query.py::test__unique_documents[documents4-expected4]
PASSED [libs/langchain] tests/unit_tests/retrievers/test_multi_query.py::test__unique_documents[documents5-expected5]
PASSED [libs/langchain] tests/unit_tests/retrievers/test_multi_query.py::test__unique_documents[documents6-expected6]
PASSED [libs/langchain] tests/unit_tests/retrievers/test_remote_retriever.py::test_RemoteLangChainRetriever_get_relevant_documents
PASSED [libs/langchain] tests/unit_tests/retrievers/test_time_weighted_retriever.py::test__get_hours_passed
PASSED [libs/langchain] tests/unit_tests/retrievers/test_time_weighted_retriever.py::test_get_combined_score
PASSED [libs/langchain] tests/unit_tests/retrievers/test_time_weighted_retriever.py::test_get_salient_docs
PASSED [libs/langchain] tests/unit_tests/retrievers/test_time_weighted_retriever.py::test_get_relevant_documents
PASSED [libs/langchain] tests/unit_tests/retrievers/test_time_weighted_retriever.py::test_add_documents
PASSED [libs/langchain] tests/unit_tests/retrievers/test_web_research.py::test_list_output_parser[1. Line one.\n-expected0]
PASSED [libs/langchain] tests/unit_tests/retrievers/test_web_research.py::test_list_output_parser[1. Line one.-expected1]
PASSED [libs/langchain] tests/unit_tests/retrievers/test_web_research.py::test_list_output_parser[1. Line one.\n2. Line two.\n-expected2]
PASSED [libs/langchain] tests/unit_tests/retrievers/test_web_research.py::test_list_output_parser[1. Line one.\n2. Line two.-expected3]
PASSED [libs/langchain] tests/unit_tests/retrievers/test_web_research.py::test_list_output_parser[1. Line one.\n2. Line two.\n3. Line three.-expected4]
PASSED [libs/langchain] tests/unit_tests/retrievers/test_you.py::TestYouRetriever::test_get_relevant_documents
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_base.py::test__get_relevant_documents
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_base.py::test__aget_relevant_documents
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_chroma.py::test_visit_comparison
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_chroma.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_chroma.py::test_visit_structured_query
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_dashvector.py::test_visit_comparison[triplet0]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_dashvector.py::test_visit_comparison[triplet1]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_dashvector.py::test_visit_comparison[triplet2]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_dashvector.py::test_visit_comparison[triplet3]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_dashvector.py::test_visit_comparison[triplet4]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_dashvector.py::test_visit_comparison[triplet5]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_dashvector.py::test_visit_operation[triplet0]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_dashvector.py::test_visit_operation[triplet1]
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
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_milvus.py::test_visit_comparison
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_milvus.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_milvus.py::test_visit_structured_query
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_comparison[triplet0]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_comparison[triplet1]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_comparison[triplet2]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_comparison[triplet3]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_comparison[triplet4]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_comparison[triplet5]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_myscale.py::test_visit_structured_query
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_opensearch.py::test_visit_comparison
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_opensearch.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_opensearch.py::test_visit_structured_query
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_pinecone.py::test_visit_comparison
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_pinecone.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_pinecone.py::test_visit_structured_query
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_redis.py::test_visit_comparison[comp0-expected0]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_redis.py::test_visit_comparison[comp1-expected1]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_redis.py::test_visit_comparison[comp2-expected2]
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_redis.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_redis.py::test_visit_structured_query_no_filter
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_redis.py::test_visit_structured_query_comparison
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_redis.py::test_visit_structured_query_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_supabase.py::test_visit_comparison
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_supabase.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_supabase.py::test_visit_structured_query
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_vectara.py::test_visit_comparison
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_vectara.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_vectara.py::test_visit_structured_query
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_weaviate.py::test_visit_comparison
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_weaviate.py::test_visit_comparison_integer
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_weaviate.py::test_visit_comparison_number
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_weaviate.py::test_visit_comparison_boolean
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_weaviate.py::test_visit_comparison_datetime
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_weaviate.py::test_visit_comparison_date
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_weaviate.py::test_visit_operation
PASSED [libs/langchain] tests/unit_tests/retrievers/self_query/test_weaviate.py::test_visit_structured_query
PASSED [libs/langchain] tests/unit_tests/runnables/test_hub.py::test_hub_runnable
PASSED [libs/langchain] tests/unit_tests/runnables/test_hub.py::test_hub_runnable_configurable_alternative
PASSED [libs/langchain] tests/unit_tests/runnables/test_hub.py::test_hub_runnable_configurable_fields
PASSED [libs/langchain] tests/unit_tests/runnables/test_openai_functions.py::test_openai_functions_router
PASSED [libs/langchain] tests/unit_tests/schema/test_messages.py::test_message_chunks
PASSED [libs/langchain] tests/unit_tests/schema/test_messages.py::test_chat_message_chunks
PASSED [libs/langchain] tests/unit_tests/schema/test_messages.py::test_function_message_chunks
PASSED [libs/langchain] tests/unit_tests/schema/test_messages.py::test_ani_message_chunks
PASSED [libs/langchain] tests/unit_tests/schema/test_output.py::test_generation_chunk
PASSED [libs/langchain] tests/unit_tests/schema/test_output.py::test_chat_generation_chunk
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_put_get[<lambda>-foo-foo0]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_put_get[<lambda>-input1-output1]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_put_get[<lambda>-foo-foo1]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_put_get_async[<lambda>-foo-foo]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_put_get_async[<lambda>-input1-output1]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_incorrect_usage[runnable0-ValueError]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_incorrect_usage[runnable1-ValueError]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_incorrect_usage[runnable2-KeyError]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_get_in_map
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_put_in_map
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_put_get_sequence[<lambda>-hello-output0-runnable0]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_put_get_sequence[<lambda>-hello-output0-runnable1]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_put_get_sequence[<lambda>-input1-output1-runnable0]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_put_get_sequence[<lambda>-input1-output1-runnable1]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_put_get_sequence[<lambda>-hello-output2-runnable0]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_locals.py::test_put_get_sequence[<lambda>-hello-output2-runnable1]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_schemas
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_lambda_schemas
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_schema_complex_seq
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_schema_chains
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_configurable_fields
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_configurable_fields_example
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_passthrough_tap_async
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_with_config
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_default_method_implementations
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_prompt
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_prompt_template_params
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_prompt_with_chat_model
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_prompt_with_llm
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_stream_log_retriever
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_prompt_with_llm_and_async_lambda
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_prompt_with_chat_model_and_parser
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_combining_sequences
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_seq_dict_prompt_llm
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_seq_prompt_dict
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_router_runnable
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_higher_order_lambda_runnable
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_seq_prompt_map
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_map_stream
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_map_stream_iterator_input
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_map_astream
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_map_astream_iterator_input
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_with_config_with_config
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_metadata_is_merged
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_tags_are_appended
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_bind_bind
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_deep_stream
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_deep_stream_assign
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_deep_astream
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_deep_astream_assign
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_sequence_transform
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_sequence_atransform
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_llm_with_fallbacks[llm_with_fallbacks]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_llm_with_fallbacks[llm_with_multi_fallbacks]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_llm_with_fallbacks[llm_chain_with_fallbacks]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_each_simple
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_each
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_recursive_lambda
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_retrying
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_async_retrying
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_seq_batch_return_exceptions
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_seq_abatch_return_exceptions
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_branch_init
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_branch_init_coercion[branches0]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_branch_init_coercion[branches1]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_branch_init_coercion[branches2]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_branch_invoke_call_counts
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_branch_invoke
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_branch_batch
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_branch_ainvoke
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_branch_invoke_callbacks
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_branch_ainvoke_callbacks
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_branch_abatch
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_representation_of_runnables
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_tool_from_runnable
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_gen
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_runnable_gen_transform
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_utils.py::test_get_lambda_source[<lambda>-lambda x: x * 2]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_utils.py::test_get_lambda_source[<lambda>-lambda a, b: a + b]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_utils.py::test_get_lambda_source[<lambda>-lambda x: x if x > 0 else 0]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_utils.py::test_indent_lines_after_first[line 1\nline 2\nline 3-1-line 1\n line 2\n line 3]
PASSED [libs/langchain] tests/unit_tests/schema/runnable/test_utils.py::test_indent_lines_after_first[line 1\nline 2\nline 3-ax-line 1\n  line 2\n  line 3]
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
PASSED [libs/langchain] tests/unit_tests/storage/test_lc_store.py::test_create_lc_store
PASSED [libs/langchain] tests/unit_tests/storage/test_lc_store.py::test_create_kv_store
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
PASSED [libs/langchain] tests/unit_tests/tools/test_render.py::test_render_text_description
PASSED [libs/langchain] tests/unit_tests/tools/test_render.py::test_render_text_description_and_args
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[Tool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[NLATool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[StructuredTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[NucliaUnderstandingAPI]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[PythonREPLTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[PythonAstREPLTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[InvalidTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ExceptionTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AINBaseTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AINAppOps]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AINOwnerOps]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AINRuleOps]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AINTransfer]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AINValueOps]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AmadeusClosestAirport]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AmadeusFlightSearch]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AzureCogsFormRecognizerTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AzureCogsImageAnalysisTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AzureCogsSpeech2TextTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AzureCogsText2SpeechTool]
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
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[JiraAction]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[JsonListKeysTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[JsonGetValueTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[MultionCreateSession]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[MultionUpdateSession]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[AIPluginTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[O365CreateDraftMessage]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[O365SearchEvents]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[O365SearchEmails]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[O365SendEvent]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[O365SendMessage]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[RequestsGetTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[RequestsPostTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[RequestsPatchTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[RequestsPutTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[RequestsDeleteTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ClickTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[CurrentWebPageTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ExtractHyperlinksTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ExtractTextTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GetElementsTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[NavigateTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[NavigateBackTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[QueryPowerBITool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[InfoPowerBITool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ListPowerBITool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[QuerySparkSQLTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[InfoSparkSQLTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ListSparkSQLTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[QueryCheckerTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[QuerySQLDataBaseTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[InfoSQLDatabaseTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ListSQLDatabaseTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[QuerySQLCheckerTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[VectorStoreQATool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[VectorStoreQAWithSourcesTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ZapierNLARunAction]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ZapierNLAListActions]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ArxivQueryRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GoldenQueryRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[PubmedQueryRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[BingSearchRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[BingSearchResults]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[DuckDuckGoSearchRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[DuckDuckGoSearchResults]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GoogleSearchRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GoogleSearchResults]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[MetaphorSearchResults]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GoogleSerperRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[GoogleSerperResults]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[SearchAPIRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[SearchAPIResults]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[BaseGraphQLTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[HumanInputRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ElevenLabsText2SpeechTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[SceneXplainTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[SearxSearchRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[SearxSearchResults]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[ShellTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[SleepTool]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[WikipediaQueryRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[WolframAlphaQueryRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[OpenWeatherMapQueryRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[DataForSeoAPISearchRun]
PASSED [libs/langchain] tests/unit_tests/tools/test_signatures.py::test_all_subclasses_accept_run_manager[DataForSeoAPISearchResults]
PASSED [libs/langchain] tests/unit_tests/tools/eden_ai/test_tools.py::test_provider_not_available
PASSED [libs/langchain] tests/unit_tests/tools/eden_ai/test_tools.py::test_unexpected_response
PASSED [libs/langchain] tests/unit_tests/tools/eden_ai/test_tools.py::test_incomplete_response
PASSED [libs/langchain] tests/unit_tests/tools/eden_ai/test_tools.py::test_invalid_payload
PASSED [libs/langchain] tests/unit_tests/tools/eden_ai/test_tools.py::test_parse_response_format
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
PASSED [libs/langchain] tests/unit_tests/utils/test_html.py::test_find_all_links_none
PASSED [libs/langchain] tests/unit_tests/utils/test_html.py::test_find_all_links_single
PASSED [libs/langchain] tests/unit_tests/utils/test_html.py::test_find_all_links_multiple
PASSED [libs/langchain] tests/unit_tests/utils/test_html.py::test_find_all_links_ignore_suffix
PASSED [libs/langchain] tests/unit_tests/utils/test_html.py::test_find_all_links_ignore_prefix
PASSED [libs/langchain] tests/unit_tests/utils/test_html.py::test_find_all_links_drop_fragment
PASSED [libs/langchain] tests/unit_tests/utils/test_html.py::test_extract_sub_links
PASSED [libs/langchain] tests/unit_tests/utils/test_html.py::test_extract_sub_links_base
PASSED [libs/langchain] tests/unit_tests/utils/test_html.py::test_extract_sub_links_exclude
PASSED [libs/langchain] tests/unit_tests/utils/test_iter.py::test_batch_iterate[2-input_iterable0-expected_output0]
PASSED [libs/langchain] tests/unit_tests/utils/test_iter.py::test_batch_iterate[3-input_iterable1-expected_output1]
PASSED [libs/langchain] tests/unit_tests/utils/test_iter.py::test_batch_iterate[1-input_iterable2-expected_output2]
PASSED [libs/langchain] tests/unit_tests/utils/test_iter.py::test_batch_iterate[4-input_iterable3-expected_output3]
PASSED [libs/langchain] tests/unit_tests/utils/test_json_schema.py::test_dereference_refs_no_refs
PASSED [libs/langchain] tests/unit_tests/utils/test_json_schema.py::test_dereference_refs_one_ref
PASSED [libs/langchain] tests/unit_tests/utils/test_json_schema.py::test_dereference_refs_multiple_refs
PASSED [libs/langchain] tests/unit_tests/utils/test_json_schema.py::test_dereference_refs_nested_refs_skip
PASSED [libs/langchain] tests/unit_tests/utils/test_json_schema.py::test_dereference_refs_nested_refs_no_skip
PASSED [libs/langchain] tests/unit_tests/utils/test_json_schema.py::test_dereference_refs_missing_ref
PASSED [libs/langchain] tests/unit_tests/utils/test_json_schema.py::test_dereference_refs_remote_ref
PASSED [libs/langchain] tests/unit_tests/utils/test_math.py::test_cosine_similarity_zero
PASSED [libs/langchain] tests/unit_tests/utils/test_math.py::test_cosine_similarity_identity
PASSED [libs/langchain] tests/unit_tests/utils/test_math.py::test_cosine_similarity_empty
PASSED [libs/langchain] tests/unit_tests/utils/test_math.py::test_cosine_similarity
PASSED [libs/langchain] tests/unit_tests/utils/test_math.py::test_cosine_similarity_top_k
PASSED [libs/langchain] tests/unit_tests/utils/test_math.py::test_cosine_similarity_score_threshold
PASSED [libs/langchain] tests/unit_tests/utils/test_math.py::test_cosine_similarity_top_k_and_score_threshold
PASSED [libs/langchain] tests/unit_tests/utils/test_openai_functions.py::test_convert_pydantic_to_openai_function
PASSED [libs/langchain] tests/unit_tests/utils/test_openai_functions.py::test_convert_pydantic_to_openai_function_nested
PASSED [libs/langchain] tests/unit_tests/vectorstores/test_imports.py::test_all_imports
PASSED [libs/langchain] tests/unit_tests/vectorstores/test_utils.py::test_maximal_marginal_relevance_lambda_zero
PASSED [libs/langchain] tests/unit_tests/vectorstores/test_utils.py::test_maximal_marginal_relevance_lambda_one
PASSED [libs/langchain] tests/unit_tests/vectorstores/test_utils.py::test_maximal_marginal_relevance
PASSED [libs/langchain] tests/unit_tests/vectorstores/test_utils.py::test_maximal_marginal_relevance_query_dim
PASSED [libs/langchain] tests/unit_tests/vectorstores/test_utils.py::test_filter_list_metadata
SKIPPED [1] [libs/langchain] tests/unit_tests/chains/test_llm_math.py:23: Requires pkg: `numexpr`
SKIPPED [1] [libs/langchain] tests/unit_tests/chains/test_llm_math.py:31: Requires pkg: `numexpr`
SKIPPED [1] [libs/langchain] tests/unit_tests/chains/test_llm_math.py:39: Requires pkg: `numexpr`
SKIPPED [3] [libs/langchain] tests/unit_tests/chat_loaders/test_telegram.py:87: requires bs4 but marking it as such doesn't seem to work
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_anthropic.py:14: Requires pkg: `anthropic`
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_anthropic.py:20: Requires pkg: `anthropic`
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_anthropic.py:26: Requires pkg: `anthropic`
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_anthropic.py:32: Requires pkg: `anthropic`
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_anthropic.py:38: Requires pkg: `anthropic`
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_anthropic.py:45: Requires pkg: `anthropic`
SKIPPED [4] [libs/langchain] tests/unit_tests/chat_models/test_azureopenai.py:11: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:14: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:44: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:56: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:68: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:80: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:93: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:100: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_google_palm.py:107: could not import 'google.generativeai': No module named 'google.generativeai'
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_openai.py:18: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_openai.py:82: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/chat_models/test_openai.py:104: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_assemblyai.py:8: Requires pkg: `assemblyai`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_assemblyai.py:17: Requires pkg: `assemblyai`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_assemblyai.py:35: Requires pkg: `assemblyai`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_bibtex.py:10: Requires pkg: `fitz`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_bibtex.py:28: Requires pkg: `fitz`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_bibtex.py:36: Requires pkg: `fitz`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_bibtex.py:54: Requires pkg: `fitz`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_bshtml.py:12: Requires pkg: `bs4`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_bshtml.py:29: default encoding is utf8
SKIPPED [7] [libs/langchain] tests/unit_tests/document_loaders/test_confluence.py: Requires pkg: `atlassian`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_detect_encoding.py:9: Requires pkg: `chardet`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_detect_encoding.py:29: Requires pkg: `chardet`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_detect_encoding.py:66: slow test
SKIPPED [11] [libs/langchain] tests/unit_tests/document_loaders/test_evernote_loader.py: Requires pkg: `lxml`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_generic_loader.py:91: Requires pkg: `tqdm`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_git.py:29: Requires pkg: `git`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_git.py:47: Requires pkg: `git`
SKIPPED [7] [libs/langchain] tests/unit_tests/document_loaders/test_json_loader.py: Requires pkg: `jq`
SKIPPED [2] [libs/langchain] tests/unit_tests/document_loaders/test_json_loader.py:172: Requires pkg: `jq`
SKIPPED [2] [libs/langchain] tests/unit_tests/document_loaders/test_json_loader.py:225: Requires pkg: `jq`
SKIPPED [2] [libs/langchain] tests/unit_tests/document_loaders/test_json_loader.py:275: Requires pkg: `jq`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_mediawikidump.py:10: Requires pkg: `mwparserfromhell`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_mediawikidump.py:17: Requires pkg: `mwparserfromhell`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_mediawikidump.py:27: Requires pkg: `mwparserfromhell`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_mediawikidump.py:38: Requires pkg: `mwparserfromhell`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_mhtml.py:11: Requires pkg: `bs4`
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/test_mongodb.py:32: Requires pkg: `motor`
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
SKIPPED [1] [libs/langchain] tests/unit_tests/document_loaders/parsers/test_pdf_parsers.py:82: Requires pkg: `rapidocr_onnxruntime`
SKIPPED [2] [libs/langchain] tests/unit_tests/document_loaders/parsers/language/test_javascript.py: Requires pkg: `esprima`
SKIPPED [1] [libs/langchain] tests/unit_tests/embeddings/test_openai.py:10: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/embeddings/test_openai.py:16: Requires pkg: `openai`
SKIPPED [18] [libs/langchain] tests/unit_tests/evaluation/test_loading.py:13: Requires pkg: `rapidfuzz`
SKIPPED [6] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:10: Requires pkg: `rapidfuzz`
SKIPPED [6] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:20: Requires pkg: `rapidfuzz`
SKIPPED [12] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:31: Requires pkg: `rapidfuzz`
SKIPPED [6] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:46: Requires pkg: `rapidfuzz`
SKIPPED [10] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:64: Requires pkg: `rapidfuzz`
SKIPPED [5] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:80: Requires pkg: `rapidfuzz`
SKIPPED [5] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:94: Requires pkg: `rapidfuzz`
SKIPPED [5] [libs/langchain] tests/unit_tests/evaluation/string_distance/test_base.py:107: Requires pkg: `rapidfuzz`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_indexing.py:211: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_indexing.py:324: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_indexing.py:445: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_indexing.py:569: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_indexing.py:756: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_indexing.py:876: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_indexing.py:918: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_indexing.py:981: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_sql_record_manager.py:47: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_sql_record_manager.py:153: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_sql_record_manager.py:277: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_sql_record_manager.py:307: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_sql_record_manager.py:411: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_sql_record_manager.py:530: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/indexes/test_sql_record_manager.py:574: Requires pkg: `aiosqlite`
SKIPPED [1] [libs/langchain] tests/unit_tests/llms/test_openai.py:19: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/llms/test_openai.py:27: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/llms/test_openai.py:33: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/llms/test_openai.py:39: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/llms/test_openai.py:70: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/llms/test_openai.py:103: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_dump.py:63: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_dump.py:76: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_dump.py:84: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_dump.py:106: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_dump.py:133: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:16: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:27: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:42: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:66: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:81: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:92: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:107: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/load/test_load.py:131: Requires pkg: `openai`
SKIPPED [1] [libs/langchain] tests/unit_tests/memory/chat_message_histories/test_streamlit.py:33: Requires pkg: `streamlit`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_few_shot.py:234: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_few_shot.py:257: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_few_shot.py:304: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_prompt.py:165: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_prompt.py:180: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_prompt.py:209: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_prompt.py:240: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_prompt.py:257: Requires pkg: `jinja2`
SKIPPED [1] [libs/langchain] tests/unit_tests/prompts/test_prompt.py:274: Requires pkg: `jinja2`
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
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/self_query/test_timescalevector.py:17: Requires pkg: `timescale_vector`
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/self_query/test_timescalevector.py:27: Requires pkg: `timescale_vector`
SKIPPED [1] [libs/langchain] tests/unit_tests/retrievers/self_query/test_timescalevector.py:49: Requires pkg: `timescale_vector`
SKIPPED [1] [libs/langchain] tests/unit_tests/storage/test_upstash_redis.py:6: Requires pkg: `upstash_redis`
SKIPPED [1] [libs/langchain] tests/unit_tests/tools/openapi/test_api_models.py:81: Requires pkg: `openapi_pydantic`
SKIPPED [1] [libs/langchain] tests/unit_tests/tools/openapi/test_api_models.py:102: Requires pkg: `openapi_pydantic`
SKIPPED [1] [libs/langchain] tests/unit_tests/tools/openapi/test_api_models.py:143: Requires pkg: `openapi_pydantic`
SKIPPED [1] [libs/langchain] tests/unit_tests/tools/openapi/test_api_models.py:174: Requires pkg: `openapi_pydantic`
SKIPPED [1] [libs/langchain] tests/unit_tests/utilities/test_arxiv.py:6: Requires pkg: `arxiv`
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
ERROR [libs/langchain] tests/unit_tests/chat_models/test_hunyuan.py
FAILED [libs/langchain] tests/unit_tests/schema/runnable/test_runnable.py::test_configurable_alts_factory
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_default_base_prompt - NotI...
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_custom_base_prompt - NotIm...
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_custom_base_prompt_fail - ...
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_format_headers_api_key - N...
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_format_headers_access_token
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_create_action_payload - No...
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_create_action_payload_preview
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_create_action_payload_with_params
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_apreview - NotImplementedE...
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_arun - NotImplementedError...
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_alist - NotImplementedErro...
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_wrapper_fails_no_api_key_or_access_token_initialization
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_wrapper_api_key_initialization
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_wrapper_access_token_initialization
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_list_raises_401_invalid_api_key
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_list_raises_401_invalid_access_token
FAILED [libs/langchain] tests/unit_tests/tools/test_zapier.py::test_list_raises_other_error - ...
===== 18 failed, 1236 passed, 270 skipped, 32 warnings, 1 error in 10.67s ======
================= PYTEST PKG: libs/experimental =================
============================= test session starts ==============================
collected 142 items / 1 skipped

tests/unit_tests/test_bash.py .s...s                                     [  4%]
tests/unit_tests/test_data_anonymizer.py sssssssssssss                   [ 13%]
tests/unit_tests/test_llm_bash.py .....                                  [ 16%]
tests/unit_tests/test_logical_fallacy.py .                               [ 17%]
tests/unit_tests/test_mock.py .                                          [ 18%]
tests/unit_tests/test_pal.py ............                                [ 26%]
tests/unit_tests/test_reversible_data_anonymizer.py ssssssssssssss       [ 36%]
tests/unit_tests/test_smartllm.py ......                                 [ 40%]
tests/unit_tests/test_sql.py ....                                        [ 43%]
tests/unit_tests/test_tot.py ........                                    [ 49%]
tests/unit_tests/python/test_python_1.py ........                        [ 54%]
tests/unit_tests/python/test_python_2.py ...........                     [ 62%]
tests/unit_tests/rl_chain/test_pick_best_chain_call.py sssssssssssssssss [ 74%]
                                                                         [ 74%]
tests/unit_tests/rl_chain/test_pick_best_text_embedder.py ssssssssssssss [ 84%]
s                                                                        [ 85%]
tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py sssssssssssssss [ 95%]
ssssss                                                                   [100%]

=============================== warnings summary ===============================
tests/unit_tests/test_smartllm.py: 16 warnings
  /home/langchain/libs/experimental/.venv/lib/python3.11/site-packages/langchain/_api/deprecation.py:189: LangChainPendingDeprecationWarning: The function `from_strings` will be deprecated in a future version. Use from_messages classmethod instead.
    warn_deprecated(

tests/unit_tests/test_sql.py: 2 warnings
tests/unit_tests/test_tot.py: 21 warnings
  /home/langchain/libs/experimental/.venv/lib/python3.11/site-packages/langchain/chains/llm.py:280: UserWarning: The predict_and_parse method is deprecated, instead pass an output parser directly to LLMChain.
    warnings.warn(

-- Docs: https://docs.pytest.org/en/stable/how-to/capture-warnings.html
=========================== short test summary info ============================
PASSED [libs/experimental] tests/unit_tests/test_bash.py::test_pwd_command
PASSED [libs/experimental] tests/unit_tests/test_bash.py::test_incorrect_command
PASSED [libs/experimental] tests/unit_tests/test_bash.py::test_incorrect_command_return_err_output
PASSED [libs/experimental] tests/unit_tests/test_bash.py::test_create_directory_and_files
PASSED [libs/experimental] tests/unit_tests/test_llm_bash.py::test_simple_question
PASSED [libs/experimental] tests/unit_tests/test_llm_bash.py::test_get_code
PASSED [libs/experimental] tests/unit_tests/test_llm_bash.py::test_parsing_error
PASSED [libs/experimental] tests/unit_tests/test_llm_bash.py::test_get_code_lines_mixed_blocks
PASSED [libs/experimental] tests/unit_tests/test_llm_bash.py::test_get_code_lines_simple_nested_ticks
PASSED [libs/experimental] tests/unit_tests/test_logical_fallacy.py::test_fallacy_critique_parsing
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
PASSED [libs/experimental] tests/unit_tests/test_sql.py::test_sql_chain_without_memory
PASSED [libs/experimental] tests/unit_tests/test_sql.py::test_sql_chain_sequential_without_memory
PASSED [libs/experimental] tests/unit_tests/test_sql.py::test_sql_chain_with_memory
PASSED [libs/experimental] tests/unit_tests/test_sql.py::test_sql_chain_sequential_with_memory
PASSED [libs/experimental] tests/unit_tests/test_tot.py::test_solve_sudoku
PASSED [libs/experimental] tests/unit_tests/test_tot.py::test_solve_sudoku_k_too_small
PASSED [libs/experimental] tests/unit_tests/test_tot.py::ControllerTestCase::test_empty
PASSED [libs/experimental] tests/unit_tests/test_tot.py::ControllerTestCase::test_one_thoghts
PASSED [libs/experimental] tests/unit_tests/test_tot.py::ControllerTestCase::test_thoughts_rollback
PASSED [libs/experimental] tests/unit_tests/test_tot.py::ControllerTestCase::test_thoughts_rollback_invalid
PASSED [libs/experimental] tests/unit_tests/test_tot.py::ControllerTestCase::test_two_thoghts
PASSED [libs/experimental] tests/unit_tests/test_tot.py::ControllerTestCase::test_two_thoughts_invalid
PASSED [libs/experimental] tests/unit_tests/python/test_python_1.py::test_python_repl
PASSED [libs/experimental] tests/unit_tests/python/test_python_1.py::test_python_repl_no_previous_variables
PASSED [libs/experimental] tests/unit_tests/python/test_python_1.py::test_python_repl_pass_in_locals
PASSED [libs/experimental] tests/unit_tests/python/test_python_1.py::test_functionality
PASSED [libs/experimental] tests/unit_tests/python/test_python_1.py::test_functionality_multiline
PASSED [libs/experimental] tests/unit_tests/python/test_python_1.py::test_python_ast_repl_multiline
PASSED [libs/experimental] tests/unit_tests/python/test_python_1.py::test_python_ast_repl_multi_statement
PASSED [libs/experimental] tests/unit_tests/python/test_python_1.py::test_function
PASSED [libs/experimental] tests/unit_tests/python/test_python_2.py::test_python_repl_tool_single_input
PASSED [libs/experimental] tests/unit_tests/python/test_python_2.py::test_python_repl_print
PASSED [libs/experimental] tests/unit_tests/python/test_python_2.py::test_python_ast_repl_tool_single_input
PASSED [libs/experimental] tests/unit_tests/python/test_python_2.py::test_python_ast_repl_return
PASSED [libs/experimental] tests/unit_tests/python/test_python_2.py::test_python_ast_repl_print
PASSED [libs/experimental] tests/unit_tests/python/test_python_2.py::test_repl_print_python_backticks
PASSED [libs/experimental] tests/unit_tests/python/test_python_2.py::test_python_ast_repl_raise_exception
PASSED [libs/experimental] tests/unit_tests/python/test_python_2.py::test_python_ast_repl_one_line_print
PASSED [libs/experimental] tests/unit_tests/python/test_python_2.py::test_python_ast_repl_one_line_return
PASSED [libs/experimental] tests/unit_tests/python/test_python_2.py::test_python_ast_repl_one_line_exception
PASSED [libs/experimental] tests/unit_tests/python/test_python_2.py::test_sanitize_input
SKIPPED [1] [libs/experimental] tests/unit_tests/test_llm_symbolic_math.py:16: sympy not installed
SKIPPED [1] [libs/experimental] tests/unit_tests/test_bash.py:24: flaky on GHA, TODO to fix
SKIPPED [1] [libs/experimental] tests/unit_tests/test_bash.py:91: flaky on GHA, TODO to fix
SKIPPED [3] [libs/experimental] tests/unit_tests/test_data_anonymizer.py:24: Requires pkg: `presidio_analyzer`
SKIPPED [3] [libs/experimental] tests/unit_tests/test_data_anonymizer.py:39: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_data_anonymizer.py:54: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_data_anonymizer.py:66: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_data_anonymizer.py:83: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_data_anonymizer.py:99: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_data_anonymizer.py:128: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_data_anonymizer.py:146: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_data_anonymizer.py:179: Requires pkg: `presidio_analyzer`
SKIPPED [3] [libs/experimental] tests/unit_tests/test_reversible_data_anonymizer.py:25: Requires pkg: `presidio_analyzer`
SKIPPED [3] [libs/experimental] tests/unit_tests/test_reversible_data_anonymizer.py:40: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_reversible_data_anonymizer.py:55: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_reversible_data_anonymizer.py:67: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_reversible_data_anonymizer.py:93: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_reversible_data_anonymizer.py:109: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_reversible_data_anonymizer.py:140: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_reversible_data_anonymizer.py:178: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_reversible_data_anonymizer.py:190: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/test_reversible_data_anonymizer.py:209: Requires pkg: `presidio_analyzer`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:23: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:42: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:57: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:75: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:102: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:129: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:152: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:184: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:218: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:246: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:274: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:302: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:334: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:355: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:376: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:398: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_chain_call.py:421: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:10: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:23: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:35: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:49: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:67: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:87: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:113: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:139: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:154: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:170: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:186: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:219: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:256: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:290: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_pick_best_text_embedder.py:327: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:11: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:17: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:30: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:48: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:54: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:67: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:80: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:107: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:117: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:145: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:178: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:201: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:243: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:289: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:330: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:381: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:389: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:401: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:407: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:413: Requires pkg: `vowpal_wabbit_next`
SKIPPED [1] [libs/experimental] tests/unit_tests/rl_chain/test_rl_chain_base_embedder.py:419: Requires pkg: `vowpal_wabbit_next`
================= 60 passed, 83 skipped, 39 warnings in 2.13s ==================
