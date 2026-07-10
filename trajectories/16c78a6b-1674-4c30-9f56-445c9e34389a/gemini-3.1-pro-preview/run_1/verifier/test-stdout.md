patching file ctx_test.go
patching file middleware/proxy/proxy_test.go
patching file middleware/requestid/requestid_test.go
patching file router_test.go
patching file .github/CONTRIBUTING.md
patching file .github/README.md
patching file .github/README_de.md
patching file .github/README_es.md
patching file .github/README_fr.md
patching file .github/README_he.md
patching file .github/README_id.md
patching file .github/README_ja.md
patching file .github/README_ko.md
patching file .github/README_nl.md
patching file .github/README_pt.md
patching file .github/README_ru.md
patching file .github/README_sa.md
patching file .github/README_tr.md
patching file .github/README_zh-CN.md
patching file .github/README_zh-TW.md
patching file app.go
patching file ctx.go
patching file middleware/proxy/README.md
patching file middleware/requestid/requestid.go
patching file router.go
patching file testdir/go.mod
patching file testdir/go.sum
patching file testdir/test_issue4.go
patching file testdir/test_issue8.go
# github.com/gofiber/fiber/v2/internal/go-ole
internal/go-ole/com_func.go:105:21: undefined: VARIANT
internal/go-ole/com_func.go:110:22: undefined: VARIANT
internal/go-ole/connect.go:79:72: undefined: VARIANT
internal/go-ole/connect.go:90:76: undefined: VARIANT
internal/go-ole/connect.go:105:69: undefined: VARIANT
internal/go-ole/connect.go:115:73: undefined: VARIANT
internal/go-ole/connect.go:129:69: undefined: VARIANT
internal/go-ole/connect.go:139:73: undefined: VARIANT
internal/go-ole/connect.go:173:84: undefined: VARIANT
internal/go-ole/idispatch.go:26:90: undefined: VARIANT
internal/go-ole/idispatch.go:26:90: too many errors
=== RUN   Test_App_MethodNotAllowed
--- PASS: Test_App_MethodNotAllowed (0.00s)
=== RUN   Test_App_Custom_Middleware_404_Should_Not_SetMethodNotAllowed
--- PASS: Test_App_Custom_Middleware_404_Should_Not_SetMethodNotAllowed (0.00s)
=== RUN   Test_App_ServerErrorHandler_SmallReadBuffer
--- PASS: Test_App_ServerErrorHandler_SmallReadBuffer (0.00s)
=== RUN   Test_App_Errors
--- PASS: Test_App_Errors (0.00s)
=== RUN   Test_App_ErrorHandler_Custom
--- PASS: Test_App_ErrorHandler_Custom (0.00s)
=== RUN   Test_App_ErrorHandler_HandlerStack
--- PASS: Test_App_ErrorHandler_HandlerStack (0.00s)
=== RUN   Test_App_ErrorHandler_RouteStack
--- PASS: Test_App_ErrorHandler_RouteStack (0.00s)
=== RUN   Test_App_Nested_Params
--- PASS: Test_App_Nested_Params (0.00s)
=== RUN   Test_App_Mount
--- PASS: Test_App_Mount (0.00s)
=== RUN   Test_App_Use_Params
--- PASS: Test_App_Use_Params (0.00s)
=== RUN   Test_App_Add_Method_Test
--- PASS: Test_App_Add_Method_Test (0.00s)
=== RUN   Test_App_Listener_TLS

 ┌───────────────────────────────────────────────────┐ 
 │                    Fiber v2.1.1                   │ 
 │               http://127.0.0.1:3078               │ 
 │                                                   │ 
 │ Handlers ............. 0  Threads ............ 64 │ 
 │ Prefork ....... Disabled  PID .............. 6096 │ 
 └───────────────────────────────────────────────────┘ 

--- PASS: Test_App_Listener_TLS (1.00s)
=== RUN   Test_App_GETOnly
--- PASS: Test_App_GETOnly (0.00s)
=== RUN   Test_App_Use_Params_Group
--- PASS: Test_App_Use_Params_Group (0.00s)
=== RUN   Test_App_Chaining
--- PASS: Test_App_Chaining (0.00s)
=== RUN   Test_App_Order
--- PASS: Test_App_Order (0.00s)
=== RUN   Test_App_Methods
--- PASS: Test_App_Methods (0.00s)
=== RUN   Test_App_New
--- PASS: Test_App_New (0.00s)
=== RUN   Test_App_Config
--- PASS: Test_App_Config (0.00s)
=== RUN   Test_App_Shutdown
=== RUN   Test_App_Shutdown/success
=== RUN   Test_App_Shutdown/no_server
--- PASS: Test_App_Shutdown (0.00s)
    --- PASS: Test_App_Shutdown/success (0.00s)
    --- PASS: Test_App_Shutdown/no_server (0.00s)
=== RUN   Test_App_Static_Index_Default
--- PASS: Test_App_Static_Index_Default (0.00s)
=== RUN   Test_App_Static_Direct
--- PASS: Test_App_Static_Direct (0.00s)
=== RUN   Test_App_Static_MaxAge
--- PASS: Test_App_Static_MaxAge (0.00s)
=== RUN   Test_App_Static_Group
--- PASS: Test_App_Static_Group (0.00s)
=== RUN   Test_App_Static_Wildcard
--- PASS: Test_App_Static_Wildcard (0.00s)
=== RUN   Test_App_Static_Prefix_Wildcard
--- PASS: Test_App_Static_Prefix_Wildcard (0.00s)
=== RUN   Test_App_Static_Prefix
--- PASS: Test_App_Static_Prefix (0.00s)
=== RUN   Test_App_Static_Trailing_Slash
--- PASS: Test_App_Static_Trailing_Slash (0.00s)
=== RUN   Test_App_Mixed_Routes_WithSameLen
--- PASS: Test_App_Mixed_Routes_WithSameLen (0.00s)
=== RUN   Test_App_Group_Invalid
--- PASS: Test_App_Group_Invalid (0.00s)
=== RUN   Test_App_Group_Mount
--- PASS: Test_App_Group_Mount (0.00s)
=== RUN   Test_App_Group
--- PASS: Test_App_Group (0.00s)
=== RUN   Test_App_Deep_Group
--- PASS: Test_App_Deep_Group (0.00s)
=== RUN   Test_App_Next_Method
--- PASS: Test_App_Next_Method (0.00s)
=== RUN   Test_App_Listen
--- PASS: Test_App_Listen (1.00s)
=== RUN   Test_App_Listener

 ┌───────────────────────────────────────────────────┐ 
 │                    Fiber v2.1.1                   │ 
 │             http://InmemoryListener:              │ 
 │                                                   │ 
 │ Handlers ............. 0  Threads ............ 64 │ 
 │ Prefork ....... Disabled  PID .............. 6096 │ 
 └───────────────────────────────────────────────────┘ 

--- PASS: Test_App_Listener (0.50s)
=== RUN   Test_NewError
--- PASS: Test_NewError (0.00s)
=== RUN   Test_Test_Timeout
--- PASS: Test_Test_Timeout (0.05s)
=== RUN   Test_Test_DumpError
--- PASS: Test_Test_DumpError (0.00s)
=== RUN   Test_App_Handler
--- PASS: Test_App_Handler (0.00s)
=== RUN   Test_App_Init_Error_View
views: invalid view
--- PASS: Test_App_Init_Error_View (0.00s)
=== RUN   Test_App_Stack
--- PASS: Test_App_Stack (0.00s)
=== RUN   Test_App_ReadTimeout
--- PASS: Test_App_ReadTimeout (0.50s)
=== RUN   Test_App_BadRequest
--- PASS: Test_App_BadRequest (0.50s)
=== RUN   Test_App_SmallReadBuffer
--- PASS: Test_App_SmallReadBuffer (0.50s)
=== RUN   Test_App_Master_Process_Show_Startup_Message

 ┌───────────────────────────────────────────────────┐  ┌───────────────────────────────────────────────────┐
 │                    Fiber v2.1.1                   │ 
 │              https://127.0.0.1:3000               │  └───────────────────────────────────────────────────┘
 │                                                   │ 
 │ Handlers ............. 0  Threads ............ 64 │ 
 │ Prefork ........ Enabled  PID .............. 6096 │ 
 └───────────────────────────────────────────────────┘ 

--- PASS: Test_App_Master_Process_Show_Startup_Message (0.00s)
=== RUN   Test_App_Server
--- PASS: Test_App_Server (0.00s)
=== RUN   Test_Ctx_Accepts
=== PAUSE Test_Ctx_Accepts
=== RUN   Test_Ctx_Accepts_EmptyAccept
=== PAUSE Test_Ctx_Accepts_EmptyAccept
=== RUN   Test_Ctx_Accepts_Wildcard
=== PAUSE Test_Ctx_Accepts_Wildcard
=== RUN   Test_Ctx_AcceptsCharsets
=== PAUSE Test_Ctx_AcceptsCharsets
=== RUN   Test_Ctx_AcceptsEncodings
=== PAUSE Test_Ctx_AcceptsEncodings
=== RUN   Test_Ctx_AcceptsLanguages
=== PAUSE Test_Ctx_AcceptsLanguages
=== RUN   Test_Ctx_App
=== PAUSE Test_Ctx_App
=== RUN   Test_Ctx_Append
=== PAUSE Test_Ctx_Append
=== RUN   Test_Ctx_Attachment
=== PAUSE Test_Ctx_Attachment
=== RUN   Test_Ctx_BaseURL
=== PAUSE Test_Ctx_BaseURL
=== RUN   Test_Ctx_Body
=== PAUSE Test_Ctx_Body
=== RUN   Test_Ctx_BodyParser
=== PAUSE Test_Ctx_BodyParser
=== RUN   Test_Ctx_Context
=== PAUSE Test_Ctx_Context
=== RUN   Test_Ctx_Cookie
=== PAUSE Test_Ctx_Cookie
=== RUN   Test_Ctx_Cookies
=== PAUSE Test_Ctx_Cookies
=== RUN   Test_Ctx_Format
=== PAUSE Test_Ctx_Format
=== RUN   Test_Ctx_FormFile
=== PAUSE Test_Ctx_FormFile
=== RUN   Test_Ctx_FormValue
=== PAUSE Test_Ctx_FormValue
=== RUN   Test_Ctx_Fresh
=== PAUSE Test_Ctx_Fresh
=== RUN   Test_Ctx_Get
=== PAUSE Test_Ctx_Get
=== RUN   Test_Ctx_Hostname
=== PAUSE Test_Ctx_Hostname
=== RUN   Test_Ctx_IP
=== PAUSE Test_Ctx_IP
=== RUN   Test_Ctx_IP_ProxyHeader
=== PAUSE Test_Ctx_IP_ProxyHeader
=== RUN   Test_Ctx_IPs
=== PAUSE Test_Ctx_IPs
=== RUN   Test_Ctx_Is
=== PAUSE Test_Ctx_Is
=== RUN   Test_Ctx_Locals
--- PASS: Test_Ctx_Locals (0.00s)
=== RUN   Test_Ctx_Method
=== PAUSE Test_Ctx_Method
=== RUN   Test_Ctx_InvalidMethod
=== PAUSE Test_Ctx_InvalidMethod
=== RUN   Test_Ctx_MultipartForm
=== PAUSE Test_Ctx_MultipartForm
=== RUN   Test_Ctx_OriginalURL
=== PAUSE Test_Ctx_OriginalURL
=== RUN   Test_Ctx_Params
=== PAUSE Test_Ctx_Params
=== RUN   Test_Ctx_Path
=== PAUSE Test_Ctx_Path
=== RUN   Test_Ctx_Protocol
--- PASS: Test_Ctx_Protocol (0.00s)
=== RUN   Test_Ctx_Query
=== PAUSE Test_Ctx_Query
=== RUN   Test_Ctx_Range
=== PAUSE Test_Ctx_Range
=== RUN   Test_Ctx_Route
=== PAUSE Test_Ctx_Route
=== RUN   Test_Ctx_RouteNormalized
=== PAUSE Test_Ctx_RouteNormalized
=== RUN   Test_Ctx_SaveFile
=== PAUSE Test_Ctx_SaveFile
=== RUN   Test_Ctx_Secure
=== PAUSE Test_Ctx_Secure
=== RUN   Test_Ctx_Stale
=== PAUSE Test_Ctx_Stale
=== RUN   Test_Ctx_Subdomains
=== PAUSE Test_Ctx_Subdomains
=== RUN   Test_Ctx_ClearCookie
=== PAUSE Test_Ctx_ClearCookie
=== RUN   Test_Ctx_Download
=== PAUSE Test_Ctx_Download
=== RUN   Test_Ctx_SendFile
=== PAUSE Test_Ctx_SendFile
=== RUN   Test_Ctx_SendFile_404
=== PAUSE Test_Ctx_SendFile_404
=== RUN   Test_Ctx_SendFile_Immutable
=== PAUSE Test_Ctx_SendFile_Immutable
=== RUN   Test_Ctx_JSON
=== PAUSE Test_Ctx_JSON
=== RUN   Test_Ctx_JSONP
=== PAUSE Test_Ctx_JSONP
=== RUN   Test_Ctx_Links
=== PAUSE Test_Ctx_Links
=== RUN   Test_Ctx_Location
=== PAUSE Test_Ctx_Location
=== RUN   Test_Ctx_Next
--- PASS: Test_Ctx_Next (0.00s)
=== RUN   Test_Ctx_Next_Error
--- PASS: Test_Ctx_Next_Error (0.00s)
=== RUN   Test_Ctx_Redirect
=== PAUSE Test_Ctx_Redirect
=== RUN   Test_Ctx_Render
=== PAUSE Test_Ctx_Render
=== RUN   Test_Ctx_Render_Engine
--- PASS: Test_Ctx_Render_Engine (0.00s)
=== RUN   Test_Ctx_Render_Engine_Error
--- PASS: Test_Ctx_Render_Engine_Error (0.00s)
=== RUN   Test_Ctx_Render_Go_Template
=== PAUSE Test_Ctx_Render_Go_Template
=== RUN   Test_Ctx_Send
=== PAUSE Test_Ctx_Send
=== RUN   Test_Ctx_SendStatus
=== PAUSE Test_Ctx_SendStatus
=== RUN   Test_Ctx_SendString
=== PAUSE Test_Ctx_SendString
=== RUN   Test_Ctx_SendStream
=== PAUSE Test_Ctx_SendStream
=== RUN   Test_Ctx_Set
=== PAUSE Test_Ctx_Set
=== RUN   Test_Ctx_Set_Splitter
=== PAUSE Test_Ctx_Set_Splitter
=== RUN   Test_Ctx_Status
=== PAUSE Test_Ctx_Status
=== RUN   Test_Ctx_Type
=== PAUSE Test_Ctx_Type
=== RUN   Test_Ctx_Vary
=== PAUSE Test_Ctx_Vary
=== RUN   Test_Ctx_Write
=== PAUSE Test_Ctx_Write
=== RUN   Test_Ctx_WriteString
=== PAUSE Test_Ctx_WriteString
=== RUN   Test_Ctx_XHR
=== PAUSE Test_Ctx_XHR
=== RUN   Test_Ctx_QueryParser
=== PAUSE Test_Ctx_QueryParser
=== RUN   Test_Ctx_BodyStreamWriter
=== PAUSE Test_Ctx_BodyStreamWriter
=== RUN   Test_Ctx_String
=== PAUSE Test_Ctx_String
=== RUN   Test_Utils_ETag
=== RUN   Test_Utils_ETag/Not_Status_OK
=== RUN   Test_Utils_ETag/No_Body
=== RUN   Test_Utils_ETag/Has_HeaderIfNoneMatch
=== RUN   Test_Utils_ETag/No_HeaderIfNoneMatch
--- PASS: Test_Utils_ETag (0.00s)
    --- PASS: Test_Utils_ETag/Not_Status_OK (0.00s)
    --- PASS: Test_Utils_ETag/No_Body (0.00s)
    --- PASS: Test_Utils_ETag/Has_HeaderIfNoneMatch (0.00s)
    --- PASS: Test_Utils_ETag/No_HeaderIfNoneMatch (0.00s)
=== RUN   Test_Utils_ETag_Weak
=== RUN   Test_Utils_ETag_Weak/Set_Weak
=== RUN   Test_Utils_ETag_Weak/Match_Weak_ETag
=== RUN   Test_Utils_ETag_Weak/Not_Match_Weak_ETag
--- PASS: Test_Utils_ETag_Weak (0.00s)
    --- PASS: Test_Utils_ETag_Weak/Set_Weak (0.00s)
    --- PASS: Test_Utils_ETag_Weak/Match_Weak_ETag (0.00s)
    --- PASS: Test_Utils_ETag_Weak/Not_Match_Weak_ETag (0.00s)
=== RUN   Test_Utils_UniqueRouteStack
--- PASS: Test_Utils_UniqueRouteStack (0.00s)
=== RUN   Test_Utils_getGroupPath
=== PAUSE Test_Utils_getGroupPath
=== RUN   Test_Utils_Parse_Address
--- PASS: Test_Utils_Parse_Address (0.00s)
=== RUN   Test_Utils_GetOffset
--- PASS: Test_Utils_GetOffset (0.00s)
=== RUN   Test_Utils_TestAddr_Network
--- PASS: Test_Utils_TestAddr_Network (0.00s)
=== RUN   Test_Utils_TestConn_Deadline
--- PASS: Test_Utils_TestConn_Deadline (0.00s)
=== RUN   Test_Utils_IsNoCache
--- PASS: Test_Utils_IsNoCache (0.00s)
=== RUN   Test_Utils_lnMetadata
=== RUN   Test_Utils_lnMetadata/closed_listen
=== RUN   Test_Utils_lnMetadata/non_tls
=== RUN   Test_Utils_lnMetadata/tls
--- PASS: Test_Utils_lnMetadata (0.00s)
    --- PASS: Test_Utils_lnMetadata/closed_listen (0.00s)
    --- PASS: Test_Utils_lnMetadata/non_tls (0.00s)
    --- PASS: Test_Utils_lnMetadata/tls (0.00s)
=== RUN   Test_Path_parseRoute
--- PASS: Test_Path_parseRoute (0.00s)
=== RUN   Test_Path_matchParams
=== PAUSE Test_Path_matchParams
=== RUN   Test_Utils_GetTrimmedParam
=== PAUSE Test_Utils_GetTrimmedParam
=== RUN   Test_App_Prefork_Child_Process
--- PASS: Test_App_Prefork_Child_Process (2.10s)
=== RUN   Test_App_Prefork_Master_Process

 ┌───────────────────────────────────────────────────┐ 
 │                    Fiber v2.1.1                   │ 
 │               http://127.0.0.1:3000               │ 
 │                                                   │ 
 │ Handlers ............. 0  Threads ............. 1 │ 
 │ Prefork ....... Disabled  PID .............. 6096 │ 
 └───────────────────────────────────────────────────┘ 

go version go1.16.15 linux/arm64
--- PASS: Test_App_Prefork_Master_Process (0.00s)
=== RUN   Test_App_Prefork_Child_Process_Never_Show_Startup_Message
--- PASS: Test_App_Prefork_Child_Process_Never_Show_Startup_Message (0.00s)
=== RUN   Test_Route_Match_SameLength
--- PASS: Test_Route_Match_SameLength (0.00s)
=== RUN   Test_Route_Match_Star
--- PASS: Test_Route_Match_Star (0.00s)
=== RUN   Test_Route_Match_Root
--- PASS: Test_Route_Match_Root (0.00s)
=== RUN   Test_Route_Match_Parser
--- PASS: Test_Route_Match_Parser (0.00s)
=== RUN   Test_Route_Match_Middleware
--- PASS: Test_Route_Match_Middleware (0.00s)
=== RUN   Test_Route_Match_UnescapedPath
--- PASS: Test_Route_Match_UnescapedPath (0.00s)
=== RUN   Test_Route_Match_Middleware_HasPrefix
--- PASS: Test_Route_Match_Middleware_HasPrefix (0.00s)
=== RUN   Test_Route_Match_Middleware_Root
--- PASS: Test_Route_Match_Middleware_Root (0.00s)
=== RUN   Test_Router_Register_Missing_Handler
--- PASS: Test_Router_Register_Missing_Handler (0.00s)
=== RUN   Test_Ensure_Router_Interface_Implementation
--- PASS: Test_Ensure_Router_Interface_Implementation (0.00s)
=== RUN   Test_Router_Handler_SetETag
--- PASS: Test_Router_Handler_SetETag (0.00s)
=== CONT  Test_Ctx_Accepts
--- PASS: Test_Ctx_Accepts (0.00s)
=== CONT  Test_Utils_GetTrimmedParam
--- PASS: Test_Utils_GetTrimmedParam (0.00s)
=== CONT  Test_Path_matchParams
--- PASS: Test_Path_matchParams (0.00s)
=== CONT  Test_Utils_getGroupPath
--- PASS: Test_Utils_getGroupPath (0.00s)
=== CONT  Test_Ctx_String
--- PASS: Test_Ctx_String (0.00s)
=== CONT  Test_Ctx_BodyStreamWriter
--- PASS: Test_Ctx_BodyStreamWriter (0.00s)
=== CONT  Test_Ctx_QueryParser
--- PASS: Test_Ctx_QueryParser (0.00s)
=== CONT  Test_Ctx_XHR
--- PASS: Test_Ctx_XHR (0.00s)
=== CONT  Test_Ctx_WriteString
--- PASS: Test_Ctx_WriteString (0.00s)
=== CONT  Test_Ctx_Write
--- PASS: Test_Ctx_Write (0.00s)
=== CONT  Test_Ctx_Vary
--- PASS: Test_Ctx_Vary (0.00s)
=== CONT  Test_Ctx_Type
--- PASS: Test_Ctx_Type (0.00s)
=== CONT  Test_Ctx_Status
--- PASS: Test_Ctx_Status (0.00s)
=== CONT  Test_Ctx_Set_Splitter
--- PASS: Test_Ctx_Set_Splitter (0.00s)
=== CONT  Test_Ctx_Set
--- PASS: Test_Ctx_Set (0.00s)
=== CONT  Test_Ctx_SendStream
--- PASS: Test_Ctx_SendStream (0.00s)
=== CONT  Test_Ctx_SendString
--- PASS: Test_Ctx_SendString (0.00s)
=== CONT  Test_Ctx_SendStatus
--- PASS: Test_Ctx_SendStatus (0.00s)
=== CONT  Test_Ctx_Send
--- PASS: Test_Ctx_Send (0.00s)
=== CONT  Test_Ctx_Render_Go_Template
--- PASS: Test_Ctx_Render_Go_Template (0.00s)
=== CONT  Test_Ctx_Render
--- PASS: Test_Ctx_Render (0.00s)
=== CONT  Test_Ctx_Redirect
--- PASS: Test_Ctx_Redirect (0.00s)
=== CONT  Test_Ctx_Location
--- PASS: Test_Ctx_Location (0.00s)
=== CONT  Test_Ctx_Links
--- PASS: Test_Ctx_Links (0.00s)
=== CONT  Test_Ctx_JSONP
--- PASS: Test_Ctx_JSONP (0.00s)
=== CONT  Test_Ctx_JSON
--- PASS: Test_Ctx_JSON (0.00s)
=== CONT  Test_Ctx_SendFile_Immutable
--- PASS: Test_Ctx_SendFile_Immutable (0.00s)
=== CONT  Test_Ctx_SendFile_404
--- PASS: Test_Ctx_SendFile_404 (0.00s)
=== CONT  Test_Ctx_SendFile
--- PASS: Test_Ctx_SendFile (0.01s)
=== CONT  Test_Ctx_Download
--- PASS: Test_Ctx_Download (0.00s)
=== CONT  Test_Ctx_ClearCookie
--- PASS: Test_Ctx_ClearCookie (0.00s)
=== CONT  Test_Ctx_Subdomains
--- PASS: Test_Ctx_Subdomains (0.00s)
=== CONT  Test_Ctx_Stale
--- PASS: Test_Ctx_Stale (0.00s)
=== CONT  Test_Ctx_Secure
--- PASS: Test_Ctx_Secure (0.00s)
=== CONT  Test_Ctx_SaveFile
--- PASS: Test_Ctx_SaveFile (0.00s)
=== CONT  Test_Ctx_RouteNormalized
--- PASS: Test_Ctx_RouteNormalized (0.00s)
=== CONT  Test_Ctx_Route
--- PASS: Test_Ctx_Route (0.00s)
=== CONT  Test_Ctx_Range
--- PASS: Test_Ctx_Range (0.00s)
=== CONT  Test_Ctx_Query
--- PASS: Test_Ctx_Query (0.00s)
=== CONT  Test_Ctx_Path
--- PASS: Test_Ctx_Path (0.00s)
=== CONT  Test_Ctx_Params
--- PASS: Test_Ctx_Params (0.00s)
=== CONT  Test_Ctx_OriginalURL
--- PASS: Test_Ctx_OriginalURL (0.00s)
=== CONT  Test_Ctx_MultipartForm
--- PASS: Test_Ctx_MultipartForm (0.00s)
=== CONT  Test_Ctx_InvalidMethod
--- PASS: Test_Ctx_InvalidMethod (0.00s)
=== CONT  Test_Ctx_Method
--- PASS: Test_Ctx_Method (0.00s)
=== CONT  Test_Ctx_Is
--- PASS: Test_Ctx_Is (0.00s)
=== CONT  Test_Ctx_IPs
--- PASS: Test_Ctx_IPs (0.00s)
=== CONT  Test_Ctx_IP_ProxyHeader
--- PASS: Test_Ctx_IP_ProxyHeader (0.00s)
=== CONT  Test_Ctx_IP
--- PASS: Test_Ctx_IP (0.00s)
=== CONT  Test_Ctx_Hostname
--- PASS: Test_Ctx_Hostname (0.00s)
=== CONT  Test_Ctx_Get
--- PASS: Test_Ctx_Get (0.00s)
=== CONT  Test_Ctx_Fresh
--- PASS: Test_Ctx_Fresh (0.00s)
=== CONT  Test_Ctx_FormValue
--- PASS: Test_Ctx_FormValue (0.00s)
=== CONT  Test_Ctx_FormFile
--- PASS: Test_Ctx_FormFile (0.00s)
=== CONT  Test_Ctx_Format
--- PASS: Test_Ctx_Format (0.00s)
=== CONT  Test_Ctx_Cookies
--- PASS: Test_Ctx_Cookies (0.00s)
=== CONT  Test_Ctx_Cookie
--- PASS: Test_Ctx_Cookie (0.00s)
=== CONT  Test_Ctx_Context
--- PASS: Test_Ctx_Context (0.00s)
=== CONT  Test_Ctx_BodyParser
--- PASS: Test_Ctx_BodyParser (0.00s)
=== CONT  Test_Ctx_Body
--- PASS: Test_Ctx_Body (0.00s)
=== CONT  Test_Ctx_BaseURL
--- PASS: Test_Ctx_BaseURL (0.00s)
=== CONT  Test_Ctx_Attachment
--- PASS: Test_Ctx_Attachment (0.00s)
=== CONT  Test_Ctx_Append
--- PASS: Test_Ctx_Append (0.00s)
=== CONT  Test_Ctx_App
--- PASS: Test_Ctx_App (0.00s)
=== CONT  Test_Ctx_AcceptsLanguages
--- PASS: Test_Ctx_AcceptsLanguages (0.00s)
=== CONT  Test_Ctx_AcceptsEncodings
--- PASS: Test_Ctx_AcceptsEncodings (0.00s)
=== CONT  Test_Ctx_AcceptsCharsets
--- PASS: Test_Ctx_AcceptsCharsets (0.00s)
=== CONT  Test_Ctx_Accepts_Wildcard
--- PASS: Test_Ctx_Accepts_Wildcard (0.00s)
=== CONT  Test_Ctx_Accepts_EmptyAccept
--- PASS: Test_Ctx_Accepts_EmptyAccept (0.00s)
PASS
ok  	github.com/gofiber/fiber/v2	6.189s
?   	github.com/gofiber/fiber/v2/internal/bytebufferpool	[no test files]
?   	github.com/gofiber/fiber/v2/internal/colorable	[no test files]
?   	github.com/gofiber/fiber/v2/internal/encoding/ascii	[no test files]
?   	github.com/gofiber/fiber/v2/internal/encoding/iso8601	[no test files]
?   	github.com/gofiber/fiber/v2/internal/encoding/json	[no test files]
?   	github.com/gofiber/fiber/v2/internal/fasttemplate	[no test files]
=== RUN   Test_BasicAuth_Next
=== PAUSE Test_BasicAuth_Next
=== RUN   Test_Middleware_BasicAuth
=== PAUSE Test_Middleware_BasicAuth
=== CONT  Test_BasicAuth_Next
=== CONT  Test_Middleware_BasicAuth
--- PASS: Test_BasicAuth_Next (0.00s)
--- PASS: Test_Middleware_BasicAuth (0.00s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/basicauth	0.005s
=== RUN   Test_Cache_CacheControl
--- PASS: Test_Cache_CacheControl (0.00s)
=== RUN   Test_Cache_Expired
--- PASS: Test_Cache_Expired (1.00s)
=== RUN   Test_Cache
--- PASS: Test_Cache (0.00s)
=== RUN   Test_Cache_Invalid_Expiration
--- PASS: Test_Cache_Invalid_Expiration (0.00s)
=== RUN   Test_Cache_Invalid_Method
--- PASS: Test_Cache_Invalid_Method (0.00s)
=== RUN   Test_Cache_NothingToCache
--- PASS: Test_Cache_NothingToCache (0.50s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/cache	1.508s
=== RUN   Test_Compress_Gzip
--- PASS: Test_Compress_Gzip (0.00s)
=== RUN   Test_Compress_Different_Level
=== RUN   Test_Compress_Different_Level/level_1
=== RUN   Test_Compress_Different_Level/level_2
--- PASS: Test_Compress_Different_Level (0.00s)
    --- PASS: Test_Compress_Different_Level/level_1 (0.00s)
    --- PASS: Test_Compress_Different_Level/level_2 (0.00s)
=== RUN   Test_Compress_Deflate
--- PASS: Test_Compress_Deflate (0.00s)
=== RUN   Test_Compress_Brotli
--- PASS: Test_Compress_Brotli (0.00s)
=== RUN   Test_Compress_Disabled
--- PASS: Test_Compress_Disabled (0.00s)
=== RUN   Test_Compress_Next_Error
--- PASS: Test_Compress_Next_Error (0.00s)
=== RUN   Test_Compress_Next
--- PASS: Test_Compress_Next (0.00s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/compress	0.010s
=== RUN   Test_CORS_Defaults
--- PASS: Test_CORS_Defaults (0.00s)
=== RUN   Test_CORS_Empty_Config
--- PASS: Test_CORS_Empty_Config (0.00s)
=== RUN   Test_CORS_Wildcard
--- PASS: Test_CORS_Wildcard (0.00s)
=== RUN   Test_CORS_Subdomain
--- PASS: Test_CORS_Subdomain (0.00s)
=== RUN   Test_CORS_AllowOriginScheme
--- PASS: Test_CORS_AllowOriginScheme (0.00s)
=== RUN   Test_CORS_Next
--- PASS: Test_CORS_Next (0.00s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/cors	0.005s
=== RUN   Test_CSRF
--- PASS: Test_CSRF (0.00s)
=== RUN   Test_CSRF_Next
--- PASS: Test_CSRF_Next (0.00s)
=== RUN   Test_CSRF_Invalid_TokenLookup
--- PASS: Test_CSRF_Invalid_TokenLookup (0.00s)
=== RUN   Test_CSRF_From_Form
--- PASS: Test_CSRF_From_Form (0.00s)
=== RUN   Test_CSRF_From_Query
--- PASS: Test_CSRF_From_Query (0.00s)
=== RUN   Test_CSRF_From_Param
--- PASS: Test_CSRF_From_Param (0.00s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/csrf	0.005s
=== RUN   Test_ETag_Next
--- PASS: Test_ETag_Next (0.00s)
=== RUN   Test_ETag_SkipError
--- PASS: Test_ETag_SkipError (0.00s)
=== RUN   Test_ETag_NotStatusOK
--- PASS: Test_ETag_NotStatusOK (0.00s)
=== RUN   Test_ETag_NoBody
--- PASS: Test_ETag_NoBody (0.00s)
=== RUN   Test_ETag_NewEtag
=== RUN   Test_ETag_NewEtag/without_HeaderIfNoneMatch
=== RUN   Test_ETag_NewEtag/with_HeaderIfNoneMatch_and_not_matched
=== RUN   Test_ETag_NewEtag/with_HeaderIfNoneMatch_and_matched
--- PASS: Test_ETag_NewEtag (0.00s)
    --- PASS: Test_ETag_NewEtag/without_HeaderIfNoneMatch (0.00s)
    --- PASS: Test_ETag_NewEtag/with_HeaderIfNoneMatch_and_not_matched (0.00s)
    --- PASS: Test_ETag_NewEtag/with_HeaderIfNoneMatch_and_matched (0.00s)
=== RUN   Test_ETag_WeakEtag
=== RUN   Test_ETag_WeakEtag/without_HeaderIfNoneMatch
=== RUN   Test_ETag_WeakEtag/with_HeaderIfNoneMatch_and_not_matched
=== RUN   Test_ETag_WeakEtag/with_HeaderIfNoneMatch_and_matched
--- PASS: Test_ETag_WeakEtag (0.00s)
    --- PASS: Test_ETag_WeakEtag/without_HeaderIfNoneMatch (0.00s)
    --- PASS: Test_ETag_WeakEtag/with_HeaderIfNoneMatch_and_not_matched (0.00s)
    --- PASS: Test_ETag_WeakEtag/with_HeaderIfNoneMatch_and_matched (0.00s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/etag	0.006s
=== RUN   Test_Non_Expvar_Path
--- PASS: Test_Non_Expvar_Path (0.00s)
=== RUN   Test_Expvar_Index
--- PASS: Test_Expvar_Index (0.00s)
=== RUN   Test_Expvar_Filter
--- PASS: Test_Expvar_Filter (0.00s)
=== RUN   Test_Expvar_Other_Path
--- PASS: Test_Expvar_Other_Path (0.00s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/expvar	0.006s
=== RUN   Test_Middleware_Favicon
--- PASS: Test_Middleware_Favicon (0.00s)
=== RUN   Test_Middleware_Favicon_Not_Found
--- PASS: Test_Middleware_Favicon_Not_Found (0.00s)
=== RUN   Test_Middleware_Favicon_Found
--- PASS: Test_Middleware_Favicon_Found (0.00s)
=== RUN   Test_Middleware_Favicon_CacheControl
--- PASS: Test_Middleware_Favicon_CacheControl (0.00s)
=== RUN   Test_Favicon_Next
--- PASS: Test_Favicon_Next (0.00s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/favicon	0.005s
=== RUN   Test_FileSystem
=== RUN   Test_FileSystem/Should_be_returns_status_200_with_suitable_content-type
=== RUN   Test_FileSystem/Should_be_returns_status_200_with_suitable_content-type#01
=== RUN   Test_FileSystem/Should_be_returns_status_200_with_suitable_content-type#02
=== RUN   Test_FileSystem/Should_be_returns_status_404
=== RUN   Test_FileSystem/Should_be_returns_status_404#01
=== RUN   Test_FileSystem/Should_be_returns_status_200
=== RUN   Test_FileSystem/Should_be_returns_status_403
=== RUN   Test_FileSystem/Should_list_the_directory_contents
=== RUN   Test_FileSystem/Should_be_returns_status_200#01
=== RUN   Test_FileSystem/Should_be_return_status_200
--- PASS: Test_FileSystem (0.00s)
    --- PASS: Test_FileSystem/Should_be_returns_status_200_with_suitable_content-type (0.00s)
    --- PASS: Test_FileSystem/Should_be_returns_status_200_with_suitable_content-type#01 (0.00s)
    --- PASS: Test_FileSystem/Should_be_returns_status_200_with_suitable_content-type#02 (0.00s)
    --- PASS: Test_FileSystem/Should_be_returns_status_404 (0.00s)
    --- PASS: Test_FileSystem/Should_be_returns_status_404#01 (0.00s)
    --- PASS: Test_FileSystem/Should_be_returns_status_200 (0.00s)
    --- PASS: Test_FileSystem/Should_be_returns_status_403 (0.00s)
    --- PASS: Test_FileSystem/Should_list_the_directory_contents (0.00s)
    --- PASS: Test_FileSystem/Should_be_returns_status_200#01 (0.00s)
    --- PASS: Test_FileSystem/Should_be_return_status_200 (0.00s)
=== RUN   Test_FileSystem_Next
--- PASS: Test_FileSystem_Next (0.00s)
=== RUN   Test_FileSystem_NonGetAndHead
--- PASS: Test_FileSystem_NonGetAndHead (0.00s)
=== RUN   Test_FileSystem_Head
--- PASS: Test_FileSystem_Head (0.00s)
=== RUN   Test_FileSystem_NoRoot
--- PASS: Test_FileSystem_NoRoot (0.00s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/filesystem	0.005s
=== RUN   Test_Limiter_Concurrency
--- PASS: Test_Limiter_Concurrency (3.00s)
=== RUN   Test_Limiter_Next
--- PASS: Test_Limiter_Next (0.00s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/limiter	3.006s
=== RUN   Test_Logger
--- PASS: Test_Logger (0.00s)
=== RUN   Test_Logger_Next
--- PASS: Test_Logger_Next (0.00s)
=== RUN   Test_Logger_ErrorTimeZone
13:45:05 | 404 |      0s |         0.0.0.0 | GET     | /               
--- PASS: Test_Logger_ErrorTimeZone (0.00s)
=== RUN   Test_Logger_ErrorOutput
--- PASS: Test_Logger_ErrorOutput (0.00s)
=== RUN   Test_Logger_All
--- PASS: Test_Logger_All (0.00s)
=== RUN   Test_Logger_AppendUint
--- PASS: Test_Logger_AppendUint (0.00s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/logger	0.005s
=== RUN   Test_Monitor_405
=== PAUSE Test_Monitor_405
=== RUN   Test_Monitor_Html
=== PAUSE Test_Monitor_Html
=== RUN   Test_Monitor_JSON
=== PAUSE Test_Monitor_JSON
=== CONT  Test_Monitor_405
[Warning] monitor is still in beta, API might change in the future!
=== CONT  Test_Monitor_JSON
=== CONT  Test_Monitor_Html
--- PASS: Test_Monitor_405 (0.01s)
--- PASS: Test_Monitor_JSON (0.01s)
--- PASS: Test_Monitor_Html (0.01s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/monitor	0.014s
=== RUN   Test_Non_Pprof_Path
--- PASS: Test_Non_Pprof_Path (0.00s)
=== RUN   Test_Pprof_Index
--- PASS: Test_Pprof_Index (0.00s)
=== RUN   Test_Pprof_Subs
=== RUN   Test_Pprof_Subs/cmdline
=== RUN   Test_Pprof_Subs/profile
=== RUN   Test_Pprof_Subs/symbol
=== RUN   Test_Pprof_Subs/trace
=== RUN   Test_Pprof_Subs/allocs
=== RUN   Test_Pprof_Subs/block
=== RUN   Test_Pprof_Subs/goroutine
=== RUN   Test_Pprof_Subs/heap
=== RUN   Test_Pprof_Subs/mutex
=== RUN   Test_Pprof_Subs/threadcreate
--- PASS: Test_Pprof_Subs (2.03s)
    --- PASS: Test_Pprof_Subs/cmdline (0.00s)
    --- PASS: Test_Pprof_Subs/profile (1.00s)
    --- PASS: Test_Pprof_Subs/symbol (0.00s)
    --- PASS: Test_Pprof_Subs/trace (1.00s)
    --- PASS: Test_Pprof_Subs/allocs (0.00s)
    --- PASS: Test_Pprof_Subs/block (0.02s)
    --- PASS: Test_Pprof_Subs/goroutine (0.00s)
    --- PASS: Test_Pprof_Subs/heap (0.00s)
    --- PASS: Test_Pprof_Subs/mutex (0.00s)
    --- PASS: Test_Pprof_Subs/threadcreate (0.00s)
=== RUN   Test_Pprof_Other
--- PASS: Test_Pprof_Other (0.00s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/pprof	2.031s
=== RUN   Test_Proxy_Empty_Upstream_Servers
--- PASS: Test_Proxy_Empty_Upstream_Servers (0.00s)
=== RUN   Test_Proxy_Next
--- PASS: Test_Proxy_Next (0.00s)
=== RUN   Test_Proxy

 ┌───────────────────────────────────────────────────┐ 
 │                    Fiber v2.1.1                   │ 
 │               http://127.0.0.1:3001               │ 
 │                                                   │ 
 │ Handlers ............. 2  Threads ............ 64 │ 
 │ Prefork ....... Disabled  PID .............. 5982 │ 
 └───────────────────────────────────────────────────┘ 

--- PASS: Test_Proxy (1.00s)
=== RUN   Test_Proxy_Do_With_Error
--- PASS: Test_Proxy_Do_With_Error (0.00s)
=== RUN   Test_Proxy_Forward
--- PASS: Test_Proxy_Forward (1.00s)
=== RUN   Test_Proxy_Modify_Response
--- PASS: Test_Proxy_Modify_Response (1.00s)
=== RUN   Test_Proxy_Modify_Request
--- PASS: Test_Proxy_Modify_Request (1.00s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/proxy	4.010s
=== RUN   Test_Recover
--- PASS: Test_Recover (0.00s)
=== RUN   Test_Recover_Next
--- PASS: Test_Recover_Next (0.00s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/recover	0.008s
=== RUN   Test_RequestID
--- PASS: Test_RequestID (0.00s)
=== RUN   Test_RequestID_Next
--- PASS: Test_RequestID_Next (0.00s)
=== RUN   Test_RequestID_Locals
--- PASS: Test_RequestID_Locals (0.00s)
PASS
ok  	github.com/gofiber/fiber/v2/middleware/requestid	0.007s
testing: warning: no tests to run
PASS
ok  	github.com/gofiber/fiber/v2/middleware/timeout	0.005s [no tests to run]
=== RUN   Test_Utils_AssertEqual
=== PAUSE Test_Utils_AssertEqual
=== RUN   Test_Utils_ToLowerBytes
=== PAUSE Test_Utils_ToLowerBytes
=== RUN   Test_Utils_ToUpperBytes
=== PAUSE Test_Utils_ToUpperBytes
=== RUN   Test_Utils_TrimRightBytes
=== PAUSE Test_Utils_TrimRightBytes
=== RUN   Test_Utils_TrimLeftBytes
=== PAUSE Test_Utils_TrimLeftBytes
=== RUN   Test_Utils_TrimBytes
=== PAUSE Test_Utils_TrimBytes
=== RUN   Test_Utils_EqualsFold
=== PAUSE Test_Utils_EqualsFold
=== RUN   Test_Utils_FunctionName
=== PAUSE Test_Utils_FunctionName
=== RUN   Test_Utils_UUID
=== PAUSE Test_Utils_UUID
=== RUN   Test_Utils_UUID_Concurrency
=== PAUSE Test_Utils_UUID_Concurrency
=== RUN   Test_Utils_GetString
=== PAUSE Test_Utils_GetString
=== RUN   Test_Utils_GetBytes
=== PAUSE Test_Utils_GetBytes
=== RUN   Test_Utils_ImmutableString
=== PAUSE Test_Utils_ImmutableString
=== RUN   Test_Utils_GetMIME
=== PAUSE Test_Utils_GetMIME
=== RUN   Test_Utils_StatusMessage
=== PAUSE Test_Utils_StatusMessage
=== RUN   Test_Utils_ToUpper
=== PAUSE Test_Utils_ToUpper
=== RUN   Test_Utils_ToLower
=== PAUSE Test_Utils_ToLower
=== RUN   Test_Utils_TrimRight
=== PAUSE Test_Utils_TrimRight
=== RUN   Test_Utils_TrimLeft
=== PAUSE Test_Utils_TrimLeft
=== RUN   Test_Utils_Trim
=== PAUSE Test_Utils_Trim
=== CONT  Test_Utils_AssertEqual
--- PASS: Test_Utils_AssertEqual (0.00s)
=== CONT  Test_Utils_UUID
--- PASS: Test_Utils_UUID (0.00s)
=== CONT  Test_Utils_TrimRight
--- PASS: Test_Utils_TrimRight (0.00s)
=== CONT  Test_Utils_TrimRightBytes
--- PASS: Test_Utils_TrimRightBytes (0.00s)
=== CONT  Test_Utils_ToUpperBytes
--- PASS: Test_Utils_ToUpperBytes (0.00s)
=== CONT  Test_Utils_ToLowerBytes
--- PASS: Test_Utils_ToLowerBytes (0.00s)
=== CONT  Test_Utils_GetMIME
--- PASS: Test_Utils_GetMIME (0.00s)
=== CONT  Test_Utils_TrimLeftBytes
--- PASS: Test_Utils_TrimLeftBytes (0.00s)
=== CONT  Test_Utils_ToLower
--- PASS: Test_Utils_ToLower (0.00s)
=== CONT  Test_Utils_ToUpper
--- PASS: Test_Utils_ToUpper (0.00s)
=== CONT  Test_Utils_StatusMessage
--- PASS: Test_Utils_StatusMessage (0.00s)
=== CONT  Test_Utils_EqualsFold
--- PASS: Test_Utils_EqualsFold (0.00s)
=== CONT  Test_Utils_FunctionName
--- PASS: Test_Utils_FunctionName (0.00s)
=== CONT  Test_Utils_TrimBytes
--- PASS: Test_Utils_TrimBytes (0.00s)
=== CONT  Test_Utils_Trim
--- PASS: Test_Utils_Trim (0.00s)
=== CONT  Test_Utils_TrimLeft
--- PASS: Test_Utils_TrimLeft (0.00s)
=== CONT  Test_Utils_GetString
--- PASS: Test_Utils_GetString (0.00s)
=== CONT  Test_Utils_GetBytes
--- PASS: Test_Utils_GetBytes (0.00s)
=== CONT  Test_Utils_ImmutableString
--- PASS: Test_Utils_ImmutableString (0.00s)
=== CONT  Test_Utils_UUID_Concurrency
--- PASS: Test_Utils_UUID_Concurrency (0.01s)
PASS
ok  	github.com/gofiber/fiber/v2/utils	0.011s
