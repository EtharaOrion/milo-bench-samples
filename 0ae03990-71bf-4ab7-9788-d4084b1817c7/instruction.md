I've uploaded a Python code repository in the directory /workspace/langchain. Consider the following issue description:

<issue_description>
# Fix tool arguments formatting in StructuredChatAgent

## Issue 1 (#10480): Fix tool arguments formatting in StructuredChatAgent

In the `FORMAT_INSTRUCTIONS` template, 4 curly braces (escaping) are used to get single curly brace after formatting:

```
"{{{ ... }}}}" -> format_instructions.format() ->  "{{ ... }}" -> template.format() -> "{ ... }".
```

Tool's `args_schema` string contains single braces `{ ... }`, and is also transformed to `{{{{ ... }}}}` form. But this is not really correct since there is only one `format()` call:

```
"{{{{ ... }}}}" -> template.format() -> "{{ ... }}".
```

As a result we get double curly braces in the prompt:
````
Respond to the human as helpfully and accurately as possible. You have access to the following tools:

foo: Test tool FOO, args: {{'tool_input': {{'type': 'string'}}}}    # <--- !!!
...
Provide only ONE action per $JSON_BLOB, as shown:

```
{
  "action": $TOOL_NAME,
  "action_input": $INPUT
}
```
````

This PR fixes curly braces escaping in the `args_schema` to have single braces in the final prompt:
````
Respond to the human as helpfully and accurately as possible. You have access to the following tools:

foo: Test tool FOO, args: {'tool_input': {'type': 'string'}}    # <--- !!!
...
Provide only ONE action per $JSON_BLOB, as shown:

```
{
  "action": $TOOL_NAME,
  "action_input": $INPUT
}
```
````

## Issue 2 (#12780): UnboundLocalError in langchain.retrievers.google_vertex_ai_search

### System Info

Version 0.0.328, macOS, Python 3.11.5

In [_convert_website_search_response() ](https://github.com/langchain-ai/langchain/blob/master/libs/langchain/langchain/retrievers/google_vertex_ai_search.py#L120-L154) of [langchain.retrievers.google_vertex_ai_search](https://github.com/langchain-ai/langchain/blob/master/libs/langchain/langchain/retrievers/google_vertex_ai_search.py), if no documents are found it will try and print:

```
print(
                f"No {chunk_type} could be found.\n"
                "Make sure that your data store is using Advanced Website Indexing.\n"
                "https://cloud.google.com/generative-ai-app-builder/docs/about-advanced-features#advanced-website-indexing"  # noqa: E501
            )
```

However, the `chunk_type` variable is defined only if documents have been found, and is therefore unbound, leading to exception and crash.

### Who can help?

_No response_

### Information

- [ ] The official example notebooks/scripts
- [ ] My own modified scripts

### Related Components

- [ ] LLMs/Chat Models
- [ ] Embedding Models
- [ ] Prompts / Prompt Templates / Prompt Selectors
- [ ] Output Parsers
- [ ] Document Loaders
- [ ] Vector Stores / Retrievers
- [ ] Memory
- [ ] Agents / Agent Executors
- [ ] Tools / Toolkits
- [ ] Chains
- [ ] Callbacks/Tracing
- [ ] Async

### Reproduction

Any query that will fail to produce documents at all.

### Expected behavior

The variable should be bound so that the exception is avoided.

## Issue 3 (#13210): fix: Reduce post-processing time for `DocAIParser`

- Remove `WrappedDocument` introduced in https://github.com/langchain-ai/langchain/pull/11413
  - https://github.com/googleapis/python-documentai-toolbox/issues/198 in Document AI Toolbox to improve initialization time for `WrappedDocument` object.

@lkuligin

@baskaryan

@hwchase17

## Issue 4 (#13299): bugfix in using search_kwargs in Vectara retriever

- **Description:** fix a bug that prevented as_retriever() in Vectara to use the desired input arguments
  - **Issue:** as_retriever did not pass the arguments properly
  - **Tag maintainer:** @baskaryan
  - **Twitter handle:** @ofermend

## Issue 5 (#13320): feat: add ERNIE-Bot-4 Function Calling

- **Description:** ERNIE-Bot-Chat-4 Large Language Model adds the ability of `Function Calling` by passing parameters through the `functions` parameter in the request. To simplify function calling for ERNIE-Bot-Chat-4, the `create_ernie_fn_chain()` function has been added. The definition and usage of the `create_ernie_fn_chain()` function is similar to that of the `create_openai_fn_chain()` function.

Examples as the follows:

```
import json

from langchain.chains.ernie_functions import (
    create_ernie_fn_chain,
)
from langchain.chat_models import ErnieBotChat
from langchain.prompts import ChatPromptTemplate

def get_current_news(location: str) -> str:
    """Get the current news based on the location.'

    Args:
        location (str): The location to query.
    
    Returs:
        str: Current news based on the location.
    """

    news_info = {
        "location": location,
        "news": [
            "I have a Book.",
            "It's a nice day, today."
        ]
    }

    return json.dumps(news_info)

def get_current_weather(location: str, unit: str="celsius") -> str:
    """Get the current weather in a given location

    Args:
        location (str): location of the weather.
        unit (str): unit of the tempuature.
    
    Returns:
        str: weather in the given location.
    """

    weather_info = {
        "location": location,
        "temperature": "27",
        "unit": unit,
        "forecast": ["sunny", "windy"],
    }
    return json.dumps(weather_info)

llm = ErnieBotChat(model_name="ERNIE-Bot-4")
prompt = ChatPromptTemplate.from_messages(
    [
        ("human", "{query}"),
    ]
)

chain = create_ernie_fn_chain([get_current_weather, get_current_news], llm, prompt, verbose=True)
res = chain.run("北京今天的新闻是什么？")
print(res)
```

The running results of the above program are shown below：
```
> Entering new LLMChain chain...
Prompt after formatting:
Human: 北京今天的新闻是什么？



> Finished chain.
{'name': 'get_current_news', 'thoughts': '用户想要知道北京今天的新闻。我可以使用get_current_news工具来获取这些信息。', 'arguments': {'location': '北京'}}
```

<!-- Thank you for contributing to LangChain!

Replace this entire comment with:
  - **Description:** a description of the change, 
  - **Issue:** the issue # it fixes (if applicable),
  - **Dependencies:** any dependencies required for this change,
  - **Tag maintainer:** for a quicker response, tag the relevant maintainer (see below),
  - **Twitter handle:** we announce bigger features on Twitter. If your PR gets announced, and you'd like a mention, we'll gladly shout you out!

Please make sure your PR is passing linting and testing before submitting. Run `make format`, `make lint` and `make test` to check this locally.

See contribution guidelines for more information on how to write/run tests, lint, etc: 
https://github.com/langchain-ai/langchain/blob/master/.github/CONTRIBUTING.md

If you're adding a new integration, please include:
  1. a test for the integration, preferably unit tests that do not rely on network access,
  2. an example notebook showing its use. It lives in `docs/extras` directory.

If no one reviews your PR within a few days, please @-mention one of @baskaryan, @eyurtsev, @hwchase17.
 -->

## Issue 6 (#13381): Minor redis improvements

- **Description:**
      - Fixes a `key_prefix` bug where passing it in on `Redis.from_existing(...)` did not work properly. Updates doc strings accordingly.
      - Updates Redis filter classes logic with best practices on typing, string formatting, and handling "empty" filters.
      - Fixes a bug that would prevent multiple tag filters from being applied together in some scenarios.
      - Added a whole new filter unit testing module. Also updated code formatting for a number of modules that were failing the `make` commands.
  - **Issue:** N/A
  - **Dependencies:** N/A
  - **Tag maintainer:** @baskaryan 
  - **Twitter handle:** @tchutch94

## Issue 7 (#13388): DeepLake Backwards compatibility fix

- **Description:** during search with DeepLake some people are facing backwards compatibility issues, this PR fixes it by making search accessible for the older datasets

## Issue 8 (#13403): Add llama2-13b-chat-v1 support to `chat_models.BedrockChat`

Hi 👋 We are working with Llama2 on Bedrock, and would like to add it to Langchain. We saw a [pull request](https://github.com/langchain-ai/langchain/pull/13322) to add it to the `llm.Bedrock` class, but since it concerns a chat model, we would like to add it to `BedrockChat` as well.

  - **Description:** Add support for Llama2 to `BedrockChat` in `chat_models`  
  - **Issue:** the issue # it fixes (if applicable) [#13316](https://github.com/langchain-ai/langchain/issues/13316)
  - **Dependencies:** any dependencies required for this change `None`
  - **Tag maintainer:** /
  - **Twitter handle:** `@SimonBockaert @WouterDurnez`

## Issue 9 (#13539): New update broke embeddings models

### System Info

LangChain version: 0.0.337
Python version: 3.10.13

### Who can help?

_No response_

### Information

- [ ] The official example notebooks/scripts
- [X] My own modified scripts

### Related Components

- [ ] LLMs/Chat Models
- [X] Embedding Models
- [ ] Prompts / Prompt Templates / Prompt Selectors
- [ ] Output Parsers
- [ ] Document Loaders
- [X] Vector Stores / Retrievers
- [ ] Memory
- [ ] Agents / Agent Executors
- [ ] Tools / Toolkits
- [ ] Chains
- [ ] Callbacks/Tracing
- [ ] Async

### Reproduction

db = Chroma.from_documents(docs, AzureOpenAIEmbeddings())

### Expected behavior

This worked on previous versions of LangChain using OpenAIEmbeddings(), but now I get this error

BadRequestError: Error code: 400 - {'error': {'message': 'Too many inputs. The max number of inputs is 16.  We hope to increase the number of inputs per request soon. Please contact us through an Azure support request at: https://go.microsoft.com/fwlink/?linkid=2213926 for further questions.', 'type': 'invalid_request_error', 'param': None, 'code': None}}

## Issue 10 (#13448): Feature cognitive health

- **Description:** This change adds an agent to the Azure Cognitive Services toolkit for identifying healthcare entities
  - **Dependencies:** azure-ai-textanalytics (Optional)

## Issue 11 (#13451): VertexAI LLM count_tokens method requires list of prompts

I encountered this during summarization with VertexAI. I was receiving an INVALID_ARGUMENT error, as it was trying to send a list of about 17000 single characters. 

The [count_tokens method](https://github.com/googleapis/python-aiplatform/blob/main/vertexai/language_models/_language_models.py#L658) made available by Google takes in a list of prompts. It does not fail for small texts, but it does for longer documents because the argument list will be exceeding Googles allowed limit. Enforcing the list type makes it work successfully.

This change will cast the input text to count to a list of that single text so that the input format is always correct.

[Twitter](https://www.x.com/stijn_tratsaert)

## Issue 12 (#13492): docs updating `AzureML` notebooks

- Added/updated descriptions and links

## Issue 13 (#13496): Fix hunyuan appid type

- **Description: fix hunyuan appid type
  - **Issue: https://github.com/langchain-ai/langchain/pull/12022#issuecomment-1815627855

## Issue 14 (#13502): FIX: doc-string - langchain.vectorstores.dashvector.DashVector

- **Description:** There are several mistakes in the sample code in the doc-string of `DashVector` class, and this pull request aims to correct them.
  The correction code has been tested against latest version (at the time of creation of this pull request) of: `langchain==0.0.336` `dashvector==1.0.6` .
- **Issue:** No issue is created for this.
- **Dependencies:** No dependency is required for this change,
<!--  - **Tag maintainer:** for a quicker response, tag the relevant maintainer (see below), -->
- **Twitter handle:** `zeyanglin`

<!-- Please make sure your PR is passing linting and testing before submitting. Run `make format`, `make lint` and `make test` to check this locally.

See contribution guidelines for more information on how to write/run tests, lint, etc: 
https://github.com/langchain-ai/langchain/blob/master/.github/CONTRIBUTING.md

If you're adding a new integration, please include:
  1. a test for the integration, preferably unit tests that do not rely on network access,
  2. an example notebook showing its use. It lives in `docs/extras` directory.

If no one reviews your PR within a few days, please @-mention one of @baskaryan, @eyurtsev, @hwchase17.
-->

## Issue 15 (#13512): AstraDB: use includeSimilarity option instead of $similarity

- **Description:** AstraDB is going to deprecate the `$similarity` projection property in favor of the ´includeSimilarity´ option flag. I moved all the queries to the new format. 
- **Tag maintainer:** @hemidactylus 
- **Twitter handle:** nicoloboschi

## Issue 16 (#13507): VLLMOpenAI -- create() got an unexpected keyword argument 'api_key'

### System Info

Python 3.9
langchain 0.0.336
openai 1.3.2
pandas 2.1.3


### Who can help?

@EYU

### Information

- [X] The official example notebooks/scripts
- [ ] My own modified scripts

### Related Components

- [X] LLMs/Chat Models
- [ ] Embedding Models
- [ ] Prompts / Prompt Templates / Prompt Selectors
- [ ] Output Parsers
- [ ] Document Loaders
- [ ] Vector Stores / Retrievers
- [ ] Memory
- [ ] Agents / Agent Executors
- [ ] Tools / Toolkits
- [ ] Chains
- [ ] Callbacks/Tracing
- [ ] Async

### Reproduction

First of all, thank you for this great library !

Concerning the bug,  I have a vllm openai server (0.2.1.post1)  running locally started with the following command:
```
python -m vllm.entrypoints.openai.api_server --model ./zephyr-7b-beta --served-model-name zephyr-7b-beta
```

On the client side, I have this piece of code, slightly adapted from the documentation (only the model name changes).

```python
from langchain.llms import VLLMOpenAI

llm = VLLMOpenAI(
    openai_api_key="EMPTY",
    openai_api_base="http://localhost:8000/v1",
    model_name="zephyr-7b-beta",
)
print(llm("Rome is"))
```

And I got the following error:

```text
---------------------------------------------------------------------------
TypeError                                 Traceback (most recent call last)
Cell In[19], line 6
      1 llm = VLLMOpenAI(
      2     openai_api_key="EMPTY",
      3     openai_api_base="http://localhost:8000/v1",
      4     model_name="zephyr-7b-beta",
      5 )
----> 6 llm("Rome is")

File ~/softwares/miniconda3/envs/demo/lib/python3.9/site-packages/langchain/llms/base.py:876, in BaseLLM.__call__(self, prompt, stop, callbacks, tags, metadata, **kwargs)
    869 if not isinstance(prompt, str):
    870     raise ValueError(
    871         "Argument `prompt` is expected to be a string. Instead found "
    872         f"{type(prompt)}. If you want to run the LLM on multiple prompts, use "
    873         "`generate` instead."
    874     )
    875 return (
--> 876     self.generate(
    877         [prompt],
    878         stop=stop,
    879         callbacks=callbacks,
    880         tags=tags,
    881         metadata=metadata,
    882         **kwargs,
    883     )
    884     .generations[0][0]
    885     .text
    886 )

File ~/softwares/miniconda3/envs/demo/lib/python3.9/site-packages/langchain/llms/base.py:656, in BaseLLM.generate(self, prompts, stop, callbacks, tags, metadata, run_name, **kwargs)
    641         raise ValueError(
    642             "Asked to cache, but no cache found at `langchain.cache`."
    643         )
    644     run_managers = [
    645         callback_manager.on_llm_start(
    646             dumpd(self),
   (...)
    654         )
    655     ]
--> 656     output = self._generate_helper(
    657         prompts, stop, run_managers, bool(new_arg_supported), **kwargs
    658     )
    659     return output
    660 if len(missing_prompts) > 0:

File ~/softwares/miniconda3/envs/demo/lib/python3.9/site-packages/langchain/llms/base.py:544, in BaseLLM._generate_helper(self, prompts, stop, run_managers, new_arg_supported, **kwargs)
    542     for run_manager in run_managers:
    543         run_manager.on_llm_error(e)
--> 544     raise e
    545 flattened_outputs = output.flatten()
    546 for manager, flattened_output in zip(run_managers, flattened_outputs):

File ~/softwares/miniconda3/envs/demo/lib/python3.9/site-packages/langchain/llms/base.py:531, in BaseLLM._generate_helper(self, prompts, stop, run_managers, new_arg_supported, **kwargs)
    521 def _generate_helper(
    522     self,
    523     prompts: List[str],
   (...)
    527     **kwargs: Any,
    528 ) -> LLMResult:
    529     try:
    530         output = (
--> 531             self._generate(
    532                 prompts,
    533                 stop=stop,
    534                 # TODO: support multiple run managers
    535                 run_manager=run_managers[0] if run_managers else None,
    536                 **kwargs,
    537             )
    538             if new_arg_supported
    539             else self._generate(prompts, stop=stop)
    540         )
    541     except BaseException as e:
    542         for run_manager in run_managers:

File ~/softwares/miniconda3/envs/demo/lib/python3.9/site-packages/langchain/llms/openai.py:454, in BaseOpenAI._generate(self, prompts, stop, run_manager, **kwargs)
    442     choices.append(
    443         {
    444             "text": generation.text,
   (...)
    451         }
    452     )
    453 else:
--> 454     response = completion_with_retry(
    455         self, prompt=_prompts, run_manager=run_manager, **params
    456     )
    457     if not isinstance(response, dict):
    458         # V1 client returns the response in an PyDantic object instead of
    459         # dict. For the transition period, we deep convert it to dict.
    460         response = response.dict()

File ~/softwares/miniconda3/envs/demo/lib/python3.9/site-packages/langchain/llms/openai.py:114, in completion_with_retry(llm, run_manager, **kwargs)
    112 """Use tenacity to retry the completion call."""
    113 if is_openai_v1():
--> 114     return llm.client.create(**kwargs)
    116 retry_decorator = _create_retry_decorator(llm, run_manager=run_manager)
    118 @retry_decorator
    119 def _completion_with_retry(**kwargs: Any) -> Any:

File ~/softwares/miniconda3/envs/demo/lib/python3.9/site-packages/openai/_utils/_utils.py:299, in required_args.<locals>.inner.<locals>.wrapper(*args, **kwargs)
    297             msg = f"Missing required argument: {quote(missing[0])}"
    298     raise TypeError(msg)
--> 299 return func(*args, **kwargs)

TypeError: create() got an unexpected keyword argument 'api_key'
```

It seems that if I remove the line 158 from `langchain/llms/vllm.py`, the code is working.

### Expected behavior

I expect a completion with no error.

## Issue 17 (#13520): Fix Astra integration tests

- **Description:** Fix Astra integration tests that are failing. The `delete` always return True as the deletion is successful if no errors are thrown. I aligned the test to verify this behaviour
  - **Tag maintainer:** @hemidactylus 
  - **Twitter handle:** nicoloboschi

## Issue 18 (#13525): Introduce search_kwargs for Custom Parameters in BingSearchAPIWrapper

Added a `search_kwargs` field to BingSearchAPIWrapper in `bing_search.py,` enabling users to include extra keyword arguments in Bing search queries. This update, like specifying language preferences, adds more customization to searches. The `search_kwargs` seamlessly merge with standard parameters in `_bing_search_results` method.

## Issue 19 (#13535): DOCS `langchain decorators` update

added disclaimer

## Issue 20 (#13540): updated langchain stack img to be svg

## Issue 21 (#7928): SET search_path TO {self._schema} is executing by SQLDatabase for all databases except 'snowflake' and 'bigquery'.

### System Info

LangChain Version- 0.0.235, Windows, Python Version-3.9.16

As per below source code of SQLDatabase, before executing any sql query, connection.exec_driver_sql(f"SET search_path TO {self._schema}") is executed for all database except 'snowflake' and 'bigquery'.

if self._schema is not None:
                if self.dialect == "snowflake":
                    connection.exec_driver_sql(
                        f"ALTER SESSION SET search_path='{self._schema}'"
                    )
                elif self.dialect == "bigquery":
                    connection.exec_driver_sql(f"SET @@dataset_id='{self._schema}'")
                else:
                    connection.exec_driver_sql(f"SET search_path TO {self._schema}")
            cursor = connection.execute(text(command))

As per my knowledge, The SET search_path command is specific to PostgreSQL, not Oracle. This is why I am getting the following error. 
sqlalchemy.exc.DatabaseError: (oracledb.exceptions.DatabaseError) ORA-00922: missing or invalid option
[SQL: SET search_path TO evr1]
(Background on this error at: https://sqlalche.me/e/20/4xp6)

Oracle does not recognize this command.

I think it is better to use SCHEMA.TABLE in all sql queries.



### Who can help?

_No response_

### Information

- [ ] The official example notebooks/scripts
- [X] My own modified scripts

### Related Components

- [ ] LLMs/Chat Models
- [ ] Embedding Models
- [ ] Prompts / Prompt Templates / Prompt Selectors
- [ ] Output Parsers
- [ ] Document Loaders
- [ ] Vector Stores / Retrievers
- [ ] Memory
- [ ] Agents / Agent Executors
- [X] Tools / Toolkits
- [ ] Chains
- [ ] Callbacks/Tracing
- [ ] Async

### Reproduction

oracle_connection_str = f"oracle+oracledb://{username}:{password}@{hostname}:{port}/?service_name={service_name}"
db = SQLDatabase.from_uri(
    oracle_connection_str,
    schema="evr1",
    include_tables=[ ],
    sample_rows_in_table_info=3,
)

llm = ChatOpenAI(model_name=GPT_MODEL, temperature=0, openai_api_key=OpenAI_API_KEY)

toolkit = SQLDatabaseToolkit(
    db=db,
    llm=llm,
)

agent_executor = create_sql_agent(
    llm=llm,
    toolkit=toolkit,
    agent_type=AgentType.ZERO_SHOT_REACT_DESCRIPTION,
    return_intermediate_steps=True,
    handle_parsing_errors=_handle_error,
    verbose=True,
)

response = agent_executor(user_input)

### Expected behavior

Should not execute SET search_path TO {self._schema} for Oracle

## Issue 22 (#13549): feat: load all namespaces

- **Description:** This change allows for the `MWDumpLoader` to load all namespaces including custom by default instead of only loading the [default namespaces](https://www.mediawiki.org/wiki/Help:Namespaces#Localisation).
  - **Tag maintainer:** @hwchase17

## Issue 23 (#13553): Add embedchain retriever

**Description:**

This commit adds embedchain retriever along with tests and docs. Embedchain is a RAG framework to create data pipelines.

**Twitter handle:**
- [Taranjeet's twitter](https://twitter.com/taranjeetio) and [Embedchain's twitter](https://twitter.com/embedchain)

**Reviewer**
@hwchase17

## Issue 24 (#13523): YoutubeLoader translation not working

### System Info

langchain == 0.0.336
python == 3.9.6

### Who can help?

@hwchase17 @eyu

### Information

- [X] The official example notebooks/scripts
- [ ] My own modified scripts

### Related Components

- [ ] LLMs/Chat Models
- [ ] Embedding Models
- [ ] Prompts / Prompt Templates / Prompt Selectors
- [ ] Output Parsers
- [X] Document Loaders
- [ ] Vector Stores / Retrievers
- [ ] Memory
- [ ] Agents / Agent Executors
- [ ] Tools / Toolkits
- [ ] Chains
- [ ] Callbacks/Tracing
- [ ] Async

### Reproduction

Code:

video_id = YoutubeLoader.extract_video_id("https://www.youtube.com/watch?v=DWUzWvv3xz4")
loader = YoutubeLoader(video_id, add_video_info=True,
                                   language=["en","hi","ru"],
                                   translation = "en")

loader.load()

Output:

[Document(page_content='में रुके शोध सजावट हाउ टू लेट सफल टीम मेंबर्स नो दैट वास नॉट फीयर कॉन्टेक्ट्स रिस्पोंड फॉर एग्जांपल एक्टिव एंड स्ट्रैंथ एंड assistant 3000 1000 कॉन्टैक्ट एंड वे नेवर रिग्रेट थे रिस्पांस यू वांट यू ऑटोमेटेकली गेट नोटिफिकेशन टुडे ओके खुफिया इज द नोटिफिकेशन पाइथन इन नोटिफिकेशन सीनेटर नोटिफिकेशन प्यार सेलिब्रेट विन रिस्पोंस वर्षीय बेटे ईमेल एस वेल एजुकेटेड व्हाट्सएप नोटिफिकेशन इफ यू वांट एनी फीयर अदर टीम मेंबर टू ऑल्सो गेट नोटिफिकेशन व्हेन यू व्हेन यू रिसीवर रिस्पांस फ्रॉम अननोन फीयर कांटेक्ट सुधर रिस्पांस सिस्टम लिफ्ट से ज़ू और यह टीम मेंबर कैन रिस्पोंड इम्युनिटी द न्यू कैंट व ईमेल ऐड्रेस आफ थे पर्सन वरीय स्वीडन से लेफ्ट से अब दूर एक पाठ 7 टारगेट्स ऑयल सुबह रायपुर दिस ईमेल एड्रेस नो अब्दुल विल गेट एनी नोटिफिकेशन फ्रॉम assistant साक्षी व्हेनेवर एनी बडी दिस पॉइंट स्ट्रेन ईमेल अब्दुल विल अलसो गेट डर्टी में अगर सब्जेक्ट लाइन रिस्पांस रिसीवड ए [संगीत]', metadata={'source': 'DWUzWvv3xz4', 'title': 'How to Notify your team member Immediately when a Lead Responds', 'description': 'Unknown', 'view_count': 56, 'thumbnail_url': 'https://i.ytimg.com/vi/DWUzWvv3xz4/hq720.jpg', 'publish_date': '2021-10-04 00:00:00', 'length': 87, 'author': '7Targets AI Sales Assistant'})]

### Expected behavior

The output video transcript should be in English.

## Issue 25 (#13588): Fix typo in MongoDB memory docs

- **Description:** Fix typo in MongoDB memory docs
  - **Tag maintainer:** @eyurtsev

<!-- Thank you for contributing to LangChain!

  - **Description:** Fix typo in MongoDB memory docs
  - **Issue:** the issue # it fixes (if applicable),
  - **Dependencies:** any dependencies required for this change,
  - **Tag maintainer:** @baskaryan
  - **Twitter handle:** we announce bigger features on Twitter. If your PR gets announced, and you'd like a mention, we'll gladly shout you out!

Please make sure your PR is passing linting and testing before submitting. Run `make format`, `make lint` and `make test` to check this locally.

See contribution guidelines for more information on how to write/run tests, lint, etc: 
https://github.com/langchain-ai/langchain/blob/master/.github/CONTRIBUTING.md

If you're adding a new integration, please include:
  1. a test for the integration, preferably unit tests that do not rely on network access,
  2. an example notebook showing its use. It lives in `docs/extras` directory.

If no one reviews your PR within a few days, please @-mention one of @baskaryan, @eyurtsev, @hwchase17.
 -->

## Issue 26 (#13613): bump 339

## Repository Information
- **Repository**: langchain-ai/langchain
- **Pull Request**: #10480
- **Base Commit**: `78a1f4b264fbdca263a4f8873b980eaadb8912a7`

## Related Issues
- https://github.com/langchain-ai/langchain/issues/10480
- https://github.com/langchain-ai/langchain/issues/12780
- https://github.com/langchain-ai/langchain/issues/13210
- https://github.com/langchain-ai/langchain/issues/13299
- https://github.com/langchain-ai/langchain/issues/13320
- https://github.com/langchain-ai/langchain/issues/13381
- https://github.com/langchain-ai/langchain/issues/13388
- https://github.com/langchain-ai/langchain/issues/13403
- https://github.com/langchain-ai/langchain/issues/13539
- https://github.com/langchain-ai/langchain/issues/13448
- https://github.com/langchain-ai/langchain/issues/13451
- https://github.com/langchain-ai/langchain/issues/13492
- https://github.com/langchain-ai/langchain/issues/13496
- https://github.com/langchain-ai/langchain/issues/13502
- https://github.com/langchain-ai/langchain/issues/13512
- https://github.com/langchain-ai/langchain/issues/13507
- https://github.com/langchain-ai/langchain/issues/13520
- https://github.com/langchain-ai/langchain/issues/13525
- https://github.com/langchain-ai/langchain/issues/13535
- https://github.com/langchain-ai/langchain/issues/13540
- https://github.com/langchain-ai/langchain/issues/7928
- https://github.com/langchain-ai/langchain/issues/13549
- https://github.com/langchain-ai/langchain/issues/13553
- https://github.com/langchain-ai/langchain/issues/13523
- https://github.com/langchain-ai/langchain/issues/13588
- https://github.com/langchain-ai/langchain/issues/13613
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

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit 78a1f4b264fbdca263a4f8873b980eaadb8912a7.
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