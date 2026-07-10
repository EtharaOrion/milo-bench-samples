
> fastify@2.9.0 unit
> tap --no-esm -J test/*.test.js test/*/*.test.js --reporter=spec


(node:235) Warning: Using 'genReqId' in logger options is deprecated. Use fastify options instead. See: https://www.fastify.io/docs/latest/Server/#gen-request-id
(Use `node --trace-warnings ...` to show where the warning was created)
(node:235) Warning: basePath is deprecated. Use prefix instead. See: https://www.fastify.io/docs/latest/Server/#prefix
(node:235) Warning: The route option `beforeHandler` has been deprecated, use `preHandler` instead
(node:522) Warning: The route option `beforeHandler` has been deprecated, use `preHandler` instead
(Use `node --trace-warnings ...` to show where the warning was created)
test/404s.test.js
  default 404

    ✓ should not error
    unsupported method

      1) connect ECONNREFUSED 127.0.0.1:45619

      2) Cannot read properties of undefined (reading 'statusCode')

      3) test count !== plan
    unsupported route

      4) connect ECONNREFUSED 127.0.0.1:45619

      5) Cannot read properties of undefined (reading 'statusCode')

      6) test count !== plan

  customized 404

    ✓ should not error
    unsupported method

      7) connect ECONNREFUSED 127.0.0.1:33741

      8) Cannot read properties of undefined (reading 'statusCode')

      9) test count !== plan
    unsupported route

      10) connect ECONNREFUSED 127.0.0.1:33741

      11) Cannot read properties of undefined (reading 'statusCode')

      12) test count !== plan
    with error object

      13) connect ECONNREFUSED 127.0.0.1:33741

      14) Cannot read properties of undefined (reading 'statusCode')

      15) test count !== plan
    error object with headers property

      16) connect ECONNREFUSED 127.0.0.1:33741

      17) Cannot read properties of undefined (reading 'statusCode')

      18) test count !== plan

  custom header in notFound handler

    ✓ should not error
    not found with custom header

      19) connect ECONNREFUSED 127.0.0.1:33985

      20) Cannot read properties of undefined (reading 'statusCode')

      21) test count !== plan

  setting a custom 404 handler multiple times is an error
    at the root level

      ✓ type is Error

      ✓ should be equal
    at the plugin level

      ✓ type is Error

      ✓ should be equal

      ✓ should not error
    at multiple levels

      ✓ type is Error

      ✓ should be equal

      ✓ should not error
    at multiple levels / 2

      ✓ type is Error

      ✓ should be equal

      ✓ should not error
    in separate plugins at the same level

      ✓ type is Error

      ✓ should be equal

      ✓ should not error

  encapsulated 404

    ✓ should not error
    root unsupported method

      22) connect ECONNREFUSED 127.0.0.1:41115

      23) Cannot read properties of undefined (reading 'statusCode')

      24) test count !== plan
    root insupported route

      25) connect ECONNREFUSED 127.0.0.1:41115

      26) Cannot read properties of undefined (reading 'statusCode')

      27) test count !== plan
    unsupported method

      28) connect ECONNREFUSED 127.0.0.1:41115

      29) Cannot read properties of undefined (reading 'statusCode')

      30) test count !== plan
    unsupported route

      31) connect ECONNREFUSED 127.0.0.1:41115

      32) Cannot read properties of undefined (reading 'statusCode')

      33) test count !== plan
    unsupported method bis

      34) connect ECONNREFUSED 127.0.0.1:41115

      35) Cannot read properties of undefined (reading 'statusCode')

      36) test count !== plan
    unsupported route bis

      37) connect ECONNREFUSED 127.0.0.1:41115

      38) Cannot read properties of undefined (reading 'statusCode')

      39) test count !== plan
    unsupported method 3

      40) connect ECONNREFUSED 127.0.0.1:41115

      41) Cannot read properties of undefined (reading 'statusCode')

      42) test count !== plan
    unsupported route 3

      43) connect ECONNREFUSED 127.0.0.1:41115

      44) Cannot read properties of undefined (reading 'statusCode')

      45) test count !== plan

  custom 404 hook and handler context

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  encapsulated custom 404 without - prefix hook and handler context

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  run hooks and middleware on default 404

    ✓ should not error

    46) connect ECONNREFUSED 127.0.0.1:32863

    47) Cannot read properties of undefined (reading 'statusCode')

    48) test count !== plan

  run non-encapsulated plugin hooks and middleware on default 404

    ✓ onRequest called

    ✓ middleware called

    ✓ preHandler called

    ✓ onSend called

    ✓ onResponse called

    ✓ should not error

    ✓ should be equal

  run non-encapsulated plugin hooks and middleware on custom 404

    ✓ onRequest called

    ✓ onRequest called

    ✓ middleware called

    ✓ middleware called

    ✓ preHandler called

    ✓ preHandler called

    ✓ onSend called

    ✓ onSend called

    ✓ onResponse called

    ✓ onResponse called

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  run hooks and middleware with encapsulated 404

    ✓ should not error

    49) connect ECONNREFUSED 127.0.0.1:46157

    50) Cannot read properties of undefined (reading 'statusCode')

    51) test count !== plan

  run middlewares on default 404

    ✓ should not error

    52) connect ECONNREFUSED 127.0.0.1:43461

    53) Cannot read properties of undefined (reading 'statusCode')

    54) test count !== plan

  run middlewares with encapsulated 404

    ✓ should not error

    55) connect ECONNREFUSED 127.0.0.1:39533

    56) Cannot read properties of undefined (reading 'statusCode')

    57) test count !== plan

  hooks check 404

    ✓ should not error

    58) connect ECONNREFUSED 127.0.0.1:43013

    59) Cannot read properties of undefined (reading 'statusCode')

    60) test count !== plan

  setNotFoundHandler should not suppress duplicated routes checking

    61) connect ECONNREFUSED 127.0.0.1:43013

    ✓ expect truthy value

    62) test count !== plan

  log debug for 404
    log debug

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

  Unknown method

    ✓ should not error

    ✓ expected to throw

    63) connect ECONNREFUSED 127.0.0.1:39455

    64) Cannot read properties of undefined (reading 'statusCode')

    65) test count !== plan

  recognizes errors from the http-errors module

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    66) connect ECONNREFUSED 127.0.0.1:35637

    67) Cannot read properties of undefined (reading 'toString')

  the default 404 handler can be invoked inside a prefixed plugin

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent strictly

  an inherited custom 404 handler can be invoked inside a prefixed plugin

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  encapsulated custom 404 handler without a prefix is the handler for the entire 404 level

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  cannot set notFoundHandler after binding

    ✓ should not error

    ✓ (unnamed test)

  404 inside onSend

    ✓ should not error

    68) connect ECONNREFUSED 127.0.0.1:41577

    69) Cannot read properties of undefined (reading 'statusCode')

  Not found on supported method (should return a 404)

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    70) connect ECONNREFUSED 127.0.0.1:37405

    71) Cannot read properties of undefined (reading 'statusCode')

  Not found on unsupported method (should return a 404)

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    72) connect ECONNREFUSED 127.0.0.1:35191

    73) Cannot read properties of undefined (reading 'statusCode')

  onSend hooks run when an encapsulated route invokes the notFound handler

    ✓ onSend hook called

    ✓ should not error

    ✓ should be equal

  preHandler option for setNotFoundHandler
    preHandler option

      ✓ should not error

      ✓ should be equivalent
    preHandler option should be called after preHandler hook

      ✓ should not error

      ✓ should be equivalent
    preHandler option should be unique per prefix

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent
    preHandler option should handle errors

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    preHandler option should handle errors with custom status code

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    preHandler option could accept an array of functions

      ✓ should not error

      ✓ should be equivalent
    preHandler option does not interfere with preHandler

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent
    preHandler option should keep the context

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent

  reply.notFound invoked the notFound handler

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  The custom error handler should be invoked after the custom not found handler

    ✓ should be equal

    ✓ should be equal

    ✓ type is Error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  If the custom not found handler does not use an Error, the custom error handler should not be called

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  preValidation option

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equivalent

  preValidation option could accept an array of functions

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equivalent

  Should fail to invoke callNotFound inside a 404 handler

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal


  74) Cannot read properties of undefined (reading 'statusCode')
test/500s.test.js
  default 500

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  custom 500

    ✓ type is object

    ✓ type is _Request

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  encapsulated 500

    ✓ type is object

    ✓ type is _Request

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  custom 500 with hooks

    ✓ onRequest

    ✓ onSend

    ✓ onResponse

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  cannot set errorHandler after binding

    ✓ should not error

    ✓ (unnamed test)

test/async-await.test.js
  async await

    ✓ (unnamed test)

    ✓ (unnamed test)

    ✓ should not error

    75) connect ECONNREFUSED 127.0.0.1:40423

    76) Cannot read properties of undefined (reading 'statusCode')

    77) test count !== plan

  ignore the result of the promise if reply.send is called beforehand (undefined)

    78) connect ECONNREFUSED 127.0.0.1:40423

    ✓ should not error

    79) connect ECONNREFUSED 127.0.0.1:42947

    80) "undefined" is not valid JSON

  ignore the result of the promise if reply.send is called beforehand (object)

    ✓ should not error

    81) connect ECONNREFUSED 127.0.0.1:38951

    82) "undefined" is not valid JSON

    83) test count !== plan

  server logs an error if reply.send is called and a value is returned via async/await

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equivalent

    ✓ should be equal

  ignore the result of the promise if reply.send is called beforehand (undefined)

    ✓ should not error

    84) connect ECONNREFUSED 127.0.0.1:38441

    85) "undefined" is not valid JSON

    86) test count !== plan

  ignore the result of the promise if reply.send is called beforehand (object)

    ✓ should not error

    87) connect ECONNREFUSED 127.0.0.1:39209

    88) "undefined" is not valid JSON

    89) test count !== plan

  await reply if we will be calling reply.send in the future

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equivalent

  await reply if we will be calling reply.send in the future (error case)

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  support reply decorators with await

    ✓ should not error

    ✓ should be equivalent

  support 204

    ✓ should not error

    ✓ should be equal

  inject async await

    ✓ should be equivalent

  inject async await - when the server is up

    ✓ should be equivalent

    ✓ should be equivalent

  async await plugin

    ✓ should be equivalent

  does not call reply.send() twice if 204 reponse is already sent

    ✓ should not error

    ✓ should be equal

  error is logged because promise was fulfilled with undefined

    ✓ should not error

    90) should be equal

    91) test unfinished


  92) child test left in queue: t.test error is not logged because promise was fulfilled with undefined but statusCode 204 was set

  93) child test left in queue: t.test error is not logged because promise was fulfilled with undefined but response was sent before promise resolution

  94) child test left in queue: t.test Thrown Error instance sets HTTP status code

  95) child test left in queue: t.test customErrorHandler support

  96) child test left in queue: t.test customErrorHandler support without throwing

  97) Cannot read properties of undefined (reading 'statusCode')

  98) test count !== plan
test/bodyLimit.test.js
  bodyLimit

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    99) connect ECONNREFUSED 127.0.0.1:41095

    100) Cannot read properties of undefined (reading 'statusCode')

test/case-insensitive.test.js
  case insensitive

    ✓ should not error

    101) connect ECONNREFUSED 127.0.0.1:46199

    102) Cannot read properties of undefined (reading 'statusCode')

    103) test count !== plan

  case insensitive inject

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  case insensitive (parametric)

    ✓ should not error

    104) connect ECONNREFUSED 127.0.0.1:44905

    105) Cannot read properties of undefined (reading 'statusCode')

    106) test count !== plan

  case insensitive (wildcard)

    ✓ should not error

    107) connect ECONNREFUSED 127.0.0.1:43807

    108) Cannot read properties of undefined (reading 'statusCode')

    109) test count !== plan

test/chainable.test.js
  chainable - get

    ✓ type is [object Object]

  chainable - post

    ✓ type is [object Object]

  chainable - route

    ✓ type is [object Object]

test/close-pipelining.test.js
  Should return 503 while closing - pipelining

    ✓ should not error

    110) should be equal

    111) should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

  Should not return 503 while closing - pipelining - return503OnClosing

    ✓ should not error

    112) should be equal

    113) should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal


  114) test count !== plan
test/close.test.js
  close callback

    ✓ should not error

    ✓ type is [object Object]

    ✓ should not error

    ✓ expect truthy value

  inside register

    ✓ should not error

    ✓ expect truthy value

    ✓ should be equal

    ✓ should not error

    ✓ expect truthy value

  close order

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  should not throw an error if the server is not listening

    ✓ type is [object Object]

    ✓ should not error

  onClose should keep the context

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should be equal

    ✓ should not error

  Should return error while closing - injection

    ✓ should not error

    ✓ should be equal

    ✓ expect truthy value

    ✓ should be equal

  Current opened connection should continue to work after closing and return "connection: close" header - return503OnClosing: false

    ✓ should not error

    115) test count !== plan

  test/content-length.test.js
    default 413 with bodyLimit option

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    default 400 with wrong content-length

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    custom 413 with bodyLimit option

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    custom 400 with wrong content-length

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent

  test/context-config.test.js
    config

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

  test/custom-http-server.test.js
    Should support a custom http server

      ✓ expect truthy value

      ✓ should not error

      116) connect ECONNREFUSED 127.0.0.1:41763

      117) Cannot read properties of undefined (reading 'statusCode')

      118) test count !== plan

  test/custom-parser.test.js
    contentTypeParser should add a custom async parser

      ✓ should not error
      in POST

        119) connect ECONNREFUSED 127.0.0.1:46825

        120) Cannot read properties of undefined (reading 'statusCode')

        121) test count !== plan
      in OPTIONS

        122) connect ECONNREFUSED 127.0.0.1:46825

        123) Cannot read properties of undefined (reading 'statusCode')

        124) test count !== plan
    contentTypeParser method should exist

      ✓ expect truthy value
    contentTypeParser should add a custom parser

      ✓ should not error
      in POST

        125) connect ECONNREFUSED 127.0.0.1:37201

        126) Cannot read properties of undefined (reading 'statusCode')

        127) test count !== plan
      in OPTIONS

        128) connect ECONNREFUSED 127.0.0.1:37201

        129) Cannot read properties of undefined (reading 'statusCode')

        130) test count !== plan
    contentTypeParser should handle multiple custom parsers

      ✓ should not error

      131) connect ECONNREFUSED 127.0.0.1:46741

      132) Cannot read properties of undefined (reading 'statusCode')

      133) test count !== plan
    contentTypeParser should handle an array of custom contentTypes

      134) connect ECONNREFUSED 127.0.0.1:46741

      ✓ should not error

      135) connect ECONNREFUSED 127.0.0.1:41755

      136) Cannot read properties of undefined (reading 'statusCode')

      137) test count !== plan
    contentTypeParser should handle errors

      138) connect ECONNREFUSED 127.0.0.1:41755

      ✓ should not error

      139) connect ECONNREFUSED 127.0.0.1:39229

      140) Cannot read properties of undefined (reading 'statusCode')

      141) test count !== plan
    contentTypeParser should support encapsulation

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ expect falsey value

      ✓ expect falsey value
    contentTypeParser should support encapsulation, second try

      ✓ should not error

      142) connect ECONNREFUSED 127.0.0.1:33769

      143) Cannot read properties of undefined (reading 'statusCode')

      144) test count !== plan
    contentTypeParser shouldn't support request with undefined "Content-Type"

      ✓ should not error

      145) connect ECONNREFUSED 127.0.0.1:34551

      146) Cannot read properties of undefined (reading 'statusCode')
    the content type should be a string

      ✓ should be equal
    the content type cannot be an empty string

      ✓ should be equal
    the content type handler should be a function

      ✓ should be equal
    catch all content type parser

      ✓ should not error

      147) connect ECONNREFUSED 127.0.0.1:39507

      148) Cannot read properties of undefined (reading 'statusCode')

      149) test count !== plan
    catch all content type parser should not interfere with other conte type parsers

      ✓ should not error

      150) connect ECONNREFUSED 127.0.0.1:32903

      151) Cannot read properties of undefined (reading 'statusCode')

      152) test count !== plan
    '*' catch undefined Content-Type requests

      ✓ should not error

      153) connect ECONNREFUSED 127.0.0.1:35903

      154) Cannot read properties of undefined (reading 'statusCode')

      155) test count !== plan
    cannot add custom parser after binding

      ✓ should not error

      ✓ (unnamed test)
    Can override the default json parser

      ✓ should not error

      156) connect ECONNREFUSED 127.0.0.1:42621

      157) Cannot read properties of undefined (reading 'statusCode')

      158) test count !== plan
    Can override the default plain text parser

      ✓ should not error

      159) connect ECONNREFUSED 127.0.0.1:37191

      160) Cannot read properties of undefined (reading 'statusCode')

      161) test count !== plan
    Can override the default json parser in a plugin

      ✓ should not error

      162) connect ECONNREFUSED 127.0.0.1:42889

      163) Cannot read properties of undefined (reading 'statusCode')

      164) test count !== plan
    Can't override the json parser multiple times

      ✓ should be equal
    Can't override the plain text parser multiple times

      ✓ should be equal
    Should get the body as string

      ✓ should not error

      165) connect ECONNREFUSED 127.0.0.1:41287

      166) Cannot read properties of undefined (reading 'statusCode')

      167) test count !== plan
    Should return defined body with no custom parser defined and content type = 'text/plain'

      ✓ should not error

      168) connect ECONNREFUSED 127.0.0.1:37523

      169) Cannot read properties of undefined (reading 'statusCode')

      170) test count !== plan
    Should have typeof body object with no custom parser defined, no body defined and content type = 'text/plain'

      ✓ should not error

      171) connect ECONNREFUSED 127.0.0.1:44421

      172) Cannot read properties of undefined (reading 'statusCode')

      173) test count !== plan
    Should have typeof body object with no custom parser defined, null body and content type = 'text/plain'

      ✓ should not error

      174) connect ECONNREFUSED 127.0.0.1:40319

      175) Cannot read properties of undefined (reading 'statusCode')

      176) test count !== plan
    Should have typeof body object with no custom parser defined, undefined body and content type = 'text/plain'

      ✓ should not error

      177) connect ECONNREFUSED 127.0.0.1:32849

      178) Cannot read properties of undefined (reading 'statusCode')

      179) test count !== plan
    Should get the body as string

      ✓ should not error

      180) connect ECONNREFUSED 127.0.0.1:46865

      181) Cannot read properties of undefined (reading 'statusCode')

      182) test count !== plan
    Should get the body as buffer

      ✓ should not error

      183) connect ECONNREFUSED 127.0.0.1:45499

      184) Cannot read properties of undefined (reading 'statusCode')

      185) test count !== plan
    Should get the body as buffer

      ✓ should not error

      186) connect ECONNREFUSED 127.0.0.1:40739

      187) Cannot read properties of undefined (reading 'statusCode')

      188) test count !== plan
    Should parse empty bodies as a string

      ✓ should not error

      189) connect ECONNREFUSED 127.0.0.1:44807

      190) Cannot read properties of undefined (reading 'statusCode')

      191) test count !== plan
    Should parse empty bodies as a buffer

      192) connect ECONNREFUSED 127.0.0.1:44807

      ✓ should not error

      193) connect ECONNREFUSED 127.0.0.1:36325

      194) Cannot read properties of undefined (reading 'statusCode')

      195) test count !== plan
    The charset should not interfere with the content type handling

      ✓ should not error

      196) connect ECONNREFUSED 127.0.0.1:41817

      197) Cannot read properties of undefined (reading 'statusCode')

      198) test count !== plan
    Wrong parseAs parameter

      ✓ should be equal
    Should allow defining the bodyLimit per parser

      ✓ should not error

      199) connect ECONNREFUSED 127.0.0.1:40401

      200) Cannot read properties of undefined (reading 'toString')
    route bodyLimit should take precedence over a custom parser bodyLimit

      ✓ should not error

      201) connect ECONNREFUSED 127.0.0.1:41105

      202) Cannot read properties of undefined (reading 'toString')

    203) Cannot read properties of undefined (reading 'statusCode')

    204) Cannot read properties of undefined (reading 'statusCode')

    205) Cannot read properties of undefined (reading 'statusCode')

    206) timeout!

  test/custom-querystring-parser.test.js
    Custom querystring parser

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal
    Custom querystring parser should be called also if there is nothing to parse

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal
    Querystring without value

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal
    Custom querystring parser should be a function

      ✓ should be equal

  test/decorator.test.js
    server methods should exist

      ✓ expect truthy value

      ✓ expect truthy value
    server methods should be incapsulated via .register

      ✓ expect truthy value

      ✓ expect falsey value
    hasServerMethod should check if the given method already exist

      ✓ expect truthy value

      ✓ expect falsey value
    decorate should throw if a declared dependency is not present

      ✓ should be equal

      ✓ (unnamed test)
    should pass error for missing request decorator

      ✓ type is Error

      ✓ should match pattern provided
    decorateReply inside register

      ✓ expect truthy value

      ✓ should not error

      207) connect ECONNREFUSED 127.0.0.1:33679

      208) Cannot read properties of undefined (reading 'statusCode')

      209) test count !== plan
    decorateReply as plugin (inside .after)

      210) connect ECONNREFUSED 127.0.0.1:33679

      ✓ should not error

      211) connect ECONNREFUSED 127.0.0.1:39213

      212) Cannot read properties of undefined (reading 'statusCode')

      213) test count !== plan
    decorateReply as plugin (outside .after)

      214) connect ECONNREFUSED 127.0.0.1:39213

      ✓ should not error

      215) connect ECONNREFUSED 127.0.0.1:45933

      216) Cannot read properties of undefined (reading 'statusCode')

      217) test count !== plan
    decorateRequest inside register

      218) connect ECONNREFUSED 127.0.0.1:45933

      ✓ expect truthy value

      ✓ should not error

      219) connect ECONNREFUSED 127.0.0.1:44189

      220) Cannot read properties of undefined (reading 'statusCode')

      221) test count !== plan
    decorateRequest as plugin (inside .after)

      222) connect ECONNREFUSED 127.0.0.1:44189

      ✓ should not error

      223) connect ECONNREFUSED 127.0.0.1:38957

      224) Cannot read properties of undefined (reading 'statusCode')

      225) test count !== plan
    decorateRequest as plugin (outside .after)

      226) connect ECONNREFUSED 127.0.0.1:38957

      ✓ should not error

      227) connect ECONNREFUSED 127.0.0.1:41789

      228) Cannot read properties of undefined (reading 'statusCode')

      229) test count !== plan
    decorators should be instance separated

      ✓ (unnamed test)
    hasRequestDecorator
      is a function

        ✓ expect truthy value
      should check if the given request decoration already exist

        ✓ expect falsey value

        ✓ expect truthy value
      should be plugin encapsulable

        ✓ expect falsey value

        ✓ expect falsey value

        230) test count !== plan

      ✓ expect truthy value

      ✓ expect falsey value

      231) test count !== plan
      should be inherited

        ✓ expect truthy value

        ✓ expect truthy value

      232) test count !== plan
    hasReplyDecorator
      is a function

        ✓ expect truthy value
      should check if the given reply decoration already exist

        ✓ expect falsey value

        ✓ expect truthy value
      should be plugin encapsulable

        ✓ expect falsey value

        ✓ expect falsey value

        ✓ expect truthy value

        ✓ expect falsey value
      should be inherited

        ✓ expect truthy value

        ✓ expect truthy value
    should register properties via getter/setter objects

      ✓ expect truthy value

      ✓ should be equal

      ✓ expect falsey value
    decorateRequest should work with getter/setter

      ✓ should not error

      ✓ should be equivalent

      ✓ expect falsey value

      ✓ should not error

      ✓ (unnamed test)
    decorateReply should work with getter/setter

      ✓ should not error

      ✓ should be equivalent

      ✓ expect falsey value

      ✓ should not error

      ✓ (unnamed test)
    should register empty values

      ✓ expect truthy value

      ✓ expect falsey value
    nested plugins can override things

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    a decorator should addSchema to all the encapsulated tree

      ✓ should not error

    233) Cannot read properties of undefined (reading 'statusCode')

    234) Cannot read properties of undefined (reading 'statusCode')

    235) Cannot read properties of undefined (reading 'statusCode')

    236) Cannot read properties of undefined (reading 'statusCode')

    237) Cannot read properties of undefined (reading 'statusCode')

    238) Cannot read properties of undefined (reading 'statusCode')

  test/delete.test.js
    shorthand - delete

      ✓ (unnamed test)
    shorthand - delete params

      ✓ (unnamed test)
    shorthand - delete, querystring schema

      ✓ (unnamed test)
    shorthand - get, headers schema

      ✓ (unnamed test)
    missing schema - delete

      ✓ (unnamed test)
    body - delete

      ✓ (unnamed test)
    shorthand - delete with application/json Content-Type header and without body

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

    ✓ should not error
    shorthand - request delete

      239) connect ECONNREFUSED 127.0.0.1:45759

      240) Cannot read properties of undefined (reading 'statusCode')

      241) test count !== plan
    shorthand - request delete params schema

      242) connect ECONNREFUSED 127.0.0.1:45759

      243) Cannot read properties of undefined (reading 'statusCode')

      244) test count !== plan
    shorthand - request delete params schema error

      245) connect ECONNREFUSED 127.0.0.1:45759

      246) Cannot read properties of undefined (reading 'statusCode')

      247) test count !== plan
    shorthand - request delete headers schema

      248) connect ECONNREFUSED 127.0.0.1:45759

      249) Cannot read properties of undefined (reading 'statusCode')

      250) test count !== plan
    shorthand - request delete headers schema error

      251) connect ECONNREFUSED 127.0.0.1:45759

      252) Cannot read properties of undefined (reading 'statusCode')

      253) test count !== plan
    shorthand - request delete querystring schema

      254) connect ECONNREFUSED 127.0.0.1:45759

      255) Cannot read properties of undefined (reading 'statusCode')

      256) test count !== plan
    shorthand - request delete querystring schema error

      257) connect ECONNREFUSED 127.0.0.1:45759

      258) Cannot read properties of undefined (reading 'statusCode')

      259) test count !== plan
    shorthand - request delete missing schema

      260) connect ECONNREFUSED 127.0.0.1:45759

      261) Cannot read properties of undefined (reading 'statusCode')

      262) test count !== plan
    shorthand - delete with body

      263) connect ECONNREFUSED 127.0.0.1:45759

      264) Cannot read properties of undefined (reading 'statusCode')

      265) test count !== plan

  test/emit-warning.test.js
    should emit warning using genReqId prop in logger options

      ✓ should be equal
    should emit warning if basePath prop is used

      ✓ should be equal
    should emit warning if preHandler is used

      ✓ should be equal

  test/error-in-post.test.js

    ✓ should be equal

  test/fastify-instance.test.js
    root fastify instance is an object

      ✓ type is object

  test/fluent-schema.test.js
    fluent-schema generate a valid JSON Schema in "$ref-way"

      ✓ should not error
    fluent-schema generate a valid JSON Schema in "replace-way"

      ✓ should not error
    fluent-schema mix-up of "$ref-way" and "replace-way"

      ✓ should not error
    Should call valueOf internally

      ✓ should not error

  test/genReqId.test.js
    Should accept a custom genReqId function

      ✓ should not error

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

  test/get.test.js
    shorthand - get

      ✓ (unnamed test)
    shorthand - get (return null)

      ✓ (unnamed test)
    shorthand - get params

      ✓ (unnamed test)
    shorthand - get, querystring schema

      ✓ (unnamed test)
    shorthand - get, headers schema

      ✓ (unnamed test)
    missing schema - get

      ✓ (unnamed test)
    custom serializer - get

      ✓ (unnamed test)
    empty response

      ✓ (unnamed test)
    send a falsy boolean

      ✓ (unnamed test)

    ✓ should not error
    shorthand - request get

      266) connect ECONNREFUSED 127.0.0.1:39179

      267) Cannot read properties of undefined (reading 'statusCode')

      268) test count !== plan
    shorthand - request get params schema

      269) connect ECONNREFUSED 127.0.0.1:39179

      270) Cannot read properties of undefined (reading 'statusCode')

      271) test count !== plan
    shorthand - request get params schema error

      272) connect ECONNREFUSED 127.0.0.1:39179

      273) Cannot read properties of undefined (reading 'statusCode')

      274) test count !== plan
    shorthand - request get headers schema

      275) connect ECONNREFUSED 127.0.0.1:39179

      276) Cannot read properties of undefined (reading 'statusCode')

      277) test count !== plan
    shorthand - request get headers schema error

      278) connect ECONNREFUSED 127.0.0.1:39179

      279) Cannot read properties of undefined (reading 'statusCode')

      280) test count !== plan
    shorthand - request get querystring schema

      281) connect ECONNREFUSED 127.0.0.1:39179

      282) Cannot read properties of undefined (reading 'statusCode')

      283) test count !== plan
    shorthand - request get querystring schema error

      284) connect ECONNREFUSED 127.0.0.1:39179

      285) Cannot read properties of undefined (reading 'statusCode')

      286) test count !== plan
    shorthand - request get missing schema

      287) connect ECONNREFUSED 127.0.0.1:39179

      288) Cannot read properties of undefined (reading 'statusCode')

      289) test count !== plan
    shorthand - custom serializer

      290) connect ECONNREFUSED 127.0.0.1:39179

      291) Cannot read properties of undefined (reading 'statusCode')

      292) test count !== plan
    shorthand - empty response

      293) connect ECONNREFUSED 127.0.0.1:39179

      294) Cannot read properties of undefined (reading 'statusCode')

      295) test count !== plan
    shorthand - send a falsy boolean

      296) connect ECONNREFUSED 127.0.0.1:39179

      297) Cannot read properties of undefined (reading 'statusCode')

      298) test count !== plan
    shorthand - send null value

      299) connect ECONNREFUSED 127.0.0.1:39179

      300) Cannot read properties of undefined (reading 'statusCode')

      301) test count !== plan

  test/handler-context.test.js
    handlers receive correct `this` context

      ✓ expect truthy value

      ✓ should be equal

      302) connect ECONNREFUSED 127.0.0.1:43467

      303) test count !== plan
    handlers have access to the internal context

      304) connect ECONNREFUSED 127.0.0.1:36469

      305) test count !== plan

  test/head.test.js
    shorthand - head

      ✓ (unnamed test)
    shorthand - head params

      ✓ (unnamed test)
    shorthand - head, querystring schema

      ✓ (unnamed test)
    missing schema - head

      ✓ (unnamed test)

    ✓ should not error
    shorthand - request head

      306) connect ECONNREFUSED 127.0.0.1:40169

      307) Cannot read properties of undefined (reading 'statusCode')
    shorthand - request head params schema

      308) connect ECONNREFUSED 127.0.0.1:40169

      309) Cannot read properties of undefined (reading 'statusCode')
    shorthand - request head params schema error

      310) connect ECONNREFUSED 127.0.0.1:40169

      311) Cannot read properties of undefined (reading 'statusCode')
    shorthand - request head querystring schema

      312) connect ECONNREFUSED 127.0.0.1:40169

      313) Cannot read properties of undefined (reading 'statusCode')
    shorthand - request head querystring schema error

      314) connect ECONNREFUSED 127.0.0.1:40169

      315) Cannot read properties of undefined (reading 'statusCode')
    shorthand - request head missing schema

      316) connect ECONNREFUSED 127.0.0.1:40169

      317) Cannot read properties of undefined (reading 'statusCode')

  test/hooks.test.js
    hooks

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ should not error

      318) connect ECONNREFUSED 127.0.0.1:41063

      319) Cannot read properties of undefined (reading 'statusCode')

      320) test count !== plan
    onRequest hook should support encapsulation / 1

      321) connect ECONNREFUSED 127.0.0.1:41063

      322) connect ECONNREFUSED 127.0.0.1:41063

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      323) test count !== plan
    onRequest hook should support encapsulation / 2

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    onRequest hook should support encapsulation / 3

      ✓ should not error

      324) connect ECONNREFUSED 127.0.0.1:43993

      325) Cannot read properties of undefined (reading 'statusCode')

      326) test count !== plan
    preHandler hook should support encapsulation / 5

      327) connect ECONNREFUSED 127.0.0.1:43993

      ✓ should not error

      328) connect ECONNREFUSED 127.0.0.1:41809

      329) Cannot read properties of undefined (reading 'statusCode')

      330) test count !== plan
    onRoute hook should be called / 1

      331) connect ECONNREFUSED 127.0.0.1:41809

      ✓ (unnamed test)

      ✓ should not error

      332) test count !== plan
    onRoute hook should be called / 2

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    onRoute hook should be called / 3

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ should not error

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ should not error
    onRoute should keep the context

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should be equal

      ✓ should not error
    onRoute hook should pass correct route

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    onRoute hook should pass correct route with custom prefix

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    onRoute hook should pass correct route with custom options

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    onRoute hook should receive any route option

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    onRoute hook should preserve system route configuration

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    onRoute hook should preserve handler function in options of shorthand route system configuration

      ✓ should be equal

      ✓ should not error
    onRoute hook that throws should be caught

      ✓ expect truthy value
    onResponse hook should log request error

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    onResponse hook should support encapsulation / 1

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    onResponse hook should support encapsulation / 2

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    onResponse hook should support encapsulation / 3

      ✓ should not error

      333) connect ECONNREFUSED 127.0.0.1:32817

      334) Cannot read properties of undefined (reading 'statusCode')

      335) test count !== plan
    onSend hook should support encapsulation / 1

      336) connect ECONNREFUSED 127.0.0.1:32817

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      337) test count !== plan
    onSend hook should support encapsulation / 2

      ✓ should not error

      338) connect ECONNREFUSED 127.0.0.1:35873

      339) Cannot read properties of undefined (reading 'statusCode')

      340) test count !== plan
    onSend hook is called after payload is serialized and headers are set

      341) connect ECONNREFUSED 127.0.0.1:35873

      ✓ should be equivalent

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should be equal

      342) test count !== plan
    modify payload

      ✓ expect truthy value

      ✓ should be equivalent

      ✓ expect truthy value

      ✓ should be equivalent

      ✓ expect truthy value

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    clear payload

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    onSend hook throws

      ✓ should not error

      343) connect ECONNREFUSED 127.0.0.1:42831

      344) Cannot read properties of undefined (reading 'statusCode')

      345) test count !== plan
    onSend hook should receive valid request and reply objects if onRequest hook fails

      346) connect ECONNREFUSED 127.0.0.1:42831

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      347) test count !== plan
    onSend hook should receive valid request and reply objects if middleware fails

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    onSend hook should receive valid request and reply objects if a custom content type parser fails

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    cannot add hook after binding

      ✓ should not error

      ✓ (unnamed test)
    onRequest hooks should be able to block a request

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    preValidation hooks should be able to block a request

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    preParsing hooks should be able to block a request

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    preHandler hooks should be able to block a request

      ✓ should be equal

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    onRequest hooks should be able to block a request (last hook)

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    preHandler hooks should be able to block a request (last hook)

      ✓ should be equal

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    onRequest respond with a stream

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal
    preHandler respond with a stream

      ✓ expect truthy value

      ✓ should be equal

      ✓ should be equal

      ✓ expect truthy value

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    Register an hook after a plugin inside a plugin

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    Register an hook after a plugin inside a plugin (with preHandler option)

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    Register hooks inside a plugin after an encapsulated plugin

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    onRequest hooks should run in the order in which they are defined

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    preHandler hooks should run in the order in which they are defined

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    onSend hooks should run in the order in which they are defined

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    onResponse hooks should run in the order in which they are defined

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    onRequest, preHandler, and onResponse hooks that resolve to a value do not cause an error

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    If a response header has been set inside an hook it shoulod not be overwritten by the final response handler

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    If the content type has been set inside an hook it should not be changed

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    request in onRequest, preParsing, preValidation and onResponse

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal
    preValidation hook should support encapsulation / 1

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    preValidation hook should support encapsulation / 2

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    preValidation hook should support encapsulation / 3

      ✓ should not error

      348) connect ECONNREFUSED 127.0.0.1:33911

      349) Cannot read properties of undefined (reading 'statusCode')

      350) test count !== plan
    onError hook

      351) connect ECONNREFUSED 127.0.0.1:33911

      ✓ should match pattern provided

      ✓ should not error

      ✓ should be equivalent

      352) test count !== plan
    reply.send should throw if called inside the onError hook

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent
    onError hook with setErrorHandler
      Send error

        ✓ should match pattern provided

        ✓ should not error

        ✓ should be equivalent
      Hide error

        ✓ should not error

        ✓ should be equivalent
    preParsing hook should support encapsulation / 1

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    preParsing hook should support encapsulation / 2

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    preParsing hook should support encapsulation / 3

      ✓ should not error

      353) connect ECONNREFUSED 127.0.0.1:41301

      354) Cannot read properties of undefined (reading 'statusCode')

      355) test count !== plan
    preSerialization hook should run before serialization and be able to modify the payload

      356) connect ECONNREFUSED 127.0.0.1:41301

      ✓ should not error

      357) connect ECONNREFUSED 127.0.0.1:34067

      358) Cannot read properties of undefined (reading 'statusCode')

      359) test count !== plan
    preSerialization hook should be able to throw errors which are not validated against schema response

      ✓ should not error

      360) connect ECONNREFUSED 127.0.0.1:46271

      361) Cannot read properties of undefined (reading 'statusCode')
    preSerialization hook which returned error should still run onError hooks

      ✓ should not error

      362) connect ECONNREFUSED 127.0.0.1:33801

      363) Cannot read properties of undefined (reading 'statusCode')

      364) test count !== plan
    preSerialization hooks should run in the order in which they are defined

      ✓ should not error

      365) connect ECONNREFUSED 127.0.0.1:39893

      366) Cannot read properties of undefined (reading 'statusCode')

      367) test count !== plan
    preSerialization hooks should support encapsulation

      ✓ should not error

      368) connect ECONNREFUSED 127.0.0.1:41487

      369) Cannot read properties of undefined (reading 'statusCode')

      370) test count !== plan
    onRegister hook should be called / 1

      ✓ expect truthy value

      371) connect ECONNREFUSED 127.0.0.1:41487

      ✓ expect truthy value

      ✓ should not error

      372) test count !== plan
    onRegister hook should be called / 2

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error
    onRegister hook should be called / 3

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should not error
    onRegister hook should be called / 4

      ✓ expect truthy value

      ✓ should not error
    async hooks

      ✓ should not error

      373) connect ECONNREFUSED 127.0.0.1:39293

      374) Cannot read properties of undefined (reading 'statusCode')

      375) test count !== plan
    modify payload

      376) connect ECONNREFUSED 127.0.0.1:39293

      377) connect ECONNREFUSED 127.0.0.1:39293

      ✓ expect truthy value

      ✓ should be equivalent

      ✓ expect truthy value

      ✓ should be equivalent

      ✓ expect truthy value

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      378) test count !== plan
    onRequest hooks should be able to block a request

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    preHandler hooks should be able to block a request

      ✓ should be equal

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    preValidation hooks should be able to block a request

      ✓ should be equal

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    preValidation hooks should be able to block a request with async onSend

      ✓ should be equal

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    preSerialization hooks should be able to modify the payload

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    preSerialization hooks should handle errors

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    onRequest hooks should be able to block a request (last hook)

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    preHandler hooks should be able to block a request (last hook)

      ✓ should be equal

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    preHandler hooks should be able to block a request (last hook) with a delay in onSend

      ✓ should be equal

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    onRequest respond with a stream

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal
    preHandler respond with a stream

      ✓ expect truthy value

      ✓ should be equal

      ✓ should be equal

      ✓ expect truthy value

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    Should log a warning if is an async function with `next`
      3 arguments

        ✓ should be equal

        ✓ expect truthy value

        ✓ expect truthy value
      4 arguments

        ✓ should be equal

        ✓ expect truthy value

        ✓ expect truthy value

        ✓ should be equal

        ✓ expect truthy value

        ✓ expect truthy value

        ✓ should be equal

        ✓ expect truthy value

        ✓ expect truthy value

    379) Cannot read properties of undefined (reading 'statusCode')

    380) Cannot read properties of undefined (reading 'statusCode')

    381) Cannot read properties of undefined (reading 'statusCode')

    382) Cannot read properties of undefined (reading 'statusCode')

    383) Cannot read properties of undefined (reading 'statusCode')

    384) Cannot read properties of undefined (reading 'statusCode')

    385) Cannot read properties of undefined (reading 'statusCode')

    386) Cannot read properties of undefined (reading 'statusCode')

    387) Cannot read properties of undefined (reading 'statusCode')

    388) Cannot read properties of undefined (reading 'statusCode')

    389) Cannot read properties of undefined (reading 'statusCode')

    390) Cannot read properties of undefined (reading 'statusCode')

  test/inject.test.js
    inject should exist

      ✓ expect truthy value

      ✓ should be equal
    should wait for the ready event

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equal
    inject get request

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equal
    inject get request - code check

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equal
    inject get request - headers check

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    inject get request - querystring

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equal
    inject get request - params

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equal
    inject get request - wildcard

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equal
    inject get request - headers

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    inject post request

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equal
    inject post request - send stream

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equal
    inject get request - reply stream

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal
    inject promisify - waiting for ready event

      ✓ should be equal
    inject promisify - after the ready event

      ✓ should not error

      391) Cannot access 'relativeContext' before initialization
    inject promisify - when the server is up

      ✓ should not error

      ✓ should be equal
    should reject in error case

      ✓ should be equal
    inject a multipart request using form-body

      ✓ should be equal

      ✓ expect truthy value
    should error the promise if ready errors

      ✓ after is called

      ✓ expect truthy value

      ✓ should be equal
    should throw error if callback specified and if ready errors

      ✓ expect truthy value

      ✓ should be equal

  test/input-validation.test.js
    case insensitive header validation

      ✓ should not error

      ✓ should be equal
    not evaluate json-schema $schema keyword

      ✓ should not error

      ✓ should be equal

  test/listen.test.js
    listen accepts a callback

      392) should be equal

      ✓ should not error
    listen accepts a port and a callback

      393) should be equal

      ✓ should not error
    listen accepts a port and a callback with (err, address)

      394) should be equal

      ✓ should not error
    listen accepts a port, address, and callback

      ✓ should not error
    listen accepts options and a callback

      ✓ should not error
    listen accepts a port, address and a callback with (err, address)

      ✓ should be equal

      ✓ should not error
    listen accepts a port, address, backlog and callback

      ✓ should not error
    listen accepts a port, address, backlog and callback with (err, address)

      ✓ should be equal

      ✓ should not error
    listen after Promise.resolve()

      395) should be equal

      ✓ should not error
    register after listen using Promise.resolve()

      ✓ resolved
    double listen errors

      ✓ should not error

      ✓ should be equal

      ✓ expect truthy value
    double listen errors callback with (err, address)

      396) should be equal

      ✓ should not error

      ✓ should be equal

      ✓ expect truthy value
    listen twice on the same port

      397) should be equal

      ✓ should not error

      ✓ should be equal

      ✓ expect truthy value
    listen twice on the same port callback with (err, address)

      398) should be equal

      ✓ should not error

      ✓ should be equal

      ✓ expect truthy value
    listen on socket

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    listen without callback (port zero)

      399) should be equal
    listen without callback (port not given)

      400) should be equal
    listen null without callback with (address)

      401) should be equal
    listen without port without callback with (address)

      402) should be equal
    listen with undefined without callback with (address)

      403) should be equal
    listen without callback with (address)

      404) should be equal
    double listen without callback rejects

      ✓ expect truthy value
    double listen without callback with (address)

      405) should be equal

      ✓ expect truthy value
    listen twice on the same port without callback rejects

      ✓ expect truthy value
    listen twice on the same port without callback rejects with (address)

      406) should be equal

      ✓ expect truthy value
    listen on invalid port without callback rejects

      ✓ expect truthy value
    listen logs the port as info

      ✓ expect truthy value

  test/logger.test.js
    defaults to info level

      ✓ listen at log message is ok

      ✓ should not error

      407) test unfinished

      408) test count !== plan

    409) child test left in queue: t.test test log stream

    410) child test left in queue: t.test test error log stream

    411) child test left in queue: t.test can use external logger instance

    412) child test left in queue: t.test can use external logger instance with custom serializer

    413) child test left in queue: t.test expose the logger

    414) child test left in queue: t.test The request id header key can be customized

    415) child test left in queue: t.test The request id header key can be customized along with a custom id generator

    416) child test left in queue: t.test The request id log label can be changed

    417) child test left in queue: t.test The logger should accept custom serializer

    418) child test left in queue: t.test reply.send logs an error if called twice in a row

    419) child test left in queue: t.test logger can be silented

    420) child test left in queue: t.test Should set a custom logLevel for a plugin

    421) child test left in queue: t.test Should set a custom logLevel for every plugin

    422) child test left in queue: t.test Should increase the log level for a specific plugin

    423) child test left in queue: t.test Should set the log level for the customized 404 handler

    424) child test left in queue: t.test Should set the log level for the customized 500 handler

    425) child test left in queue: t.test Should set a custom log level for a specific route

    426) child test left in queue: t.test The default 404 handler logs the incoming request

    427) child test left in queue: t.test should serialize request and response

    428) child test left in queue: t.test Wrap IPv6 address in listening log message

    429) child test left in queue: t.test Do not wrap IPv4 address

    430) child test left in queue: t.test file option

    431) child test left in queue: t.test should log the error if no error handler is defined

    432) child test left in queue: t.test should log as info if error status code >= 400 and < 500 if no error handler is defined

    433) child test left in queue: t.test should log as error if error status code >= 500 if no error handler is defined

    434) child test left in queue: t.test should not log the error if error handler is defined

    435) child test left in queue: t.test should not rely on raw request to log errors

    436) child test left in queue: t.test should redact the authorization header if so specified

    437) child test left in queue: t.test should not log incoming request and outgoing response when disabled

    438) connect ECONNREFUSED 127.0.0.1:39163

    439) test count !== plan

  test/middleware.test.js
    use a middleware

      ✓ should be equal

      ✓ should not error

      440) connect ECONNREFUSED 127.0.0.1:40257

      441) Cannot read properties of undefined (reading 'statusCode')

      442) test count !== plan
    cannot add middleware after binding

      ✓ should not error

      ✓ (unnamed test)
    use cors

      ✓ should not error

      443) connect ECONNREFUSED 127.0.0.1:34277

      444) Cannot read properties of undefined (reading 'headers')
    use helmet

      ✓ should not error

      445) connect ECONNREFUSED 127.0.0.1:35239

      446) Cannot read properties of undefined (reading 'headers')
    use helmet and cors

      ✓ should not error

      447) connect ECONNREFUSED 127.0.0.1:43825

      448) Cannot read properties of undefined (reading 'headers')

      449) test count !== plan
    middlewares should support encapsulation / 1

      ✓ expect truthy value

      ✓ should not error

      ✓ expect truthy value

      450) connect ECONNREFUSED 127.0.0.1:41859

      451) Cannot read properties of undefined (reading 'statusCode')

      452) test count !== plan
    middlewares should support encapsulation / 2

      ✓ should not error

      453) connect ECONNREFUSED 127.0.0.1:42285

      454) Cannot read properties of undefined (reading 'statusCode')

      455) test count !== plan
    middlewares should support encapsulation / 3

      ✓ should not error

      456) connect ECONNREFUSED 127.0.0.1:35357

      457) Cannot read properties of undefined (reading 'statusCode')

      458) test count !== plan
    middlewares should support encapsulation / 4

      ✓ should not error

      459) connect ECONNREFUSED 127.0.0.1:42333

      460) Cannot read properties of undefined (reading 'statusCode')

      461) test count !== plan
    middlewares should support encapsulation / 5

      ✓ should not error

      462) connect ECONNREFUSED 127.0.0.1:39205

      463) Cannot read properties of undefined (reading 'statusCode')

      464) test count !== plan
    middlewares should support encapsulation with prefix

      ✓ should not error

      465) connect ECONNREFUSED 127.0.0.1:40381

      466) Cannot read properties of undefined (reading 'statusCode')

      467) test count !== plan
    middlewares should support non-encapsulated plugins

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    use serve-static

      ✓ should not error

      ✓ should be equivalent
    middlewares with prefix

      ✓ should not error
      /

        468) connect ECONNREFUSED 127.0.0.1:39341

        469) should be equivalent
      /prefix

        470) connect ECONNREFUSED 127.0.0.1:39341

        471) should be equivalent
      /prefix/

        472) connect ECONNREFUSED 127.0.0.1:39341

        473) should be equivalent
      /prefix/inner

        474) connect ECONNREFUSED 127.0.0.1:39341

        475) should be equivalent
    res.end should block middleware execution

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    middlewares should be able to respond with a stream

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal
    Use a middleware inside a plugin after an encapsulated plugin

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    middlewares should run in the order in which they are defined

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

  test/nullable-validation.test.js
    nullable string

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent

  test/options.error-handler.test.js
    OPTIONS can be created

      ✓ (unnamed test)
    OPTIONS without schema can be created

      ✓ (unnamed test)
    OPTIONS with body and querystring

      ✓ (unnamed test)
    OPTIONS with bodyLimit option

      ✓ (unnamed test)
    OPTIONS can be created

      ✓ (unnamed test)
    OPTIONS - correctly replies

      476) connect ECONNREFUSED 127.0.0.1:37439

      477) Cannot read properties of undefined (reading 'statusCode')

      478) test count !== plan
    OPTIONS - correctly replies with very large body

      479) connect ECONNREFUSED 127.0.0.1:37439

      480) Cannot read properties of undefined (reading 'statusCode')

      481) test count !== plan
    OPTIONS - correctly replies if the content type has the charset

      482) connect ECONNREFUSED 127.0.0.1:37439

      483) Cannot read properties of undefined (reading 'statusCode')

      484) test count !== plan
    OPTIONS without schema - correctly replies

      485) connect ECONNREFUSED 127.0.0.1:37439

      486) Cannot read properties of undefined (reading 'statusCode')

      487) test count !== plan
    OPTIONS with body and querystring - correctly replies

      488) connect ECONNREFUSED 127.0.0.1:37439

      489) Cannot read properties of undefined (reading 'statusCode')

      490) test count !== plan
    OPTIONS with no body - correctly replies

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      491) connect ECONNREFUSED 127.0.0.1:37439

      492) Cannot read properties of undefined (reading 'statusCode')

      493) test count !== plan
    OPTIONS returns 415 - incorrect media type if body is not json

      494) connect ECONNREFUSED 127.0.0.1:37439

      495) Cannot read properties of undefined (reading 'statusCode')
    OPTIONS returns 415 - should return 415 if Content-Type is not json or plain text

      496) connect ECONNREFUSED 127.0.0.1:37439

      497) Cannot read properties of undefined (reading 'statusCode')
    OPTIONS returns 400 - Bad Request

      498) connect ECONNREFUSED 127.0.0.1:37439

      499) Cannot read properties of undefined (reading 'statusCode')

      500) test count !== plan
    OPTIONS returns 413 - Payload Too Large

      501) connect ECONNREFUSED 127.0.0.1:37439

      502) connect ECONNREFUSED 127.0.0.1:37439

      503) Cannot read properties of undefined (reading 'statusCode')

      504) test count !== plan

    ✓ OPTIONS should fail with empty body and application/json content-type
    OPTIONS - correctly replies

      505) connect ECONNREFUSED 127.0.0.1:37439

      506) connect ECONNREFUSED 127.0.0.1:38897

      507) Cannot read properties of undefined (reading 'statusCode')
    OPTIONS - 400 on bad parameters

      508) connect ECONNREFUSED 127.0.0.1:38897

      509) Cannot read properties of undefined (reading 'statusCode')

      510) test count !== plan
    OPTIONS - input-validation coerce

      511) connect ECONNREFUSED 127.0.0.1:38897

      512) Cannot read properties of undefined (reading 'statusCode')

      513) test count !== plan
    OPTIONS - input-validation custom schema compiler

      514) connect ECONNREFUSED 127.0.0.1:38897

      515) Cannot read properties of undefined (reading 'statusCode')

      516) test count !== plan
    OPTIONS - input-validation joi schema compiler ok

      517) connect ECONNREFUSED 127.0.0.1:38897

      518) Cannot read properties of undefined (reading 'statusCode')

      519) test count !== plan
    OPTIONS - input-validation joi schema compiler ko

      520) connect ECONNREFUSED 127.0.0.1:38897

      521) Cannot read properties of undefined (reading 'statusCode')

      522) test count !== plan
    OPTIONS - input-validation instance custom schema compiler encapsulated

      523) connect ECONNREFUSED 127.0.0.1:38897

      524) Cannot read properties of undefined (reading 'statusCode')

      525) test count !== plan
    OPTIONS - input-validation custom schema compiler encapsulated

      526) connect ECONNREFUSED 127.0.0.1:38897

      527) Cannot read properties of undefined (reading 'statusCode')

      528) test count !== plan

    529) Cannot read properties of undefined (reading 'statusCode')

    530) Cannot read properties of undefined (reading 'statusCode')

  test/options.test.js
    OPTIONS can be created

      ✓ (unnamed test)
    OPTIONS without schema can be created

      ✓ (unnamed test)
    OPTIONS with body and querystring

      ✓ (unnamed test)
    OPTIONS with bodyLimit option

      ✓ (unnamed test)
    OPTIONS can be created

      ✓ (unnamed test)
    OPTIONS - correctly replies

      531) connect ECONNREFUSED 127.0.0.1:46627

      532) Cannot read properties of undefined (reading 'statusCode')

      533) test count !== plan
    OPTIONS - correctly replies with very large body

      534) connect ECONNREFUSED 127.0.0.1:46627

      535) Cannot read properties of undefined (reading 'statusCode')

      536) test count !== plan
    OPTIONS - correctly replies if the content type has the charset

      537) connect ECONNREFUSED 127.0.0.1:46627

      538) Cannot read properties of undefined (reading 'statusCode')

      539) test count !== plan
    OPTIONS without schema - correctly replies

      540) connect ECONNREFUSED 127.0.0.1:46627

      541) Cannot read properties of undefined (reading 'statusCode')

      542) test count !== plan
    OPTIONS with body and querystring - correctly replies

      543) connect ECONNREFUSED 127.0.0.1:46627

      544) Cannot read properties of undefined (reading 'statusCode')

      545) test count !== plan
    OPTIONS with no body - correctly replies

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      546) connect ECONNREFUSED 127.0.0.1:46627

      547) Cannot read properties of undefined (reading 'statusCode')

      548) test count !== plan
    OPTIONS returns 415 - incorrect media type if body is not json

      549) connect ECONNREFUSED 127.0.0.1:46627

      550) Cannot read properties of undefined (reading 'statusCode')
    OPTIONS returns 415 - should return 415 if Content-Type is not json or plain text

      551) connect ECONNREFUSED 127.0.0.1:46627

      552) Cannot read properties of undefined (reading 'statusCode')
    OPTIONS returns 400 - Bad Request

      553) connect ECONNREFUSED 127.0.0.1:46627

      554) Cannot read properties of undefined (reading 'statusCode')

      555) test count !== plan
    OPTIONS returns 413 - Payload Too Large

      556) connect ECONNREFUSED 127.0.0.1:46627

      557) connect ECONNREFUSED 127.0.0.1:46627

      558) Cannot read properties of undefined (reading 'statusCode')

      559) test count !== plan

    ✓ OPTIONS should fail with empty body and application/json content-type
    OPTIONS - correctly replies

      560) connect ECONNREFUSED 127.0.0.1:46627

      561) connect ECONNREFUSED 127.0.0.1:43857

      562) Cannot read properties of undefined (reading 'statusCode')
    OPTIONS - 400 on bad parameters

      563) connect ECONNREFUSED 127.0.0.1:43857

      564) Cannot read properties of undefined (reading 'statusCode')

      565) test count !== plan
    OPTIONS - input-validation coerce

      566) connect ECONNREFUSED 127.0.0.1:43857

      567) Cannot read properties of undefined (reading 'statusCode')

      568) test count !== plan
    OPTIONS - input-validation custom schema compiler

      569) connect ECONNREFUSED 127.0.0.1:43857

      570) Cannot read properties of undefined (reading 'statusCode')

      571) test count !== plan
    OPTIONS - input-validation joi schema compiler ok

      572) connect ECONNREFUSED 127.0.0.1:43857

      573) Cannot read properties of undefined (reading 'statusCode')

      574) test count !== plan
    OPTIONS - input-validation joi schema compiler ko

      575) connect ECONNREFUSED 127.0.0.1:43857

      576) Cannot read properties of undefined (reading 'statusCode')

      577) test count !== plan
    OPTIONS - input-validation instance custom schema compiler encapsulated

      578) connect ECONNREFUSED 127.0.0.1:43857

      579) Cannot read properties of undefined (reading 'statusCode')

      580) test count !== plan
    OPTIONS - input-validation custom schema compiler encapsulated

      581) connect ECONNREFUSED 127.0.0.1:43857

      582) Cannot read properties of undefined (reading 'statusCode')

      583) test count !== plan

    584) Cannot read properties of undefined (reading 'statusCode')

    585) Cannot read properties of undefined (reading 'statusCode')

  test/output-validation.test.js
    shorthand - output string

      ✓ (unnamed test)
    shorthand - output number

      ✓ (unnamed test)
    wrong object for schema - output

      ✓ (unnamed test)
    empty response

      ✓ (unnamed test)
    unlisted response code

      ✓ (unnamed test)

    ✓ should not error
    shorthand - string get ok

      586) connect ECONNREFUSED 127.0.0.1:37553

      587) Cannot read properties of undefined (reading 'statusCode')

      588) test count !== plan
    shorthand - number get ok

      589) connect ECONNREFUSED 127.0.0.1:37553

      590) Cannot read properties of undefined (reading 'statusCode')

      591) test count !== plan
    shorthand - wrong-object-for-schema

      592) connect ECONNREFUSED 127.0.0.1:37553

      593) Cannot read properties of undefined (reading 'statusCode')

      594) test count !== plan
    shorthand - empty

      595) connect ECONNREFUSED 127.0.0.1:37553

      596) Cannot read properties of undefined (reading 'statusCode')
    shorthand - 400

      597) connect ECONNREFUSED 127.0.0.1:37553

      598) Cannot read properties of undefined (reading 'statusCode')

      599) test count !== plan

  test/patch.error-handler.test.js
    PATCH can be created

      ✓ (unnamed test)
    PATCH without schema can be created

      ✓ (unnamed test)
    PATCH with body and querystring

      ✓ (unnamed test)
    PATCH with bodyLimit option

      ✓ (unnamed test)
    PATCH can be created

      ✓ (unnamed test)
    PATCH - correctly replies

      600) connect ECONNREFUSED 127.0.0.1:44005

      601) Cannot read properties of undefined (reading 'statusCode')

      602) test count !== plan
    PATCH - correctly replies with very large body

      603) connect ECONNREFUSED 127.0.0.1:44005

      604) Cannot read properties of undefined (reading 'statusCode')

      605) test count !== plan
    PATCH - correctly replies if the content type has the charset

      606) connect ECONNREFUSED 127.0.0.1:44005

      607) Cannot read properties of undefined (reading 'statusCode')

      608) test count !== plan
    PATCH without schema - correctly replies

      609) connect ECONNREFUSED 127.0.0.1:44005

      610) Cannot read properties of undefined (reading 'statusCode')

      611) test count !== plan
    PATCH with body and querystring - correctly replies

      612) connect ECONNREFUSED 127.0.0.1:44005

      613) Cannot read properties of undefined (reading 'statusCode')

      614) test count !== plan
    PATCH with no body - correctly replies

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      615) connect ECONNREFUSED 127.0.0.1:44005

      616) Cannot read properties of undefined (reading 'statusCode')

      617) test count !== plan
    PATCH returns 415 - incorrect media type if body is not json

      618) connect ECONNREFUSED 127.0.0.1:44005

      619) Cannot read properties of undefined (reading 'statusCode')
    PATCH returns 400 - Bad Request

      620) connect ECONNREFUSED 127.0.0.1:44005

      621) Cannot read properties of undefined (reading 'statusCode')

      622) test count !== plan
    PATCH returns 413 - Payload Too Large

      623) connect ECONNREFUSED 127.0.0.1:44005

      624) connect ECONNREFUSED 127.0.0.1:44005

      625) Cannot read properties of undefined (reading 'statusCode')

      626) test count !== plan
    PATCH should fail with empty body and application/json content-type

      627) connect ECONNREFUSED 127.0.0.1:44005

      628) connect ECONNREFUSED 127.0.0.1:44005

      ✓ should not error

      ✓ should be equivalent strictly

      ✓ should not error

      ✓ should be equivalent strictly

      ✓ should not error

      ✓ should be equivalent strictly

      629) connect ECONNREFUSED 127.0.0.1:44005

      630) Cannot read properties of undefined (reading 'toString')

      631) test count !== plan
    PATCH - correctly replies

      632) connect ECONNREFUSED 127.0.0.1:44005

      633) connect ECONNREFUSED 127.0.0.1:44005

      634) connect ECONNREFUSED 127.0.0.1:44531

      635) Cannot read properties of undefined (reading 'statusCode')

      636) test count !== plan
    PATCH - 400 on bad parameters

      637) connect ECONNREFUSED 127.0.0.1:44531

      638) Cannot read properties of undefined (reading 'statusCode')

      639) test count !== plan
    PATCH - input-validation coerce

      640) connect ECONNREFUSED 127.0.0.1:44531

      641) Cannot read properties of undefined (reading 'statusCode')

      642) test count !== plan
    PATCH - input-validation custom schema compiler

      643) connect ECONNREFUSED 127.0.0.1:44531

      644) Cannot read properties of undefined (reading 'statusCode')

      645) test count !== plan
    PATCH - input-validation joi schema compiler ok

      646) connect ECONNREFUSED 127.0.0.1:44531

      647) Cannot read properties of undefined (reading 'statusCode')

      648) test count !== plan
    PATCH - input-validation joi schema compiler ko

      649) connect ECONNREFUSED 127.0.0.1:44531

      650) Cannot read properties of undefined (reading 'statusCode')

      651) test count !== plan
    PATCH - input-validation instance custom schema compiler encapsulated

      652) connect ECONNREFUSED 127.0.0.1:44531

      653) Cannot read properties of undefined (reading 'statusCode')

      654) test count !== plan
    PATCH - input-validation custom schema compiler encapsulated

      655) connect ECONNREFUSED 127.0.0.1:44531

      656) Cannot read properties of undefined (reading 'statusCode')

      657) test count !== plan

    658) Cannot read properties of undefined (reading 'statusCode')

    659) Cannot read properties of undefined (reading 'statusCode')

    660) Cannot read properties of undefined (reading 'statusCode')

    ✓ type is object

    ✓ type is _Request

    ✓ type is object

    ✓ type is _Request

    ✓ type is object

    ✓ type is _Request

    661) Cannot read properties of undefined (reading 'toString')

    662) Cannot read properties of undefined (reading 'toString')

  test/patch.test.js
    PATCH can be created

      ✓ (unnamed test)
    PATCH without schema can be created

      ✓ (unnamed test)
    PATCH with body and querystring

      ✓ (unnamed test)
    PATCH with bodyLimit option

      ✓ (unnamed test)
    PATCH can be created

      ✓ (unnamed test)
    PATCH - correctly replies

      663) connect ECONNREFUSED 127.0.0.1:37763

      664) Cannot read properties of undefined (reading 'statusCode')

      665) test count !== plan
    PATCH - correctly replies with very large body

      666) connect ECONNREFUSED 127.0.0.1:37763

      667) Cannot read properties of undefined (reading 'statusCode')

      668) test count !== plan
    PATCH - correctly replies if the content type has the charset

      669) connect ECONNREFUSED 127.0.0.1:37763

      670) Cannot read properties of undefined (reading 'statusCode')

      671) test count !== plan
    PATCH without schema - correctly replies

      672) connect ECONNREFUSED 127.0.0.1:37763

      673) Cannot read properties of undefined (reading 'statusCode')

      674) test count !== plan
    PATCH with body and querystring - correctly replies

      675) connect ECONNREFUSED 127.0.0.1:37763

      676) Cannot read properties of undefined (reading 'statusCode')

      677) test count !== plan
    PATCH with no body - correctly replies

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      678) connect ECONNREFUSED 127.0.0.1:37763

      679) Cannot read properties of undefined (reading 'statusCode')

      680) test count !== plan
    PATCH returns 415 - incorrect media type if body is not json

      681) connect ECONNREFUSED 127.0.0.1:37763

      682) Cannot read properties of undefined (reading 'statusCode')
    PATCH returns 400 - Bad Request

      683) connect ECONNREFUSED 127.0.0.1:37763

      684) Cannot read properties of undefined (reading 'statusCode')

      685) test count !== plan
    PATCH returns 413 - Payload Too Large

      686) connect ECONNREFUSED 127.0.0.1:37763

      687) connect ECONNREFUSED 127.0.0.1:37763

      688) Cannot read properties of undefined (reading 'statusCode')

      689) test count !== plan
    PATCH should fail with empty body and application/json content-type

      690) connect ECONNREFUSED 127.0.0.1:37763

      691) connect ECONNREFUSED 127.0.0.1:37763

      ✓ should not error

      ✓ should be equivalent strictly

      ✓ should not error

      ✓ should be equivalent strictly

      ✓ should not error

      ✓ should be equivalent strictly

      692) connect ECONNREFUSED 127.0.0.1:37763

      693) Cannot read properties of undefined (reading 'toString')

      694) test count !== plan
    PATCH - correctly replies

      695) connect ECONNREFUSED 127.0.0.1:37763

      696) connect ECONNREFUSED 127.0.0.1:37763

      697) connect ECONNREFUSED 127.0.0.1:44655

      698) Cannot read properties of undefined (reading 'statusCode')

      699) test count !== plan
    PATCH - 400 on bad parameters

      700) connect ECONNREFUSED 127.0.0.1:44655

      701) Cannot read properties of undefined (reading 'statusCode')

      702) test count !== plan
    PATCH - input-validation coerce

      703) connect ECONNREFUSED 127.0.0.1:44655

      704) Cannot read properties of undefined (reading 'statusCode')

      705) test count !== plan
    PATCH - input-validation custom schema compiler

      706) connect ECONNREFUSED 127.0.0.1:44655

      707) Cannot read properties of undefined (reading 'statusCode')

      708) test count !== plan
    PATCH - input-validation joi schema compiler ok

      709) connect ECONNREFUSED 127.0.0.1:44655

      710) Cannot read properties of undefined (reading 'statusCode')

      711) test count !== plan
    PATCH - input-validation joi schema compiler ko

      712) connect ECONNREFUSED 127.0.0.1:44655

      713) Cannot read properties of undefined (reading 'statusCode')

      714) test count !== plan
    PATCH - input-validation instance custom schema compiler encapsulated

      715) connect ECONNREFUSED 127.0.0.1:44655

      716) Cannot read properties of undefined (reading 'statusCode')

      717) test count !== plan
    PATCH - input-validation custom schema compiler encapsulated

      718) connect ECONNREFUSED 127.0.0.1:44655

      719) Cannot read properties of undefined (reading 'statusCode')

      720) test count !== plan

    721) Cannot read properties of undefined (reading 'statusCode')

    722) Cannot read properties of undefined (reading 'statusCode')

    723) Cannot read properties of undefined (reading 'statusCode')

    724) Cannot read properties of undefined (reading 'toString')

    725) Cannot read properties of undefined (reading 'toString')

  test/plugin.test.js
    require a plugin

      ✓ expect truthy value
    plugin metadata - ignore prefix

      ✓ should not error

      ✓ should be equal
    fastify.register with fastify-plugin should not incapsulate his code

      ✓ expect falsey value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect falsey value

      ✓ should not error

      726) connect ECONNREFUSED 127.0.0.1:41537

      727) Cannot read properties of undefined (reading 'statusCode')

      728) test count !== plan
    fastify.register with fastify-plugin should provide access to external fastify instance if opts argument is a function

      ✓ expect falsey value

      ✓ expect falsey value

      ✓ expect falsey value

      ✓ expect truthy value

      ✓ expect falsey value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect falsey value

      ✓ expect truthy value

      ✓ expect falsey value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ should be equal

      ✓ expect falsey value

      ✓ expect falsey value

      ✓ should not error

      729) connect ECONNREFUSED 127.0.0.1:34901

      730) Cannot read properties of undefined (reading 'statusCode')

      731) test count !== plan
    fastify.register with fastify-plugin registers root level plugins

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect falsey value

      ✓ should not error

      732) connect ECONNREFUSED 127.0.0.1:37165

      733) Cannot read properties of undefined (reading 'statusCode')

      734) test count !== plan
    check dependencies - should not throw

      735) connect ECONNREFUSED 127.0.0.1:37165

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect falsey value

      ✓ expect falsey value

      ✓ should not error

      736) connect ECONNREFUSED 127.0.0.1:35405

      737) Cannot read properties of undefined (reading 'statusCode')

      738) test count !== plan
    check dependencies - should throw

      ✓ should be equal

      ✓ should be equal

      ✓ expect truthy value

      ✓ expect falsey value

      ✓ expect falsey value

      ✓ should not error

      739) connect ECONNREFUSED 127.0.0.1:35335

      740) Cannot read properties of undefined (reading 'statusCode')

      741) test count !== plan
    set the plugin name based on the plugin displayName symbol

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    plugin name will change when using no encapsulation

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    plugin name is undefined when accessing in no plugin context

      ✓ should be equal

      ✓ should not error
    set the plugin name based on the plugin function name

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    approximate a plugin name when no meta data is available

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    approximate a plugin name also when fastify-plugin has no meta data

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    plugin incapsulation

      ✓ expect falsey value

      ✓ should not error

      742) connect ECONNREFUSED 127.0.0.1:33577

      743) Cannot read properties of undefined (reading 'statusCode')

      744) test count !== plan
    if a plugin raises an error and there is not a callback to handle it, the server must not start

      745) connect ECONNREFUSED 127.0.0.1:33577

      ✓ expect truthy value

      ✓ should be equal

      746) test count !== plan
    add hooks after route declaration

      ✓ should not error

      747) connect ECONNREFUSED 127.0.0.1:43235

      748) "undefined" is not valid JSON
    nested plugins

      ✓ should not error

      749) connect ECONNREFUSED 127.0.0.1:46319

      750) Cannot read properties of undefined (reading 'toString')

      751) test count !== plan
    plugin metadata - decorators

      752) connect ECONNREFUSED 127.0.0.1:46319

      ✓ expect truthy value

      753) test count !== plan
    plugin metadata - dependencies

      ✓ everything right
    plugin metadata - dependencies (nested)

      ✓ everything right
    pluginTimeout

      ✓ expect truthy value

      ✓ should be equal
    pluginTimeout default

      ✓ expect truthy value

      ✓ should be equal

    754) Cannot read properties of undefined (reading 'statusCode')

    755) Cannot read properties of undefined (reading 'statusCode')

    756) Cannot read properties of undefined (reading 'toString')

    757) timeout!

  test/post.test.js
    POST can be created

      ✓ (unnamed test)
    POST without schema can be created

      ✓ (unnamed test)
    POST with body and querystring

      ✓ (unnamed test)
    POST with bodyLimit option

      ✓ (unnamed test)
    POST can be created

      ✓ (unnamed test)
    cannot call setSchemaCompiler after binding

      ✓ should not error

      ✓ (unnamed test)
    cannot set schemaCompiler after binding

      ✓ should not error

      ✓ (unnamed test)
    get schemaCompiler after set schemaCompiler

      ✓ expect truthy value

      ✓ should not error
    get schemaCompiler after setSchemaCompiler

      ✓ expect truthy value

      ✓ should not error
    get schemaCompiler is empty for schemaCompilere settle on routes

      ✓ should not error

      ✓ should be equal
    POST - correctly replies

      758) connect ECONNREFUSED 127.0.0.1:32791

      759) Cannot read properties of undefined (reading 'statusCode')

      760) test count !== plan
    POST - correctly replies with very large body

      761) connect ECONNREFUSED 127.0.0.1:32791

      762) Cannot read properties of undefined (reading 'statusCode')

      763) test count !== plan
    POST - correctly replies if the content type has the charset

      764) connect ECONNREFUSED 127.0.0.1:32791

      765) Cannot read properties of undefined (reading 'statusCode')

      766) test count !== plan
    POST without schema - correctly replies

      767) connect ECONNREFUSED 127.0.0.1:32791

      768) Cannot read properties of undefined (reading 'statusCode')

      769) test count !== plan
    POST with body and querystring - correctly replies

      770) connect ECONNREFUSED 127.0.0.1:32791

      771) Cannot read properties of undefined (reading 'statusCode')

      772) test count !== plan
    POST with no body - correctly replies

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      773) connect ECONNREFUSED 127.0.0.1:32791

      774) Cannot read properties of undefined (reading 'statusCode')

      775) test count !== plan
    POST returns 415 - incorrect media type if body is not json

      776) connect ECONNREFUSED 127.0.0.1:32791

      777) Cannot read properties of undefined (reading 'statusCode')
    POST returns 400 - Bad Request

      778) connect ECONNREFUSED 127.0.0.1:32791

      779) Cannot read properties of undefined (reading 'statusCode')

      780) test count !== plan
    POST returns 413 - Payload Too Large

      781) connect ECONNREFUSED 127.0.0.1:32791

      782) connect ECONNREFUSED 127.0.0.1:32791

      783) Cannot read properties of undefined (reading 'statusCode')

      784) test count !== plan
    POST should fail with empty body and application/json content-type

      785) connect ECONNREFUSED 127.0.0.1:32791

      786) connect ECONNREFUSED 127.0.0.1:32791

      ✓ should not error

      ✓ should be equivalent strictly

      ✓ should not error

      ✓ should be equivalent strictly

      ✓ should not error

      ✓ should be equivalent strictly

      787) connect ECONNREFUSED 127.0.0.1:32791

      788) Cannot read properties of undefined (reading 'toString')

      789) test count !== plan
    POST - correctly replies

      790) connect ECONNREFUSED 127.0.0.1:32791

      791) connect ECONNREFUSED 127.0.0.1:32791

      792) connect ECONNREFUSED 127.0.0.1:40969

      793) Cannot read properties of undefined (reading 'statusCode')

      794) test count !== plan
    POST - 400 on bad parameters

      795) connect ECONNREFUSED 127.0.0.1:40969

      796) Cannot read properties of undefined (reading 'statusCode')

      797) test count !== plan
    POST - input-validation coerce

      798) connect ECONNREFUSED 127.0.0.1:40969

      799) Cannot read properties of undefined (reading 'statusCode')

      800) test count !== plan
    POST - input-validation custom schema compiler

      801) connect ECONNREFUSED 127.0.0.1:40969

      802) Cannot read properties of undefined (reading 'statusCode')

      803) test count !== plan
    POST - input-validation joi schema compiler ok

      804) connect ECONNREFUSED 127.0.0.1:40969

      805) Cannot read properties of undefined (reading 'statusCode')

      806) test count !== plan
    POST - input-validation joi schema compiler ko

      807) connect ECONNREFUSED 127.0.0.1:40969

      808) Cannot read properties of undefined (reading 'statusCode')

      809) test count !== plan
    POST - input-validation instance custom schema compiler encapsulated

      810) connect ECONNREFUSED 127.0.0.1:40969

      811) Cannot read properties of undefined (reading 'statusCode')

      812) test count !== plan
    POST - input-validation custom schema compiler encapsulated

      813) connect ECONNREFUSED 127.0.0.1:40969

      814) Cannot read properties of undefined (reading 'statusCode')

      815) test count !== plan

    816) Cannot read properties of undefined (reading 'statusCode')

    817) Cannot read properties of undefined (reading 'statusCode')

    818) Cannot read properties of undefined (reading 'statusCode')

    819) Cannot read properties of undefined (reading 'toString')

    820) Cannot read properties of undefined (reading 'toString')

  test/pretty-print.test.js
    pretty print - static routes

      ✓ should be equal

      ✓ should be equal
    pretty print - parametric routes

      ✓ should be equal

      ✓ should be equal
    pretty print - mixed parametric routes

      ✓ should be equal

      ✓ should be equal
    pretty print - wildcard routes

      ✓ should be equal

      ✓ should be equal

  test/promises.test.js

    ✓ should not error
    shorthand - sget return promise es6 get

      821) connect ECONNREFUSED 127.0.0.1:45671

      822) Cannot read properties of undefined (reading 'statusCode')

      823) test count !== plan
    shorthand - sget promise es6 get return error

      824) connect ECONNREFUSED 127.0.0.1:45671

      825) Cannot read properties of undefined (reading 'statusCode')
    sget promise double send

      826) connect ECONNREFUSED 127.0.0.1:45671

      827) Cannot read properties of undefined (reading 'statusCode')

      828) test count !== plan
    thenable

      829) connect ECONNREFUSED 127.0.0.1:45671

      830) Cannot read properties of undefined (reading 'statusCode')

      831) test count !== plan
    thenable (error)

      832) connect ECONNREFUSED 127.0.0.1:45671

      833) Cannot read properties of undefined (reading 'statusCode')
    return-reply

      834) connect ECONNREFUSED 127.0.0.1:45671

      835) Cannot read properties of undefined (reading 'statusCode')

      836) test count !== plan

  test/proto-poisoning.test.js
    proto-poisoning error

      ✓ should not error

      837) connect ECONNREFUSED 127.0.0.1:37995

      838) Cannot read properties of undefined (reading 'statusCode')
    proto-poisoning remove

      ✓ should not error

      839) connect ECONNREFUSED 127.0.0.1:35951

      840) Cannot read properties of undefined (reading 'statusCode')

      841) test count !== plan
    proto-poisoning ignore

      ✓ should not error

      842) connect ECONNREFUSED 127.0.0.1:41289

      843) Cannot read properties of undefined (reading 'statusCode')

      844) test count !== plan

  test/put.error-handler.test.js
    PUT can be created

      ✓ (unnamed test)
    PUT without schema can be created

      ✓ (unnamed test)
    PUT with body and querystring

      ✓ (unnamed test)
    PUT with bodyLimit option

      ✓ (unnamed test)
    PUT can be created

      ✓ (unnamed test)
    PUT - correctly replies

      845) connect ECONNREFUSED 127.0.0.1:39923

      846) Cannot read properties of undefined (reading 'statusCode')

      847) test count !== plan
    PUT - correctly replies with very large body

      848) connect ECONNREFUSED 127.0.0.1:39923

      849) Cannot read properties of undefined (reading 'statusCode')

      850) test count !== plan
    PUT - correctly replies if the content type has the charset

      851) connect ECONNREFUSED 127.0.0.1:39923

      852) Cannot read properties of undefined (reading 'statusCode')

      853) test count !== plan
    PUT without schema - correctly replies

      854) connect ECONNREFUSED 127.0.0.1:39923

      855) Cannot read properties of undefined (reading 'statusCode')

      856) test count !== plan
    PUT with body and querystring - correctly replies

      857) connect ECONNREFUSED 127.0.0.1:39923

      858) Cannot read properties of undefined (reading 'statusCode')

      859) test count !== plan
    PUT with no body - correctly replies

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      860) connect ECONNREFUSED 127.0.0.1:39923

      861) Cannot read properties of undefined (reading 'statusCode')

      862) test count !== plan
    PUT returns 415 - incorrect media type if body is not json

      863) connect ECONNREFUSED 127.0.0.1:39923

      864) Cannot read properties of undefined (reading 'statusCode')
    PUT returns 400 - Bad Request

      865) connect ECONNREFUSED 127.0.0.1:39923

      866) Cannot read properties of undefined (reading 'statusCode')

      867) test count !== plan
    PUT returns 413 - Payload Too Large

      868) connect ECONNREFUSED 127.0.0.1:39923

      869) connect ECONNREFUSED 127.0.0.1:39923

      870) Cannot read properties of undefined (reading 'statusCode')

      871) test count !== plan
    PUT should fail with empty body and application/json content-type

      872) connect ECONNREFUSED 127.0.0.1:39923

      873) connect ECONNREFUSED 127.0.0.1:39923

      ✓ should not error

      ✓ should be equivalent strictly

      ✓ should not error

      ✓ should be equivalent strictly

      ✓ should not error

      ✓ should be equivalent strictly

      874) connect ECONNREFUSED 127.0.0.1:39923

      875) Cannot read properties of undefined (reading 'toString')

      876) test count !== plan
    PUT - correctly replies

      877) connect ECONNREFUSED 127.0.0.1:39923

      878) connect ECONNREFUSED 127.0.0.1:39923

      879) connect ECONNREFUSED 127.0.0.1:42577

      880) Cannot read properties of undefined (reading 'statusCode')

      881) test count !== plan
    PUT - 400 on bad parameters

      882) connect ECONNREFUSED 127.0.0.1:42577

      883) Cannot read properties of undefined (reading 'statusCode')

      884) test count !== plan
    PUT - input-validation coerce

      885) connect ECONNREFUSED 127.0.0.1:42577

      886) Cannot read properties of undefined (reading 'statusCode')

      887) test count !== plan
    PUT - input-validation custom schema compiler

      888) connect ECONNREFUSED 127.0.0.1:42577

      889) Cannot read properties of undefined (reading 'statusCode')

      890) test count !== plan
    PUT - input-validation joi schema compiler ok

      891) connect ECONNREFUSED 127.0.0.1:42577

      892) Cannot read properties of undefined (reading 'statusCode')

      893) test count !== plan
    PUT - input-validation joi schema compiler ko

      894) connect ECONNREFUSED 127.0.0.1:42577

      895) Cannot read properties of undefined (reading 'statusCode')

      896) test count !== plan
    PUT - input-validation instance custom schema compiler encapsulated

      897) connect ECONNREFUSED 127.0.0.1:42577

      898) Cannot read properties of undefined (reading 'statusCode')

      899) test count !== plan
    PUT - input-validation custom schema compiler encapsulated

      900) connect ECONNREFUSED 127.0.0.1:42577

      901) Cannot read properties of undefined (reading 'statusCode')

      902) test count !== plan

    903) Cannot read properties of undefined (reading 'statusCode')

    904) Cannot read properties of undefined (reading 'statusCode')

    905) Cannot read properties of undefined (reading 'statusCode')

    ✓ type is object

    ✓ type is _Request

    ✓ type is object

    ✓ type is _Request

    ✓ type is object

    ✓ type is _Request

    906) Cannot read properties of undefined (reading 'toString')

    907) Cannot read properties of undefined (reading 'toString')

  test/put.test.js
    PUT can be created

      ✓ (unnamed test)
    PUT without schema can be created

      ✓ (unnamed test)
    PUT with body and querystring

      ✓ (unnamed test)
    PUT with bodyLimit option

      ✓ (unnamed test)
    PUT can be created

      ✓ (unnamed test)
    PUT - correctly replies

      908) connect ECONNREFUSED 127.0.0.1:39831

      909) Cannot read properties of undefined (reading 'statusCode')

      910) test count !== plan
    PUT - correctly replies with very large body

      911) connect ECONNREFUSED 127.0.0.1:39831

      912) Cannot read properties of undefined (reading 'statusCode')

      913) test count !== plan
    PUT - correctly replies if the content type has the charset

      914) connect ECONNREFUSED 127.0.0.1:39831

      915) Cannot read properties of undefined (reading 'statusCode')

      916) test count !== plan
    PUT without schema - correctly replies

      917) connect ECONNREFUSED 127.0.0.1:39831

      918) Cannot read properties of undefined (reading 'statusCode')

      919) test count !== plan
    PUT with body and querystring - correctly replies

      920) connect ECONNREFUSED 127.0.0.1:39831

      921) Cannot read properties of undefined (reading 'statusCode')

      922) test count !== plan
    PUT with no body - correctly replies

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      923) connect ECONNREFUSED 127.0.0.1:39831

      924) Cannot read properties of undefined (reading 'statusCode')

      925) test count !== plan
    PUT returns 415 - incorrect media type if body is not json

      926) connect ECONNREFUSED 127.0.0.1:39831

      927) Cannot read properties of undefined (reading 'statusCode')
    PUT returns 400 - Bad Request

      928) connect ECONNREFUSED 127.0.0.1:39831

      929) Cannot read properties of undefined (reading 'statusCode')

      930) test count !== plan
    PUT returns 413 - Payload Too Large

      931) connect ECONNREFUSED 127.0.0.1:39831

      932) connect ECONNREFUSED 127.0.0.1:39831

      933) Cannot read properties of undefined (reading 'statusCode')

      934) test count !== plan
    PUT should fail with empty body and application/json content-type

      935) connect ECONNREFUSED 127.0.0.1:39831

      936) connect ECONNREFUSED 127.0.0.1:39831

      ✓ should not error

      ✓ should be equivalent strictly

      ✓ should not error

      ✓ should be equivalent strictly

      ✓ should not error

      ✓ should be equivalent strictly

      937) connect ECONNREFUSED 127.0.0.1:39831

      938) Cannot read properties of undefined (reading 'toString')

      939) test count !== plan
    PUT - correctly replies

      940) connect ECONNREFUSED 127.0.0.1:39831

      941) connect ECONNREFUSED 127.0.0.1:39831

      942) connect ECONNREFUSED 127.0.0.1:46401

      943) Cannot read properties of undefined (reading 'statusCode')

      944) test count !== plan
    PUT - 400 on bad parameters

      945) connect ECONNREFUSED 127.0.0.1:46401

      946) Cannot read properties of undefined (reading 'statusCode')

      947) test count !== plan
    PUT - input-validation coerce

      948) connect ECONNREFUSED 127.0.0.1:46401

      949) Cannot read properties of undefined (reading 'statusCode')

      950) test count !== plan
    PUT - input-validation custom schema compiler

      951) connect ECONNREFUSED 127.0.0.1:46401

      952) Cannot read properties of undefined (reading 'statusCode')

      953) test count !== plan
    PUT - input-validation joi schema compiler ok

      954) connect ECONNREFUSED 127.0.0.1:46401

      955) Cannot read properties of undefined (reading 'statusCode')

      956) test count !== plan
    PUT - input-validation joi schema compiler ko

      957) connect ECONNREFUSED 127.0.0.1:46401

      958) Cannot read properties of undefined (reading 'statusCode')

      959) test count !== plan
    PUT - input-validation instance custom schema compiler encapsulated

      960) connect ECONNREFUSED 127.0.0.1:46401

      961) Cannot read properties of undefined (reading 'statusCode')

      962) test count !== plan
    PUT - input-validation custom schema compiler encapsulated

      963) connect ECONNREFUSED 127.0.0.1:46401

      964) Cannot read properties of undefined (reading 'statusCode')

      965) test count !== plan

    966) Cannot read properties of undefined (reading 'statusCode')

    967) Cannot read properties of undefined (reading 'statusCode')

    968) Cannot read properties of undefined (reading 'statusCode')

    969) Cannot read properties of undefined (reading 'toString')

    970) Cannot read properties of undefined (reading 'toString')

  test/register.test.js
    register

      ✓ should not be equal

      ✓ expect truthy value

      ✓ should be equal

      ✓ should be equal

      ✓ should not be equal

      ✓ expect truthy value

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      971) connect ECONNREFUSED 127.0.0.1:34785

      972) Cannot read properties of undefined (reading 'statusCode')

      973) test count !== plan
    internal route declaration should pass the error generated by the register to the next handler / 1

      974) connect ECONNREFUSED 127.0.0.1:34785

      ✓ should be equal

      975) test count !== plan
    internal route declaration should pass the error generated by the register to the next handler / 2

      ✓ should be equal

      ✓ should not error

    976) Cannot read properties of undefined (reading 'statusCode')

  test/reply-error.test.js
    Reply error handling - code: 400

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 401

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 402

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 403

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 404

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 405

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 406

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 407

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 408

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 409

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 410

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 411

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 412

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 413

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 414

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 415

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 416

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 417

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 418

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 421

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 422

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 423

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 424

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 425

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 426

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 428

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 429

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 431

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 451

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 500

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 501

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 502

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 503

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 504

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 505

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 506

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 507

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 508

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 509

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 510

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    Reply error handling - code: 511

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    preHandler hook error handling with external code

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    onRequest hook error handling with external done

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    Should reply 400 on client error

      ✓ should not error

      977) timeout!

    978) test count !== plan

    979) test count !== plan

  test/request-error.test.js
    default 400 on request error

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    default 400 on request error with custom error handler

      ✓ type is object

      ✓ type is _Request

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent

  test/route-hooks.test.js
    preHandler

      ✓ hook called

      ✓ should not error

      ✓ should be equivalent
    preHandler option should be called after preHandler hook

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    preHandler option could accept an array of functions

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    preHandler option does not interfere with preHandler hook

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    onRequest

      ✓ hook called

      ✓ should not error

      ✓ should be equivalent
    onRequest option should be called after onRequest hook

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    onRequest option could accept an array of functions

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    onRequest option does not interfere with onRequest hook

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    onResponse

      ✓ hook called

      ✓ should not error

      ✓ should be equivalent
    onResponse option should be called after onResponse hook

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    onResponse option could accept an array of functions

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    onResponse option does not interfere with onResponse hook

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    preValidation

      ✓ hook called

      ✓ should not error

      ✓ should be equivalent
    preValidation option should be called after preValidation hook

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    preValidation option could accept an array of functions

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    preValidation option does not interfere with preValidation hook

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    preParsing

      ✓ hook called

      ✓ should not error

      ✓ should be equivalent
    preParsing option should be called after preParsing hook

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    preParsing option could accept an array of functions

      ✓ should be equal

      ✓ should be equal

      ✓ should not error
    preParsing option does not interfere with preParsing hook

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    preHandler option should be unique per route

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent
    preHandler option should handle errors

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    preHandler option should handle errors with custom status code

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    preHandler option should keep the context

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent
    preHandler option should keep the context (array)

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent
    onRequest option should be unique per route

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent
    onRequest option should handle errors

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    onRequest option should handle errors with custom status code

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    onRequest option should keep the context

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent
    onRequest option should keep the context (array)

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent
    preValidation option should be unique per route

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent
    preValidation option should handle errors

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    preValidation option should handle errors with custom status code

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    preValidation option should keep the context

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent
    preValidation option should keep the context (array)

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent
    preParsing option should be unique per route

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent
    preParsing option should handle errors

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    preParsing option should handle errors with custom status code

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    preParsing option should keep the context

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent
    preParsing option should keep the context (array)

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent
    preHandler backwards compatibility with beforeHandler option (should emit a warning)

      ✓ should be equal

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equivalent
    preValidation option should be called before preHandler hook

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equivalent
    preSerialization option should be able to modify the payload

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    preParsing option should be called before preValidation hook

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equivalent
    onRequest option should be called before preParsing

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equivalent

  test/route-prefix.test.js
    Prefix options should add a prefix for all the routes inside a register / 1

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent
    Prefix options should add a prefix for all the routes inside a register / 2

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent
    Prefix options should add a prefix for all the chained routes inside a register / 3

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent
    Prefix should support parameters as well

      ✓ should not error

      ✓ should be equivalent
    Prefix should support /

      ✓ should not error

      ✓ should be equivalent
    Prefix without /

      ✓ should not error

      ✓ should be equivalent
    Prefix with trailing /

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent
    Prefix works multiple levels deep

      ✓ should not error

      ✓ should be equivalent
    Different register - encapsulation check

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent
    Can retrieve prefix within encapsulated instances

      ✓ should not error

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    matches both /prefix and /prefix/ with a / route

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent
    prefix "/prefix/" does not match "/prefix" with a / route

      ✓ should not error

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent
    matches both /prefix and /prefix/ with a / route - ignoreTrailingSlash: true

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent
    matches both /prefix and /prefix/  with a / route - prefixTrailingSlash: "both", ignoreTrailingSlash: false

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent
    returns 404 status code with /prefix/ and / route - prefixTrailingSlash: "both" (default), ignoreTrailingSlash: true

      ✓ should not error

      ✓ should be equivalent
    matches only /prefix  with a / route - prefixTrailingSlash: "no-slash", ignoreTrailingSlash: false

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal
    matches only /prefix/  with a / route - prefixTrailingSlash: "slash", ignoreTrailingSlash: false

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

  test/route.test.js
    route
      route - get

        ✓ (unnamed test)
      missing schema - route

        ✓ (unnamed test)
      invalid handler attribute - route

        ✓ (unnamed test)
      invalid schema - route

        ✓ expect truthy value
      Multiple methods

        ✓ (unnamed test)
      Add multiple methods

        ✓ (unnamed test)
      cannot add another route after binding

        ✓ (unnamed test)
      route - get

        980) connect ECONNREFUSED 127.0.0.1:32839

        981) Cannot read properties of undefined (reading 'statusCode')

        982) test count !== plan
      route - missing schema

        983) connect ECONNREFUSED 127.0.0.1:32839

        984) Cannot read properties of undefined (reading 'statusCode')

        985) test count !== plan
      route - multiple methods

        986) connect ECONNREFUSED 127.0.0.1:32839

        987) Cannot read properties of undefined (reading 'statusCode')

        988) test count !== plan
    path can be specified in place of uri

      989) connect ECONNREFUSED 127.0.0.1:32839

      ✓ should be equal

      ✓ should be equivalent
    invalid bodyLimit option - route

      ✓ should be equal

      ✓ should be equal
    handler function in options of shorthand route should works correctly

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    does not mutate joi schemas

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

    990) Cannot read properties of undefined (reading 'statusCode')

  test/router-options.test.js
    Should honor ignoreTrailingSlash option

      991) connect ECONNREFUSED 127.0.0.1:38589

      992) test count !== plan
    Should honor maxParamLength option

      ✓ should not error

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

    993) Cannot read properties of undefined (reading 'statusCode')

    994) connect ECONNREFUSED 127.0.0.1:38589

    995) Cannot read properties of undefined (reading 'statusCode')

  test/schemas.test.js
    Should use the ref resolver - response

      ✓ should be equal

      ✓ should not error
    Should use the ref resolver - body

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent
    Encapsulation

      ✓ should not error

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    Schema resolver without schema compiler

      ✓ should be equal

      ✓ should match pattern provided
    Triple $ref deep

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    $ref with a simple $id

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

  test/shared-schemas.test.js
    Should expose addSchema function

      ✓ should be equal
    Should expose getSchemas function

      ✓ should be equal
    The schemas should be added to an internal store

      ✓ should be equivalent
    The schemas should be accessible via getSchemas

      ✓ should be equivalent
    Should throw if the $id property is missing

      ✓ should be equal

      ✓ should be equal
    Cannot add multiple times the same id

      ✓ should be equal

      ✓ should be equal
    Should throw of the schema does not exists

      ✓ should be equal

      ✓ should be equal
    Should use a stored schema

      ✓ should not error

      ✓ should be equal
    Should work with nested ids

      ✓ should not error

      ✓ should be equal
    Use the same schema across multiple routes

      ✓ should not error

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    Encapsulation should intervene

      ✓ should be equal

      ✓ should be equal
    Encapsulation isolation

      ✓ should not error
    Encapsulation isolation for getSchemas

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent
    Encapsulation isolation for $ref to shared schema

      ✓ should not error

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    JSON Schema validation keywords

      ✓ should not error

      ✓ should be equal
    Nested id calls

      ✓ should not error

      ✓ should be equal
    Use the same schema id in diferent places

      ✓ should not error
    Use shared schema and $ref with $id ($ref to $id)

      ✓ should not error

      ✓ should be equivalent
    Use shared schema and $ref with $id in response ($ref to $id)

      ✓ should not error

      ✓ should be equivalent
    The schema resolver should clean the $id key before passing it to the compiler without modify it

      ✓ expect truthy value

      ✓ should not error

      ✓ expect truthy value
    Get schema anyway should not add `properties` if allOf is present

      ✓ should not error
    Get schema anyway should not add `properties` if oneOf is present

      ✓ should not error
    Get schema anyway should not add `properties` if anyOf is present

      ✓ should not error
    Shared schema should be pass to serializer and validator ($ref to shared schema /definitions)

      ✓ should not error

      ✓ should be equivalent
    Shared schema should be pass to serializer and validator ($ref to shared schema $id)

      ✓ should not error

      ✓ should be equivalent
    Use shared schema and $ref

      ✓ should not error
    Use shared schema and $ref to /definitions

      ✓ should not error

      ✓ should be equivalent
    Cross shared schema reference

      ✓ should not error
    Cross shared schema reference with unused shared schema

      ✓ should not error
    Cross shared schema reference with multiple references

      ✓ should not error
    Cross shared schema reference with encapsulation references

      ✓ should not error

  test/stream.test.js
    should respond with a stream

      ✓ should not error

      996) connect ECONNREFUSED 127.0.0.1:44133

      997) Cannot read properties of undefined (reading 'headers')

      998) test count !== plan
    should trigger the onSend hook

      999) connect ECONNREFUSED 127.0.0.1:44133

      ✓ expect truthy value

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      1000) test count !== plan
    should trigger the onSend hook only twice if pumping the stream fails, first with the stream, second with the serialized error

      ✓ should not error

      1001) connect ECONNREFUSED 127.0.0.1:36645

      1002) Cannot read properties of undefined (reading 'statusCode')

      1003) test count !== plan
    onSend hook stream

      ✓ should not error

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    Destroying streams prematurely

      ✓ should not error

      1004) test unfinished

      1005) test count !== plan

    1006) child test left in queue: t.test Destroying streams prematurely should call close method

    1007) child test left in queue: t.test Destroying streams prematurely should call abort method

    1008) child test left in queue: t.test should respond with a stream1

    1009) child test left in queue: t.test return a 404 if the stream emits a 404 error

    1010) child test left in queue: t.test should support send module 200 and 404

    1011) Cannot read properties of undefined (reading 'statusCode')

    1012) connect ECONNREFUSED 127.0.0.1:43255

    1013) test count !== plan

  test/throw.test.js
    Fastify should throw on wrong options

      ✓ should be equal

      ✓ (unnamed test)
    Fastify should throw on multiple assignment to the same route

      ✓ should be equal
    Fastify should throw for an invalid schema, printing the error route - headers

      ✓ should be equal

      ✓ should match pattern provided
    Fastify should throw for an invalid schema, printing the error route - body

      ✓ should be equal

      ✓ should match pattern provided
    Should throw on unsupported method

      ✓ (unnamed test)
    Should throw on missing handler

      ✓ (unnamed test)
    Should throw if one method is unsupported

      ✓ (unnamed test)
    Should throw on duplicate content type parser

      ✓ (unnamed test)
    Should throw on duplicate decorator

      ✓ (unnamed test)
    Should not throw on duplicate decorator encapsulation

      ✓ expected to not throw
    Should throw on duplicate request decorator

      ✓ should be equal

      ✓ should be equal
    Should throw if request decorator dependencies are not met

      ✓ should be equal

      ✓ should be equal
    Should throw on duplicate reply decorator

      ✓ expect truthy value
    Should throw if reply decorator dependencies are not met

      ✓ expect truthy value
    Should throw if handler as the third parameter to the shortcut method is missing and the second parameter is not a function and also not an object

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ (unnamed test)
    Should throw if handler as the third parameter to the shortcut method is missing and the second parameter is not a function and also not an object

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ (unnamed test)
    Should throw if there is handler function as the third parameter to the shortcut method and options as the second parameter is not an object

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ (unnamed test)

      ✓ (unnamed test)
    Should throw if found duplicate handler as the third parameter to the shortcut method and in options

      ✓ (unnamed test)

  test/trust-proxy.test.js
    trust proxy, add properties to node req

      ✓ should not error

      1014) test unfinished

      1015) test count !== plan

    1016) child test left in queue: t.test trust proxy, not add properties to node req

    1017) child test left in queue: t.test trust proxy chain

    1018) child test left in queue: t.test trust proxy function

    1019) child test left in queue: t.test trust proxy number

    1020) child test left in queue: t.test trust proxy IP addresses

    1021) test count !== plan

  test/validation-error-handling.test.js
    should work with valid payload

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal
    should fail immediately with invalid payload

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal
    should be able to use setErrorHandler specify custom validation error

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal
    should be able to attach validation to request

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal
    should respect when attachValidation is explicitly set to false

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal
    Attached validation error should take precendence over setErrorHandler

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal
    should handle response validation error

      ✓ should not error

      1022) should be equal
    should handle response validation error with promises

      ✓ should not error

      1023) should be equal
    should return a defined output message parsing AJV errors

      ✓ should not error

      ✓ should be equal
    should return a defined output message parsing JOI errors

      ✓ should not error

      ✓ should be equal
    should return a defined output message parsing JOI error details

      ✓ should not error

      ✓ should be equal

  test/versioned-routes.test.js
    Should register a versioned route

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    Should register the same route with different versions

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    The versioned route should take precedence

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal
    Versioned route but not version header should return a 404

      ✓ should not error

      ✓ should be equal
    Should register a versioned route

      ✓ should not error

      1024) connect ECONNREFUSED 127.0.0.1:33543

      1025) Cannot read properties of undefined (reading 'statusCode')

      1026) test count !== plan
    Shorthand route declaration

      1027) connect ECONNREFUSED 127.0.0.1:33543

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      1028) test count !== plan
    The not found handler should not use the Accept-Version header

      ✓ expect falsey value

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equal
    Bad accept version (inject)

      ✓ should not error

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    Bas accept version (server)

      ✓ should not error

      1029) connect ECONNREFUSED 127.0.0.1:41619

      1030) Cannot read properties of undefined (reading 'statusCode')

      1031) test count !== plan
    test log stream

      1032) connect ECONNREFUSED 127.0.0.1:41619

      ✓ should not error

      1033) test unfinished

    1034) child test left in queue: t.test Should register a versioned route with custome versioning strategy

    1035) Cannot read properties of undefined (reading 'statusCode')

    1036) Cannot read properties of undefined (reading 'statusCode')

    1037) connect ECONNREFUSED 127.0.0.1:32977

    1038) test count !== plan

  test/wrapThenable.test.js

    ✓ should resolve immediately when reply[kReplySentOverwritten] is true
    should reject immediately when reply[kReplySentOverwritten] is true

      ✓ should be equal

  test/http2/http2.test.js

    ✓ http2 successfully loaded

    ✓ Key/cert successfully loaded

    ✓ Key/cert successfully loaded

    ✓ http2 successfully loaded
    should throw when http2 module cannot be found

      ✓ should be equal
    http/2 request while fastify closing

      ✓ http2 successfully loaded

      ✓ should not error

      ✓ return 200
    http/2 request while fastify closing - return503OnClosing: false

      ✓ http2 successfully loaded

      ✓ should not error

      ✓ return 200

    ✓ should not error
    http get request

      1039) test unfinished

      1040) test count !== plan

    ✓ should not error

    1041) child test left in queue: t.test https get request

    ✓ should not error

    1042) child test left in queue: t.test https get error

    1043) child test left in queue: t.test https post

    1044) child test left in queue: t.test https get request

    1045) child test left in queue: t.test http1 get request

    1046) child test left in queue: t.test http1 get error

    ✓ should not error

    1047) child test left in queue: t.test http UNKNOWN_METHOD request

    1048) connect ECONNREFUSED 127.0.0.1:46771

    1049) test count !== plan

  test/https/custom-https-server.test.js
    Should support a custom https server

      ✓ expect truthy value

      ✓ should not error

      1050) connect ECONNREFUSED 127.0.0.1:45915

      1051) Cannot read properties of undefined (reading 'statusCode')

      1052) test count !== plan

  test/https/https.test.js

    ✓ Key/cert successfully loaded
    https get

      ✓ (unnamed test)

    ✓ should not error
    https get request

      1053) connect ECONNREFUSED 127.0.0.1:35799

      1054) Cannot read properties of undefined (reading 'statusCode')

      1055) test count !== plan

  test/internals/all.test.js
    fastify.all should add all the methods to the same url

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent

  test/internals/contentTypeParser.test.js
    rawBody function

      ✓ should be equal

      ✓ should be equal

  test/internals/decorator.test.js
    decorate should add the given method to its instance

      ✓ expect truthy value
    decorate is chainable

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value
    checkExistence should check if a property is part of the given instance

      ✓ expect truthy value
    checkExistence should find the instance if not given

      ✓ expect truthy value
    checkExistence should check the prototype as well

      ✓ expect truthy value
    checkDependencies should throw if a dependency is not present

      ✓ should be equal

      ✓ should be equal
    decorate should internally call checkDependencies

      ✓ should be equal

      ✓ should be equal
    decorate should recognize getter/setter objects

      ✓ should be equal

      ✓ should be equal

      ✓ (unnamed test)

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

  test/internals/errors.test.js
    Create error with zero parameter

      ✓ type is Error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ expect truthy value
    Create error with 1 parameter

      ✓ type is Error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ expect truthy value
    Create error with 2 parameters

      ✓ type is Error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ expect truthy value
    Create error with 3 parameters

      ✓ type is Error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ expect truthy value
    Create error with no statusCode property

      ✓ type is Error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ expect falsey value

      ✓ expect truthy value
    Should throw when error code has no fastify code

      ✓ should be equal
    Should throw when error code has no message

      ✓ should be equal
    Create error with different base

      ✓ type is Error

      ✓ type is TypeError

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ expect truthy value
    Error has appropriate string tag

      ✓ should be equal

  test/internals/handleRequest.test.js
    Request object

      ✓ type is Request

      ✓ should be equal

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent strictly
    handleRequest function - sent reply

      ✓ should be equal
    handleRequest function - invoke with error

      ✓ should be equal
    handler function - invalid schema

      ✓ should be equal

      ✓ (unnamed test)
    handler function - reply

      ✓ should be equal

      ✓ should be equal

      ✓ (unnamed test)

    ✓ handler function - preValidationCallback with finished response
    request should be defined in onSend Hook on post request with content type application/json

      ✓ should not error

      1056) connect ECONNREFUSED 127.0.0.1:45359

      1057) Cannot read properties of undefined (reading 'statusCode')

      1058) test count !== plan
    request should be defined in onSend Hook on post request with content type application/x-www-form-urlencoded

      ✓ should not error

      1059) connect ECONNREFUSED 127.0.0.1:42437

      1060) Cannot read properties of undefined (reading 'statusCode')

      1061) test count !== plan
    request should be defined in onSend Hook on options request with content type application/x-www-form-urlencoded

      ✓ should not error

      1062) connect ECONNREFUSED 127.0.0.1:42963

      1063) Cannot read properties of undefined (reading 'statusCode')

      1064) test count !== plan
    request should respond with an error if an unserialized payload is sent inside an an async handler

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent strictly

  test/internals/hookRunner.test.js
    hookRunner - Basic

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    hookRunner - In case of error should skip to done

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    hookRunner - Should handle promises

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    hookRunner - In case of error should skip to done (with promises)

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    hookRunner - Be able to exit before its natural end

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    hookRunner - Promises that resolve to a value do not change the state

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should not error

      ✓ should be equal
    onSendHookRunner - Basic

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equal

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equal
    onSendHookRunner - Can change the payload

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent
    onSendHookRunner - In case of error should skip to done

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent
    onSendHookRunner - Should handle promises

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent
    onSendHookRunner - In case of error should skip to done (with promises)

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equal

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent
    onSendHookRunner - Be able to exit before its natural end

      ✓ should be equivalent

      ✓ should be equivalent

  test/internals/hooks.test.js
    hooks should have 4 array with the registered hooks

      ✓ should be equal

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value

      ✓ expect truthy value
    hooks.add should add a hook to the given hook

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    hooks should throw on unexisting handler

      ✓ (unnamed test)
    should throw on wrong parameters

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

  test/internals/initialConfig.test.js
    Fastify.initialConfig is an object

      ✓ type is object
    without options passed to Fastify, initialConfig should expose default values

      ✓ should be equivalent
    Fastify.initialConfig should expose all options

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    Should throw if you try to modify Fastify.initialConfig

      ✓ type is TypeError

      ✓ should be equal

      ✓ expect truthy value

      ✓ (unnamed test)
    We must avoid shallow freezing and ensure that the whole object is freezed

      ✓ type is TypeError

      ✓ should be equal

      ✓ expect truthy value

      ✓ (unnamed test)
    Return an error if options do not match the validation schema

      ✓ type is Error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ expect truthy value

      ✓ (unnamed test)
    Original options must not be frozen

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    Original options must not be altered (test deep cloning)

      ✓ should be equal

      ✓ should be equivalent

      ✓ should be equivalent
    Should not have issues when passing stream options to Pino.js

      ✓ type is object

      ✓ should be equivalent

      ✓ listen at log message is ok

      ✓ should not error

      1065) test unfinished

      1066) test count !== plan

    1067) child test left in queue: t.test deepFreezeObject() should not throw on TypedArray

    1068) connect ECONNREFUSED 127.0.0.1:41159

    1069) test count !== plan

  test/internals/logger.test.js
    time resolution

      ✓ should be equal

      ✓ should be equal
    The logger should add a unique id for every request

      ✓ should not error

      ✓ expect truthy value

      ✓ should not error

      ✓ the id should not be duplicated

      ✓ expect truthy value

      ✓ should not error

      ✓ the id should not be duplicated

      ✓ expect truthy value

      ✓ should not error

      ✓ the id should not be duplicated

      ✓ expect truthy value

      ✓ should not error

      ✓ the id should not be duplicated

      ✓ expect truthy value

      ✓ should not error

      ✓ the id should not be duplicated

      ✓ expect truthy value

      ✓ should not error

      ✓ the id should not be duplicated

      ✓ expect truthy value

      ✓ should not error

      ✓ the id should not be duplicated

      ✓ expect truthy value

      ✓ should not error

      ✓ the id should not be duplicated

      ✓ expect truthy value

      ✓ should not error

      ✓ the id should not be duplicated

      ✓ expect truthy value

      ✓ should not error

      ✓ the id should not be duplicated
    The logger should reuse request id header for req.id

      ✓ should not error

      ✓ expect truthy value

      ✓ should not error

      ✓ the request id from the header should be returned
    The logger should error if both stream and file destination are given

      ✓ should be equal

      ✓ should be equal

  test/internals/plugin.test.js
    shouldSkipOverride should check the 'skip-override' symbol

      ✓ expect truthy value

      ✓ expect falsey value
    getMeta should return the object stored with the 'plugin-meta' symbol

      ✓ should be equivalent
    checkDecorators should check if the given decorator is present in the instance

      ✓ Everything ok
    checkDecorators should check if the given decorator is present in the instance (errored)

      ✓ should be equal
    checkDependencies should check if the given dependency is present in the instance

      ✓ Everything ok
    checkDependencies should check if the given dependency is present in the instance (errored)

      ✓ should be equal

  test/internals/reply.test.js
    Once called, Reply should return an object with methods

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    reply.send throw with circular JSON

      ✓ Converting circular structure to JSON
    reply.send returns itself

      ✓ should be equal
    reply.serializer should set a custom serializer

      ✓ should be equal

      ✓ should be equal
    reply.serialize should serialize payload

      ✓ should be equal
    reply.serialize should serialize payload with a custom serializer

      ✓ should be equal

      ✓ custom serializer not called
    reply.serialize should serialize payload with Fastify instance

      ✓ should not error

      ✓ should be equal
    within an instance

      ✓ should not error
      custom serializer should be used

        1070) connect ECONNREFUSED 127.0.0.1:40287

        1071) Cannot read properties of undefined (reading 'headers')

        1072) test count !== plan
      status code and content-type should be correct

        1073) connect ECONNREFUSED 127.0.0.1:40287

        1074) Cannot read properties of undefined (reading 'statusCode')

        1075) test count !== plan
      auto status code shoud be 200

        1076) connect ECONNREFUSED 127.0.0.1:40287

        1077) Cannot read properties of undefined (reading 'statusCode')

        1078) test count !== plan
      auto type shoud be text/plain

        1079) connect ECONNREFUSED 127.0.0.1:40287

        1080) Cannot read properties of undefined (reading 'headers')

        1081) test count !== plan
      redirect to `/` - 1

        1082) test unfinished

      1083) child test left in queue: t.test redirect to `/` - 2

      1084) child test left in queue: t.test redirect to `/` - 3

      1085) child test left in queue: t.test redirect to `/` - 4

      1086) child test left in queue: t.test redirect to `/` - 5

      1087) child test left in queue: t.test redirect to `/` - 6

      1088) child test left in queue: t.test redirect to `/` - 7

      1089) child test left in queue: t.test redirect to `/` - 8

      1090) child test left in queue: t.test redirect to `/` - 9

      1091) test count !== plan

    1092) child test left in queue: t.test buffer without content type should send a application/octet-stream and raw buffer

    1093) child test left in queue: t.test buffer with content type should not send application/octet-stream

    1094) child test left in queue: t.test stream with content type should not send application/octet-stream

    1095) child test left in queue: t.test stream using reply.res.writeHead should return customize headers

    1096) child test left in queue: t.test plain string without content type should send a text/plain

    1097) child test left in queue: t.test plain string with content type should be sent unmodified

    1098) child test left in queue: t.test plain string with content type and custom serializer should be serialized

    1099) child test left in queue: t.test plain string with content type application/json should be serialized as json

    1100) child test left in queue: t.test error object with a content type that is not application/json should work

    1101) child test left in queue: t.test undefined payload should be sent as-is

    1102) child test left in queue: t.test reply.send(new NotFound()) should not invoke the 404 handler

    1103) child test left in queue: t.test reply can set multiple instances of same header

    1104) child test left in queue: t.test reply.hasHeader returns correct values

    1105) child test left in queue: t.test reply.getHeader returns correct values

    1106) child test left in queue: t.test reply.removeHeader can remove the value

    1107) child test left in queue: t.test reply.header can reset the value

    1108) child test left in queue: t.test Reply should handle JSON content type with a charset

    1109) child test left in queue: t.test Content type and charset set previously

    1110) child test left in queue: t.test .status() is an alias for .code()

    1111) child test left in queue: t.test .statusCode is getter and setter

    1112) child test left in queue: t.test reply.header setting multiple cookies as multiple Set-Cookie headers

    1113) child test left in queue: t.test should throw error when passing falsy value to reply.sent

    1114) child test left in queue: t.test should throw error when attempting to set reply.sent more than once

    1115) child test left in queue: t.test reply.getResponseTime() should return 0 before the timer is initialised on the reply by setting up response listeners

    1116) child test left in queue: t.test reply.getResponseTime() should return a number greater than 0 after the timer is initialised on the reply by setting up response listeners

    1117) child test left in queue: t.test reply should use the custom serializer

    1118) child test left in queue: t.test reply should use the right serializer in encapsulated context

    1119) child test left in queue: t.test reply should use the right serializer in deep encapsulated context

    1120) child test left in queue: t.test reply should use the route serializer

    1121) child test left in queue: t.test cannot set the replySerializer when the server is running

    1122) child test left in queue: t.test reply should not call the custom serializer for errors and not found

    1123) child test left in queue: t.test reply.then

    1124) connect ECONNREFUSED 127.0.0.1:40287

    1125) test count !== plan

  test/internals/schemas.test.js
    Should not change resolved schema

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

      ✓ should be equivalent

  test/internals/validation.test.js
    Symbols

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    build schema - missing schema

      ✓ should be equal
    build schema - missing output schema

      ✓ should be equal
    build schema - output schema

      ✓ should be equal

      ✓ should be equal
    build schema - payload schema

      ✓ should be equal
    build schema - query schema

      ✓ type is string

      ✓ should be equal
    build schema - query schema abbreviated

      ✓ type is string

      ✓ should be equal
    build schema - querystring schema

      ✓ type is string

      ✓ should be equal
    build schema - querystring schema abbreviated

      ✓ type is string

      ✓ should be equal
    build schema - must throw if querystring and query schema exist

      ✓ should be equal

      ✓ should be equal
    build schema - params schema

      ✓ should be equal
    build schema - headers schema

      ✓ should be equal
    build schema - headers are lowercase

      ✓ lowercase content-type exists
    build schema - headers are not lowercased in case of custom object

      ✓ type is Headers
    build schema - uppercased headers are not included

      ✓ uppercase does not exist


  2235 passing (30s)
  1125 failing

  1) test/404s.test.js default 404 unsupported method connect ECONNREFUSED 127.0.0.1:45619:
     Error: connect ECONNREFUSED 127.0.0.1:45619
      at test/404s.test.js:35:11

  2) test/404s.test.js default 404 unsupported method Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:36:32

  3) test/404s.test.js default 404 unsupported method test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  4) test/404s.test.js default 404 unsupported route connect ECONNREFUSED 127.0.0.1:45619:
     Error: connect ECONNREFUSED 127.0.0.1:45619
      at test/404s.test.js:49:11

  5) test/404s.test.js default 404 unsupported route Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:50:32

  6) test/404s.test.js default 404 unsupported route test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  7) test/404s.test.js customized 404 unsupported method connect ECONNREFUSED 127.0.0.1:33741:
     Error: connect ECONNREFUSED 127.0.0.1:33741
      at test/404s.test.js:94:11

  8) test/404s.test.js customized 404 unsupported method Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:95:32

  9) test/404s.test.js customized 404 unsupported method test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  10) test/404s.test.js customized 404 unsupported route connect ECONNREFUSED 127.0.0.1:33741:
     Error: connect ECONNREFUSED 127.0.0.1:33741
      at test/404s.test.js:106:11

  11) test/404s.test.js customized 404 unsupported route Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:107:32

  12) test/404s.test.js customized 404 unsupported route test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  13) test/404s.test.js customized 404 with error object connect ECONNREFUSED 127.0.0.1:33741:
     Error: connect ECONNREFUSED 127.0.0.1:33741
      at test/404s.test.js:118:11

  14) test/404s.test.js customized 404 with error object Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:119:32

  15) test/404s.test.js customized 404 with error object test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  16) test/404s.test.js customized 404 error object with headers property connect ECONNREFUSED 127.0.0.1:33741:
     Error: connect ECONNREFUSED 127.0.0.1:33741
      at test/404s.test.js:134:11

  17) test/404s.test.js customized 404 error object with headers property Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:135:32

  18) test/404s.test.js customized 404 error object with headers property test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  19) test/404s.test.js custom header in notFound handler not found with custom header connect ECONNREFUSED 127.0.0.1:33985:
     Error: connect ECONNREFUSED 127.0.0.1:33985
      at test/404s.test.js:168:11

  20) test/404s.test.js custom header in notFound handler not found with custom header Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:169:32

  21) test/404s.test.js custom header in notFound handler not found with custom header test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  22) test/404s.test.js encapsulated 404 root unsupported method connect ECONNREFUSED 127.0.0.1:41115:
     Error: connect ECONNREFUSED 127.0.0.1:41115
      at test/404s.test.js:357:11

  23) test/404s.test.js encapsulated 404 root unsupported method Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:358:32

  24) test/404s.test.js encapsulated 404 root unsupported method test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  25) test/404s.test.js encapsulated 404 root insupported route connect ECONNREFUSED 127.0.0.1:41115:
     Error: connect ECONNREFUSED 127.0.0.1:41115
      at test/404s.test.js:369:11

  26) test/404s.test.js encapsulated 404 root insupported route Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:370:32

  27) test/404s.test.js encapsulated 404 root insupported route test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  28) test/404s.test.js encapsulated 404 unsupported method connect ECONNREFUSED 127.0.0.1:41115:
     Error: connect ECONNREFUSED 127.0.0.1:41115
      at test/404s.test.js:383:11

  29) test/404s.test.js encapsulated 404 unsupported method Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:384:32

  30) test/404s.test.js encapsulated 404 unsupported method test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  31) test/404s.test.js encapsulated 404 unsupported route connect ECONNREFUSED 127.0.0.1:41115:
     Error: connect ECONNREFUSED 127.0.0.1:41115
      at test/404s.test.js:395:11

  32) test/404s.test.js encapsulated 404 unsupported route Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:396:32

  33) test/404s.test.js encapsulated 404 unsupported route test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  34) test/404s.test.js encapsulated 404 unsupported method bis connect ECONNREFUSED 127.0.0.1:41115:
     Error: connect ECONNREFUSED 127.0.0.1:41115
      at test/404s.test.js:409:11

  35) test/404s.test.js encapsulated 404 unsupported method bis Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:410:32

  36) test/404s.test.js encapsulated 404 unsupported method bis test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  37) test/404s.test.js encapsulated 404 unsupported route bis connect ECONNREFUSED 127.0.0.1:41115:
     Error: connect ECONNREFUSED 127.0.0.1:41115
      at test/404s.test.js:421:11

  38) test/404s.test.js encapsulated 404 unsupported route bis Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:422:32

  39) test/404s.test.js encapsulated 404 unsupported route bis test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  40) test/404s.test.js encapsulated 404 unsupported method 3 connect ECONNREFUSED 127.0.0.1:41115:
     Error: connect ECONNREFUSED 127.0.0.1:41115
      at test/404s.test.js:435:11

  41) test/404s.test.js encapsulated 404 unsupported method 3 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:436:32

  42) test/404s.test.js encapsulated 404 unsupported method 3 test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  43) test/404s.test.js encapsulated 404 unsupported route 3 connect ECONNREFUSED 127.0.0.1:41115:
     Error: connect ECONNREFUSED 127.0.0.1:41115
      at test/404s.test.js:447:11

  44) test/404s.test.js encapsulated 404 unsupported route 3 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:448:32

  45) test/404s.test.js encapsulated 404 unsupported route 3 test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  46) test/404s.test.js run hooks and middleware on default 404 connect ECONNREFUSED 127.0.0.1:32863:
     Error: connect ECONNREFUSED 127.0.0.1:32863
      at test/404s.test.js:618:9

  47) test/404s.test.js run hooks and middleware on default 404 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:619:30

  48) test/404s.test.js run hooks and middleware on default 404 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +8
      
  

  49) test/404s.test.js run hooks and middleware with encapsulated 404 connect ECONNREFUSED 127.0.0.1:46157:
     Error: connect ECONNREFUSED 127.0.0.1:46157
      at test/404s.test.js:799:9

  50) test/404s.test.js run hooks and middleware with encapsulated 404 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:800:30

  51) test/404s.test.js run hooks and middleware with encapsulated 404 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +13
      
  

  52) test/404s.test.js run middlewares on default 404 connect ECONNREFUSED 127.0.0.1:43461:
     Error: connect ECONNREFUSED 127.0.0.1:43461
      at test/404s.test.js:830:9

  53) test/404s.test.js run middlewares on default 404 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:831:30

  54) test/404s.test.js run middlewares on default 404 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  55) test/404s.test.js run middlewares with encapsulated 404 connect ECONNREFUSED 127.0.0.1:39533:
     Error: connect ECONNREFUSED 127.0.0.1:39533
      at test/404s.test.js:870:9

  56) test/404s.test.js run middlewares with encapsulated 404 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:871:30

  57) test/404s.test.js run middlewares with encapsulated 404 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  58) test/404s.test.js hooks check 404 connect ECONNREFUSED 127.0.0.1:43013:
     Error: connect ECONNREFUSED 127.0.0.1:43013
      at test/404s.test.js:910:9

  59) test/404s.test.js hooks check 404 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:911:30

  60) test/404s.test.js hooks check 404 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +13
      
  

  61) test/404s.test.js setNotFoundHandler should not suppress duplicated routes checking connect ECONNREFUSED 127.0.0.1:43013:
     Error: connect ECONNREFUSED 127.0.0.1:43013
      at test/404s.test.js:918:9

  62) test/404s.test.js setNotFoundHandler should not suppress duplicated routes checking test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +1
      
  

  63) test/404s.test.js Unknown method connect ECONNREFUSED 127.0.0.1:39455:
     Error: connect ECONNREFUSED 127.0.0.1:39455
      at test/404s.test.js:1015:9

  64) test/404s.test.js Unknown method Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:1016:30

  65) test/404s.test.js Unknown method test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +5
      
  

  66) test/404s.test.js recognizes errors from the http-errors module connect ECONNREFUSED 127.0.0.1:35637:
     Error: connect ECONNREFUSED 127.0.0.1:35637
      at test/404s.test.js:1048:11

  67) test/404s.test.js recognizes errors from the http-errors module Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/404s.test.js:1049:37

  68) test/404s.test.js 404 inside onSend connect ECONNREFUSED 127.0.0.1:41577:
     Error: connect ECONNREFUSED 127.0.0.1:41577
      at test/404s.test.js:1196:9

  69) test/404s.test.js 404 inside onSend Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:1197:30

  70) test/404s.test.js Not found on supported method (should return a 404) connect ECONNREFUSED 127.0.0.1:37405:
     Error: connect ECONNREFUSED 127.0.0.1:37405
      at test/404s.test.js:1227:11

  71) test/404s.test.js Not found on supported method (should return a 404) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:1228:32

  72) test/404s.test.js Not found on unsupported method (should return a 404) connect ECONNREFUSED 127.0.0.1:35191:
     Error: connect ECONNREFUSED 127.0.0.1:35191
      at test/404s.test.js:1260:11

  73) test/404s.test.js Not found on unsupported method (should return a 404) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:1261:32

  74) test/404s.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:919:30

  75) test/async-await.test.js async await connect ECONNREFUSED 127.0.0.1:40423:
     Error: connect ECONNREFUSED 127.0.0.1:40423
      at test/async-await.js:58:11

  76) test/async-await.test.js async await Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/async-await.js:59:32

  77) test/async-await.test.js async await test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +11
      
  

  78) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (undefined) connect ECONNREFUSED 127.0.0.1:40423:
     Error: connect ECONNREFUSED 127.0.0.1:40423
      at test/async-await.js:68:11

  79) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (undefined) connect ECONNREFUSED 127.0.0.1:42947:
     Error: connect ECONNREFUSED 127.0.0.1:42947
      at test/async-await.js:94:11

  80) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (undefined) "undefined" is not valid JSON:
     Error: "undefined" is not valid JSON
      at JSON.parse (<anonymous>)
      at test/async-await.js:95:35

  81) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (object) connect ECONNREFUSED 127.0.0.1:38951:
     Error: connect ECONNREFUSED 127.0.0.1:38951
      at test/async-await.js:120:11

  82) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (object) "undefined" is not valid JSON:
     Error: "undefined" is not valid JSON
      at JSON.parse (<anonymous>)
      at test/async-await.js:121:35

  83) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (object) test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  84) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (undefined) connect ECONNREFUSED 127.0.0.1:38441:
     Error: connect ECONNREFUSED 127.0.0.1:38441
      at test/async-await.js:175:11

  85) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (undefined) "undefined" is not valid JSON:
     Error: "undefined" is not valid JSON
      at JSON.parse (<anonymous>)
      at test/async-await.js:176:35

  86) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (undefined) test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  87) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (object) connect ECONNREFUSED 127.0.0.1:39209:
     Error: connect ECONNREFUSED 127.0.0.1:39209
      at test/async-await.js:201:11

  88) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (object) "undefined" is not valid JSON:
     Error: "undefined" is not valid JSON
      at JSON.parse (<anonymous>)
      at test/async-await.js:202:35

  89) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (object) test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  90) test/async-await.test.js error is logged because promise was fulfilled with undefined should be equal:

      Error: should be equal
      + expected - actual

      -connect ECONNREFUSED 127.0.0.1:34517
      +Request timed out
      
      at test/async-await.js:438:11

  91) test/async-await.test.js error is logged because promise was fulfilled with undefined test unfinished:
     Error: test unfinished
      at asyncTest (test/async-await.js:403:3)
      at Object.<anonymous> (test/async-await.test.js:7:27)

  92) test/async-await.test.js child test left in queue: t.test error is not logged because promise was fulfilled with undefined but statusCode 204 was set:
     child test left in queue: t.test error is not logged because promise was fulfilled with undefined but statusCode 204 was set
  

  93) test/async-await.test.js child test left in queue: t.test error is not logged because promise was fulfilled with undefined but response was sent before promise resolution:
     child test left in queue: t.test error is not logged because promise was fulfilled with undefined but response was sent before promise resolution
  

  94) test/async-await.test.js child test left in queue: t.test Thrown Error instance sets HTTP status code:
     child test left in queue: t.test Thrown Error instance sets HTTP status code
  

  95) test/async-await.test.js child test left in queue: t.test customErrorHandler support:
     child test left in queue: t.test customErrorHandler support
  

  96) test/async-await.test.js child test left in queue: t.test customErrorHandler support without throwing:
     child test left in queue: t.test customErrorHandler support without throwing
  

  97) test/async-await.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/async-await.js:69:32

  98) test/async-await.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -21
      +16
      
  

  99) test/bodyLimit.test.js bodyLimit connect ECONNREFUSED 127.0.0.1:41095:
     Error: connect ECONNREFUSED 127.0.0.1:41095
      at test/bodyLimit.test.js:42:9

  100) test/bodyLimit.test.js bodyLimit Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/bodyLimit.test.js:43:30

  101) test/case-insensitive.test.js case insensitive connect ECONNREFUSED 127.0.0.1:46199:
     Error: connect ECONNREFUSED 127.0.0.1:46199
      at test/case-insensitive.test.js:27:9

  102) test/case-insensitive.test.js case insensitive Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/case-insensitive.test.js:28:30

  103) test/case-insensitive.test.js case insensitive test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  104) test/case-insensitive.test.js case insensitive (parametric) connect ECONNREFUSED 127.0.0.1:44905:
     Error: connect ECONNREFUSED 127.0.0.1:44905
      at test/case-insensitive.test.js:84:9

  105) test/case-insensitive.test.js case insensitive (parametric) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/case-insensitive.test.js:85:30

  106) test/case-insensitive.test.js case insensitive (parametric) test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  107) test/case-insensitive.test.js case insensitive (wildcard) connect ECONNREFUSED 127.0.0.1:43807:
     Error: connect ECONNREFUSED 127.0.0.1:43807
      at test/case-insensitive.test.js:113:9

  108) test/case-insensitive.test.js case insensitive (wildcard) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/case-insensitive.test.js:114:30

  109) test/case-insensitive.test.js case insensitive (wildcard) test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  110) test/close-pipelining.test.js Should return 503 while closing - pipelining should be equal:
     Error: should be equal
      at EventEmitter.<anonymous> (test/close-pipelining.test.js:36:9)

  111) test/close-pipelining.test.js Should return 503 while closing - pipelining should be equal:
     Error: should be equal
      at EventEmitter.<anonymous> (test/close-pipelining.test.js:36:9)

  112) test/close-pipelining.test.js Should not return 503 while closing - pipelining - return503OnClosing should be equal:
     Error: should be equal
      at EventEmitter.<anonymous> (test/close-pipelining.test.js:72:9)

  113) test/close-pipelining.test.js Should not return 503 while closing - pipelining - return503OnClosing should be equal:
     Error: should be equal
      at EventEmitter.<anonymous> (test/close-pipelining.test.js:72:9)

  114) test/close-pipelining.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +1
      
  

  115) test/close.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -6
      +1
      
  

  116) test/custom-http-server.test.js Should support a custom http server connect ECONNREFUSED 127.0.0.1:41763:
     Error: connect ECONNREFUSED 127.0.0.1:41763
      at test/custom-http-server.test.js:39:9

  117) test/custom-http-server.test.js Should support a custom http server Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-http-server.test.js:40:30

  118) test/custom-http-server.test.js Should support a custom http server test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +6
      
  

  119) test/custom-parser.test.js contentTypeParser should add a custom async parser in POST connect ECONNREFUSED 127.0.0.1:46825:
     Error: connect ECONNREFUSED 127.0.0.1:46825
      at test/custom-parser-async.js:41:11

  120) test/custom-parser.test.js contentTypeParser should add a custom async parser in POST Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser-async.js:42:32

  121) test/custom-parser.test.js contentTypeParser should add a custom async parser in POST test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  122) test/custom-parser.test.js contentTypeParser should add a custom async parser in OPTIONS connect ECONNREFUSED 127.0.0.1:46825:
     Error: connect ECONNREFUSED 127.0.0.1:46825
      at test/custom-parser-async.js:58:11

  123) test/custom-parser.test.js contentTypeParser should add a custom async parser in OPTIONS Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser-async.js:59:32

  124) test/custom-parser.test.js contentTypeParser should add a custom async parser in OPTIONS test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  125) test/custom-parser.test.js contentTypeParser should add a custom parser in POST connect ECONNREFUSED 127.0.0.1:37201:
     Error: connect ECONNREFUSED 127.0.0.1:37201
      at test/custom-parser.test.js:72:11

  126) test/custom-parser.test.js contentTypeParser should add a custom parser in POST Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:73:32

  127) test/custom-parser.test.js contentTypeParser should add a custom parser in POST test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  128) test/custom-parser.test.js contentTypeParser should add a custom parser in OPTIONS connect ECONNREFUSED 127.0.0.1:37201:
     Error: connect ECONNREFUSED 127.0.0.1:37201
      at test/custom-parser.test.js:89:11

  129) test/custom-parser.test.js contentTypeParser should add a custom parser in OPTIONS Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:90:32

  130) test/custom-parser.test.js contentTypeParser should add a custom parser in OPTIONS test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  131) test/custom-parser.test.js contentTypeParser should handle multiple custom parsers connect ECONNREFUSED 127.0.0.1:46741:
     Error: connect ECONNREFUSED 127.0.0.1:46741
      at test/custom-parser.test.js:130:9

  132) test/custom-parser.test.js contentTypeParser should handle multiple custom parsers Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:131:30

  133) test/custom-parser.test.js contentTypeParser should handle multiple custom parsers test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +7
      
  

  134) test/custom-parser.test.js contentTypeParser should handle an array of custom contentTypes connect ECONNREFUSED 127.0.0.1:46741:
     Error: connect ECONNREFUSED 127.0.0.1:46741
      at test/custom-parser.test.js:143:9

  135) test/custom-parser.test.js contentTypeParser should handle an array of custom contentTypes connect ECONNREFUSED 127.0.0.1:41755:
     Error: connect ECONNREFUSED 127.0.0.1:41755
      at test/custom-parser.test.js:182:9

  136) test/custom-parser.test.js contentTypeParser should handle an array of custom contentTypes Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:183:30

  137) test/custom-parser.test.js contentTypeParser should handle an array of custom contentTypes test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +7
      
  

  138) test/custom-parser.test.js contentTypeParser should handle errors connect ECONNREFUSED 127.0.0.1:41755:
     Error: connect ECONNREFUSED 127.0.0.1:41755
      at test/custom-parser.test.js:195:9

  139) test/custom-parser.test.js contentTypeParser should handle errors connect ECONNREFUSED 127.0.0.1:39229:
     Error: connect ECONNREFUSED 127.0.0.1:39229
      at test/custom-parser.test.js:225:9

  140) test/custom-parser.test.js contentTypeParser should handle errors Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:226:30

  141) test/custom-parser.test.js contentTypeParser should handle errors test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  142) test/custom-parser.test.js contentTypeParser should support encapsulation, second try connect ECONNREFUSED 127.0.0.1:33769:
     Error: connect ECONNREFUSED 127.0.0.1:33769
      at test/custom-parser.test.js:286:9

  143) test/custom-parser.test.js contentTypeParser should support encapsulation, second try Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:287:30

  144) test/custom-parser.test.js contentTypeParser should support encapsulation, second try test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  145) test/custom-parser.test.js contentTypeParser shouldn't support request with undefined "Content-Type" connect ECONNREFUSED 127.0.0.1:34551:
     Error: connect ECONNREFUSED 127.0.0.1:34551
      at test/custom-parser.test.js:319:9

  146) test/custom-parser.test.js contentTypeParser shouldn't support request with undefined "Content-Type" Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:320:30

  147) test/custom-parser.test.js catch all content type parser connect ECONNREFUSED 127.0.0.1:39507:
     Error: connect ECONNREFUSED 127.0.0.1:39507
      at test/custom-parser.test.js:389:9

  148) test/custom-parser.test.js catch all content type parser Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:390:30

  149) test/custom-parser.test.js catch all content type parser test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +7
      
  

  150) test/custom-parser.test.js catch all content type parser should not interfere with other conte type parsers connect ECONNREFUSED 127.0.0.1:32903:
     Error: connect ECONNREFUSED 127.0.0.1:32903
      at test/custom-parser.test.js:443:9

  151) test/custom-parser.test.js catch all content type parser should not interfere with other conte type parsers Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:444:30

  152) test/custom-parser.test.js catch all content type parser should not interfere with other conte type parsers test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +7
      
  

  153) test/custom-parser.test.js '*' catch undefined Content-Type requests connect ECONNREFUSED 127.0.0.1:35903:
     Error: connect ECONNREFUSED 127.0.0.1:35903
      at test/custom-parser.test.js:495:9

  154) test/custom-parser.test.js '*' catch undefined Content-Type requests Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:496:30

  155) test/custom-parser.test.js '*' catch undefined Content-Type requests test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  156) test/custom-parser.test.js Can override the default json parser connect ECONNREFUSED 127.0.0.1:42621:
     Error: connect ECONNREFUSED 127.0.0.1:42621
      at test/custom-parser.test.js:551:9

  157) test/custom-parser.test.js Can override the default json parser Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:552:30

  158) test/custom-parser.test.js Can override the default json parser test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  159) test/custom-parser.test.js Can override the default plain text parser connect ECONNREFUSED 127.0.0.1:37191:
     Error: connect ECONNREFUSED 127.0.0.1:37191
      at test/custom-parser.test.js:585:9

  160) test/custom-parser.test.js Can override the default plain text parser Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:586:30

  161) test/custom-parser.test.js Can override the default plain text parser test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  162) test/custom-parser.test.js Can override the default json parser in a plugin connect ECONNREFUSED 127.0.0.1:42889:
     Error: connect ECONNREFUSED 127.0.0.1:42889
      at test/custom-parser.test.js:623:9

  163) test/custom-parser.test.js Can override the default json parser in a plugin Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:624:30

  164) test/custom-parser.test.js Can override the default json parser in a plugin test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  165) test/custom-parser.test.js Should get the body as string connect ECONNREFUSED 127.0.0.1:41287:
     Error: connect ECONNREFUSED 127.0.0.1:41287
      at test/custom-parser.test.js:706:9

  166) test/custom-parser.test.js Should get the body as string Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:707:30

  167) test/custom-parser.test.js Should get the body as string test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  168) test/custom-parser.test.js Should return defined body with no custom parser defined and content type = 'text/plain' connect ECONNREFUSED 127.0.0.1:37523:
     Error: connect ECONNREFUSED 127.0.0.1:37523
      at test/custom-parser.test.js:733:9

  169) test/custom-parser.test.js Should return defined body with no custom parser defined and content type = 'text/plain' Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:734:30

  170) test/custom-parser.test.js Should return defined body with no custom parser defined and content type = 'text/plain' test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  171) test/custom-parser.test.js Should have typeof body object with no custom parser defined, no body defined and content type = 'text/plain' connect ECONNREFUSED 127.0.0.1:44421:
     Error: connect ECONNREFUSED 127.0.0.1:44421
      at test/custom-parser.test.js:759:9

  172) test/custom-parser.test.js Should have typeof body object with no custom parser defined, no body defined and content type = 'text/plain' Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:760:30

  173) test/custom-parser.test.js Should have typeof body object with no custom parser defined, no body defined and content type = 'text/plain' test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  174) test/custom-parser.test.js Should have typeof body object with no custom parser defined, null body and content type = 'text/plain' connect ECONNREFUSED 127.0.0.1:40319:
     Error: connect ECONNREFUSED 127.0.0.1:40319
      at test/custom-parser.test.js:786:9

  175) test/custom-parser.test.js Should have typeof body object with no custom parser defined, null body and content type = 'text/plain' Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:787:30

  176) test/custom-parser.test.js Should have typeof body object with no custom parser defined, null body and content type = 'text/plain' test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  177) test/custom-parser.test.js Should have typeof body object with no custom parser defined, undefined body and content type = 'text/plain' connect ECONNREFUSED 127.0.0.1:32849:
     Error: connect ECONNREFUSED 127.0.0.1:32849
      at test/custom-parser.test.js:813:9

  178) test/custom-parser.test.js Should have typeof body object with no custom parser defined, undefined body and content type = 'text/plain' Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:814:30

  179) test/custom-parser.test.js Should have typeof body object with no custom parser defined, undefined body and content type = 'text/plain' test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  180) test/custom-parser.test.js Should get the body as string connect ECONNREFUSED 127.0.0.1:46865:
     Error: connect ECONNREFUSED 127.0.0.1:46865
      at test/custom-parser.test.js:852:9

  181) test/custom-parser.test.js Should get the body as string Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:853:30

  182) test/custom-parser.test.js Should get the body as string test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  183) test/custom-parser.test.js Should get the body as buffer connect ECONNREFUSED 127.0.0.1:45499:
     Error: connect ECONNREFUSED 127.0.0.1:45499
      at test/custom-parser.test.js:891:9

  184) test/custom-parser.test.js Should get the body as buffer Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:892:30

  185) test/custom-parser.test.js Should get the body as buffer test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  186) test/custom-parser.test.js Should get the body as buffer connect ECONNREFUSED 127.0.0.1:40739:
     Error: connect ECONNREFUSED 127.0.0.1:40739
      at test/custom-parser.test.js:930:9

  187) test/custom-parser.test.js Should get the body as buffer Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:931:30

  188) test/custom-parser.test.js Should get the body as buffer test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  189) test/custom-parser.test.js Should parse empty bodies as a string connect ECONNREFUSED 127.0.0.1:44807:
     Error: connect ECONNREFUSED 127.0.0.1:44807
      at test/custom-parser.test.js:967:9

  190) test/custom-parser.test.js Should parse empty bodies as a string Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:968:30

  191) test/custom-parser.test.js Should parse empty bodies as a string test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +9
      
  

  192) test/custom-parser.test.js Should parse empty bodies as a buffer connect ECONNREFUSED 127.0.0.1:44807:
     Error: connect ECONNREFUSED 127.0.0.1:44807
      at test/custom-parser.test.js:981:9

  193) test/custom-parser.test.js Should parse empty bodies as a buffer connect ECONNREFUSED 127.0.0.1:36325:
     Error: connect ECONNREFUSED 127.0.0.1:36325
      at test/custom-parser.test.js:1013:9

  194) test/custom-parser.test.js Should parse empty bodies as a buffer Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:1014:30

  195) test/custom-parser.test.js Should parse empty bodies as a buffer test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +6
      
  

  196) test/custom-parser.test.js The charset should not interfere with the content type handling connect ECONNREFUSED 127.0.0.1:41817:
     Error: connect ECONNREFUSED 127.0.0.1:41817
      at test/custom-parser.test.js:1047:9

  197) test/custom-parser.test.js The charset should not interfere with the content type handling Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:1048:30

  198) test/custom-parser.test.js The charset should not interfere with the content type handling test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  199) test/custom-parser.test.js Should allow defining the bodyLimit per parser connect ECONNREFUSED 127.0.0.1:40401:
     Error: connect ECONNREFUSED 127.0.0.1:40401
      at test/custom-parser.test.js:1096:9

  200) test/custom-parser.test.js Should allow defining the bodyLimit per parser Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/custom-parser.test.js:1097:41

  201) test/custom-parser.test.js route bodyLimit should take precedence over a custom parser bodyLimit connect ECONNREFUSED 127.0.0.1:41105:
     Error: connect ECONNREFUSED 127.0.0.1:41105
      at test/custom-parser.test.js:1135:9

  202) test/custom-parser.test.js route bodyLimit should take precedence over a custom parser bodyLimit Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/custom-parser.test.js:1136:41

  203) test/custom-parser.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:144:30

  204) test/custom-parser.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:196:30

  205) test/custom-parser.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:982:30

  206) test/custom-parser.test.js timeout!:
     Error: timeout!


  207) test/decorator.test.js decorateReply inside register connect ECONNREFUSED 127.0.0.1:33679:
     Error: connect ECONNREFUSED 127.0.0.1:33679
      at test/decorator.test.js:115:9

  208) test/decorator.test.js decorateReply inside register Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:116:30

  209) test/decorator.test.js decorateReply inside register test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +12
      
  

  210) test/decorator.test.js decorateReply as plugin (inside .after) connect ECONNREFUSED 127.0.0.1:33679:
     Error: connect ECONNREFUSED 127.0.0.1:33679
      at test/decorator.test.js:125:9

  211) test/decorator.test.js decorateReply as plugin (inside .after) connect ECONNREFUSED 127.0.0.1:39213:
     Error: connect ECONNREFUSED 127.0.0.1:39213
      at test/decorator.test.js:163:9

  212) test/decorator.test.js decorateReply as plugin (inside .after) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:164:30

  213) test/decorator.test.js decorateReply as plugin (inside .after) test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +11
      
  

  214) test/decorator.test.js decorateReply as plugin (outside .after) connect ECONNREFUSED 127.0.0.1:39213:
     Error: connect ECONNREFUSED 127.0.0.1:39213
      at test/decorator.test.js:173:9

  215) test/decorator.test.js decorateReply as plugin (outside .after) connect ECONNREFUSED 127.0.0.1:45933:
     Error: connect ECONNREFUSED 127.0.0.1:45933
      at test/decorator.test.js:211:9

  216) test/decorator.test.js decorateReply as plugin (outside .after) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:212:30

  217) test/decorator.test.js decorateReply as plugin (outside .after) test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +11
      
  

  218) test/decorator.test.js decorateRequest inside register connect ECONNREFUSED 127.0.0.1:45933:
     Error: connect ECONNREFUSED 127.0.0.1:45933
      at test/decorator.test.js:221:9

  219) test/decorator.test.js decorateRequest inside register connect ECONNREFUSED 127.0.0.1:44189:
     Error: connect ECONNREFUSED 127.0.0.1:44189
      at test/decorator.test.js:258:9

  220) test/decorator.test.js decorateRequest inside register Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:259:30

  221) test/decorator.test.js decorateRequest inside register test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +12
      
  

  222) test/decorator.test.js decorateRequest as plugin (inside .after) connect ECONNREFUSED 127.0.0.1:44189:
     Error: connect ECONNREFUSED 127.0.0.1:44189
      at test/decorator.test.js:268:9

  223) test/decorator.test.js decorateRequest as plugin (inside .after) connect ECONNREFUSED 127.0.0.1:38957:
     Error: connect ECONNREFUSED 127.0.0.1:38957
      at test/decorator.test.js:306:9

  224) test/decorator.test.js decorateRequest as plugin (inside .after) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:307:30

  225) test/decorator.test.js decorateRequest as plugin (inside .after) test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +11
      
  

  226) test/decorator.test.js decorateRequest as plugin (outside .after) connect ECONNREFUSED 127.0.0.1:38957:
     Error: connect ECONNREFUSED 127.0.0.1:38957
      at test/decorator.test.js:316:9

  227) test/decorator.test.js decorateRequest as plugin (outside .after) connect ECONNREFUSED 127.0.0.1:41789:
     Error: connect ECONNREFUSED 127.0.0.1:41789
      at test/decorator.test.js:354:9

  228) test/decorator.test.js decorateRequest as plugin (outside .after) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:355:30

  229) test/decorator.test.js decorateRequest as plugin (outside .after) test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +11
      
  

  230) test/decorator.test.js hasRequestDecorator should be plugin encapsulable test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  231) test/decorator.test.js hasRequestDecorator test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +1
      
  

  232) test/decorator.test.js hasRequestDecorator test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +4
      
  

  233) test/decorator.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:126:30

  234) test/decorator.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:174:30

  235) test/decorator.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:222:30

  236) test/decorator.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:269:30

  237) test/decorator.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:317:30

  238) test/decorator.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:365:30

  239) test/delete.test.js shorthand - request delete connect ECONNREFUSED 127.0.0.1:45759:
     Error: connect ECONNREFUSED 127.0.0.1:45759
      at test/delete.test.js:170:9

  240) test/delete.test.js shorthand - request delete Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:171:30

  241) test/delete.test.js shorthand - request delete test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  242) test/delete.test.js shorthand - request delete params schema connect ECONNREFUSED 127.0.0.1:45759:
     Error: connect ECONNREFUSED 127.0.0.1:45759
      at test/delete.test.js:183:9

  243) test/delete.test.js shorthand - request delete params schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:184:30

  244) test/delete.test.js shorthand - request delete params schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  245) test/delete.test.js shorthand - request delete params schema error connect ECONNREFUSED 127.0.0.1:45759:
     Error: connect ECONNREFUSED 127.0.0.1:45759
      at test/delete.test.js:196:9

  246) test/delete.test.js shorthand - request delete params schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:197:30

  247) test/delete.test.js shorthand - request delete params schema error test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  248) test/delete.test.js shorthand - request delete headers schema connect ECONNREFUSED 127.0.0.1:45759:
     Error: connect ECONNREFUSED 127.0.0.1:45759
      at test/delete.test.js:215:9

  249) test/delete.test.js shorthand - request delete headers schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:216:30

  250) test/delete.test.js shorthand - request delete headers schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  251) test/delete.test.js shorthand - request delete headers schema error connect ECONNREFUSED 127.0.0.1:45759:
     Error: connect ECONNREFUSED 127.0.0.1:45759
      at test/delete.test.js:231:9

  252) test/delete.test.js shorthand - request delete headers schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:232:30

  253) test/delete.test.js shorthand - request delete headers schema error test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  254) test/delete.test.js shorthand - request delete querystring schema connect ECONNREFUSED 127.0.0.1:45759:
     Error: connect ECONNREFUSED 127.0.0.1:45759
      at test/delete.test.js:247:9

  255) test/delete.test.js shorthand - request delete querystring schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:248:30

  256) test/delete.test.js shorthand - request delete querystring schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  257) test/delete.test.js shorthand - request delete querystring schema error connect ECONNREFUSED 127.0.0.1:45759:
     Error: connect ECONNREFUSED 127.0.0.1:45759
      at test/delete.test.js:260:9

  258) test/delete.test.js shorthand - request delete querystring schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:261:30

  259) test/delete.test.js shorthand - request delete querystring schema error test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  260) test/delete.test.js shorthand - request delete missing schema connect ECONNREFUSED 127.0.0.1:45759:
     Error: connect ECONNREFUSED 127.0.0.1:45759
      at test/delete.test.js:276:9

  261) test/delete.test.js shorthand - request delete missing schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:277:30

  262) test/delete.test.js shorthand - request delete missing schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  263) test/delete.test.js shorthand - delete with body connect ECONNREFUSED 127.0.0.1:45759:
     Error: connect ECONNREFUSED 127.0.0.1:45759
      at test/delete.test.js:293:9

  264) test/delete.test.js shorthand - delete with body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:294:30

  265) test/delete.test.js shorthand - delete with body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  266) test/get.test.js shorthand - request get connect ECONNREFUSED 127.0.0.1:39179:
     Error: connect ECONNREFUSED 127.0.0.1:39179
      at test/get.test.js:216:9

  267) test/get.test.js shorthand - request get Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:217:30

  268) test/get.test.js shorthand - request get test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  269) test/get.test.js shorthand - request get params schema connect ECONNREFUSED 127.0.0.1:39179:
     Error: connect ECONNREFUSED 127.0.0.1:39179
      at test/get.test.js:229:9

  270) test/get.test.js shorthand - request get params schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:230:30

  271) test/get.test.js shorthand - request get params schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  272) test/get.test.js shorthand - request get params schema error connect ECONNREFUSED 127.0.0.1:39179:
     Error: connect ECONNREFUSED 127.0.0.1:39179
      at test/get.test.js:242:9

  273) test/get.test.js shorthand - request get params schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:243:30

  274) test/get.test.js shorthand - request get params schema error test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  275) test/get.test.js shorthand - request get headers schema connect ECONNREFUSED 127.0.0.1:39179:
     Error: connect ECONNREFUSED 127.0.0.1:39179
      at test/get.test.js:263:9

  276) test/get.test.js shorthand - request get headers schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:264:30

  277) test/get.test.js shorthand - request get headers schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  278) test/get.test.js shorthand - request get headers schema error connect ECONNREFUSED 127.0.0.1:39179:
     Error: connect ECONNREFUSED 127.0.0.1:39179
      at test/get.test.js:279:9

  279) test/get.test.js shorthand - request get headers schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:280:30

  280) test/get.test.js shorthand - request get headers schema error test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  281) test/get.test.js shorthand - request get querystring schema connect ECONNREFUSED 127.0.0.1:39179:
     Error: connect ECONNREFUSED 127.0.0.1:39179
      at test/get.test.js:295:9

  282) test/get.test.js shorthand - request get querystring schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:296:30

  283) test/get.test.js shorthand - request get querystring schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  284) test/get.test.js shorthand - request get querystring schema error connect ECONNREFUSED 127.0.0.1:39179:
     Error: connect ECONNREFUSED 127.0.0.1:39179
      at test/get.test.js:308:9

  285) test/get.test.js shorthand - request get querystring schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:309:30

  286) test/get.test.js shorthand - request get querystring schema error test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  287) test/get.test.js shorthand - request get missing schema connect ECONNREFUSED 127.0.0.1:39179:
     Error: connect ECONNREFUSED 127.0.0.1:39179
      at test/get.test.js:324:9

  288) test/get.test.js shorthand - request get missing schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:325:30

  289) test/get.test.js shorthand - request get missing schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  290) test/get.test.js shorthand - custom serializer connect ECONNREFUSED 127.0.0.1:39179:
     Error: connect ECONNREFUSED 127.0.0.1:39179
      at test/get.test.js:337:9

  291) test/get.test.js shorthand - custom serializer Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:338:30

  292) test/get.test.js shorthand - custom serializer test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  293) test/get.test.js shorthand - empty response connect ECONNREFUSED 127.0.0.1:39179:
     Error: connect ECONNREFUSED 127.0.0.1:39179
      at test/get.test.js:350:9

  294) test/get.test.js shorthand - empty response Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:351:30

  295) test/get.test.js shorthand - empty response test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  296) test/get.test.js shorthand - send a falsy boolean connect ECONNREFUSED 127.0.0.1:39179:
     Error: connect ECONNREFUSED 127.0.0.1:39179
      at test/get.test.js:363:9

  297) test/get.test.js shorthand - send a falsy boolean Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:364:30

  298) test/get.test.js shorthand - send a falsy boolean test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  299) test/get.test.js shorthand - send null value connect ECONNREFUSED 127.0.0.1:39179:
     Error: connect ECONNREFUSED 127.0.0.1:39179
      at test/get.test.js:375:9

  300) test/get.test.js shorthand - send null value Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:376:30

  301) test/get.test.js shorthand - send null value test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  302) test/handler-context.test.js handlers receive correct `this` context connect ECONNREFUSED 127.0.0.1:43467:
     connect ECONNREFUSED 127.0.0.1:43467
  

  303) test/handler-context.test.js handlers receive correct `this` context test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  304) test/handler-context.test.js handlers have access to the internal context connect ECONNREFUSED 127.0.0.1:36469:
     connect ECONNREFUSED 127.0.0.1:36469
  

  305) test/handler-context.test.js handlers have access to the internal context test count !== plan:

      test count !== plan
      + expected - actual

      -1
      +5
      
  

  306) test/head.test.js shorthand - request head connect ECONNREFUSED 127.0.0.1:40169:
     Error: connect ECONNREFUSED 127.0.0.1:40169
      at test/head.test.js:105:9

  307) test/head.test.js shorthand - request head Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/head.test.js:106:30

  308) test/head.test.js shorthand - request head params schema connect ECONNREFUSED 127.0.0.1:40169:
     Error: connect ECONNREFUSED 127.0.0.1:40169
      at test/head.test.js:116:9

  309) test/head.test.js shorthand - request head params schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/head.test.js:117:30

  310) test/head.test.js shorthand - request head params schema error connect ECONNREFUSED 127.0.0.1:40169:
     Error: connect ECONNREFUSED 127.0.0.1:40169
      at test/head.test.js:127:9

  311) test/head.test.js shorthand - request head params schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/head.test.js:128:30

  312) test/head.test.js shorthand - request head querystring schema connect ECONNREFUSED 127.0.0.1:40169:
     Error: connect ECONNREFUSED 127.0.0.1:40169
      at test/head.test.js:138:9

  313) test/head.test.js shorthand - request head querystring schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/head.test.js:139:30

  314) test/head.test.js shorthand - request head querystring schema error connect ECONNREFUSED 127.0.0.1:40169:
     Error: connect ECONNREFUSED 127.0.0.1:40169
      at test/head.test.js:149:9

  315) test/head.test.js shorthand - request head querystring schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/head.test.js:150:30

  316) test/head.test.js shorthand - request head missing schema connect ECONNREFUSED 127.0.0.1:40169:
     Error: connect ECONNREFUSED 127.0.0.1:40169
      at test/head.test.js:160:9

  317) test/head.test.js shorthand - request head missing schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/head.test.js:161:30

  318) test/hooks.test.js hooks connect ECONNREFUSED 127.0.0.1:41063:
     Error: connect ECONNREFUSED 127.0.0.1:41063
      at test/hooks.test.js:128:9

  319) test/hooks.test.js hooks Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:129:30

  320) test/hooks.test.js hooks test count !== plan:

      test count !== plan
      + expected - actual

      -8
      +38
      
  

  321) test/hooks.test.js onRequest hook should support encapsulation / 1 connect ECONNREFUSED 127.0.0.1:41063:
     Error: connect ECONNREFUSED 127.0.0.1:41063
      at test/hooks.test.js:138:9

  322) test/hooks.test.js onRequest hook should support encapsulation / 1 connect ECONNREFUSED 127.0.0.1:41063:
     Error: connect ECONNREFUSED 127.0.0.1:41063
      at test/hooks.test.js:146:9

  323) test/hooks.test.js onRequest hook should support encapsulation / 1 test count !== plan:

      test count !== plan
      + expected - actual

      -7
      +5
      
  

  324) test/hooks.test.js onRequest hook should support encapsulation / 3 connect ECONNREFUSED 127.0.0.1:43993:
     Error: connect ECONNREFUSED 127.0.0.1:43993
      at test/hooks.test.js:251:9

  325) test/hooks.test.js onRequest hook should support encapsulation / 3 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:252:30

  326) test/hooks.test.js onRequest hook should support encapsulation / 3 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +20
      
  

  327) test/hooks.test.js preHandler hook should support encapsulation / 5 connect ECONNREFUSED 127.0.0.1:43993:
     Error: connect ECONNREFUSED 127.0.0.1:43993
      at test/hooks.test.js:261:9

  328) test/hooks.test.js preHandler hook should support encapsulation / 5 connect ECONNREFUSED 127.0.0.1:41809:
     Error: connect ECONNREFUSED 127.0.0.1:41809
      at test/hooks.test.js:312:9

  329) test/hooks.test.js preHandler hook should support encapsulation / 5 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:313:30

  330) test/hooks.test.js preHandler hook should support encapsulation / 5 test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +17
      
  

  331) test/hooks.test.js onRoute hook should be called / 1 connect ECONNREFUSED 127.0.0.1:41809:
     Error: connect ECONNREFUSED 127.0.0.1:41809
      at test/hooks.test.js:322:9

  332) test/hooks.test.js onRoute hook should be called / 1 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +2
      
  

  333) test/hooks.test.js onResponse hook should support encapsulation / 3 connect ECONNREFUSED 127.0.0.1:32817:
     Error: connect ECONNREFUSED 127.0.0.1:32817
      at test/hooks.test.js:716:9

  334) test/hooks.test.js onResponse hook should support encapsulation / 3 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:717:30

  335) test/hooks.test.js onResponse hook should support encapsulation / 3 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +16
      
  

  336) test/hooks.test.js onSend hook should support encapsulation / 1 connect ECONNREFUSED 127.0.0.1:32817:
     Error: connect ECONNREFUSED 127.0.0.1:32817
      at test/hooks.test.js:726:9

  337) test/hooks.test.js onSend hook should support encapsulation / 1 test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  338) test/hooks.test.js onSend hook should support encapsulation / 2 connect ECONNREFUSED 127.0.0.1:35873:
     Error: connect ECONNREFUSED 127.0.0.1:35873
      at test/hooks.test.js:793:9

  339) test/hooks.test.js onSend hook should support encapsulation / 2 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:794:30

  340) test/hooks.test.js onSend hook should support encapsulation / 2 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +16
      
  

  341) test/hooks.test.js onSend hook is called after payload is serialized and headers are set connect ECONNREFUSED 127.0.0.1:35873:
     Error: connect ECONNREFUSED 127.0.0.1:35873
      at test/hooks.test.js:803:9

  342) test/hooks.test.js onSend hook is called after payload is serialized and headers are set test count !== plan:

      test count !== plan
      + expected - actual

      -31
      +30
      
  

  343) test/hooks.test.js onSend hook throws connect ECONNREFUSED 127.0.0.1:42831:
     Error: connect ECONNREFUSED 127.0.0.1:42831
      at test/hooks.test.js:1046:9

  344) test/hooks.test.js onSend hook throws Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:1047:30

  345) test/hooks.test.js onSend hook throws test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +7
      
  

  346) test/hooks.test.js onSend hook should receive valid request and reply objects if onRequest hook fails connect ECONNREFUSED 127.0.0.1:42831:
     Error: connect ECONNREFUSED 127.0.0.1:42831
      at test/hooks.test.js:1055:9

  347) test/hooks.test.js onSend hook should receive valid request and reply objects if onRequest hook fails test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +4
      
  

  348) test/hooks.test.js preValidation hook should support encapsulation / 3 connect ECONNREFUSED 127.0.0.1:33911:
     Error: connect ECONNREFUSED 127.0.0.1:33911
      at test/hooks.test.js:2104:9

  349) test/hooks.test.js preValidation hook should support encapsulation / 3 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2105:30

  350) test/hooks.test.js preValidation hook should support encapsulation / 3 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +20
      
  

  351) test/hooks.test.js onError hook connect ECONNREFUSED 127.0.0.1:33911:
     Error: connect ECONNREFUSED 127.0.0.1:33911
      at test/hooks.test.js:2114:9

  352) test/hooks.test.js onError hook test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  353) test/hooks.test.js preParsing hook should support encapsulation / 3 connect ECONNREFUSED 127.0.0.1:41301:
     Error: connect ECONNREFUSED 127.0.0.1:41301
      at test/hooks.test.js:2349:9

  354) test/hooks.test.js preParsing hook should support encapsulation / 3 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2350:30

  355) test/hooks.test.js preParsing hook should support encapsulation / 3 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +20
      
  

  356) test/hooks.test.js preSerialization hook should run before serialization and be able to modify the payload connect ECONNREFUSED 127.0.0.1:41301:
     Error: connect ECONNREFUSED 127.0.0.1:41301
      at test/hooks.test.js:2359:9

  357) test/hooks.test.js preSerialization hook should run before serialization and be able to modify the payload connect ECONNREFUSED 127.0.0.1:34067:
     Error: connect ECONNREFUSED 127.0.0.1:34067
      at test/hooks.test.js:2411:9

  358) test/hooks.test.js preSerialization hook should run before serialization and be able to modify the payload Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2412:30

  359) test/hooks.test.js preSerialization hook should run before serialization and be able to modify the payload test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +5
      
  

  360) test/hooks.test.js preSerialization hook should be able to throw errors which are not validated against schema response connect ECONNREFUSED 127.0.0.1:46271:
     Error: connect ECONNREFUSED 127.0.0.1:46271
      at test/hooks.test.js:2456:9

  361) test/hooks.test.js preSerialization hook should be able to throw errors which are not validated against schema response Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2457:30

  362) test/hooks.test.js preSerialization hook which returned error should still run onError hooks connect ECONNREFUSED 127.0.0.1:33801:
     Error: connect ECONNREFUSED 127.0.0.1:33801
      at test/hooks.test.js:2490:9

  363) test/hooks.test.js preSerialization hook which returned error should still run onError hooks Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2491:30

  364) test/hooks.test.js preSerialization hook which returned error should still run onError hooks test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  365) test/hooks.test.js preSerialization hooks should run in the order in which they are defined connect ECONNREFUSED 127.0.0.1:39893:
     Error: connect ECONNREFUSED 127.0.0.1:39893
      at test/hooks.test.js:2524:9

  366) test/hooks.test.js preSerialization hooks should run in the order in which they are defined Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2525:30

  367) test/hooks.test.js preSerialization hooks should run in the order in which they are defined test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  368) test/hooks.test.js preSerialization hooks should support encapsulation connect ECONNREFUSED 127.0.0.1:41487:
     Error: connect ECONNREFUSED 127.0.0.1:41487
      at test/hooks.test.js:2568:9

  369) test/hooks.test.js preSerialization hooks should support encapsulation Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2569:30

  370) test/hooks.test.js preSerialization hooks should support encapsulation test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +9
      
  

  371) test/hooks.test.js onRegister hook should be called / 1 connect ECONNREFUSED 127.0.0.1:41487:
     Error: connect ECONNREFUSED 127.0.0.1:41487
      at test/hooks.test.js:2578:9

  372) test/hooks.test.js onRegister hook should be called / 1 test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  373) test/hooks.test.js async hooks connect ECONNREFUSED 127.0.0.1:39293:
     Error: connect ECONNREFUSED 127.0.0.1:39293
      at test/hooks-async.js:66:11

  374) test/hooks.test.js async hooks Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks-async.js:67:32

  375) test/hooks.test.js async hooks test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +21
      
  

  376) test/hooks.test.js modify payload connect ECONNREFUSED 127.0.0.1:39293:
     Error: connect ECONNREFUSED 127.0.0.1:39293
      at test/hooks-async.js:76:11

  377) test/hooks.test.js modify payload connect ECONNREFUSED 127.0.0.1:39293:
     Error: connect ECONNREFUSED 127.0.0.1:39293
      at test/hooks-async.js:84:11

  378) test/hooks.test.js modify payload test count !== plan:

      test count !== plan
      + expected - actual

      -12
      +10
      
  

  379) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:139:30

  380) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:147:30

  381) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:262:30

  382) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:323:30

  383) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:727:30

  384) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:804:30

  385) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:1056:30

  386) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2115:30

  387) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2360:30

  388) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2579:30

  389) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks-async.js:77:32

  390) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks-async.js:85:32

  391) test/inject.test.js inject promisify - after the ready event Cannot access 'relativeContext' before initialization:
     Error: Cannot access 'relativeContext' before initialization


  392) test/listen.test.js listen accepts a callback should be equal:

      Error: should be equal
      + expected - actual

      -::1
      +127.0.0.1
      
      at test/listen.test.js:14:7
      at Server.wrap (lib/server.js:74:9)

  393) test/listen.test.js listen accepts a port and a callback should be equal:

      Error: should be equal
      + expected - actual

      -::1
      +127.0.0.1
      
      at test/listen.test.js:24:7
      at Server.wrap (lib/server.js:74:9)

  394) test/listen.test.js listen accepts a port and a callback with (err, address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:45401
      +http://127.0.0.1:45401
      
      at test/listen.test.js:34:7
      at Server.wrap (lib/server.js:74:9)

  395) test/listen.test.js listen after Promise.resolve() should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:46691
      +http://127.0.0.1:46691
      
      at test/listen.test.js:102:11
      at Server.wrap (lib/server.js:74:9)

  396) test/listen.test.js double listen errors callback with (err, address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:44381
      +http://127.0.0.1:44381
      
      at test/listen.test.js:144:7
      at Server.wrap (lib/server.js:74:9)

  397) test/listen.test.js listen twice on the same port should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:44041
      +http://127.0.0.1:44041
      
      at test/listen.test.js:158:7
      at Server.wrap (lib/server.js:74:9)

  398) test/listen.test.js listen twice on the same port callback with (err, address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:36477
      +http://127.0.0.1:36477
      
      at test/listen.test.js:175:7
      at Server.wrap (lib/server.js:74:9)

  399) test/listen.test.js listen without callback (port zero) should be equal:

      Error: should be equal
      + expected - actual

      -::1
      +127.0.0.1
      
      at test/listen.test.js:212:9

  400) test/listen.test.js listen without callback (port not given) should be equal:

      Error: should be equal
      + expected - actual

      -::1
      +127.0.0.1
      
      at test/listen.test.js:222:9

  401) test/listen.test.js listen null without callback with (address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:44535
      +http://127.0.0.1:44535
      
      at test/listen.test.js:232:9

  402) test/listen.test.js listen without port without callback with (address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:34785
      +http://127.0.0.1:34785
      
      at test/listen.test.js:242:9

  403) test/listen.test.js listen with undefined without callback with (address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:45197
      +http://127.0.0.1:45197
      
      at test/listen.test.js:252:9

  404) test/listen.test.js listen without callback with (address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:33315
      +http://127.0.0.1:33315
      
      at test/listen.test.js:262:9

  405) test/listen.test.js double listen without callback with (address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:33313
      +http://127.0.0.1:33313
      
      at test/listen.test.js:286:9

  406) test/listen.test.js listen twice on the same port without callback rejects with (address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:41979
      +http://127.0.0.1:41979
      
      at test/listen.test.js:320:9

  407) test/logger.test.js defaults to info level test unfinished:
     Error: test unfinished
      at Object.<anonymous> (test/logger.test.js:33:1)

  408) test/logger.test.js defaults to info level test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +13
      
  

  409) test/logger.test.js child test left in queue: t.test test log stream:
     child test left in queue: t.test test log stream
  

  410) test/logger.test.js child test left in queue: t.test test error log stream:
     child test left in queue: t.test test error log stream
  

  411) test/logger.test.js child test left in queue: t.test can use external logger instance:
     child test left in queue: t.test can use external logger instance
  

  412) test/logger.test.js child test left in queue: t.test can use external logger instance with custom serializer:
     child test left in queue: t.test can use external logger instance with custom serializer
  

  413) test/logger.test.js child test left in queue: t.test expose the logger:
     child test left in queue: t.test expose the logger
  

  414) test/logger.test.js child test left in queue: t.test The request id header key can be customized:
     child test left in queue: t.test The request id header key can be customized
  

  415) test/logger.test.js child test left in queue: t.test The request id header key can be customized along with a custom id generator:
     child test left in queue: t.test The request id header key can be customized along with a custom id generator
  

  416) test/logger.test.js child test left in queue: t.test The request id log label can be changed:
     child test left in queue: t.test The request id log label can be changed
  

  417) test/logger.test.js child test left in queue: t.test The logger should accept custom serializer:
     child test left in queue: t.test The logger should accept custom serializer
  

  418) test/logger.test.js child test left in queue: t.test reply.send logs an error if called twice in a row:
     child test left in queue: t.test reply.send logs an error if called twice in a row
  

  419) test/logger.test.js child test left in queue: t.test logger can be silented:
     child test left in queue: t.test logger can be silented
  

  420) test/logger.test.js child test left in queue: t.test Should set a custom logLevel for a plugin:
     child test left in queue: t.test Should set a custom logLevel for a plugin
  

  421) test/logger.test.js child test left in queue: t.test Should set a custom logLevel for every plugin:
     child test left in queue: t.test Should set a custom logLevel for every plugin
  

  422) test/logger.test.js child test left in queue: t.test Should increase the log level for a specific plugin:
     child test left in queue: t.test Should increase the log level for a specific plugin
  

  423) test/logger.test.js child test left in queue: t.test Should set the log level for the customized 404 handler:
     child test left in queue: t.test Should set the log level for the customized 404 handler
  

  424) test/logger.test.js child test left in queue: t.test Should set the log level for the customized 500 handler:
     child test left in queue: t.test Should set the log level for the customized 500 handler
  

  425) test/logger.test.js child test left in queue: t.test Should set a custom log level for a specific route:
     child test left in queue: t.test Should set a custom log level for a specific route
  

  426) test/logger.test.js child test left in queue: t.test The default 404 handler logs the incoming request:
     child test left in queue: t.test The default 404 handler logs the incoming request
  

  427) test/logger.test.js child test left in queue: t.test should serialize request and response:
     child test left in queue: t.test should serialize request and response
  

  428) test/logger.test.js child test left in queue: t.test Wrap IPv6 address in listening log message:
     child test left in queue: t.test Wrap IPv6 address in listening log message
  

  429) test/logger.test.js child test left in queue: t.test Do not wrap IPv4 address:
     child test left in queue: t.test Do not wrap IPv4 address
  

  430) test/logger.test.js child test left in queue: t.test file option:
     child test left in queue: t.test file option
  

  431) test/logger.test.js child test left in queue: t.test should log the error if no error handler is defined:
     child test left in queue: t.test should log the error if no error handler is defined
  

  432) test/logger.test.js child test left in queue: t.test should log as info if error status code >= 400 and < 500 if no error handler is defined:
     child test left in queue: t.test should log as info if error status code >= 400 and < 500 if no error handler is defined
  

  433) test/logger.test.js child test left in queue: t.test should log as error if error status code >= 500 if no error handler is defined:
     child test left in queue: t.test should log as error if error status code >= 500 if no error handler is defined
  

  434) test/logger.test.js child test left in queue: t.test should not log the error if error handler is defined:
     child test left in queue: t.test should not log the error if error handler is defined
  

  435) test/logger.test.js child test left in queue: t.test should not rely on raw request to log errors:
     child test left in queue: t.test should not rely on raw request to log errors
  

  436) test/logger.test.js child test left in queue: t.test should redact the authorization header if so specified:
     child test left in queue: t.test should redact the authorization header if so specified
  

  437) test/logger.test.js child test left in queue: t.test should not log incoming request and outgoing response when disabled:
     child test left in queue: t.test should not log incoming request and outgoing response when disabled
  

  438) test/logger.test.js connect ECONNREFUSED 127.0.0.1:39163:
     connect ECONNREFUSED 127.0.0.1:39163
  

  439) test/logger.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -31
      +2
      
  

  440) test/middleware.test.js use a middleware connect ECONNREFUSED 127.0.0.1:40257:
     Error: connect ECONNREFUSED 127.0.0.1:40257
      at test/middleware.test.js:40:9

  441) test/middleware.test.js use a middleware Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/middleware.test.js:41:30

  442) test/middleware.test.js use a middleware test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +7
      
  

  443) test/middleware.test.js use cors connect ECONNREFUSED 127.0.0.1:34277:
     Error: connect ECONNREFUSED 127.0.0.1:34277
      at test/middleware.test.js:95:9

  444) test/middleware.test.js use cors Cannot read properties of undefined (reading 'headers'):
     Error: Cannot read properties of undefined (reading 'headers')
      at test/middleware.test.js:96:24

  445) test/middleware.test.js use helmet connect ECONNREFUSED 127.0.0.1:35239:
     Error: connect ECONNREFUSED 127.0.0.1:35239
      at test/middleware.test.js:121:9

  446) test/middleware.test.js use helmet Cannot read properties of undefined (reading 'headers'):
     Error: Cannot read properties of undefined (reading 'headers')
      at test/middleware.test.js:122:21

  447) test/middleware.test.js use helmet and cors connect ECONNREFUSED 127.0.0.1:43825:
     Error: connect ECONNREFUSED 127.0.0.1:43825
      at test/middleware.test.js:148:9

  448) test/middleware.test.js use helmet and cors Cannot read properties of undefined (reading 'headers'):
     Error: Cannot read properties of undefined (reading 'headers')
      at test/middleware.test.js:149:21

  449) test/middleware.test.js use helmet and cors test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  450) test/middleware.test.js middlewares should support encapsulation / 1 connect ECONNREFUSED 127.0.0.1:41859:
     Error: connect ECONNREFUSED 127.0.0.1:41859
      at test/middleware.test.js:183:9

  451) test/middleware.test.js middlewares should support encapsulation / 1 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/middleware.test.js:184:30

  452) test/middleware.test.js middlewares should support encapsulation / 1 test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +8
      
  

  453) test/middleware.test.js middlewares should support encapsulation / 2 connect ECONNREFUSED 127.0.0.1:42285:
     Error: connect ECONNREFUSED 127.0.0.1:42285
      at test/middleware.test.js:230:9

  454) test/middleware.test.js middlewares should support encapsulation / 2 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/middleware.test.js:231:30

  455) test/middleware.test.js middlewares should support encapsulation / 2 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +13
      
  

  456) test/middleware.test.js middlewares should support encapsulation / 3 connect ECONNREFUSED 127.0.0.1:35357:
     Error: connect ECONNREFUSED 127.0.0.1:35357
      at test/middleware.test.js:294:9

  457) test/middleware.test.js middlewares should support encapsulation / 3 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/middleware.test.js:295:30

  458) test/middleware.test.js middlewares should support encapsulation / 3 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +15
      
  

  459) test/middleware.test.js middlewares should support encapsulation / 4 connect ECONNREFUSED 127.0.0.1:42333:
     Error: connect ECONNREFUSED 127.0.0.1:42333
      at test/middleware.test.js:377:9

  460) test/middleware.test.js middlewares should support encapsulation / 4 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/middleware.test.js:378:30

  461) test/middleware.test.js middlewares should support encapsulation / 4 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +25
      
  

  462) test/middleware.test.js middlewares should support encapsulation / 5 connect ECONNREFUSED 127.0.0.1:39205:
     Error: connect ECONNREFUSED 127.0.0.1:39205
      at test/middleware.test.js:440:9

  463) test/middleware.test.js middlewares should support encapsulation / 5 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/middleware.test.js:441:30

  464) test/middleware.test.js middlewares should support encapsulation / 5 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +9
      
  

  465) test/middleware.test.js middlewares should support encapsulation with prefix connect ECONNREFUSED 127.0.0.1:40381:
     Error: connect ECONNREFUSED 127.0.0.1:40381
      at test/middleware.test.js:496:9

  466) test/middleware.test.js middlewares should support encapsulation with prefix Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/middleware.test.js:497:30

  467) test/middleware.test.js middlewares should support encapsulation with prefix test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +9
      
  

  468) test/middleware.test.js middlewares with prefix / connect ECONNREFUSED 127.0.0.1:39341:
     Error: connect ECONNREFUSED 127.0.0.1:39341
      at test/middleware.test.js:626:11

  469) test/middleware.test.js middlewares with prefix / should be equivalent:
     Error: should be equivalent
      at test/middleware.test.js:627:11

  470) test/middleware.test.js middlewares with prefix /prefix connect ECONNREFUSED 127.0.0.1:39341:
     Error: connect ECONNREFUSED 127.0.0.1:39341
      at test/middleware.test.js:642:11

  471) test/middleware.test.js middlewares with prefix /prefix should be equivalent:
     Error: should be equivalent
      at test/middleware.test.js:643:11

  472) test/middleware.test.js middlewares with prefix /prefix/ connect ECONNREFUSED 127.0.0.1:39341:
     Error: connect ECONNREFUSED 127.0.0.1:39341
      at test/middleware.test.js:660:11

  473) test/middleware.test.js middlewares with prefix /prefix/ should be equivalent:
     Error: should be equivalent
      at test/middleware.test.js:661:11

  474) test/middleware.test.js middlewares with prefix /prefix/inner connect ECONNREFUSED 127.0.0.1:39341:
     Error: connect ECONNREFUSED 127.0.0.1:39341
      at test/middleware.test.js:678:11

  475) test/middleware.test.js middlewares with prefix /prefix/inner should be equivalent:
     Error: should be equivalent
      at test/middleware.test.js:679:11

  476) test/options.error-handler.test.js OPTIONS - correctly replies connect ECONNREFUSED 127.0.0.1:37439:
     Error: connect ECONNREFUSED 127.0.0.1:37439
      at test/helper.js:112:11

  477) test/options.error-handler.test.js OPTIONS - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:113:32

  478) test/options.error-handler.test.js OPTIONS - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  479) test/options.error-handler.test.js OPTIONS - correctly replies with very large body connect ECONNREFUSED 127.0.0.1:37439:
     Error: connect ECONNREFUSED 127.0.0.1:37439
      at test/helper.js:128:11

  480) test/options.error-handler.test.js OPTIONS - correctly replies with very large body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:129:32

  481) test/options.error-handler.test.js OPTIONS - correctly replies with very large body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  482) test/options.error-handler.test.js OPTIONS - correctly replies if the content type has the charset connect ECONNREFUSED 127.0.0.1:37439:
     Error: connect ECONNREFUSED 127.0.0.1:37439
      at test/helper.js:144:11

  483) test/options.error-handler.test.js OPTIONS - correctly replies if the content type has the charset Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:145:32

  484) test/options.error-handler.test.js OPTIONS - correctly replies if the content type has the charset test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  485) test/options.error-handler.test.js OPTIONS without schema - correctly replies connect ECONNREFUSED 127.0.0.1:37439:
     Error: connect ECONNREFUSED 127.0.0.1:37439
      at test/helper.js:160:11

  486) test/options.error-handler.test.js OPTIONS without schema - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:161:32

  487) test/options.error-handler.test.js OPTIONS without schema - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  488) test/options.error-handler.test.js OPTIONS with body and querystring - correctly replies connect ECONNREFUSED 127.0.0.1:37439:
     Error: connect ECONNREFUSED 127.0.0.1:37439
      at test/helper.js:176:11

  489) test/options.error-handler.test.js OPTIONS with body and querystring - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:177:32

  490) test/options.error-handler.test.js OPTIONS with body and querystring - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  491) test/options.error-handler.test.js OPTIONS with no body - correctly replies connect ECONNREFUSED 127.0.0.1:37439:
     Error: connect ECONNREFUSED 127.0.0.1:37439
      at test/helper.js:190:11

  492) test/options.error-handler.test.js OPTIONS with no body - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:191:32

  493) test/options.error-handler.test.js OPTIONS with no body - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +6
      
  

  494) test/options.error-handler.test.js OPTIONS returns 415 - incorrect media type if body is not json connect ECONNREFUSED 127.0.0.1:37439:
     Error: connect ECONNREFUSED 127.0.0.1:37439
      at test/helper.js:214:11

  495) test/options.error-handler.test.js OPTIONS returns 415 - incorrect media type if body is not json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:216:34

  496) test/options.error-handler.test.js OPTIONS returns 415 - should return 415 if Content-Type is not json or plain text connect ECONNREFUSED 127.0.0.1:37439:
     Error: connect ECONNREFUSED 127.0.0.1:37439
      at test/helper.js:234:13

  497) test/options.error-handler.test.js OPTIONS returns 415 - should return 415 if Content-Type is not json or plain text Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:235:34

  498) test/options.error-handler.test.js OPTIONS returns 400 - Bad Request connect ECONNREFUSED 127.0.0.1:37439:
     Error: connect ECONNREFUSED 127.0.0.1:37439
      at test/helper.js:251:11

  499) test/options.error-handler.test.js OPTIONS returns 400 - Bad Request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:252:32

  500) test/options.error-handler.test.js OPTIONS returns 400 - Bad Request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  501) test/options.error-handler.test.js OPTIONS returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:37439:
     Error: connect ECONNREFUSED 127.0.0.1:37439
      at test/helper.js:263:11

  502) test/options.error-handler.test.js OPTIONS returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:37439:
     Error: connect ECONNREFUSED 127.0.0.1:37439
      at test/helper.js:279:11

  503) test/options.error-handler.test.js OPTIONS returns 413 - Payload Too Large Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:280:32

  504) test/options.error-handler.test.js OPTIONS returns 413 - Payload Too Large test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  505) test/options.error-handler.test.js OPTIONS - correctly replies connect ECONNREFUSED 127.0.0.1:37439:
     Error: connect ECONNREFUSED 127.0.0.1:37439
      at test/helper.js:310:11

  506) test/options.error-handler.test.js OPTIONS - correctly replies connect ECONNREFUSED 127.0.0.1:38897:
     Error: connect ECONNREFUSED 127.0.0.1:38897
      at test/input-validation.js:134:13

  507) test/options.error-handler.test.js OPTIONS - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:135:34

  508) test/options.error-handler.test.js OPTIONS - 400 on bad parameters connect ECONNREFUSED 127.0.0.1:38897:
     Error: connect ECONNREFUSED 127.0.0.1:38897
      at test/input-validation.js:151:11

  509) test/options.error-handler.test.js OPTIONS - 400 on bad parameters Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:152:32

  510) test/options.error-handler.test.js OPTIONS - 400 on bad parameters test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  511) test/options.error-handler.test.js OPTIONS - input-validation coerce connect ECONNREFUSED 127.0.0.1:38897:
     Error: connect ECONNREFUSED 127.0.0.1:38897
      at test/input-validation.js:171:11

  512) test/options.error-handler.test.js OPTIONS - input-validation coerce Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:172:32

  513) test/options.error-handler.test.js OPTIONS - input-validation coerce test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  514) test/options.error-handler.test.js OPTIONS - input-validation custom schema compiler connect ECONNREFUSED 127.0.0.1:38897:
     Error: connect ECONNREFUSED 127.0.0.1:38897
      at test/input-validation.js:188:11

  515) test/options.error-handler.test.js OPTIONS - input-validation custom schema compiler Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:189:32

  516) test/options.error-handler.test.js OPTIONS - input-validation custom schema compiler test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  517) test/options.error-handler.test.js OPTIONS - input-validation joi schema compiler ok connect ECONNREFUSED 127.0.0.1:38897:
     Error: connect ECONNREFUSED 127.0.0.1:38897
      at test/input-validation.js:204:11

  518) test/options.error-handler.test.js OPTIONS - input-validation joi schema compiler ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:205:32

  519) test/options.error-handler.test.js OPTIONS - input-validation joi schema compiler ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  520) test/options.error-handler.test.js OPTIONS - input-validation joi schema compiler ko connect ECONNREFUSED 127.0.0.1:38897:
     Error: connect ECONNREFUSED 127.0.0.1:38897
      at test/input-validation.js:220:11

  521) test/options.error-handler.test.js OPTIONS - input-validation joi schema compiler ko Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:221:32

  522) test/options.error-handler.test.js OPTIONS - input-validation joi schema compiler ko test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  523) test/options.error-handler.test.js OPTIONS - input-validation instance custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:38897:
     Error: connect ECONNREFUSED 127.0.0.1:38897
      at test/input-validation.js:238:11

  524) test/options.error-handler.test.js OPTIONS - input-validation instance custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:239:32

  525) test/options.error-handler.test.js OPTIONS - input-validation instance custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  526) test/options.error-handler.test.js OPTIONS - input-validation custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:38897:
     Error: connect ECONNREFUSED 127.0.0.1:38897
      at test/input-validation.js:256:11

  527) test/options.error-handler.test.js OPTIONS - input-validation custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:257:32

  528) test/options.error-handler.test.js OPTIONS - input-validation custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  529) test/options.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:264:32

  530) test/options.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:311:32

  531) test/options.test.js OPTIONS - correctly replies connect ECONNREFUSED 127.0.0.1:46627:
     Error: connect ECONNREFUSED 127.0.0.1:46627
      at test/helper.js:112:11

  532) test/options.test.js OPTIONS - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:113:32

  533) test/options.test.js OPTIONS - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  534) test/options.test.js OPTIONS - correctly replies with very large body connect ECONNREFUSED 127.0.0.1:46627:
     Error: connect ECONNREFUSED 127.0.0.1:46627
      at test/helper.js:128:11

  535) test/options.test.js OPTIONS - correctly replies with very large body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:129:32

  536) test/options.test.js OPTIONS - correctly replies with very large body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  537) test/options.test.js OPTIONS - correctly replies if the content type has the charset connect ECONNREFUSED 127.0.0.1:46627:
     Error: connect ECONNREFUSED 127.0.0.1:46627
      at test/helper.js:144:11

  538) test/options.test.js OPTIONS - correctly replies if the content type has the charset Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:145:32

  539) test/options.test.js OPTIONS - correctly replies if the content type has the charset test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  540) test/options.test.js OPTIONS without schema - correctly replies connect ECONNREFUSED 127.0.0.1:46627:
     Error: connect ECONNREFUSED 127.0.0.1:46627
      at test/helper.js:160:11

  541) test/options.test.js OPTIONS without schema - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:161:32

  542) test/options.test.js OPTIONS without schema - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  543) test/options.test.js OPTIONS with body and querystring - correctly replies connect ECONNREFUSED 127.0.0.1:46627:
     Error: connect ECONNREFUSED 127.0.0.1:46627
      at test/helper.js:176:11

  544) test/options.test.js OPTIONS with body and querystring - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:177:32

  545) test/options.test.js OPTIONS with body and querystring - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  546) test/options.test.js OPTIONS with no body - correctly replies connect ECONNREFUSED 127.0.0.1:46627:
     Error: connect ECONNREFUSED 127.0.0.1:46627
      at test/helper.js:190:11

  547) test/options.test.js OPTIONS with no body - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:191:32

  548) test/options.test.js OPTIONS with no body - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +6
      
  

  549) test/options.test.js OPTIONS returns 415 - incorrect media type if body is not json connect ECONNREFUSED 127.0.0.1:46627:
     Error: connect ECONNREFUSED 127.0.0.1:46627
      at test/helper.js:214:11

  550) test/options.test.js OPTIONS returns 415 - incorrect media type if body is not json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:216:34

  551) test/options.test.js OPTIONS returns 415 - should return 415 if Content-Type is not json or plain text connect ECONNREFUSED 127.0.0.1:46627:
     Error: connect ECONNREFUSED 127.0.0.1:46627
      at test/helper.js:234:13

  552) test/options.test.js OPTIONS returns 415 - should return 415 if Content-Type is not json or plain text Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:235:34

  553) test/options.test.js OPTIONS returns 400 - Bad Request connect ECONNREFUSED 127.0.0.1:46627:
     Error: connect ECONNREFUSED 127.0.0.1:46627
      at test/helper.js:251:11

  554) test/options.test.js OPTIONS returns 400 - Bad Request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:252:32

  555) test/options.test.js OPTIONS returns 400 - Bad Request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  556) test/options.test.js OPTIONS returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:46627:
     Error: connect ECONNREFUSED 127.0.0.1:46627
      at test/helper.js:263:11

  557) test/options.test.js OPTIONS returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:46627:
     Error: connect ECONNREFUSED 127.0.0.1:46627
      at test/helper.js:279:11

  558) test/options.test.js OPTIONS returns 413 - Payload Too Large Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:280:32

  559) test/options.test.js OPTIONS returns 413 - Payload Too Large test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  560) test/options.test.js OPTIONS - correctly replies connect ECONNREFUSED 127.0.0.1:46627:
     Error: connect ECONNREFUSED 127.0.0.1:46627
      at test/helper.js:310:11

  561) test/options.test.js OPTIONS - correctly replies connect ECONNREFUSED 127.0.0.1:43857:
     Error: connect ECONNREFUSED 127.0.0.1:43857
      at test/input-validation.js:134:13

  562) test/options.test.js OPTIONS - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:135:34

  563) test/options.test.js OPTIONS - 400 on bad parameters connect ECONNREFUSED 127.0.0.1:43857:
     Error: connect ECONNREFUSED 127.0.0.1:43857
      at test/input-validation.js:151:11

  564) test/options.test.js OPTIONS - 400 on bad parameters Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:152:32

  565) test/options.test.js OPTIONS - 400 on bad parameters test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  566) test/options.test.js OPTIONS - input-validation coerce connect ECONNREFUSED 127.0.0.1:43857:
     Error: connect ECONNREFUSED 127.0.0.1:43857
      at test/input-validation.js:171:11

  567) test/options.test.js OPTIONS - input-validation coerce Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:172:32

  568) test/options.test.js OPTIONS - input-validation coerce test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  569) test/options.test.js OPTIONS - input-validation custom schema compiler connect ECONNREFUSED 127.0.0.1:43857:
     Error: connect ECONNREFUSED 127.0.0.1:43857
      at test/input-validation.js:188:11

  570) test/options.test.js OPTIONS - input-validation custom schema compiler Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:189:32

  571) test/options.test.js OPTIONS - input-validation custom schema compiler test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  572) test/options.test.js OPTIONS - input-validation joi schema compiler ok connect ECONNREFUSED 127.0.0.1:43857:
     Error: connect ECONNREFUSED 127.0.0.1:43857
      at test/input-validation.js:204:11

  573) test/options.test.js OPTIONS - input-validation joi schema compiler ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:205:32

  574) test/options.test.js OPTIONS - input-validation joi schema compiler ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  575) test/options.test.js OPTIONS - input-validation joi schema compiler ko connect ECONNREFUSED 127.0.0.1:43857:
     Error: connect ECONNREFUSED 127.0.0.1:43857
      at test/input-validation.js:220:11

  576) test/options.test.js OPTIONS - input-validation joi schema compiler ko Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:221:32

  577) test/options.test.js OPTIONS - input-validation joi schema compiler ko test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  578) test/options.test.js OPTIONS - input-validation instance custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:43857:
     Error: connect ECONNREFUSED 127.0.0.1:43857
      at test/input-validation.js:238:11

  579) test/options.test.js OPTIONS - input-validation instance custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:239:32

  580) test/options.test.js OPTIONS - input-validation instance custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  581) test/options.test.js OPTIONS - input-validation custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:43857:
     Error: connect ECONNREFUSED 127.0.0.1:43857
      at test/input-validation.js:256:11

  582) test/options.test.js OPTIONS - input-validation custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:257:32

  583) test/options.test.js OPTIONS - input-validation custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  584) test/options.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:264:32

  585) test/options.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:311:32

  586) test/output-validation.test.js shorthand - string get ok connect ECONNREFUSED 127.0.0.1:37553:
     Error: connect ECONNREFUSED 127.0.0.1:37553
      at test/output-validation.test.js:103:9

  587) test/output-validation.test.js shorthand - string get ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/output-validation.test.js:104:30

  588) test/output-validation.test.js shorthand - string get ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  589) test/output-validation.test.js shorthand - number get ok connect ECONNREFUSED 127.0.0.1:37553:
     Error: connect ECONNREFUSED 127.0.0.1:37553
      at test/output-validation.test.js:116:9

  590) test/output-validation.test.js shorthand - number get ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/output-validation.test.js:117:30

  591) test/output-validation.test.js shorthand - number get ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  592) test/output-validation.test.js shorthand - wrong-object-for-schema connect ECONNREFUSED 127.0.0.1:37553:
     Error: connect ECONNREFUSED 127.0.0.1:37553
      at test/output-validation.test.js:129:9

  593) test/output-validation.test.js shorthand - wrong-object-for-schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/output-validation.test.js:130:30

  594) test/output-validation.test.js shorthand - wrong-object-for-schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  595) test/output-validation.test.js shorthand - empty connect ECONNREFUSED 127.0.0.1:37553:
     Error: connect ECONNREFUSED 127.0.0.1:37553
      at test/output-validation.test.js:142:9

  596) test/output-validation.test.js shorthand - empty Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/output-validation.test.js:143:30

  597) test/output-validation.test.js shorthand - 400 connect ECONNREFUSED 127.0.0.1:37553:
     Error: connect ECONNREFUSED 127.0.0.1:37553
      at test/output-validation.test.js:153:9

  598) test/output-validation.test.js shorthand - 400 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/output-validation.test.js:154:30

  599) test/output-validation.test.js shorthand - 400 test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  600) test/patch.error-handler.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:112:11

  601) test/patch.error-handler.test.js PATCH - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:113:32

  602) test/patch.error-handler.test.js PATCH - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  603) test/patch.error-handler.test.js PATCH - correctly replies with very large body connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:128:11

  604) test/patch.error-handler.test.js PATCH - correctly replies with very large body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:129:32

  605) test/patch.error-handler.test.js PATCH - correctly replies with very large body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  606) test/patch.error-handler.test.js PATCH - correctly replies if the content type has the charset connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:144:11

  607) test/patch.error-handler.test.js PATCH - correctly replies if the content type has the charset Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:145:32

  608) test/patch.error-handler.test.js PATCH - correctly replies if the content type has the charset test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  609) test/patch.error-handler.test.js PATCH without schema - correctly replies connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:160:11

  610) test/patch.error-handler.test.js PATCH without schema - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:161:32

  611) test/patch.error-handler.test.js PATCH without schema - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  612) test/patch.error-handler.test.js PATCH with body and querystring - correctly replies connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:176:11

  613) test/patch.error-handler.test.js PATCH with body and querystring - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:177:32

  614) test/patch.error-handler.test.js PATCH with body and querystring - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  615) test/patch.error-handler.test.js PATCH with no body - correctly replies connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:190:11

  616) test/patch.error-handler.test.js PATCH with no body - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:191:32

  617) test/patch.error-handler.test.js PATCH with no body - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +6
      
  

  618) test/patch.error-handler.test.js PATCH returns 415 - incorrect media type if body is not json connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:214:11

  619) test/patch.error-handler.test.js PATCH returns 415 - incorrect media type if body is not json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:218:34

  620) test/patch.error-handler.test.js PATCH returns 400 - Bad Request connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:251:11

  621) test/patch.error-handler.test.js PATCH returns 400 - Bad Request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:252:32

  622) test/patch.error-handler.test.js PATCH returns 400 - Bad Request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  623) test/patch.error-handler.test.js PATCH returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:263:11

  624) test/patch.error-handler.test.js PATCH returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:279:11

  625) test/patch.error-handler.test.js PATCH returns 413 - Payload Too Large Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:280:32

  626) test/patch.error-handler.test.js PATCH returns 413 - Payload Too Large test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  627) test/patch.error-handler.test.js PATCH should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:298:13

  628) test/patch.error-handler.test.js PATCH should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:310:11

  629) test/patch.error-handler.test.js PATCH should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:343:11

  630) test/patch.error-handler.test.js PATCH should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:344:43

  631) test/patch.error-handler.test.js PATCH should fail with empty body and application/json content-type test count !== plan:

      test count !== plan
      + expected - actual

      -10
      +12
      
  

  632) test/patch.error-handler.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:377:11

  633) test/patch.error-handler.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:44005:
     Error: connect ECONNREFUSED 127.0.0.1:44005
      at test/helper.js:411:11

  634) test/patch.error-handler.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:44531:
     Error: connect ECONNREFUSED 127.0.0.1:44531
      at test/input-validation.js:134:13

  635) test/patch.error-handler.test.js PATCH - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:135:34

  636) test/patch.error-handler.test.js PATCH - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  637) test/patch.error-handler.test.js PATCH - 400 on bad parameters connect ECONNREFUSED 127.0.0.1:44531:
     Error: connect ECONNREFUSED 127.0.0.1:44531
      at test/input-validation.js:151:11

  638) test/patch.error-handler.test.js PATCH - 400 on bad parameters Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:152:32

  639) test/patch.error-handler.test.js PATCH - 400 on bad parameters test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  640) test/patch.error-handler.test.js PATCH - input-validation coerce connect ECONNREFUSED 127.0.0.1:44531:
     Error: connect ECONNREFUSED 127.0.0.1:44531
      at test/input-validation.js:171:11

  641) test/patch.error-handler.test.js PATCH - input-validation coerce Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:172:32

  642) test/patch.error-handler.test.js PATCH - input-validation coerce test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  643) test/patch.error-handler.test.js PATCH - input-validation custom schema compiler connect ECONNREFUSED 127.0.0.1:44531:
     Error: connect ECONNREFUSED 127.0.0.1:44531
      at test/input-validation.js:188:11

  644) test/patch.error-handler.test.js PATCH - input-validation custom schema compiler Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:189:32

  645) test/patch.error-handler.test.js PATCH - input-validation custom schema compiler test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  646) test/patch.error-handler.test.js PATCH - input-validation joi schema compiler ok connect ECONNREFUSED 127.0.0.1:44531:
     Error: connect ECONNREFUSED 127.0.0.1:44531
      at test/input-validation.js:204:11

  647) test/patch.error-handler.test.js PATCH - input-validation joi schema compiler ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:205:32

  648) test/patch.error-handler.test.js PATCH - input-validation joi schema compiler ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  649) test/patch.error-handler.test.js PATCH - input-validation joi schema compiler ko connect ECONNREFUSED 127.0.0.1:44531:
     Error: connect ECONNREFUSED 127.0.0.1:44531
      at test/input-validation.js:220:11

  650) test/patch.error-handler.test.js PATCH - input-validation joi schema compiler ko Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:221:32

  651) test/patch.error-handler.test.js PATCH - input-validation joi schema compiler ko test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  652) test/patch.error-handler.test.js PATCH - input-validation instance custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:44531:
     Error: connect ECONNREFUSED 127.0.0.1:44531
      at test/input-validation.js:238:11

  653) test/patch.error-handler.test.js PATCH - input-validation instance custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:239:32

  654) test/patch.error-handler.test.js PATCH - input-validation instance custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  655) test/patch.error-handler.test.js PATCH - input-validation custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:44531:
     Error: connect ECONNREFUSED 127.0.0.1:44531
      at test/input-validation.js:256:11

  656) test/patch.error-handler.test.js PATCH - input-validation custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:257:32

  657) test/patch.error-handler.test.js PATCH - input-validation custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  658) test/patch.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:264:32

  659) test/patch.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:299:34

  660) test/patch.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:311:32

  661) test/patch.error-handler.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  662) test/patch.error-handler.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:412:43

  663) test/patch.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:112:11

  664) test/patch.test.js PATCH - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:113:32

  665) test/patch.test.js PATCH - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  666) test/patch.test.js PATCH - correctly replies with very large body connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:128:11

  667) test/patch.test.js PATCH - correctly replies with very large body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:129:32

  668) test/patch.test.js PATCH - correctly replies with very large body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  669) test/patch.test.js PATCH - correctly replies if the content type has the charset connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:144:11

  670) test/patch.test.js PATCH - correctly replies if the content type has the charset Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:145:32

  671) test/patch.test.js PATCH - correctly replies if the content type has the charset test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  672) test/patch.test.js PATCH without schema - correctly replies connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:160:11

  673) test/patch.test.js PATCH without schema - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:161:32

  674) test/patch.test.js PATCH without schema - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  675) test/patch.test.js PATCH with body and querystring - correctly replies connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:176:11

  676) test/patch.test.js PATCH with body and querystring - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:177:32

  677) test/patch.test.js PATCH with body and querystring - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  678) test/patch.test.js PATCH with no body - correctly replies connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:190:11

  679) test/patch.test.js PATCH with no body - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:191:32

  680) test/patch.test.js PATCH with no body - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +6
      
  

  681) test/patch.test.js PATCH returns 415 - incorrect media type if body is not json connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:214:11

  682) test/patch.test.js PATCH returns 415 - incorrect media type if body is not json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:218:34

  683) test/patch.test.js PATCH returns 400 - Bad Request connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:251:11

  684) test/patch.test.js PATCH returns 400 - Bad Request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:252:32

  685) test/patch.test.js PATCH returns 400 - Bad Request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  686) test/patch.test.js PATCH returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:263:11

  687) test/patch.test.js PATCH returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:279:11

  688) test/patch.test.js PATCH returns 413 - Payload Too Large Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:280:32

  689) test/patch.test.js PATCH returns 413 - Payload Too Large test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  690) test/patch.test.js PATCH should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:298:13

  691) test/patch.test.js PATCH should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:310:11

  692) test/patch.test.js PATCH should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:343:11

  693) test/patch.test.js PATCH should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:344:43

  694) test/patch.test.js PATCH should fail with empty body and application/json content-type test count !== plan:

      test count !== plan
      + expected - actual

      -10
      +12
      
  

  695) test/patch.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:377:11

  696) test/patch.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:37763:
     Error: connect ECONNREFUSED 127.0.0.1:37763
      at test/helper.js:411:11

  697) test/patch.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:44655:
     Error: connect ECONNREFUSED 127.0.0.1:44655
      at test/input-validation.js:134:13

  698) test/patch.test.js PATCH - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:135:34

  699) test/patch.test.js PATCH - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  700) test/patch.test.js PATCH - 400 on bad parameters connect ECONNREFUSED 127.0.0.1:44655:
     Error: connect ECONNREFUSED 127.0.0.1:44655
      at test/input-validation.js:151:11

  701) test/patch.test.js PATCH - 400 on bad parameters Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:152:32

  702) test/patch.test.js PATCH - 400 on bad parameters test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  703) test/patch.test.js PATCH - input-validation coerce connect ECONNREFUSED 127.0.0.1:44655:
     Error: connect ECONNREFUSED 127.0.0.1:44655
      at test/input-validation.js:171:11

  704) test/patch.test.js PATCH - input-validation coerce Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:172:32

  705) test/patch.test.js PATCH - input-validation coerce test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  706) test/patch.test.js PATCH - input-validation custom schema compiler connect ECONNREFUSED 127.0.0.1:44655:
     Error: connect ECONNREFUSED 127.0.0.1:44655
      at test/input-validation.js:188:11

  707) test/patch.test.js PATCH - input-validation custom schema compiler Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:189:32

  708) test/patch.test.js PATCH - input-validation custom schema compiler test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  709) test/patch.test.js PATCH - input-validation joi schema compiler ok connect ECONNREFUSED 127.0.0.1:44655:
     Error: connect ECONNREFUSED 127.0.0.1:44655
      at test/input-validation.js:204:11

  710) test/patch.test.js PATCH - input-validation joi schema compiler ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:205:32

  711) test/patch.test.js PATCH - input-validation joi schema compiler ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  712) test/patch.test.js PATCH - input-validation joi schema compiler ko connect ECONNREFUSED 127.0.0.1:44655:
     Error: connect ECONNREFUSED 127.0.0.1:44655
      at test/input-validation.js:220:11

  713) test/patch.test.js PATCH - input-validation joi schema compiler ko Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:221:32

  714) test/patch.test.js PATCH - input-validation joi schema compiler ko test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  715) test/patch.test.js PATCH - input-validation instance custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:44655:
     Error: connect ECONNREFUSED 127.0.0.1:44655
      at test/input-validation.js:238:11

  716) test/patch.test.js PATCH - input-validation instance custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:239:32

  717) test/patch.test.js PATCH - input-validation instance custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  718) test/patch.test.js PATCH - input-validation custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:44655:
     Error: connect ECONNREFUSED 127.0.0.1:44655
      at test/input-validation.js:256:11

  719) test/patch.test.js PATCH - input-validation custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:257:32

  720) test/patch.test.js PATCH - input-validation custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  721) test/patch.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:264:32

  722) test/patch.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:299:34

  723) test/patch.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:311:32

  724) test/patch.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  725) test/patch.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:412:43

  726) test/plugin.test.js fastify.register with fastify-plugin should not incapsulate his code connect ECONNREFUSED 127.0.0.1:41537:
     Error: connect ECONNREFUSED 127.0.0.1:41537
      at test/plugin.test.js:82:9

  727) test/plugin.test.js fastify.register with fastify-plugin should not incapsulate his code Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:83:30

  728) test/plugin.test.js fastify.register with fastify-plugin should not incapsulate his code test count !== plan:

      test count !== plan
      + expected - actual

      -7
      +10
      
  

  729) test/plugin.test.js fastify.register with fastify-plugin should provide access to external fastify instance if opts argument is a function connect ECONNREFUSED 127.0.0.1:34901:
     Error: connect ECONNREFUSED 127.0.0.1:34901
      at test/plugin.test.js:161:9

  730) test/plugin.test.js fastify.register with fastify-plugin should provide access to external fastify instance if opts argument is a function Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:162:30

  731) test/plugin.test.js fastify.register with fastify-plugin should provide access to external fastify instance if opts argument is a function test count !== plan:

      test count !== plan
      + expected - actual

      -19
      +22
      
  

  732) test/plugin.test.js fastify.register with fastify-plugin registers root level plugins connect ECONNREFUSED 127.0.0.1:37165:
     Error: connect ECONNREFUSED 127.0.0.1:37165
      at test/plugin.test.js:216:9

  733) test/plugin.test.js fastify.register with fastify-plugin registers root level plugins Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:217:30

  734) test/plugin.test.js fastify.register with fastify-plugin registers root level plugins test count !== plan:

      test count !== plan
      + expected - actual

      -7
      +15
      
  

  735) test/plugin.test.js check dependencies - should not throw connect ECONNREFUSED 127.0.0.1:37165:
     Error: connect ECONNREFUSED 127.0.0.1:37165
      at test/plugin.test.js:226:9

  736) test/plugin.test.js check dependencies - should not throw connect ECONNREFUSED 127.0.0.1:35405:
     Error: connect ECONNREFUSED 127.0.0.1:35405
      at test/plugin.test.js:278:9

  737) test/plugin.test.js check dependencies - should not throw Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:279:30

  738) test/plugin.test.js check dependencies - should not throw test count !== plan:

      test count !== plan
      + expected - actual

      -9
      +12
      
  

  739) test/plugin.test.js check dependencies - should throw connect ECONNREFUSED 127.0.0.1:35335:
     Error: connect ECONNREFUSED 127.0.0.1:35335
      at test/plugin.test.js:330:9

  740) test/plugin.test.js check dependencies - should throw Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:331:30

  741) test/plugin.test.js check dependencies - should throw test count !== plan:

      test count !== plan
      + expected - actual

      -8
      +12
      
  

  742) test/plugin.test.js plugin incapsulation connect ECONNREFUSED 127.0.0.1:33577:
     Error: connect ECONNREFUSED 127.0.0.1:33577
      at test/plugin.test.js:528:9

  743) test/plugin.test.js plugin incapsulation Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:529:30

  744) test/plugin.test.js plugin incapsulation test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +10
      
  

  745) test/plugin.test.js if a plugin raises an error and there is not a callback to handle it, the server must not start connect ECONNREFUSED 127.0.0.1:33577:
     Error: connect ECONNREFUSED 127.0.0.1:33577
      at test/plugin.test.js:538:9

  746) test/plugin.test.js if a plugin raises an error and there is not a callback to handle it, the server must not start test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +2
      
  

  747) test/plugin.test.js add hooks after route declaration connect ECONNREFUSED 127.0.0.1:43235:
     Error: connect ECONNREFUSED 127.0.0.1:43235
      at test/plugin.test.js:600:9

  748) test/plugin.test.js add hooks after route declaration "undefined" is not valid JSON:
     Error: "undefined" is not valid JSON
      at JSON.parse (<anonymous>)
      at test/plugin.test.js:601:24

  749) test/plugin.test.js nested plugins connect ECONNREFUSED 127.0.0.1:46319:
     Error: connect ECONNREFUSED 127.0.0.1:46319
      at test/plugin.test.js:639:9

  750) test/plugin.test.js nested plugins Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/plugin.test.js:640:24

  751) test/plugin.test.js nested plugins test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  752) test/plugin.test.js plugin metadata - decorators connect ECONNREFUSED 127.0.0.1:46319:
     Error: connect ECONNREFUSED 127.0.0.1:46319
      at test/plugin.test.js:647:9

  753) test/plugin.test.js plugin metadata - decorators test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +1
      
  

  754) test/plugin.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:227:30

  755) test/plugin.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:539:30

  756) test/plugin.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/plugin.test.js:648:24

  757) test/plugin.test.js timeout!:
     Error: timeout!


  758) test/post.test.js POST - correctly replies connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:112:11

  759) test/post.test.js POST - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:113:32

  760) test/post.test.js POST - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  761) test/post.test.js POST - correctly replies with very large body connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:128:11

  762) test/post.test.js POST - correctly replies with very large body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:129:32

  763) test/post.test.js POST - correctly replies with very large body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  764) test/post.test.js POST - correctly replies if the content type has the charset connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:144:11

  765) test/post.test.js POST - correctly replies if the content type has the charset Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:145:32

  766) test/post.test.js POST - correctly replies if the content type has the charset test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  767) test/post.test.js POST without schema - correctly replies connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:160:11

  768) test/post.test.js POST without schema - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:161:32

  769) test/post.test.js POST without schema - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  770) test/post.test.js POST with body and querystring - correctly replies connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:176:11

  771) test/post.test.js POST with body and querystring - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:177:32

  772) test/post.test.js POST with body and querystring - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  773) test/post.test.js POST with no body - correctly replies connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:190:11

  774) test/post.test.js POST with no body - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:191:32

  775) test/post.test.js POST with no body - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +6
      
  

  776) test/post.test.js POST returns 415 - incorrect media type if body is not json connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:214:11

  777) test/post.test.js POST returns 415 - incorrect media type if body is not json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:218:34

  778) test/post.test.js POST returns 400 - Bad Request connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:251:11

  779) test/post.test.js POST returns 400 - Bad Request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:252:32

  780) test/post.test.js POST returns 400 - Bad Request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  781) test/post.test.js POST returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:263:11

  782) test/post.test.js POST returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:279:11

  783) test/post.test.js POST returns 413 - Payload Too Large Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:280:32

  784) test/post.test.js POST returns 413 - Payload Too Large test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  785) test/post.test.js POST should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:298:13

  786) test/post.test.js POST should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:310:11

  787) test/post.test.js POST should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:343:11

  788) test/post.test.js POST should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:344:43

  789) test/post.test.js POST should fail with empty body and application/json content-type test count !== plan:

      test count !== plan
      + expected - actual

      -10
      +12
      
  

  790) test/post.test.js POST - correctly replies connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:377:11

  791) test/post.test.js POST - correctly replies connect ECONNREFUSED 127.0.0.1:32791:
     Error: connect ECONNREFUSED 127.0.0.1:32791
      at test/helper.js:411:11

  792) test/post.test.js POST - correctly replies connect ECONNREFUSED 127.0.0.1:40969:
     Error: connect ECONNREFUSED 127.0.0.1:40969
      at test/input-validation.js:134:13

  793) test/post.test.js POST - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:135:34

  794) test/post.test.js POST - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  795) test/post.test.js POST - 400 on bad parameters connect ECONNREFUSED 127.0.0.1:40969:
     Error: connect ECONNREFUSED 127.0.0.1:40969
      at test/input-validation.js:151:11

  796) test/post.test.js POST - 400 on bad parameters Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:152:32

  797) test/post.test.js POST - 400 on bad parameters test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  798) test/post.test.js POST - input-validation coerce connect ECONNREFUSED 127.0.0.1:40969:
     Error: connect ECONNREFUSED 127.0.0.1:40969
      at test/input-validation.js:171:11

  799) test/post.test.js POST - input-validation coerce Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:172:32

  800) test/post.test.js POST - input-validation coerce test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  801) test/post.test.js POST - input-validation custom schema compiler connect ECONNREFUSED 127.0.0.1:40969:
     Error: connect ECONNREFUSED 127.0.0.1:40969
      at test/input-validation.js:188:11

  802) test/post.test.js POST - input-validation custom schema compiler Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:189:32

  803) test/post.test.js POST - input-validation custom schema compiler test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  804) test/post.test.js POST - input-validation joi schema compiler ok connect ECONNREFUSED 127.0.0.1:40969:
     Error: connect ECONNREFUSED 127.0.0.1:40969
      at test/input-validation.js:204:11

  805) test/post.test.js POST - input-validation joi schema compiler ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:205:32

  806) test/post.test.js POST - input-validation joi schema compiler ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  807) test/post.test.js POST - input-validation joi schema compiler ko connect ECONNREFUSED 127.0.0.1:40969:
     Error: connect ECONNREFUSED 127.0.0.1:40969
      at test/input-validation.js:220:11

  808) test/post.test.js POST - input-validation joi schema compiler ko Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:221:32

  809) test/post.test.js POST - input-validation joi schema compiler ko test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  810) test/post.test.js POST - input-validation instance custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:40969:
     Error: connect ECONNREFUSED 127.0.0.1:40969
      at test/input-validation.js:238:11

  811) test/post.test.js POST - input-validation instance custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:239:32

  812) test/post.test.js POST - input-validation instance custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  813) test/post.test.js POST - input-validation custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:40969:
     Error: connect ECONNREFUSED 127.0.0.1:40969
      at test/input-validation.js:256:11

  814) test/post.test.js POST - input-validation custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:257:32

  815) test/post.test.js POST - input-validation custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  816) test/post.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:264:32

  817) test/post.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:299:34

  818) test/post.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:311:32

  819) test/post.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  820) test/post.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:412:43

  821) test/promises.test.js shorthand - sget return promise es6 get connect ECONNREFUSED 127.0.0.1:45671:
     Error: connect ECONNREFUSED 127.0.0.1:45671
      at test/promises.test.js:73:9

  822) test/promises.test.js shorthand - sget return promise es6 get Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/promises.test.js:74:30

  823) test/promises.test.js shorthand - sget return promise es6 get test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  824) test/promises.test.js shorthand - sget promise es6 get return error connect ECONNREFUSED 127.0.0.1:45671:
     Error: connect ECONNREFUSED 127.0.0.1:45671
      at test/promises.test.js:86:9

  825) test/promises.test.js shorthand - sget promise es6 get return error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/promises.test.js:87:30

  826) test/promises.test.js sget promise double send connect ECONNREFUSED 127.0.0.1:45671:
     Error: connect ECONNREFUSED 127.0.0.1:45671
      at test/promises.test.js:98:9

  827) test/promises.test.js sget promise double send Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/promises.test.js:99:30

  828) test/promises.test.js sget promise double send test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  829) test/promises.test.js thenable connect ECONNREFUSED 127.0.0.1:45671:
     Error: connect ECONNREFUSED 127.0.0.1:45671
      at test/promises.test.js:110:9

  830) test/promises.test.js thenable Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/promises.test.js:111:30

  831) test/promises.test.js thenable test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  832) test/promises.test.js thenable (error) connect ECONNREFUSED 127.0.0.1:45671:
     Error: connect ECONNREFUSED 127.0.0.1:45671
      at test/promises.test.js:123:9

  833) test/promises.test.js thenable (error) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/promises.test.js:124:30

  834) test/promises.test.js return-reply connect ECONNREFUSED 127.0.0.1:45671:
     Error: connect ECONNREFUSED 127.0.0.1:45671
      at test/promises.test.js:134:9

  835) test/promises.test.js return-reply Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/promises.test.js:135:30

  836) test/promises.test.js return-reply test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  837) test/proto-poisoning.test.js proto-poisoning error connect ECONNREFUSED 127.0.0.1:37995:
     Error: connect ECONNREFUSED 127.0.0.1:37995
      at test/proto-poisoning.test.js:27:9

  838) test/proto-poisoning.test.js proto-poisoning error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/proto-poisoning.test.js:28:30

  839) test/proto-poisoning.test.js proto-poisoning remove connect ECONNREFUSED 127.0.0.1:35951:
     Error: connect ECONNREFUSED 127.0.0.1:35951
      at test/proto-poisoning.test.js:53:9

  840) test/proto-poisoning.test.js proto-poisoning remove Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/proto-poisoning.test.js:54:30

  841) test/proto-poisoning.test.js proto-poisoning remove test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  842) test/proto-poisoning.test.js proto-poisoning ignore connect ECONNREFUSED 127.0.0.1:41289:
     Error: connect ECONNREFUSED 127.0.0.1:41289
      at test/proto-poisoning.test.js:79:9

  843) test/proto-poisoning.test.js proto-poisoning ignore Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/proto-poisoning.test.js:80:30

  844) test/proto-poisoning.test.js proto-poisoning ignore test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  845) test/put.error-handler.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:112:11

  846) test/put.error-handler.test.js PUT - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:113:32

  847) test/put.error-handler.test.js PUT - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  848) test/put.error-handler.test.js PUT - correctly replies with very large body connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:128:11

  849) test/put.error-handler.test.js PUT - correctly replies with very large body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:129:32

  850) test/put.error-handler.test.js PUT - correctly replies with very large body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  851) test/put.error-handler.test.js PUT - correctly replies if the content type has the charset connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:144:11

  852) test/put.error-handler.test.js PUT - correctly replies if the content type has the charset Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:145:32

  853) test/put.error-handler.test.js PUT - correctly replies if the content type has the charset test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  854) test/put.error-handler.test.js PUT without schema - correctly replies connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:160:11

  855) test/put.error-handler.test.js PUT without schema - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:161:32

  856) test/put.error-handler.test.js PUT without schema - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  857) test/put.error-handler.test.js PUT with body and querystring - correctly replies connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:176:11

  858) test/put.error-handler.test.js PUT with body and querystring - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:177:32

  859) test/put.error-handler.test.js PUT with body and querystring - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  860) test/put.error-handler.test.js PUT with no body - correctly replies connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:190:11

  861) test/put.error-handler.test.js PUT with no body - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:191:32

  862) test/put.error-handler.test.js PUT with no body - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +6
      
  

  863) test/put.error-handler.test.js PUT returns 415 - incorrect media type if body is not json connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:214:11

  864) test/put.error-handler.test.js PUT returns 415 - incorrect media type if body is not json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:218:34

  865) test/put.error-handler.test.js PUT returns 400 - Bad Request connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:251:11

  866) test/put.error-handler.test.js PUT returns 400 - Bad Request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:252:32

  867) test/put.error-handler.test.js PUT returns 400 - Bad Request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  868) test/put.error-handler.test.js PUT returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:263:11

  869) test/put.error-handler.test.js PUT returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:279:11

  870) test/put.error-handler.test.js PUT returns 413 - Payload Too Large Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:280:32

  871) test/put.error-handler.test.js PUT returns 413 - Payload Too Large test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  872) test/put.error-handler.test.js PUT should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:298:13

  873) test/put.error-handler.test.js PUT should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:310:11

  874) test/put.error-handler.test.js PUT should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:343:11

  875) test/put.error-handler.test.js PUT should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:344:43

  876) test/put.error-handler.test.js PUT should fail with empty body and application/json content-type test count !== plan:

      test count !== plan
      + expected - actual

      -10
      +12
      
  

  877) test/put.error-handler.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:377:11

  878) test/put.error-handler.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:39923:
     Error: connect ECONNREFUSED 127.0.0.1:39923
      at test/helper.js:411:11

  879) test/put.error-handler.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:42577:
     Error: connect ECONNREFUSED 127.0.0.1:42577
      at test/input-validation.js:134:13

  880) test/put.error-handler.test.js PUT - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:135:34

  881) test/put.error-handler.test.js PUT - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  882) test/put.error-handler.test.js PUT - 400 on bad parameters connect ECONNREFUSED 127.0.0.1:42577:
     Error: connect ECONNREFUSED 127.0.0.1:42577
      at test/input-validation.js:151:11

  883) test/put.error-handler.test.js PUT - 400 on bad parameters Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:152:32

  884) test/put.error-handler.test.js PUT - 400 on bad parameters test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  885) test/put.error-handler.test.js PUT - input-validation coerce connect ECONNREFUSED 127.0.0.1:42577:
     Error: connect ECONNREFUSED 127.0.0.1:42577
      at test/input-validation.js:171:11

  886) test/put.error-handler.test.js PUT - input-validation coerce Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:172:32

  887) test/put.error-handler.test.js PUT - input-validation coerce test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  888) test/put.error-handler.test.js PUT - input-validation custom schema compiler connect ECONNREFUSED 127.0.0.1:42577:
     Error: connect ECONNREFUSED 127.0.0.1:42577
      at test/input-validation.js:188:11

  889) test/put.error-handler.test.js PUT - input-validation custom schema compiler Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:189:32

  890) test/put.error-handler.test.js PUT - input-validation custom schema compiler test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  891) test/put.error-handler.test.js PUT - input-validation joi schema compiler ok connect ECONNREFUSED 127.0.0.1:42577:
     Error: connect ECONNREFUSED 127.0.0.1:42577
      at test/input-validation.js:204:11

  892) test/put.error-handler.test.js PUT - input-validation joi schema compiler ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:205:32

  893) test/put.error-handler.test.js PUT - input-validation joi schema compiler ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  894) test/put.error-handler.test.js PUT - input-validation joi schema compiler ko connect ECONNREFUSED 127.0.0.1:42577:
     Error: connect ECONNREFUSED 127.0.0.1:42577
      at test/input-validation.js:220:11

  895) test/put.error-handler.test.js PUT - input-validation joi schema compiler ko Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:221:32

  896) test/put.error-handler.test.js PUT - input-validation joi schema compiler ko test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  897) test/put.error-handler.test.js PUT - input-validation instance custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:42577:
     Error: connect ECONNREFUSED 127.0.0.1:42577
      at test/input-validation.js:238:11

  898) test/put.error-handler.test.js PUT - input-validation instance custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:239:32

  899) test/put.error-handler.test.js PUT - input-validation instance custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  900) test/put.error-handler.test.js PUT - input-validation custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:42577:
     Error: connect ECONNREFUSED 127.0.0.1:42577
      at test/input-validation.js:256:11

  901) test/put.error-handler.test.js PUT - input-validation custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:257:32

  902) test/put.error-handler.test.js PUT - input-validation custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  903) test/put.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:264:32

  904) test/put.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:299:34

  905) test/put.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:311:32

  906) test/put.error-handler.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  907) test/put.error-handler.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:412:43

  908) test/put.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:112:11

  909) test/put.test.js PUT - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:113:32

  910) test/put.test.js PUT - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  911) test/put.test.js PUT - correctly replies with very large body connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:128:11

  912) test/put.test.js PUT - correctly replies with very large body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:129:32

  913) test/put.test.js PUT - correctly replies with very large body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  914) test/put.test.js PUT - correctly replies if the content type has the charset connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:144:11

  915) test/put.test.js PUT - correctly replies if the content type has the charset Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:145:32

  916) test/put.test.js PUT - correctly replies if the content type has the charset test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  917) test/put.test.js PUT without schema - correctly replies connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:160:11

  918) test/put.test.js PUT without schema - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:161:32

  919) test/put.test.js PUT without schema - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  920) test/put.test.js PUT with body and querystring - correctly replies connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:176:11

  921) test/put.test.js PUT with body and querystring - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:177:32

  922) test/put.test.js PUT with body and querystring - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  923) test/put.test.js PUT with no body - correctly replies connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:190:11

  924) test/put.test.js PUT with no body - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:191:32

  925) test/put.test.js PUT with no body - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +6
      
  

  926) test/put.test.js PUT returns 415 - incorrect media type if body is not json connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:214:11

  927) test/put.test.js PUT returns 415 - incorrect media type if body is not json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:218:34

  928) test/put.test.js PUT returns 400 - Bad Request connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:251:11

  929) test/put.test.js PUT returns 400 - Bad Request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:252:32

  930) test/put.test.js PUT returns 400 - Bad Request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  931) test/put.test.js PUT returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:263:11

  932) test/put.test.js PUT returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:279:11

  933) test/put.test.js PUT returns 413 - Payload Too Large Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:280:32

  934) test/put.test.js PUT returns 413 - Payload Too Large test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  935) test/put.test.js PUT should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:298:13

  936) test/put.test.js PUT should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:310:11

  937) test/put.test.js PUT should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:343:11

  938) test/put.test.js PUT should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:344:43

  939) test/put.test.js PUT should fail with empty body and application/json content-type test count !== plan:

      test count !== plan
      + expected - actual

      -10
      +12
      
  

  940) test/put.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:377:11

  941) test/put.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:39831:
     Error: connect ECONNREFUSED 127.0.0.1:39831
      at test/helper.js:411:11

  942) test/put.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:46401:
     Error: connect ECONNREFUSED 127.0.0.1:46401
      at test/input-validation.js:134:13

  943) test/put.test.js PUT - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:135:34

  944) test/put.test.js PUT - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  945) test/put.test.js PUT - 400 on bad parameters connect ECONNREFUSED 127.0.0.1:46401:
     Error: connect ECONNREFUSED 127.0.0.1:46401
      at test/input-validation.js:151:11

  946) test/put.test.js PUT - 400 on bad parameters Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:152:32

  947) test/put.test.js PUT - 400 on bad parameters test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  948) test/put.test.js PUT - input-validation coerce connect ECONNREFUSED 127.0.0.1:46401:
     Error: connect ECONNREFUSED 127.0.0.1:46401
      at test/input-validation.js:171:11

  949) test/put.test.js PUT - input-validation coerce Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:172:32

  950) test/put.test.js PUT - input-validation coerce test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  951) test/put.test.js PUT - input-validation custom schema compiler connect ECONNREFUSED 127.0.0.1:46401:
     Error: connect ECONNREFUSED 127.0.0.1:46401
      at test/input-validation.js:188:11

  952) test/put.test.js PUT - input-validation custom schema compiler Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:189:32

  953) test/put.test.js PUT - input-validation custom schema compiler test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  954) test/put.test.js PUT - input-validation joi schema compiler ok connect ECONNREFUSED 127.0.0.1:46401:
     Error: connect ECONNREFUSED 127.0.0.1:46401
      at test/input-validation.js:204:11

  955) test/put.test.js PUT - input-validation joi schema compiler ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:205:32

  956) test/put.test.js PUT - input-validation joi schema compiler ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  957) test/put.test.js PUT - input-validation joi schema compiler ko connect ECONNREFUSED 127.0.0.1:46401:
     Error: connect ECONNREFUSED 127.0.0.1:46401
      at test/input-validation.js:220:11

  958) test/put.test.js PUT - input-validation joi schema compiler ko Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:221:32

  959) test/put.test.js PUT - input-validation joi schema compiler ko test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  960) test/put.test.js PUT - input-validation instance custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:46401:
     Error: connect ECONNREFUSED 127.0.0.1:46401
      at test/input-validation.js:238:11

  961) test/put.test.js PUT - input-validation instance custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:239:32

  962) test/put.test.js PUT - input-validation instance custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  963) test/put.test.js PUT - input-validation custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:46401:
     Error: connect ECONNREFUSED 127.0.0.1:46401
      at test/input-validation.js:256:11

  964) test/put.test.js PUT - input-validation custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:257:32

  965) test/put.test.js PUT - input-validation custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  966) test/put.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:264:32

  967) test/put.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:299:34

  968) test/put.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:311:32

  969) test/put.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  970) test/put.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:412:43

  971) test/register.test.js register connect ECONNREFUSED 127.0.0.1:34785:
     Error: connect ECONNREFUSED 127.0.0.1:34785
      at test/register.test.js:54:9

  972) test/register.test.js register Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/register.test.js:55:30

  973) test/register.test.js register test count !== plan:

      test count !== plan
      + expected - actual

      -11
      +17
      
  

  974) test/register.test.js internal route declaration should pass the error generated by the register to the next handler / 1 connect ECONNREFUSED 127.0.0.1:34785:
     Error: connect ECONNREFUSED 127.0.0.1:34785
      at test/register.test.js:54:9

  975) test/register.test.js internal route declaration should pass the error generated by the register to the next handler / 1 test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +1
      
  

  976) test/register.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/register.test.js:55:30

  977) test/reply-error.test.js Should reply 400 on client error timeout!:
     Error: timeout!


  978) test/reply-error.test.js Error instance sets HTTP status code test count !== plan:

      test count !== plan
      + expected - actual

      -0
      +3
      
  

  979) test/reply-error.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -44
      +1
      
  

  980) test/route.test.js route route - get connect ECONNREFUSED 127.0.0.1:32839:
     Error: connect ECONNREFUSED 127.0.0.1:32839
      at test/route.test.js:152:11

  981) test/route.test.js route route - get Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/route.test.js:153:32

  982) test/route.test.js route route - get test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  983) test/route.test.js route route - missing schema connect ECONNREFUSED 127.0.0.1:32839:
     Error: connect ECONNREFUSED 127.0.0.1:32839
      at test/route.test.js:164:11

  984) test/route.test.js route route - missing schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/route.test.js:165:32

  985) test/route.test.js route route - missing schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  986) test/route.test.js route route - multiple methods connect ECONNREFUSED 127.0.0.1:32839:
     Error: connect ECONNREFUSED 127.0.0.1:32839
      at test/route.test.js:185:11

  987) test/route.test.js route route - multiple methods Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/route.test.js:186:32

  988) test/route.test.js route route - multiple methods test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +6
      
  

  989) test/route.test.js path can be specified in place of uri connect ECONNREFUSED 127.0.0.1:32839:
     Error: connect ECONNREFUSED 127.0.0.1:32839
      at test/route.test.js:176:11

  990) test/route.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/route.test.js:177:32

  991) test/router-options.test.js Should honor ignoreTrailingSlash option connect ECONNREFUSED 127.0.0.1:38589:
     connect ECONNREFUSED 127.0.0.1:38589
  

  992) test/router-options.test.js Should honor ignoreTrailingSlash option test count !== plan:

      test count !== plan
      + expected - actual

      -1
      +4
      
  

  993) test/router-options.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/router-options.test.js:25:16

  994) test/router-options.test.js connect ECONNREFUSED 127.0.0.1:38589:
     connect ECONNREFUSED 127.0.0.1:38589
  

  995) test/router-options.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/router-options.test.js:31:16

  996) test/stream.test.js should respond with a stream connect ECONNREFUSED 127.0.0.1:44133:
     Error: connect ECONNREFUSED 127.0.0.1:44133
      at test/stream.test.js:36:9

  997) test/stream.test.js should respond with a stream Cannot read properties of undefined (reading 'headers'):
     Error: Cannot read properties of undefined (reading 'headers')
      at test/stream.test.js:37:30

  998) test/stream.test.js should respond with a stream test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +8
      
  

  999) test/stream.test.js should trigger the onSend hook connect ECONNREFUSED 127.0.0.1:44133:
     Error: connect ECONNREFUSED 127.0.0.1:44133
      at test/stream.test.js:47:9

  1000) test/stream.test.js should trigger the onSend hook test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +4
      
  

  1001) test/stream.test.js should trigger the onSend hook only twice if pumping the stream fails, first with the stream, second with the serialized error connect ECONNREFUSED 127.0.0.1:36645:
     Error: connect ECONNREFUSED 127.0.0.1:36645
      at test/stream.test.js:103:9

  1002) test/stream.test.js should trigger the onSend hook only twice if pumping the stream fails, first with the stream, second with the serialized error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/stream.test.js:104:30

  1003) test/stream.test.js should trigger the onSend hook only twice if pumping the stream fails, first with the stream, second with the serialized error test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  1004) test/stream.test.js Destroying streams prematurely test unfinished:
     Error: test unfinished
      at Object.<anonymous> (test/stream.test.js:142:1)

  1005) test/stream.test.js Destroying streams prematurely test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +6
      
  

  1006) test/stream.test.js child test left in queue: t.test Destroying streams prematurely should call close method:
     child test left in queue: t.test Destroying streams prematurely should call close method
  

  1007) test/stream.test.js child test left in queue: t.test Destroying streams prematurely should call abort method:
     child test left in queue: t.test Destroying streams prematurely should call abort method
  

  1008) test/stream.test.js child test left in queue: t.test should respond with a stream1:
     child test left in queue: t.test should respond with a stream1
  

  1009) test/stream.test.js child test left in queue: t.test return a 404 if the stream emits a 404 error:
     child test left in queue: t.test return a 404 if the stream emits a 404 error
  

  1010) test/stream.test.js child test left in queue: t.test should support send module 200 and 404:
     child test left in queue: t.test should support send module 200 and 404
  

  1011) test/stream.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/stream.test.js:48:30

  1012) test/stream.test.js connect ECONNREFUSED 127.0.0.1:43255:
     connect ECONNREFUSED 127.0.0.1:43255
  

  1013) test/stream.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -12
      +7
      
  

  1014) test/trust-proxy.test.js trust proxy, add properties to node req test unfinished:
     Error: test unfinished
      at Object.<anonymous> (test/trust-proxy.test.js:44:1)

  1015) test/trust-proxy.test.js trust proxy, add properties to node req test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +15
      
  

  1016) test/trust-proxy.test.js child test left in queue: t.test trust proxy, not add properties to node req:
     child test left in queue: t.test trust proxy, not add properties to node req
  

  1017) test/trust-proxy.test.js child test left in queue: t.test trust proxy chain:
     child test left in queue: t.test trust proxy chain
  

  1018) test/trust-proxy.test.js child test left in queue: t.test trust proxy function:
     child test left in queue: t.test trust proxy function
  

  1019) test/trust-proxy.test.js child test left in queue: t.test trust proxy number:
     child test left in queue: t.test trust proxy number
  

  1020) test/trust-proxy.test.js child test left in queue: t.test trust proxy IP addresses:
     child test left in queue: t.test trust proxy IP addresses
  

  1021) test/trust-proxy.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -6
      +1
      
  

  1022) test/validation-error-handling.test.js should handle response validation error should be equal:

      Error: should be equal
      + expected - actual

      -{"statusCode":500,"error":"Internal Server Error","message":"\"name\" is required!"}
      +{"statusCode":500,"error":"Internal Server Error","message":"name is required!"}
      
      at test/validation-error-handling.test.js:223:7

  1023) test/validation-error-handling.test.js should handle response validation error with promises should be equal:

      Error: should be equal
      + expected - actual

      -{"statusCode":500,"error":"Internal Server Error","message":"\"name\" is required!"}
      +{"statusCode":500,"error":"Internal Server Error","message":"name is required!"}
      
      at test/validation-error-handling.test.js:253:7

  1024) test/versioned-routes.test.js Should register a versioned route connect ECONNREFUSED 127.0.0.1:33543:
     Error: connect ECONNREFUSED 127.0.0.1:33543
      at test/versioned-routes.test.js:209:9

  1025) test/versioned-routes.test.js Should register a versioned route Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/versioned-routes.test.js:210:30

  1026) test/versioned-routes.test.js Should register a versioned route test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  1027) test/versioned-routes.test.js Shorthand route declaration connect ECONNREFUSED 127.0.0.1:33543:
     Error: connect ECONNREFUSED 127.0.0.1:33543
      at test/versioned-routes.test.js:221:9

  1028) test/versioned-routes.test.js Shorthand route declaration test count !== plan:

      test count !== plan
      + expected - actual

      -6
      +5
      
  

  1029) test/versioned-routes.test.js Bas accept version (server) connect ECONNREFUSED 127.0.0.1:41619:
     Error: connect ECONNREFUSED 127.0.0.1:41619
      at test/versioned-routes.test.js:350:9

  1030) test/versioned-routes.test.js Bas accept version (server) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/versioned-routes.test.js:351:30

  1031) test/versioned-routes.test.js Bas accept version (server) test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  1032) test/versioned-routes.test.js test log stream connect ECONNREFUSED 127.0.0.1:41619:
     Error: connect ECONNREFUSED 127.0.0.1:41619
      at test/versioned-routes.test.js:361:9

  1033) test/versioned-routes.test.js test log stream test unfinished:
     Error: test unfinished
      at Object.<anonymous> (test/versioned-routes.test.js:367:1)

  1034) test/versioned-routes.test.js child test left in queue: t.test Should register a versioned route with custome versioning strategy:
     child test left in queue: t.test Should register a versioned route with custome versioning strategy
  

  1035) test/versioned-routes.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/versioned-routes.test.js:222:30

  1036) test/versioned-routes.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/versioned-routes.test.js:362:30

  1037) test/versioned-routes.test.js connect ECONNREFUSED 127.0.0.1:32977:
     connect ECONNREFUSED 127.0.0.1:32977
  

  1038) test/versioned-routes.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -14
      +13
      
  

  1039) test/http2/http2.test.js http get request test unfinished:
     Error: test unfinished
      at test/http2/plain.js:27:3
      at Http2Server.wrap (lib/server.js:74:9)

  1040) test/http2/http2.test.js http get request test count !== plan:

      test count !== plan
      + expected - actual

      -1
      +3
      
  

  1041) test/http2/http2.test.js child test left in queue: t.test https get request:
     child test left in queue: t.test https get request
  

  1042) test/http2/http2.test.js child test left in queue: t.test https get error:
     child test left in queue: t.test https get error
  

  1043) test/http2/http2.test.js child test left in queue: t.test https post:
     child test left in queue: t.test https post
  

  1044) test/http2/http2.test.js child test left in queue: t.test https get request:
     child test left in queue: t.test https get request
  

  1045) test/http2/http2.test.js child test left in queue: t.test http1 get request:
     child test left in queue: t.test http1 get request
  

  1046) test/http2/http2.test.js child test left in queue: t.test http1 get error:
     child test left in queue: t.test http1 get error
  

  1047) test/http2/http2.test.js child test left in queue: t.test http UNKNOWN_METHOD request:
     child test left in queue: t.test http UNKNOWN_METHOD request
  

  1048) test/http2/http2.test.js connect ECONNREFUSED 127.0.0.1:46771:
     connect ECONNREFUSED 127.0.0.1:46771
  

  1049) test/http2/http2.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -20
      +13
      
  

  1050) test/https/custom-https-server.test.js Should support a custom https server connect ECONNREFUSED 127.0.0.1:45915:
     Error: connect ECONNREFUSED 127.0.0.1:45915
      at test/https/custom-https-server.test.js:47:9

  1051) test/https/custom-https-server.test.js Should support a custom https server Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/https/custom-https-server.test.js:48:30

  1052) test/https/custom-https-server.test.js Should support a custom https server test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +6
      
  

  1053) test/https/https.test.js https get request connect ECONNREFUSED 127.0.0.1:35799:
     Error: connect ECONNREFUSED 127.0.0.1:35799
      at test/https/https.test.js:45:9

  1054) test/https/https.test.js https get request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/https/https.test.js:46:30

  1055) test/https/https.test.js https get request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  1056) test/internals/handleRequest.test.js request should be defined in onSend Hook on post request with content type application/json connect ECONNREFUSED 127.0.0.1:45359:
     Error: connect ECONNREFUSED 127.0.0.1:45359
      at test/internals/handleRequest.test.js:165:9

  1057) test/internals/handleRequest.test.js request should be defined in onSend Hook on post request with content type application/json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/internals/handleRequest.test.js:167:30

  1058) test/internals/handleRequest.test.js request should be defined in onSend Hook on post request with content type application/json test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +8
      
  

  1059) test/internals/handleRequest.test.js request should be defined in onSend Hook on post request with content type application/x-www-form-urlencoded connect ECONNREFUSED 127.0.0.1:42437:
     Error: connect ECONNREFUSED 127.0.0.1:42437
      at test/internals/handleRequest.test.js:196:9

  1060) test/internals/handleRequest.test.js request should be defined in onSend Hook on post request with content type application/x-www-form-urlencoded Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/internals/handleRequest.test.js:198:30

  1061) test/internals/handleRequest.test.js request should be defined in onSend Hook on post request with content type application/x-www-form-urlencoded test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +7
      
  

  1062) test/internals/handleRequest.test.js request should be defined in onSend Hook on options request with content type application/x-www-form-urlencoded connect ECONNREFUSED 127.0.0.1:42963:
     Error: connect ECONNREFUSED 127.0.0.1:42963
      at test/internals/handleRequest.test.js:227:9

  1063) test/internals/handleRequest.test.js request should be defined in onSend Hook on options request with content type application/x-www-form-urlencoded Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/internals/handleRequest.test.js:229:30

  1064) test/internals/handleRequest.test.js request should be defined in onSend Hook on options request with content type application/x-www-form-urlencoded test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +7
      
  

  1065) test/internals/initialConfig.test.js Should not have issues when passing stream options to Pino.js test unfinished:
     Error: test unfinished
      at Object.<anonymous> (test/internals/initialConfig.test.js:205:1)

  1066) test/internals/initialConfig.test.js Should not have issues when passing stream options to Pino.js test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +15
      
  

  1067) test/internals/initialConfig.test.js child test left in queue: t.test deepFreezeObject() should not throw on TypedArray:
     child test left in queue: t.test deepFreezeObject() should not throw on TypedArray
  

  1068) test/internals/initialConfig.test.js connect ECONNREFUSED 127.0.0.1:41159:
     connect ECONNREFUSED 127.0.0.1:41159
  

  1069) test/internals/initialConfig.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -11
      +10
      
  

  1070) test/internals/reply.test.js within an instance custom serializer should be used connect ECONNREFUSED 127.0.0.1:40287:
     Error: connect ECONNREFUSED 127.0.0.1:40287
      at test/internals/reply.test.js:193:11

  1071) test/internals/reply.test.js within an instance custom serializer should be used Cannot read properties of undefined (reading 'headers'):
     Error: Cannot read properties of undefined (reading 'headers')
      at test/internals/reply.test.js:194:32

  1072) test/internals/reply.test.js within an instance custom serializer should be used test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  1073) test/internals/reply.test.js within an instance status code and content-type should be correct connect ECONNREFUSED 127.0.0.1:40287:
     Error: connect ECONNREFUSED 127.0.0.1:40287
      at test/internals/reply.test.js:205:11

  1074) test/internals/reply.test.js within an instance status code and content-type should be correct Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/internals/reply.test.js:206:32

  1075) test/internals/reply.test.js within an instance status code and content-type should be correct test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  1076) test/internals/reply.test.js within an instance auto status code shoud be 200 connect ECONNREFUSED 127.0.0.1:40287:
     Error: connect ECONNREFUSED 127.0.0.1:40287
      at test/internals/reply.test.js:218:11

  1077) test/internals/reply.test.js within an instance auto status code shoud be 200 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/internals/reply.test.js:219:32

  1078) test/internals/reply.test.js within an instance auto status code shoud be 200 test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  1079) test/internals/reply.test.js within an instance auto type shoud be text/plain connect ECONNREFUSED 127.0.0.1:40287:
     Error: connect ECONNREFUSED 127.0.0.1:40287
      at test/internals/reply.test.js:230:11

  1080) test/internals/reply.test.js within an instance auto type shoud be text/plain Cannot read properties of undefined (reading 'headers'):
     Error: Cannot read properties of undefined (reading 'headers')
      at test/internals/reply.test.js:231:32

  1081) test/internals/reply.test.js within an instance auto type shoud be text/plain test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  1082) test/internals/reply.test.js within an instance redirect to `/` - 1 test unfinished:
     Error: test unfinished
      at test/internals/reply.test.js:236:5
      at Server.wrap (lib/server.js:74:9)

  1083) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 2:
     child test left in queue: t.test redirect to `/` - 2
  

  1084) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 3:
     child test left in queue: t.test redirect to `/` - 3
  

  1085) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 4:
     child test left in queue: t.test redirect to `/` - 4
  

  1086) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 5:
     child test left in queue: t.test redirect to `/` - 5
  

  1087) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 6:
     child test left in queue: t.test redirect to `/` - 6
  

  1088) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 7:
     child test left in queue: t.test redirect to `/` - 7
  

  1089) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 8:
     child test left in queue: t.test redirect to `/` - 8
  

  1090) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 9:
     child test left in queue: t.test redirect to `/` - 9
  

  1091) test/internals/reply.test.js within an instance test count !== plan:

      test count !== plan
      + expected - actual

      -14
      +6
      
  

  1092) test/internals/reply.test.js child test left in queue: t.test buffer without content type should send a application/octet-stream and raw buffer:
     child test left in queue: t.test buffer without content type should send a application/octet-stream and raw buffer
  

  1093) test/internals/reply.test.js child test left in queue: t.test buffer with content type should not send application/octet-stream:
     child test left in queue: t.test buffer with content type should not send application/octet-stream
  

  1094) test/internals/reply.test.js child test left in queue: t.test stream with content type should not send application/octet-stream:
     child test left in queue: t.test stream with content type should not send application/octet-stream
  

  1095) test/internals/reply.test.js child test left in queue: t.test stream using reply.res.writeHead should return customize headers:
     child test left in queue: t.test stream using reply.res.writeHead should return customize headers
  

  1096) test/internals/reply.test.js child test left in queue: t.test plain string without content type should send a text/plain:
     child test left in queue: t.test plain string without content type should send a text/plain
  

  1097) test/internals/reply.test.js child test left in queue: t.test plain string with content type should be sent unmodified:
     child test left in queue: t.test plain string with content type should be sent unmodified
  

  1098) test/internals/reply.test.js child test left in queue: t.test plain string with content type and custom serializer should be serialized:
     child test left in queue: t.test plain string with content type and custom serializer should be serialized
  

  1099) test/internals/reply.test.js child test left in queue: t.test plain string with content type application/json should be serialized as json:
     child test left in queue: t.test plain string with content type application/json should be serialized as json
  

  1100) test/internals/reply.test.js child test left in queue: t.test error object with a content type that is not application/json should work:
     child test left in queue: t.test error object with a content type that is not application/json should work
  

  1101) test/internals/reply.test.js child test left in queue: t.test undefined payload should be sent as-is:
     child test left in queue: t.test undefined payload should be sent as-is
  

  1102) test/internals/reply.test.js child test left in queue: t.test reply.send(new NotFound()) should not invoke the 404 handler:
     child test left in queue: t.test reply.send(new NotFound()) should not invoke the 404 handler
  

  1103) test/internals/reply.test.js child test left in queue: t.test reply can set multiple instances of same header:
     child test left in queue: t.test reply can set multiple instances of same header
  

  1104) test/internals/reply.test.js child test left in queue: t.test reply.hasHeader returns correct values:
     child test left in queue: t.test reply.hasHeader returns correct values
  

  1105) test/internals/reply.test.js child test left in queue: t.test reply.getHeader returns correct values:
     child test left in queue: t.test reply.getHeader returns correct values
  

  1106) test/internals/reply.test.js child test left in queue: t.test reply.removeHeader can remove the value:
     child test left in queue: t.test reply.removeHeader can remove the value
  

  1107) test/internals/reply.test.js child test left in queue: t.test reply.header can reset the value:
     child test left in queue: t.test reply.header can reset the value
  

  1108) test/internals/reply.test.js child test left in queue: t.test Reply should handle JSON content type with a charset:
     child test left in queue: t.test Reply should handle JSON content type with a charset
  

  1109) test/internals/reply.test.js child test left in queue: t.test Content type and charset set previously:
     child test left in queue: t.test Content type and charset set previously
  

  1110) test/internals/reply.test.js child test left in queue: t.test .status() is an alias for .code():
     child test left in queue: t.test .status() is an alias for .code()
  

  1111) test/internals/reply.test.js child test left in queue: t.test .statusCode is getter and setter:
     child test left in queue: t.test .statusCode is getter and setter
  

  1112) test/internals/reply.test.js child test left in queue: t.test reply.header setting multiple cookies as multiple Set-Cookie headers:
     child test left in queue: t.test reply.header setting multiple cookies as multiple Set-Cookie headers
  

  1113) test/internals/reply.test.js child test left in queue: t.test should throw error when passing falsy value to reply.sent:
     child test left in queue: t.test should throw error when passing falsy value to reply.sent
  

  1114) test/internals/reply.test.js child test left in queue: t.test should throw error when attempting to set reply.sent more than once:
     child test left in queue: t.test should throw error when attempting to set reply.sent more than once
  

  1115) test/internals/reply.test.js child test left in queue: t.test reply.getResponseTime() should return 0 before the timer is initialised on the reply by setting up response listeners:
     child test left in queue: t.test reply.getResponseTime() should return 0 before the timer is initialised on the reply by setting up response listeners
  

  1116) test/internals/reply.test.js child test left in queue: t.test reply.getResponseTime() should return a number greater than 0 after the timer is initialised on the reply by setting up response listeners:
     child test left in queue: t.test reply.getResponseTime() should return a number greater than 0 after the timer is initialised on the reply by setting up response listeners
  

  1117) test/internals/reply.test.js child test left in queue: t.test reply should use the custom serializer:
     child test left in queue: t.test reply should use the custom serializer
  

  1118) test/internals/reply.test.js child test left in queue: t.test reply should use the right serializer in encapsulated context:
     child test left in queue: t.test reply should use the right serializer in encapsulated context
  

  1119) test/internals/reply.test.js child test left in queue: t.test reply should use the right serializer in deep encapsulated context:
     child test left in queue: t.test reply should use the right serializer in deep encapsulated context
  

  1120) test/internals/reply.test.js child test left in queue: t.test reply should use the route serializer:
     child test left in queue: t.test reply should use the route serializer
  

  1121) test/internals/reply.test.js child test left in queue: t.test cannot set the replySerializer when the server is running:
     child test left in queue: t.test cannot set the replySerializer when the server is running
  

  1122) test/internals/reply.test.js child test left in queue: t.test reply should not call the custom serializer for errors and not found:
     child test left in queue: t.test reply should not call the custom serializer for errors and not found
  

  1123) test/internals/reply.test.js child test left in queue: t.test reply.then:
     child test left in queue: t.test reply.then
  

  1124) test/internals/reply.test.js connect ECONNREFUSED 127.0.0.1:40287:
     connect ECONNREFUSED 127.0.0.1:40287
  

  1125) test/internals/reply.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -41
      +9
      
  

