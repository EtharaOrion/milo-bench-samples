
> fastify@2.9.0 unit
> tap --no-esm -J test/*.test.js test/*/*.test.js --reporter=spec


(node:248) Warning: Using 'genReqId' in logger options is deprecated. Use fastify options instead. See: https://www.fastify.io/docs/latest/Server/#gen-request-id
(Use `node --trace-warnings ...` to show where the warning was created)
(node:248) Warning: basePath is deprecated. Use prefix instead. See: https://www.fastify.io/docs/latest/Server/#prefix
(node:248) Warning: The route option `beforeHandler` has been deprecated, use `preHandler` instead
test/404s.test.js
  default 404

    ✓ should not error
    unsupported method

      1) connect ECONNREFUSED 127.0.0.1:37579

      2) Cannot read properties of undefined (reading 'statusCode')

      3) test count !== plan
    unsupported route

      4) connect ECONNREFUSED 127.0.0.1:37579

      5) Cannot read properties of undefined (reading 'statusCode')

      6) test count !== plan

  customized 404

    ✓ should not error
    unsupported method

      7) connect ECONNREFUSED 127.0.0.1:35743

      8) Cannot read properties of undefined (reading 'statusCode')

      9) test count !== plan
    unsupported route

      10) connect ECONNREFUSED 127.0.0.1:35743

      11) Cannot read properties of undefined (reading 'statusCode')

      12) test count !== plan
    with error object

      13) connect ECONNREFUSED 127.0.0.1:35743

      14) Cannot read properties of undefined (reading 'statusCode')

      15) test count !== plan
    error object with headers property

      16) connect ECONNREFUSED 127.0.0.1:35743

      17) Cannot read properties of undefined (reading 'statusCode')

      18) test count !== plan

  custom header in notFound handler

    ✓ should not error
    not found with custom header

      19) connect ECONNREFUSED 127.0.0.1:42489

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

      22) connect ECONNREFUSED 127.0.0.1:42437

      23) Cannot read properties of undefined (reading 'statusCode')

      24) test count !== plan
    root insupported route

      25) connect ECONNREFUSED 127.0.0.1:42437

      26) Cannot read properties of undefined (reading 'statusCode')

      27) test count !== plan
    unsupported method

      28) connect ECONNREFUSED 127.0.0.1:42437

      29) Cannot read properties of undefined (reading 'statusCode')

      30) test count !== plan
    unsupported route

      31) connect ECONNREFUSED 127.0.0.1:42437

      32) Cannot read properties of undefined (reading 'statusCode')

      33) test count !== plan
    unsupported method bis

      34) connect ECONNREFUSED 127.0.0.1:42437

      35) Cannot read properties of undefined (reading 'statusCode')

      36) test count !== plan
    unsupported route bis

      37) connect ECONNREFUSED 127.0.0.1:42437

      38) Cannot read properties of undefined (reading 'statusCode')

      39) test count !== plan
    unsupported method 3

      40) connect ECONNREFUSED 127.0.0.1:42437

      41) Cannot read properties of undefined (reading 'statusCode')

      42) test count !== plan
(node:577) Warning: The route option `beforeHandler` has been deprecated, use `preHandler` instead
(Use `node --trace-warnings ...` to show where the warning was created)
    unsupported route 3

      43) connect ECONNREFUSED 127.0.0.1:42437

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

    46) connect ECONNREFUSED 127.0.0.1:38411

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

    49) connect ECONNREFUSED 127.0.0.1:40161

    50) Cannot read properties of undefined (reading 'statusCode')

    51) test count !== plan

  run middlewares on default 404

    ✓ should not error

    52) connect ECONNREFUSED 127.0.0.1:36501

    53) Cannot read properties of undefined (reading 'statusCode')

    54) test count !== plan

  run middlewares with encapsulated 404

    ✓ should not error

    55) connect ECONNREFUSED 127.0.0.1:33555

    56) Cannot read properties of undefined (reading 'statusCode')

    57) test count !== plan

  hooks check 404

    ✓ should not error

    58) connect ECONNREFUSED 127.0.0.1:37165

    59) Cannot read properties of undefined (reading 'statusCode')

    60) test count !== plan

  setNotFoundHandler should not suppress duplicated routes checking

    61) connect ECONNREFUSED 127.0.0.1:37165

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

    63) connect ECONNREFUSED 127.0.0.1:34739

    64) Cannot read properties of undefined (reading 'statusCode')

    65) test count !== plan

  recognizes errors from the http-errors module

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    66) connect ECONNREFUSED 127.0.0.1:39763

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

    68) connect ECONNREFUSED 127.0.0.1:32861

    69) Cannot read properties of undefined (reading 'statusCode')

  Not found on supported method (should return a 404)

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    70) connect ECONNREFUSED 127.0.0.1:40291

    71) Cannot read properties of undefined (reading 'statusCode')

  Not found on unsupported method (should return a 404)

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    72) connect ECONNREFUSED 127.0.0.1:40993

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

    75) connect ECONNREFUSED 127.0.0.1:36145

    76) Cannot read properties of undefined (reading 'statusCode')

    77) test count !== plan

  ignore the result of the promise if reply.send is called beforehand (undefined)

    78) connect ECONNREFUSED 127.0.0.1:36145

    ✓ should not error

    79) connect ECONNREFUSED 127.0.0.1:43011

    80) "undefined" is not valid JSON

  ignore the result of the promise if reply.send is called beforehand (object)

    ✓ should not error

    81) connect ECONNREFUSED 127.0.0.1:37579

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

    84) connect ECONNREFUSED 127.0.0.1:44247

    85) "undefined" is not valid JSON

    86) test count !== plan

  ignore the result of the promise if reply.send is called beforehand (object)

    ✓ should not error

    87) connect ECONNREFUSED 127.0.0.1:37235

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

    99) connect ECONNREFUSED 127.0.0.1:34317

    100) Cannot read properties of undefined (reading 'statusCode')

test/case-insensitive.test.js
  case insensitive

    ✓ should not error

    101) connect ECONNREFUSED 127.0.0.1:43193

    102) Cannot read properties of undefined (reading 'statusCode')

    103) test count !== plan

  case insensitive inject

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  case insensitive (parametric)

    ✓ should not error

    104) connect ECONNREFUSED 127.0.0.1:34287

    105) Cannot read properties of undefined (reading 'statusCode')

    106) test count !== plan

  case insensitive (wildcard)

    ✓ should not error

    107) connect ECONNREFUSED 127.0.0.1:40835

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

    115) timeout!


  116) test count !== plan
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

    117) connect ECONNREFUSED 127.0.0.1:40891

    118) Cannot read properties of undefined (reading 'statusCode')

    119) test count !== plan

test/custom-parser.test.js
  contentTypeParser should add a custom async parser

    ✓ should not error
    in POST

      120) connect ECONNREFUSED 127.0.0.1:43213

      121) Cannot read properties of undefined (reading 'statusCode')

      122) test count !== plan
    in OPTIONS

      123) connect ECONNREFUSED 127.0.0.1:43213

      124) Cannot read properties of undefined (reading 'statusCode')

      125) test count !== plan

  contentTypeParser method should exist

    ✓ expect truthy value

  contentTypeParser should add a custom parser

    ✓ should not error
    in POST

      126) connect ECONNREFUSED 127.0.0.1:42353

      127) Cannot read properties of undefined (reading 'statusCode')

      128) test count !== plan
    in OPTIONS

      129) connect ECONNREFUSED 127.0.0.1:42353

      130) Cannot read properties of undefined (reading 'statusCode')

      131) test count !== plan

  contentTypeParser should handle multiple custom parsers

    ✓ should not error

    132) connect ECONNREFUSED 127.0.0.1:45107

    133) Cannot read properties of undefined (reading 'statusCode')

    134) test count !== plan

  contentTypeParser should handle an array of custom contentTypes

    135) connect ECONNREFUSED 127.0.0.1:45107

    ✓ should not error

    136) connect ECONNREFUSED 127.0.0.1:42999

    137) Cannot read properties of undefined (reading 'statusCode')

    138) test count !== plan

  contentTypeParser should handle errors

    139) connect ECONNREFUSED 127.0.0.1:42999

    ✓ should not error

    140) connect ECONNREFUSED 127.0.0.1:37329

    141) Cannot read properties of undefined (reading 'statusCode')

    142) test count !== plan

  contentTypeParser should support encapsulation

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ expect falsey value

    ✓ expect falsey value

  contentTypeParser should support encapsulation, second try

    ✓ should not error

    143) connect ECONNREFUSED 127.0.0.1:33959

    144) Cannot read properties of undefined (reading 'statusCode')

    145) test count !== plan

  contentTypeParser shouldn't support request with undefined "Content-Type"

    ✓ should not error

    146) connect ECONNREFUSED 127.0.0.1:45511

    147) Cannot read properties of undefined (reading 'statusCode')

  the content type should be a string

    ✓ should be equal

  the content type cannot be an empty string

    ✓ should be equal

  the content type handler should be a function

    ✓ should be equal

  catch all content type parser

    ✓ should not error

    148) connect ECONNREFUSED 127.0.0.1:41029

    149) Cannot read properties of undefined (reading 'statusCode')

    150) test count !== plan

  catch all content type parser should not interfere with other conte type parsers

    ✓ should not error

    151) connect ECONNREFUSED 127.0.0.1:39555

    152) Cannot read properties of undefined (reading 'statusCode')

    153) test count !== plan

  '*' catch undefined Content-Type requests

    ✓ should not error

    154) connect ECONNREFUSED 127.0.0.1:39025

    155) Cannot read properties of undefined (reading 'statusCode')

    156) test count !== plan

  cannot add custom parser after binding

    ✓ should not error

    ✓ (unnamed test)

  Can override the default json parser

    ✓ should not error

    157) connect ECONNREFUSED 127.0.0.1:40613

    158) Cannot read properties of undefined (reading 'statusCode')

    159) test count !== plan

  Can override the default plain text parser

    ✓ should not error

    160) connect ECONNREFUSED 127.0.0.1:36863

    161) Cannot read properties of undefined (reading 'statusCode')

    162) test count !== plan

  Can override the default json parser in a plugin

    ✓ should not error

    163) connect ECONNREFUSED 127.0.0.1:34721

    164) Cannot read properties of undefined (reading 'statusCode')

    165) test count !== plan

  Can't override the json parser multiple times

    ✓ should be equal

  Can't override the plain text parser multiple times

    ✓ should be equal

  Should get the body as string

    ✓ should not error

    166) connect ECONNREFUSED 127.0.0.1:36709

    167) Cannot read properties of undefined (reading 'statusCode')

    168) test count !== plan

  Should return defined body with no custom parser defined and content type = 'text/plain'

    ✓ should not error

    169) connect ECONNREFUSED 127.0.0.1:42229

    170) Cannot read properties of undefined (reading 'statusCode')

    171) test count !== plan

  Should have typeof body object with no custom parser defined, no body defined and content type = 'text/plain'

    ✓ should not error

    172) connect ECONNREFUSED 127.0.0.1:34497

    173) Cannot read properties of undefined (reading 'statusCode')

    174) test count !== plan

  Should have typeof body object with no custom parser defined, null body and content type = 'text/plain'

    ✓ should not error

    175) connect ECONNREFUSED 127.0.0.1:34913

    176) Cannot read properties of undefined (reading 'statusCode')

    177) test count !== plan

  Should have typeof body object with no custom parser defined, undefined body and content type = 'text/plain'

    ✓ should not error

    178) connect ECONNREFUSED 127.0.0.1:43373

    179) Cannot read properties of undefined (reading 'statusCode')

    180) test count !== plan

  Should get the body as string

    ✓ should not error

    181) connect ECONNREFUSED 127.0.0.1:33261

    182) Cannot read properties of undefined (reading 'statusCode')

    183) test count !== plan

  Should get the body as buffer

    ✓ should not error

    184) connect ECONNREFUSED 127.0.0.1:34437

    185) Cannot read properties of undefined (reading 'statusCode')

    186) test count !== plan

  Should get the body as buffer

    ✓ should not error

    187) connect ECONNREFUSED 127.0.0.1:33403

    188) Cannot read properties of undefined (reading 'statusCode')

    189) test count !== plan

  Should parse empty bodies as a string

    ✓ should not error

    190) connect ECONNREFUSED 127.0.0.1:38857

    191) Cannot read properties of undefined (reading 'statusCode')

    192) test count !== plan

  Should parse empty bodies as a buffer

    193) connect ECONNREFUSED 127.0.0.1:38857

    ✓ should not error

    194) connect ECONNREFUSED 127.0.0.1:35865

    195) Cannot read properties of undefined (reading 'statusCode')

    196) test count !== plan

  The charset should not interfere with the content type handling

    ✓ should not error

    197) connect ECONNREFUSED 127.0.0.1:38725

    198) Cannot read properties of undefined (reading 'statusCode')

    199) test count !== plan

  Wrong parseAs parameter

    ✓ should be equal

  Should allow defining the bodyLimit per parser

    ✓ should not error

    200) connect ECONNREFUSED 127.0.0.1:46715

    201) Cannot read properties of undefined (reading 'toString')

  route bodyLimit should take precedence over a custom parser bodyLimit

    ✓ should not error

    202) connect ECONNREFUSED 127.0.0.1:44235

    203) Cannot read properties of undefined (reading 'toString')


  204) Cannot read properties of undefined (reading 'statusCode')

  205) Cannot read properties of undefined (reading 'statusCode')

  206) Cannot read properties of undefined (reading 'statusCode')

  207) test count !== plan
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

    208) connect ECONNREFUSED 127.0.0.1:35875

    209) Cannot read properties of undefined (reading 'statusCode')

    210) test count !== plan

  decorateReply as plugin (inside .after)

    211) connect ECONNREFUSED 127.0.0.1:35875

    ✓ should not error

    212) connect ECONNREFUSED 127.0.0.1:38433

    213) Cannot read properties of undefined (reading 'statusCode')

    214) test count !== plan

  decorateReply as plugin (outside .after)

    215) connect ECONNREFUSED 127.0.0.1:38433

    ✓ should not error

    216) connect ECONNREFUSED 127.0.0.1:42455

    217) Cannot read properties of undefined (reading 'statusCode')

    218) test count !== plan

  decorateRequest inside register

    219) connect ECONNREFUSED 127.0.0.1:42455

    ✓ expect truthy value

    ✓ should not error

    220) connect ECONNREFUSED 127.0.0.1:43601

    221) Cannot read properties of undefined (reading 'statusCode')

    222) test count !== plan

  decorateRequest as plugin (inside .after)

    ✓ should not error

    223) connect ECONNREFUSED 127.0.0.1:43601

    224) connect ECONNREFUSED 127.0.0.1:34815

    225) Cannot read properties of undefined (reading 'statusCode')

    226) test count !== plan

  decorateRequest as plugin (outside .after)

    227) connect ECONNREFUSED 127.0.0.1:34815

    ✓ should not error

    228) connect ECONNREFUSED 127.0.0.1:38877

    229) Cannot read properties of undefined (reading 'statusCode')

    230) test count !== plan

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

      ✓ expect truthy value

      ✓ expect falsey value
    should be inherited

      ✓ expect truthy value

      ✓ expect truthy value

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


  231) Cannot read properties of undefined (reading 'statusCode')

  232) Cannot read properties of undefined (reading 'statusCode')

  233) Cannot read properties of undefined (reading 'statusCode')

  234) Cannot read properties of undefined (reading 'statusCode')

  235) Cannot read properties of undefined (reading 'statusCode')

  236) connect ECONNREFUSED 127.0.0.1:38877
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

    237) connect ECONNREFUSED 127.0.0.1:37457

    238) Cannot read properties of undefined (reading 'statusCode')

    239) test count !== plan

  shorthand - request delete params schema

    240) connect ECONNREFUSED 127.0.0.1:37457

    241) Cannot read properties of undefined (reading 'statusCode')

    242) test count !== plan

  shorthand - request delete params schema error

    243) connect ECONNREFUSED 127.0.0.1:37457

    244) Cannot read properties of undefined (reading 'statusCode')

    245) test count !== plan

  shorthand - request delete headers schema

    246) connect ECONNREFUSED 127.0.0.1:37457

    247) Cannot read properties of undefined (reading 'statusCode')

    248) test count !== plan

  shorthand - request delete headers schema error

    249) connect ECONNREFUSED 127.0.0.1:37457

    250) Cannot read properties of undefined (reading 'statusCode')

    251) test count !== plan

  shorthand - request delete querystring schema

    252) connect ECONNREFUSED 127.0.0.1:37457

    253) Cannot read properties of undefined (reading 'statusCode')

    254) test count !== plan

  shorthand - request delete querystring schema error

    255) connect ECONNREFUSED 127.0.0.1:37457

    256) Cannot read properties of undefined (reading 'statusCode')

    257) test count !== plan

  shorthand - request delete missing schema

    258) connect ECONNREFUSED 127.0.0.1:37457

    259) Cannot read properties of undefined (reading 'statusCode')

    260) test count !== plan

  shorthand - delete with body

    261) connect ECONNREFUSED 127.0.0.1:37457

    262) Cannot read properties of undefined (reading 'statusCode')

    263) test count !== plan

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

    264) connect ECONNREFUSED 127.0.0.1:46613

    265) Cannot read properties of undefined (reading 'statusCode')

    266) test count !== plan

  shorthand - request get params schema

    267) connect ECONNREFUSED 127.0.0.1:46613

    268) Cannot read properties of undefined (reading 'statusCode')

    269) test count !== plan

  shorthand - request get params schema error

    270) connect ECONNREFUSED 127.0.0.1:46613

    271) Cannot read properties of undefined (reading 'statusCode')

    272) test count !== plan

  shorthand - request get headers schema

    273) connect ECONNREFUSED 127.0.0.1:46613

    274) Cannot read properties of undefined (reading 'statusCode')

    275) test count !== plan

  shorthand - request get headers schema error

    276) connect ECONNREFUSED 127.0.0.1:46613

    277) Cannot read properties of undefined (reading 'statusCode')

    278) test count !== plan

  shorthand - request get querystring schema

    279) connect ECONNREFUSED 127.0.0.1:46613

    280) Cannot read properties of undefined (reading 'statusCode')

    281) test count !== plan

  shorthand - request get querystring schema error

    282) connect ECONNREFUSED 127.0.0.1:46613

    283) Cannot read properties of undefined (reading 'statusCode')

    284) test count !== plan

  shorthand - request get missing schema

    285) connect ECONNREFUSED 127.0.0.1:46613

    286) Cannot read properties of undefined (reading 'statusCode')

    287) test count !== plan

  shorthand - custom serializer

    288) connect ECONNREFUSED 127.0.0.1:46613

    289) Cannot read properties of undefined (reading 'statusCode')

    290) test count !== plan

  shorthand - empty response

    291) connect ECONNREFUSED 127.0.0.1:46613

    292) Cannot read properties of undefined (reading 'statusCode')

    293) test count !== plan

  shorthand - send a falsy boolean

    294) connect ECONNREFUSED 127.0.0.1:46613

    295) Cannot read properties of undefined (reading 'statusCode')

    296) test count !== plan

  shorthand - send null value

    297) connect ECONNREFUSED 127.0.0.1:46613

    298) Cannot read properties of undefined (reading 'statusCode')

    299) test count !== plan

test/handler-context.test.js
  handlers receive correct `this` context

    ✓ expect truthy value

    ✓ should be equal

    300) connect ECONNREFUSED 127.0.0.1:41411

    301) test count !== plan

  handlers have access to the internal context

    302) connect ECONNREFUSED 127.0.0.1:36125

    303) test count !== plan

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

    304) connect ECONNREFUSED 127.0.0.1:43757

    305) Cannot read properties of undefined (reading 'statusCode')

  shorthand - request head params schema

    306) connect ECONNREFUSED 127.0.0.1:43757

    307) Cannot read properties of undefined (reading 'statusCode')

  shorthand - request head params schema error

    308) connect ECONNREFUSED 127.0.0.1:43757

    309) Cannot read properties of undefined (reading 'statusCode')

  shorthand - request head querystring schema

    310) connect ECONNREFUSED 127.0.0.1:43757

    311) Cannot read properties of undefined (reading 'statusCode')

  shorthand - request head querystring schema error

    312) connect ECONNREFUSED 127.0.0.1:43757

    313) Cannot read properties of undefined (reading 'statusCode')

  shorthand - request head missing schema

    314) connect ECONNREFUSED 127.0.0.1:43757

    315) Cannot read properties of undefined (reading 'statusCode')

test/hooks.test.js
  hooks

    ✓ (unnamed test)

    ✓ (unnamed test)

    ✓ (unnamed test)

    ✓ (unnamed test)

    ✓ (unnamed test)

    ✓ should not error

    316) connect ECONNREFUSED 127.0.0.1:36221

    317) Cannot read properties of undefined (reading 'statusCode')

    318) test count !== plan

  onRequest hook should support encapsulation / 1

    319) connect ECONNREFUSED 127.0.0.1:36221

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    320) test count !== plan

  onRequest hook should support encapsulation / 2

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  onRequest hook should support encapsulation / 3

    ✓ should not error

    321) connect ECONNREFUSED 127.0.0.1:36221

    322) connect ECONNREFUSED 127.0.0.1:44903

    323) Cannot read properties of undefined (reading 'statusCode')

    324) test count !== plan

  preHandler hook should support encapsulation / 5

    325) connect ECONNREFUSED 127.0.0.1:44903

    ✓ should not error

    326) connect ECONNREFUSED 127.0.0.1:43841

    327) Cannot read properties of undefined (reading 'statusCode')

    328) test count !== plan

  onRoute hook should be called / 1

    329) connect ECONNREFUSED 127.0.0.1:43841

    ✓ (unnamed test)

    ✓ should not error

    330) test count !== plan

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

    331) connect ECONNREFUSED 127.0.0.1:37557

    332) Cannot read properties of undefined (reading 'statusCode')

    333) test count !== plan

  onSend hook should support encapsulation / 1

    334) connect ECONNREFUSED 127.0.0.1:37557

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    335) test count !== plan

  onSend hook should support encapsulation / 2

    ✓ should not error

    336) connect ECONNREFUSED 127.0.0.1:32995

    337) Cannot read properties of undefined (reading 'statusCode')

    338) test count !== plan

  onSend hook is called after payload is serialized and headers are set

    339) connect ECONNREFUSED 127.0.0.1:32995

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

    340) test count !== plan

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

    341) connect ECONNREFUSED 127.0.0.1:33365

    342) Cannot read properties of undefined (reading 'statusCode')

    343) test count !== plan

  onSend hook should receive valid request and reply objects if onRequest hook fails

    344) connect ECONNREFUSED 127.0.0.1:33365

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    345) test count !== plan

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

    346) connect ECONNREFUSED 127.0.0.1:42319

    347) Cannot read properties of undefined (reading 'statusCode')

    348) test count !== plan

  onError hook

    349) connect ECONNREFUSED 127.0.0.1:42319

    ✓ should match pattern provided

    ✓ should not error

    ✓ should be equivalent

    350) test count !== plan

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

    351) connect ECONNREFUSED 127.0.0.1:42519

    352) Cannot read properties of undefined (reading 'statusCode')

    353) test count !== plan

  preSerialization hook should run before serialization and be able to modify the payload

    354) connect ECONNREFUSED 127.0.0.1:42519

    ✓ should not error

    355) connect ECONNREFUSED 127.0.0.1:43345

    356) Cannot read properties of undefined (reading 'statusCode')

    357) test count !== plan

  preSerialization hook should be able to throw errors which are not validated against schema response

    ✓ should not error

    358) connect ECONNREFUSED 127.0.0.1:43367

    359) Cannot read properties of undefined (reading 'statusCode')

  preSerialization hook which returned error should still run onError hooks

    ✓ should not error

    360) connect ECONNREFUSED 127.0.0.1:36125

    361) Cannot read properties of undefined (reading 'statusCode')

    362) test count !== plan

  preSerialization hooks should run in the order in which they are defined

    ✓ should not error

    363) connect ECONNREFUSED 127.0.0.1:46607

    364) Cannot read properties of undefined (reading 'statusCode')

    365) test count !== plan

  preSerialization hooks should support encapsulation

    ✓ should not error

    366) connect ECONNREFUSED 127.0.0.1:33657

    367) Cannot read properties of undefined (reading 'statusCode')

    368) test count !== plan

  onRegister hook should be called / 1

    ✓ expect truthy value

    369) connect ECONNREFUSED 127.0.0.1:33657

    ✓ expect truthy value

    ✓ should not error

    370) test count !== plan

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

    371) connect ECONNREFUSED 127.0.0.1:37971

    372) Cannot read properties of undefined (reading 'statusCode')

    373) test count !== plan

  modify payload

    374) connect ECONNREFUSED 127.0.0.1:37971

    375) connect ECONNREFUSED 127.0.0.1:37971

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

    376) test count !== plan

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


  377) Cannot read properties of undefined (reading 'statusCode')

  378) Cannot read properties of undefined (reading 'statusCode')

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

    389) Cannot access 'relativeContext' before initialization

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

    390) should be equal

    ✓ should not error

  listen accepts a port and a callback

    391) should be equal

    ✓ should not error

  listen accepts a port and a callback with (err, address)

    392) should be equal

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

    393) should be equal

    ✓ should not error

  register after listen using Promise.resolve()

    ✓ resolved

  double listen errors

    ✓ should not error

    ✓ should be equal

    ✓ expect truthy value

  double listen errors callback with (err, address)

    394) should be equal

    ✓ should not error

    ✓ should be equal

    ✓ expect truthy value

  listen twice on the same port

    395) should be equal

    ✓ should not error

    ✓ should be equal

    ✓ expect truthy value

  listen twice on the same port callback with (err, address)

    396) should be equal

    ✓ should not error

    ✓ should be equal

    ✓ expect truthy value

  listen on socket

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  listen without callback (port zero)

    397) should be equal

  listen without callback (port not given)

    398) should be equal

  listen null without callback with (address)

    399) should be equal

  listen without port without callback with (address)

    400) should be equal

  listen with undefined without callback with (address)

    401) should be equal

  listen without callback with (address)

    402) should be equal

  double listen without callback rejects

    ✓ expect truthy value

  double listen without callback with (address)

    403) should be equal

    ✓ expect truthy value

  listen twice on the same port without callback rejects

    ✓ expect truthy value

  listen twice on the same port without callback rejects with (address)

    404) should be equal

    ✓ expect truthy value

  listen on invalid port without callback rejects

    ✓ expect truthy value

  listen logs the port as info

    ✓ expect truthy value

test/logger.test.js
  defaults to info level

    ✓ listen at log message is ok

    ✓ should not error

    405) test unfinished

    406) test count !== plan


  407) child test left in queue: t.test test log stream

  408) child test left in queue: t.test test error log stream

  409) child test left in queue: t.test can use external logger instance

  410) child test left in queue: t.test can use external logger instance with custom serializer

  411) child test left in queue: t.test expose the logger

  412) child test left in queue: t.test The request id header key can be customized

  413) child test left in queue: t.test The request id header key can be customized along with a custom id generator

  414) child test left in queue: t.test The request id log label can be changed

  415) child test left in queue: t.test The logger should accept custom serializer

  416) child test left in queue: t.test reply.send logs an error if called twice in a row

  417) child test left in queue: t.test logger can be silented

  418) child test left in queue: t.test Should set a custom logLevel for a plugin

  419) child test left in queue: t.test Should set a custom logLevel for every plugin

  420) child test left in queue: t.test Should increase the log level for a specific plugin

  421) child test left in queue: t.test Should set the log level for the customized 404 handler

  422) child test left in queue: t.test Should set the log level for the customized 500 handler

  423) child test left in queue: t.test Should set a custom log level for a specific route

  424) child test left in queue: t.test The default 404 handler logs the incoming request

  425) child test left in queue: t.test should serialize request and response

  426) child test left in queue: t.test Wrap IPv6 address in listening log message

  427) child test left in queue: t.test Do not wrap IPv4 address

  428) child test left in queue: t.test file option

  429) child test left in queue: t.test should log the error if no error handler is defined

  430) child test left in queue: t.test should log as info if error status code >= 400 and < 500 if no error handler is defined

  431) child test left in queue: t.test should log as error if error status code >= 500 if no error handler is defined

  432) child test left in queue: t.test should not log the error if error handler is defined

  433) child test left in queue: t.test should not rely on raw request to log errors

  434) child test left in queue: t.test should redact the authorization header if so specified

  435) child test left in queue: t.test should not log incoming request and outgoing response when disabled

  436) connect ECONNREFUSED 127.0.0.1:35773

  437) test count !== plan
test/middleware.test.js
  use a middleware

    ✓ should be equal

    ✓ should not error

    438) connect ECONNREFUSED 127.0.0.1:43919

    439) Cannot read properties of undefined (reading 'statusCode')

    440) test count !== plan

  cannot add middleware after binding

    ✓ should not error

    ✓ (unnamed test)

  use cors

    ✓ should not error

    441) connect ECONNREFUSED 127.0.0.1:42603

    442) Cannot read properties of undefined (reading 'headers')

  use helmet

    ✓ should not error

    443) connect ECONNREFUSED 127.0.0.1:40643

    444) Cannot read properties of undefined (reading 'headers')

  use helmet and cors

    ✓ should not error

    445) connect ECONNREFUSED 127.0.0.1:38235

    446) Cannot read properties of undefined (reading 'headers')

    447) test count !== plan

  middlewares should support encapsulation / 1

    ✓ expect truthy value

    ✓ should not error

    ✓ expect truthy value

    448) connect ECONNREFUSED 127.0.0.1:42997

    449) Cannot read properties of undefined (reading 'statusCode')

    450) test count !== plan

  middlewares should support encapsulation / 2

    ✓ should not error

    451) connect ECONNREFUSED 127.0.0.1:34185

    452) Cannot read properties of undefined (reading 'statusCode')

    453) test count !== plan

  middlewares should support encapsulation / 3

    ✓ should not error

    454) connect ECONNREFUSED 127.0.0.1:46267

    455) Cannot read properties of undefined (reading 'statusCode')

    456) test count !== plan

  middlewares should support encapsulation / 4

    ✓ should not error

    457) connect ECONNREFUSED 127.0.0.1:37739

    458) Cannot read properties of undefined (reading 'statusCode')

    459) test count !== plan

  middlewares should support encapsulation / 5

    ✓ should not error

    460) connect ECONNREFUSED 127.0.0.1:44971

    461) Cannot read properties of undefined (reading 'statusCode')

    462) test count !== plan

  middlewares should support encapsulation with prefix

    ✓ should not error

    463) connect ECONNREFUSED 127.0.0.1:39237

    464) Cannot read properties of undefined (reading 'statusCode')

    465) test count !== plan

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

      466) connect ECONNREFUSED 127.0.0.1:43157

      467) should be equivalent
    /prefix

      468) connect ECONNREFUSED 127.0.0.1:43157

      469) should be equivalent
    /prefix/

      470) connect ECONNREFUSED 127.0.0.1:43157

      471) should be equivalent
    /prefix/inner

      472) connect ECONNREFUSED 127.0.0.1:43157

      473) should be equivalent

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

    474) connect ECONNREFUSED 127.0.0.1:34911

    475) Cannot read properties of undefined (reading 'statusCode')

    476) test count !== plan

  OPTIONS - correctly replies with very large body

    477) connect ECONNREFUSED 127.0.0.1:34911

    478) Cannot read properties of undefined (reading 'statusCode')

    479) test count !== plan

  OPTIONS - correctly replies if the content type has the charset

    480) connect ECONNREFUSED 127.0.0.1:34911

    481) Cannot read properties of undefined (reading 'statusCode')

    482) test count !== plan

  OPTIONS without schema - correctly replies

    483) connect ECONNREFUSED 127.0.0.1:34911

    484) Cannot read properties of undefined (reading 'statusCode')

    485) test count !== plan

  OPTIONS with body and querystring - correctly replies

    486) connect ECONNREFUSED 127.0.0.1:34911

    487) Cannot read properties of undefined (reading 'statusCode')

    488) test count !== plan

  OPTIONS with no body - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    489) connect ECONNREFUSED 127.0.0.1:34911

    490) Cannot read properties of undefined (reading 'statusCode')

    491) test count !== plan

  OPTIONS returns 415 - incorrect media type if body is not json

    492) connect ECONNREFUSED 127.0.0.1:34911

    493) Cannot read properties of undefined (reading 'statusCode')

  OPTIONS returns 415 - should return 415 if Content-Type is not json or plain text

    494) connect ECONNREFUSED 127.0.0.1:34911

    495) Cannot read properties of undefined (reading 'statusCode')

  OPTIONS returns 400 - Bad Request

    496) connect ECONNREFUSED 127.0.0.1:34911

    497) Cannot read properties of undefined (reading 'statusCode')

    498) test count !== plan

  OPTIONS returns 413 - Payload Too Large

    499) connect ECONNREFUSED 127.0.0.1:34911

    500) connect ECONNREFUSED 127.0.0.1:34911

    501) Cannot read properties of undefined (reading 'statusCode')

    502) test count !== plan


  ✓ OPTIONS should fail with empty body and application/json content-type
  OPTIONS - correctly replies

    503) connect ECONNREFUSED 127.0.0.1:34911

    504) connect ECONNREFUSED 127.0.0.1:44417

    505) Cannot read properties of undefined (reading 'statusCode')

  OPTIONS - 400 on bad parameters

    506) connect ECONNREFUSED 127.0.0.1:44417

    507) Cannot read properties of undefined (reading 'statusCode')

    508) test count !== plan

  OPTIONS - input-validation coerce

    509) connect ECONNREFUSED 127.0.0.1:44417

    510) Cannot read properties of undefined (reading 'statusCode')

    511) test count !== plan

  OPTIONS - input-validation custom schema compiler

    512) connect ECONNREFUSED 127.0.0.1:44417

    513) Cannot read properties of undefined (reading 'statusCode')

    514) test count !== plan

  OPTIONS - input-validation joi schema compiler ok

    515) connect ECONNREFUSED 127.0.0.1:44417

    516) Cannot read properties of undefined (reading 'statusCode')

    517) test count !== plan

  OPTIONS - input-validation joi schema compiler ko

    518) connect ECONNREFUSED 127.0.0.1:44417

    519) Cannot read properties of undefined (reading 'statusCode')

    520) test count !== plan

  OPTIONS - input-validation instance custom schema compiler encapsulated

    521) connect ECONNREFUSED 127.0.0.1:44417

    522) Cannot read properties of undefined (reading 'statusCode')

    523) test count !== plan

  OPTIONS - input-validation custom schema compiler encapsulated

    524) connect ECONNREFUSED 127.0.0.1:44417

    525) Cannot read properties of undefined (reading 'statusCode')

    526) test count !== plan


  527) Cannot read properties of undefined (reading 'statusCode')

  528) Cannot read properties of undefined (reading 'statusCode')
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

    529) connect ECONNREFUSED 127.0.0.1:43107

    530) Cannot read properties of undefined (reading 'statusCode')

    531) test count !== plan

  OPTIONS - correctly replies with very large body

    532) connect ECONNREFUSED 127.0.0.1:43107

    533) Cannot read properties of undefined (reading 'statusCode')

    534) test count !== plan

  OPTIONS - correctly replies if the content type has the charset

    535) connect ECONNREFUSED 127.0.0.1:43107

    536) Cannot read properties of undefined (reading 'statusCode')

    537) test count !== plan

  OPTIONS without schema - correctly replies

    538) connect ECONNREFUSED 127.0.0.1:43107

    539) Cannot read properties of undefined (reading 'statusCode')

    540) test count !== plan

  OPTIONS with body and querystring - correctly replies

    541) connect ECONNREFUSED 127.0.0.1:43107

    542) Cannot read properties of undefined (reading 'statusCode')

    543) test count !== plan

  OPTIONS with no body - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    544) connect ECONNREFUSED 127.0.0.1:43107

    545) Cannot read properties of undefined (reading 'statusCode')

    546) test count !== plan

  OPTIONS returns 415 - incorrect media type if body is not json

    547) connect ECONNREFUSED 127.0.0.1:43107

    548) Cannot read properties of undefined (reading 'statusCode')

  OPTIONS returns 415 - should return 415 if Content-Type is not json or plain text

    549) connect ECONNREFUSED 127.0.0.1:43107

    550) Cannot read properties of undefined (reading 'statusCode')

  OPTIONS returns 400 - Bad Request

    551) connect ECONNREFUSED 127.0.0.1:43107

    552) Cannot read properties of undefined (reading 'statusCode')

    553) test count !== plan

  OPTIONS returns 413 - Payload Too Large

    554) connect ECONNREFUSED 127.0.0.1:43107

    555) connect ECONNREFUSED 127.0.0.1:43107

    556) Cannot read properties of undefined (reading 'statusCode')

    557) test count !== plan


  ✓ OPTIONS should fail with empty body and application/json content-type
  OPTIONS - correctly replies

    558) connect ECONNREFUSED 127.0.0.1:43107

    559) connect ECONNREFUSED 127.0.0.1:46303

    560) Cannot read properties of undefined (reading 'statusCode')

  OPTIONS - 400 on bad parameters

    561) connect ECONNREFUSED 127.0.0.1:46303

    562) Cannot read properties of undefined (reading 'statusCode')

    563) test count !== plan

  OPTIONS - input-validation coerce

    564) connect ECONNREFUSED 127.0.0.1:46303

    565) Cannot read properties of undefined (reading 'statusCode')

    566) test count !== plan

  OPTIONS - input-validation custom schema compiler

    567) connect ECONNREFUSED 127.0.0.1:46303

    568) Cannot read properties of undefined (reading 'statusCode')

    569) test count !== plan

  OPTIONS - input-validation joi schema compiler ok

    570) connect ECONNREFUSED 127.0.0.1:46303

    571) Cannot read properties of undefined (reading 'statusCode')

    572) test count !== plan

  OPTIONS - input-validation joi schema compiler ko

    573) connect ECONNREFUSED 127.0.0.1:46303

    574) Cannot read properties of undefined (reading 'statusCode')

    575) test count !== plan

  OPTIONS - input-validation instance custom schema compiler encapsulated

    576) connect ECONNREFUSED 127.0.0.1:46303

    577) Cannot read properties of undefined (reading 'statusCode')

    578) test count !== plan

  OPTIONS - input-validation custom schema compiler encapsulated

    579) connect ECONNREFUSED 127.0.0.1:46303

    580) Cannot read properties of undefined (reading 'statusCode')

    581) test count !== plan


  582) Cannot read properties of undefined (reading 'statusCode')

  583) Cannot read properties of undefined (reading 'statusCode')
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

    584) connect ECONNREFUSED 127.0.0.1:38169

    585) Cannot read properties of undefined (reading 'statusCode')

    586) test count !== plan

  shorthand - number get ok

    587) connect ECONNREFUSED 127.0.0.1:38169

    588) Cannot read properties of undefined (reading 'statusCode')

    589) test count !== plan

  shorthand - wrong-object-for-schema

    590) connect ECONNREFUSED 127.0.0.1:38169

    591) Cannot read properties of undefined (reading 'statusCode')

    592) test count !== plan

  shorthand - empty

    593) connect ECONNREFUSED 127.0.0.1:38169

    594) Cannot read properties of undefined (reading 'statusCode')

  shorthand - 400

    595) connect ECONNREFUSED 127.0.0.1:38169

    596) Cannot read properties of undefined (reading 'statusCode')

    597) test count !== plan

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

    598) connect ECONNREFUSED 127.0.0.1:37549

    599) Cannot read properties of undefined (reading 'statusCode')

    600) test count !== plan

  PATCH - correctly replies with very large body

    601) connect ECONNREFUSED 127.0.0.1:37549

    602) Cannot read properties of undefined (reading 'statusCode')

    603) test count !== plan

  PATCH - correctly replies if the content type has the charset

    604) connect ECONNREFUSED 127.0.0.1:37549

    605) Cannot read properties of undefined (reading 'statusCode')

    606) test count !== plan

  PATCH without schema - correctly replies

    607) connect ECONNREFUSED 127.0.0.1:37549

    608) Cannot read properties of undefined (reading 'statusCode')

    609) test count !== plan

  PATCH with body and querystring - correctly replies

    610) connect ECONNREFUSED 127.0.0.1:37549

    611) Cannot read properties of undefined (reading 'statusCode')

    612) test count !== plan

  PATCH with no body - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    613) connect ECONNREFUSED 127.0.0.1:37549

    614) Cannot read properties of undefined (reading 'statusCode')

    615) test count !== plan

  PATCH returns 415 - incorrect media type if body is not json

    616) connect ECONNREFUSED 127.0.0.1:37549

    617) Cannot read properties of undefined (reading 'statusCode')

  PATCH returns 400 - Bad Request

    618) connect ECONNREFUSED 127.0.0.1:37549

    619) Cannot read properties of undefined (reading 'statusCode')

    620) test count !== plan

  PATCH returns 413 - Payload Too Large

    621) connect ECONNREFUSED 127.0.0.1:37549

    622) connect ECONNREFUSED 127.0.0.1:37549

    623) Cannot read properties of undefined (reading 'statusCode')

    624) test count !== plan

  PATCH should fail with empty body and application/json content-type

    625) connect ECONNREFUSED 127.0.0.1:37549

    626) connect ECONNREFUSED 127.0.0.1:37549

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    627) connect ECONNREFUSED 127.0.0.1:37549

    628) Cannot read properties of undefined (reading 'toString')

    629) test count !== plan

  PATCH - correctly replies

    630) connect ECONNREFUSED 127.0.0.1:37549

    631) connect ECONNREFUSED 127.0.0.1:37549

    632) connect ECONNREFUSED 127.0.0.1:41993

    633) Cannot read properties of undefined (reading 'statusCode')

    634) test count !== plan

  PATCH - 400 on bad parameters

    635) connect ECONNREFUSED 127.0.0.1:41993

    636) Cannot read properties of undefined (reading 'statusCode')

    637) test count !== plan

  PATCH - input-validation coerce

    638) connect ECONNREFUSED 127.0.0.1:41993

    639) Cannot read properties of undefined (reading 'statusCode')

    640) test count !== plan

  PATCH - input-validation custom schema compiler

    641) connect ECONNREFUSED 127.0.0.1:41993

    642) Cannot read properties of undefined (reading 'statusCode')

    643) test count !== plan

  PATCH - input-validation joi schema compiler ok

    644) connect ECONNREFUSED 127.0.0.1:41993

    645) Cannot read properties of undefined (reading 'statusCode')

    646) test count !== plan

  PATCH - input-validation joi schema compiler ko

    647) connect ECONNREFUSED 127.0.0.1:41993

    648) Cannot read properties of undefined (reading 'statusCode')

    649) test count !== plan

  PATCH - input-validation instance custom schema compiler encapsulated

    650) connect ECONNREFUSED 127.0.0.1:41993

    651) Cannot read properties of undefined (reading 'statusCode')

    652) test count !== plan

  PATCH - input-validation custom schema compiler encapsulated

    653) connect ECONNREFUSED 127.0.0.1:41993

    654) Cannot read properties of undefined (reading 'statusCode')

    655) test count !== plan


  656) Cannot read properties of undefined (reading 'statusCode')

  657) Cannot read properties of undefined (reading 'statusCode')

  658) Cannot read properties of undefined (reading 'statusCode')

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  659) Cannot read properties of undefined (reading 'toString')

  660) Cannot read properties of undefined (reading 'toString')
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

    661) connect ECONNREFUSED 127.0.0.1:40959

    662) Cannot read properties of undefined (reading 'statusCode')

    663) test count !== plan

  PATCH - correctly replies with very large body

    664) connect ECONNREFUSED 127.0.0.1:40959

    665) Cannot read properties of undefined (reading 'statusCode')

    666) test count !== plan

  PATCH - correctly replies if the content type has the charset

    667) connect ECONNREFUSED 127.0.0.1:40959

    668) Cannot read properties of undefined (reading 'statusCode')

    669) test count !== plan

  PATCH without schema - correctly replies

    670) connect ECONNREFUSED 127.0.0.1:40959

    671) Cannot read properties of undefined (reading 'statusCode')

    672) test count !== plan

  PATCH with body and querystring - correctly replies

    673) connect ECONNREFUSED 127.0.0.1:40959

    674) Cannot read properties of undefined (reading 'statusCode')

    675) test count !== plan

  PATCH with no body - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    676) connect ECONNREFUSED 127.0.0.1:40959

    677) Cannot read properties of undefined (reading 'statusCode')

    678) test count !== plan

  PATCH returns 415 - incorrect media type if body is not json

    679) connect ECONNREFUSED 127.0.0.1:40959

    680) Cannot read properties of undefined (reading 'statusCode')

  PATCH returns 400 - Bad Request

    681) connect ECONNREFUSED 127.0.0.1:40959

    682) Cannot read properties of undefined (reading 'statusCode')

    683) test count !== plan

  PATCH returns 413 - Payload Too Large

    684) connect ECONNREFUSED 127.0.0.1:40959

    685) connect ECONNREFUSED 127.0.0.1:40959

    686) Cannot read properties of undefined (reading 'statusCode')

    687) test count !== plan

  PATCH should fail with empty body and application/json content-type

    688) connect ECONNREFUSED 127.0.0.1:40959

    689) connect ECONNREFUSED 127.0.0.1:40959

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    690) connect ECONNREFUSED 127.0.0.1:40959

    691) Cannot read properties of undefined (reading 'toString')

    692) test count !== plan

  PATCH - correctly replies

    693) connect ECONNREFUSED 127.0.0.1:40959

    694) connect ECONNREFUSED 127.0.0.1:40959

    695) connect ECONNREFUSED 127.0.0.1:42795

    696) Cannot read properties of undefined (reading 'statusCode')

    697) test count !== plan

  PATCH - 400 on bad parameters

    698) connect ECONNREFUSED 127.0.0.1:42795

    699) Cannot read properties of undefined (reading 'statusCode')

    700) test count !== plan

  PATCH - input-validation coerce

    701) connect ECONNREFUSED 127.0.0.1:42795

    702) Cannot read properties of undefined (reading 'statusCode')

    703) test count !== plan

  PATCH - input-validation custom schema compiler

    704) connect ECONNREFUSED 127.0.0.1:42795

    705) Cannot read properties of undefined (reading 'statusCode')

    706) test count !== plan

  PATCH - input-validation joi schema compiler ok

    707) connect ECONNREFUSED 127.0.0.1:42795

    708) Cannot read properties of undefined (reading 'statusCode')

    709) test count !== plan

  PATCH - input-validation joi schema compiler ko

    710) connect ECONNREFUSED 127.0.0.1:42795

    711) Cannot read properties of undefined (reading 'statusCode')

    712) test count !== plan

  PATCH - input-validation instance custom schema compiler encapsulated

    713) connect ECONNREFUSED 127.0.0.1:42795

    714) Cannot read properties of undefined (reading 'statusCode')

    715) test count !== plan

  PATCH - input-validation custom schema compiler encapsulated

    716) connect ECONNREFUSED 127.0.0.1:42795

    717) Cannot read properties of undefined (reading 'statusCode')

    718) test count !== plan


  719) Cannot read properties of undefined (reading 'statusCode')

  720) Cannot read properties of undefined (reading 'statusCode')

  721) Cannot read properties of undefined (reading 'statusCode')

  722) Cannot read properties of undefined (reading 'toString')

  723) Cannot read properties of undefined (reading 'toString')
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

    724) connect ECONNREFUSED 127.0.0.1:38473

    725) Cannot read properties of undefined (reading 'statusCode')

    726) test count !== plan

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

    727) connect ECONNREFUSED 127.0.0.1:42337

    728) Cannot read properties of undefined (reading 'statusCode')

    729) test count !== plan

  fastify.register with fastify-plugin registers root level plugins

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ should not error

    730) connect ECONNREFUSED 127.0.0.1:34471

    731) Cannot read properties of undefined (reading 'statusCode')

    732) test count !== plan

  check dependencies - should not throw

    733) connect ECONNREFUSED 127.0.0.1:34471

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ expect falsey value

    ✓ should not error

    734) connect ECONNREFUSED 127.0.0.1:41261

    735) Cannot read properties of undefined (reading 'statusCode')

    736) test count !== plan

  check dependencies - should throw

    ✓ should be equal

    ✓ should be equal

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ expect falsey value

    ✓ should not error

    737) connect ECONNREFUSED 127.0.0.1:37057

    738) Cannot read properties of undefined (reading 'statusCode')

    739) test count !== plan

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

    740) connect ECONNREFUSED 127.0.0.1:36035

    741) Cannot read properties of undefined (reading 'statusCode')

    742) test count !== plan

  if a plugin raises an error and there is not a callback to handle it, the server must not start

    743) connect ECONNREFUSED 127.0.0.1:36035

    ✓ expect truthy value

    ✓ should be equal

    744) test count !== plan

  add hooks after route declaration

    ✓ should not error

    745) connect ECONNREFUSED 127.0.0.1:34333

    746) "undefined" is not valid JSON

  nested plugins

    ✓ should not error

    747) connect ECONNREFUSED 127.0.0.1:37479

    748) Cannot read properties of undefined (reading 'toString')

    749) test count !== plan

  plugin metadata - decorators

    750) connect ECONNREFUSED 127.0.0.1:37479

    ✓ expect truthy value

    751) test count !== plan

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


  752) Cannot read properties of undefined (reading 'statusCode')

  753) Cannot read properties of undefined (reading 'statusCode')

  754) Cannot read properties of undefined (reading 'toString')

  755) timeout!
  ---
  signal: SIGTERM
  handles:
    - type: Server
      events:
        - request
        - connection
        - listening
        - clientError
      connectionKey: '6:::1:0'
  expired: TAP
  stack: |
    emit (node_modules/signal-exit/index.js:105:13)
    process.listener (node_modules/signal-exit/index.js:123:9)
    process.emit (node_modules/source-map-support/source-map-support.js:516:21)
  test: TAP

  756) test count !== plan
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

    757) connect ECONNREFUSED 127.0.0.1:44125

    758) Cannot read properties of undefined (reading 'statusCode')

    759) test count !== plan

  POST - correctly replies with very large body

    760) connect ECONNREFUSED 127.0.0.1:44125

    761) Cannot read properties of undefined (reading 'statusCode')

    762) test count !== plan

  POST - correctly replies if the content type has the charset

    763) connect ECONNREFUSED 127.0.0.1:44125

    764) Cannot read properties of undefined (reading 'statusCode')

    765) test count !== plan

  POST without schema - correctly replies

    766) connect ECONNREFUSED 127.0.0.1:44125

    767) Cannot read properties of undefined (reading 'statusCode')

    768) test count !== plan

  POST with body and querystring - correctly replies

    769) connect ECONNREFUSED 127.0.0.1:44125

    770) Cannot read properties of undefined (reading 'statusCode')

    771) test count !== plan

  POST with no body - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    772) connect ECONNREFUSED 127.0.0.1:44125

    773) Cannot read properties of undefined (reading 'statusCode')

    774) test count !== plan

  POST returns 415 - incorrect media type if body is not json

    775) connect ECONNREFUSED 127.0.0.1:44125

    776) Cannot read properties of undefined (reading 'statusCode')

  POST returns 400 - Bad Request

    777) connect ECONNREFUSED 127.0.0.1:44125

    778) Cannot read properties of undefined (reading 'statusCode')

    779) test count !== plan

  POST returns 413 - Payload Too Large

    780) connect ECONNREFUSED 127.0.0.1:44125

    781) connect ECONNREFUSED 127.0.0.1:44125

    782) Cannot read properties of undefined (reading 'statusCode')

    783) test count !== plan

  POST should fail with empty body and application/json content-type

    784) connect ECONNREFUSED 127.0.0.1:44125

    785) connect ECONNREFUSED 127.0.0.1:44125

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    786) connect ECONNREFUSED 127.0.0.1:44125

    787) Cannot read properties of undefined (reading 'toString')

    788) test count !== plan

  POST - correctly replies

    789) connect ECONNREFUSED 127.0.0.1:44125

    790) connect ECONNREFUSED 127.0.0.1:44125

    791) connect ECONNREFUSED 127.0.0.1:38873

    792) Cannot read properties of undefined (reading 'statusCode')

    793) test count !== plan

  POST - 400 on bad parameters

    794) connect ECONNREFUSED 127.0.0.1:38873

    795) Cannot read properties of undefined (reading 'statusCode')

    796) test count !== plan

  POST - input-validation coerce

    797) connect ECONNREFUSED 127.0.0.1:38873

    798) Cannot read properties of undefined (reading 'statusCode')

    799) test count !== plan

  POST - input-validation custom schema compiler

    800) connect ECONNREFUSED 127.0.0.1:38873

    801) Cannot read properties of undefined (reading 'statusCode')

    802) test count !== plan

  POST - input-validation joi schema compiler ok

    803) connect ECONNREFUSED 127.0.0.1:38873

    804) Cannot read properties of undefined (reading 'statusCode')

    805) test count !== plan

  POST - input-validation joi schema compiler ko

    806) connect ECONNREFUSED 127.0.0.1:38873

    807) Cannot read properties of undefined (reading 'statusCode')

    808) test count !== plan

  POST - input-validation instance custom schema compiler encapsulated

    809) connect ECONNREFUSED 127.0.0.1:38873

    810) Cannot read properties of undefined (reading 'statusCode')

    811) test count !== plan

  POST - input-validation custom schema compiler encapsulated

    812) connect ECONNREFUSED 127.0.0.1:38873

    813) Cannot read properties of undefined (reading 'statusCode')

    814) test count !== plan


  815) Cannot read properties of undefined (reading 'statusCode')

  816) Cannot read properties of undefined (reading 'statusCode')

  817) Cannot read properties of undefined (reading 'statusCode')

  818) Cannot read properties of undefined (reading 'toString')

  819) Cannot read properties of undefined (reading 'toString')
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

    820) connect ECONNREFUSED 127.0.0.1:44525

    821) Cannot read properties of undefined (reading 'statusCode')

    822) test count !== plan

  shorthand - sget promise es6 get return error

    823) connect ECONNREFUSED 127.0.0.1:44525

    824) Cannot read properties of undefined (reading 'statusCode')

  sget promise double send

    825) connect ECONNREFUSED 127.0.0.1:44525

    826) Cannot read properties of undefined (reading 'statusCode')

    827) test count !== plan

  thenable

    828) connect ECONNREFUSED 127.0.0.1:44525

    829) Cannot read properties of undefined (reading 'statusCode')

    830) test count !== plan

  thenable (error)

    831) connect ECONNREFUSED 127.0.0.1:44525

    832) Cannot read properties of undefined (reading 'statusCode')

  return-reply

    833) connect ECONNREFUSED 127.0.0.1:44525

    834) Cannot read properties of undefined (reading 'statusCode')

    835) test count !== plan

test/proto-poisoning.test.js
  proto-poisoning error

    ✓ should not error

    836) connect ECONNREFUSED 127.0.0.1:43173

    837) Cannot read properties of undefined (reading 'statusCode')

  proto-poisoning remove

    ✓ should not error

    838) connect ECONNREFUSED 127.0.0.1:43197

    839) Cannot read properties of undefined (reading 'statusCode')

    840) test count !== plan

  proto-poisoning ignore

    ✓ should not error

    841) connect ECONNREFUSED 127.0.0.1:37155

    842) Cannot read properties of undefined (reading 'statusCode')

    843) test count !== plan

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

    844) connect ECONNREFUSED 127.0.0.1:43269

    845) Cannot read properties of undefined (reading 'statusCode')

    846) test count !== plan

  PUT - correctly replies with very large body

    847) connect ECONNREFUSED 127.0.0.1:43269

    848) Cannot read properties of undefined (reading 'statusCode')

    849) test count !== plan

  PUT - correctly replies if the content type has the charset

    850) connect ECONNREFUSED 127.0.0.1:43269

    851) Cannot read properties of undefined (reading 'statusCode')

    852) test count !== plan

  PUT without schema - correctly replies

    853) connect ECONNREFUSED 127.0.0.1:43269

    854) Cannot read properties of undefined (reading 'statusCode')

    855) test count !== plan

  PUT with body and querystring - correctly replies

    856) connect ECONNREFUSED 127.0.0.1:43269

    857) Cannot read properties of undefined (reading 'statusCode')

    858) test count !== plan

  PUT with no body - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    859) connect ECONNREFUSED 127.0.0.1:43269

    860) Cannot read properties of undefined (reading 'statusCode')

    861) test count !== plan

  PUT returns 415 - incorrect media type if body is not json

    862) connect ECONNREFUSED 127.0.0.1:43269

    863) Cannot read properties of undefined (reading 'statusCode')

  PUT returns 400 - Bad Request

    864) connect ECONNREFUSED 127.0.0.1:43269

    865) Cannot read properties of undefined (reading 'statusCode')

    866) test count !== plan

  PUT returns 413 - Payload Too Large

    867) connect ECONNREFUSED 127.0.0.1:43269

    868) connect ECONNREFUSED 127.0.0.1:43269

    869) Cannot read properties of undefined (reading 'statusCode')

    870) test count !== plan

  PUT should fail with empty body and application/json content-type

    871) connect ECONNREFUSED 127.0.0.1:43269

    872) connect ECONNREFUSED 127.0.0.1:43269

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    873) connect ECONNREFUSED 127.0.0.1:43269

    874) Cannot read properties of undefined (reading 'toString')

    875) test count !== plan

  PUT - correctly replies

    876) connect ECONNREFUSED 127.0.0.1:43269

    877) connect ECONNREFUSED 127.0.0.1:43269

    878) connect ECONNREFUSED 127.0.0.1:33275

    879) Cannot read properties of undefined (reading 'statusCode')

    880) test count !== plan

  PUT - 400 on bad parameters

    881) connect ECONNREFUSED 127.0.0.1:33275

    882) Cannot read properties of undefined (reading 'statusCode')

    883) test count !== plan

  PUT - input-validation coerce

    884) connect ECONNREFUSED 127.0.0.1:33275

    885) Cannot read properties of undefined (reading 'statusCode')

    886) test count !== plan

  PUT - input-validation custom schema compiler

    887) connect ECONNREFUSED 127.0.0.1:33275

    888) Cannot read properties of undefined (reading 'statusCode')

    889) test count !== plan

  PUT - input-validation joi schema compiler ok

    890) connect ECONNREFUSED 127.0.0.1:33275

    891) Cannot read properties of undefined (reading 'statusCode')

    892) test count !== plan

  PUT - input-validation joi schema compiler ko

    893) connect ECONNREFUSED 127.0.0.1:33275

    894) Cannot read properties of undefined (reading 'statusCode')

    895) test count !== plan

  PUT - input-validation instance custom schema compiler encapsulated

    896) connect ECONNREFUSED 127.0.0.1:33275

    897) Cannot read properties of undefined (reading 'statusCode')

    898) test count !== plan

  PUT - input-validation custom schema compiler encapsulated

    899) connect ECONNREFUSED 127.0.0.1:33275

    900) Cannot read properties of undefined (reading 'statusCode')

    901) test count !== plan


  902) Cannot read properties of undefined (reading 'statusCode')

  903) Cannot read properties of undefined (reading 'statusCode')

  904) Cannot read properties of undefined (reading 'statusCode')

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  905) Cannot read properties of undefined (reading 'toString')

  906) Cannot read properties of undefined (reading 'toString')
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

    907) connect ECONNREFUSED 127.0.0.1:36461

    908) Cannot read properties of undefined (reading 'statusCode')

    909) test count !== plan

  PUT - correctly replies with very large body

    910) connect ECONNREFUSED 127.0.0.1:36461

    911) Cannot read properties of undefined (reading 'statusCode')

    912) test count !== plan

  PUT - correctly replies if the content type has the charset

    913) connect ECONNREFUSED 127.0.0.1:36461

    914) Cannot read properties of undefined (reading 'statusCode')

    915) test count !== plan

  PUT without schema - correctly replies

    916) connect ECONNREFUSED 127.0.0.1:36461

    917) Cannot read properties of undefined (reading 'statusCode')

    918) test count !== plan

  PUT with body and querystring - correctly replies

    919) connect ECONNREFUSED 127.0.0.1:36461

    920) Cannot read properties of undefined (reading 'statusCode')

    921) test count !== plan

  PUT with no body - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    922) connect ECONNREFUSED 127.0.0.1:36461

    923) Cannot read properties of undefined (reading 'statusCode')

    924) test count !== plan

  PUT returns 415 - incorrect media type if body is not json

    925) connect ECONNREFUSED 127.0.0.1:36461

    926) Cannot read properties of undefined (reading 'statusCode')

  PUT returns 400 - Bad Request

    927) connect ECONNREFUSED 127.0.0.1:36461

    928) Cannot read properties of undefined (reading 'statusCode')

    929) test count !== plan

  PUT returns 413 - Payload Too Large

    930) connect ECONNREFUSED 127.0.0.1:36461

    931) connect ECONNREFUSED 127.0.0.1:36461

    932) Cannot read properties of undefined (reading 'statusCode')

    933) test count !== plan

  PUT should fail with empty body and application/json content-type

    934) connect ECONNREFUSED 127.0.0.1:36461

    935) connect ECONNREFUSED 127.0.0.1:36461

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    936) connect ECONNREFUSED 127.0.0.1:36461

    937) Cannot read properties of undefined (reading 'toString')

    938) test count !== plan

  PUT - correctly replies

    939) connect ECONNREFUSED 127.0.0.1:36461

    940) connect ECONNREFUSED 127.0.0.1:36461

    941) connect ECONNREFUSED 127.0.0.1:36463

    942) Cannot read properties of undefined (reading 'statusCode')

    943) test count !== plan

  PUT - 400 on bad parameters

    944) connect ECONNREFUSED 127.0.0.1:36463

    945) Cannot read properties of undefined (reading 'statusCode')

    946) test count !== plan

  PUT - input-validation coerce

    947) connect ECONNREFUSED 127.0.0.1:36463

    948) Cannot read properties of undefined (reading 'statusCode')

    949) test count !== plan

  PUT - input-validation custom schema compiler

    950) connect ECONNREFUSED 127.0.0.1:36463

    951) Cannot read properties of undefined (reading 'statusCode')

    952) test count !== plan

  PUT - input-validation joi schema compiler ok

    953) connect ECONNREFUSED 127.0.0.1:36463

    954) Cannot read properties of undefined (reading 'statusCode')

    955) test count !== plan

  PUT - input-validation joi schema compiler ko

    956) connect ECONNREFUSED 127.0.0.1:36463

    957) Cannot read properties of undefined (reading 'statusCode')

    958) test count !== plan

  PUT - input-validation instance custom schema compiler encapsulated

    959) connect ECONNREFUSED 127.0.0.1:36463

    960) Cannot read properties of undefined (reading 'statusCode')

    961) test count !== plan

  PUT - input-validation custom schema compiler encapsulated

    962) connect ECONNREFUSED 127.0.0.1:36463

    963) Cannot read properties of undefined (reading 'statusCode')

    964) test count !== plan


  965) Cannot read properties of undefined (reading 'statusCode')

  966) Cannot read properties of undefined (reading 'statusCode')

  967) Cannot read properties of undefined (reading 'statusCode')

  968) Cannot read properties of undefined (reading 'toString')

  969) Cannot read properties of undefined (reading 'toString')
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

    970) connect ECONNREFUSED 127.0.0.1:38205

    971) Cannot read properties of undefined (reading 'statusCode')

    972) test count !== plan

  internal route declaration should pass the error generated by the register to the next handler / 1

    ✓ should be equal

  internal route declaration should pass the error generated by the register to the next handler / 2

    ✓ should be equal

    ✓ should not error


  973) connect ECONNREFUSED 127.0.0.1:38205
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

    974) timeout!


  975) test count !== plan

  976) test count !== plan
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

      977) connect ECONNREFUSED 127.0.0.1:39347

      978) Cannot read properties of undefined (reading 'statusCode')

      979) test count !== plan
    route - missing schema

      980) connect ECONNREFUSED 127.0.0.1:39347

      981) Cannot read properties of undefined (reading 'statusCode')

      982) test count !== plan
    route - multiple methods

      983) connect ECONNREFUSED 127.0.0.1:39347

      984) Cannot read properties of undefined (reading 'statusCode')

      985) test count !== plan

  path can be specified in place of uri

    986) connect ECONNREFUSED 127.0.0.1:39347

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


  987) Cannot read properties of undefined (reading 'statusCode')
test/router-options.test.js
  Should honor ignoreTrailingSlash option

    988) connect ECONNREFUSED 127.0.0.1:42589

    989) test count !== plan

  Should honor maxParamLength option

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal


  990) Cannot read properties of undefined (reading 'statusCode')

  991) connect ECONNREFUSED 127.0.0.1:42589

  992) Cannot read properties of undefined (reading 'statusCode')
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

    993) connect ECONNREFUSED 127.0.0.1:39797

    994) Cannot read properties of undefined (reading 'headers')

    995) test count !== plan

  should trigger the onSend hook

    996) connect ECONNREFUSED 127.0.0.1:39797

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    997) test count !== plan

  should trigger the onSend hook only twice if pumping the stream fails, first with the stream, second with the serialized error

    ✓ should not error

    998) connect ECONNREFUSED 127.0.0.1:34335

    999) Cannot read properties of undefined (reading 'statusCode')

    1000) test count !== plan

  onSend hook stream

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Destroying streams prematurely

    ✓ should not error

    1001) test unfinished

    1002) test count !== plan


  1003) child test left in queue: t.test Destroying streams prematurely should call close method

  1004) child test left in queue: t.test Destroying streams prematurely should call abort method

  1005) child test left in queue: t.test should respond with a stream1

  1006) child test left in queue: t.test return a 404 if the stream emits a 404 error

  1007) child test left in queue: t.test should support send module 200 and 404

  1008) test count !== plan
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

    1009) test unfinished

    1010) test count !== plan


  1011) child test left in queue: t.test trust proxy, not add properties to node req

  1012) child test left in queue: t.test trust proxy chain

  1013) child test left in queue: t.test trust proxy function

  1014) child test left in queue: t.test trust proxy number

  1015) child test left in queue: t.test trust proxy IP addresses

  1016) test count !== plan
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

    1017) should be equal

  should handle response validation error with promises

    ✓ should not error

    1018) should be equal

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

    1019) connect ECONNREFUSED 127.0.0.1:36615

    1020) Cannot read properties of undefined (reading 'statusCode')

    1021) test count !== plan

  Shorthand route declaration

    1022) connect ECONNREFUSED 127.0.0.1:36615

    ✓ should not error

    ✓ should be equivalent

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    1023) test count !== plan

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

    1024) connect ECONNREFUSED 127.0.0.1:40325

    1025) Cannot read properties of undefined (reading 'statusCode')

    1026) test count !== plan

  test log stream

    1027) connect ECONNREFUSED 127.0.0.1:40325

    ✓ should not error

    1028) test unfinished


  1029) child test left in queue: t.test Should register a versioned route with custome versioning strategy

  1030) Cannot read properties of undefined (reading 'statusCode')

  1031) Cannot read properties of undefined (reading 'statusCode')

  1032) connect ECONNREFUSED 127.0.0.1:40905

  1033) test count !== plan
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

    1034) test unfinished

    1035) test count !== plan


  ✓ should not error

  1036) child test left in queue: t.test https get request

  ✓ should not error

  1037) child test left in queue: t.test http UNKNOWN_METHOD request

  ✓ should not error

  1038) child test left in queue: t.test https get error

  1039) child test left in queue: t.test https post

  1040) child test left in queue: t.test https get request

  1041) child test left in queue: t.test http1 get request

  1042) child test left in queue: t.test http1 get error

  1043) connect ECONNREFUSED 127.0.0.1:34227

  1044) test count !== plan
test/https/custom-https-server.test.js
  Should support a custom https server

    ✓ expect truthy value

    ✓ should not error

    1045) connect ECONNREFUSED 127.0.0.1:45345

    1046) Cannot read properties of undefined (reading 'statusCode')

    1047) test count !== plan

test/https/https.test.js

  ✓ Key/cert successfully loaded
  https get

    ✓ (unnamed test)


  ✓ should not error
  https get request

    1048) connect ECONNREFUSED 127.0.0.1:35349

    1049) Cannot read properties of undefined (reading 'statusCode')

    1050) test count !== plan

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

    1051) connect ECONNREFUSED 127.0.0.1:37773

    1052) Cannot read properties of undefined (reading 'statusCode')

    1053) test count !== plan

  request should be defined in onSend Hook on post request with content type application/x-www-form-urlencoded

    ✓ should not error

    1054) connect ECONNREFUSED 127.0.0.1:38815

    1055) Cannot read properties of undefined (reading 'statusCode')

    1056) test count !== plan

  request should be defined in onSend Hook on options request with content type application/x-www-form-urlencoded

    ✓ should not error

    1057) connect ECONNREFUSED 127.0.0.1:39267

    1058) Cannot read properties of undefined (reading 'statusCode')

    1059) test count !== plan

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

    1060) test unfinished

    1061) test count !== plan


  1062) child test left in queue: t.test deepFreezeObject() should not throw on TypedArray

  1063) connect ECONNREFUSED 127.0.0.1:42521

  1064) test count !== plan
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

      1065) connect ECONNREFUSED 127.0.0.1:37003

      1066) Cannot read properties of undefined (reading 'headers')

      1067) test count !== plan
    status code and content-type should be correct

      1068) connect ECONNREFUSED 127.0.0.1:37003

      1069) Cannot read properties of undefined (reading 'statusCode')

      1070) test count !== plan
    auto status code shoud be 200

      1071) connect ECONNREFUSED 127.0.0.1:37003

      1072) Cannot read properties of undefined (reading 'statusCode')

      1073) test count !== plan
    auto type shoud be text/plain

      1074) connect ECONNREFUSED 127.0.0.1:37003

      1075) Cannot read properties of undefined (reading 'headers')

      1076) test count !== plan
    redirect to `/` - 1

      1077) test unfinished

    1078) child test left in queue: t.test redirect to `/` - 2

    1079) child test left in queue: t.test redirect to `/` - 3

    1080) child test left in queue: t.test redirect to `/` - 4

    1081) child test left in queue: t.test redirect to `/` - 5

    1082) child test left in queue: t.test redirect to `/` - 6

    1083) child test left in queue: t.test redirect to `/` - 7

    1084) child test left in queue: t.test redirect to `/` - 8

    1085) child test left in queue: t.test redirect to `/` - 9

    1086) test count !== plan


  1087) child test left in queue: t.test buffer without content type should send a application/octet-stream and raw buffer

  1088) child test left in queue: t.test buffer with content type should not send application/octet-stream

  1089) child test left in queue: t.test stream with content type should not send application/octet-stream

  1090) child test left in queue: t.test stream using reply.res.writeHead should return customize headers

  1091) child test left in queue: t.test plain string without content type should send a text/plain

  1092) child test left in queue: t.test plain string with content type should be sent unmodified

  1093) child test left in queue: t.test plain string with content type and custom serializer should be serialized

  1094) child test left in queue: t.test plain string with content type application/json should be serialized as json

  1095) child test left in queue: t.test error object with a content type that is not application/json should work

  1096) child test left in queue: t.test undefined payload should be sent as-is

  1097) child test left in queue: t.test reply.send(new NotFound()) should not invoke the 404 handler

  1098) child test left in queue: t.test reply can set multiple instances of same header

  1099) child test left in queue: t.test reply.hasHeader returns correct values

  1100) child test left in queue: t.test reply.getHeader returns correct values

  1101) child test left in queue: t.test reply.removeHeader can remove the value

  1102) child test left in queue: t.test reply.header can reset the value

  1103) child test left in queue: t.test Reply should handle JSON content type with a charset

  1104) child test left in queue: t.test Content type and charset set previously

  1105) child test left in queue: t.test .status() is an alias for .code()

  1106) child test left in queue: t.test .statusCode is getter and setter

  1107) child test left in queue: t.test reply.header setting multiple cookies as multiple Set-Cookie headers

  1108) child test left in queue: t.test should throw error when passing falsy value to reply.sent

  1109) child test left in queue: t.test should throw error when attempting to set reply.sent more than once

  1110) child test left in queue: t.test reply.getResponseTime() should return 0 before the timer is initialised on the reply by setting up response listeners

  1111) child test left in queue: t.test reply.getResponseTime() should return a number greater than 0 after the timer is initialised on the reply by setting up response listeners

  1112) child test left in queue: t.test reply should use the custom serializer

  1113) child test left in queue: t.test reply should use the right serializer in encapsulated context

  1114) child test left in queue: t.test reply should use the right serializer in deep encapsulated context

  1115) child test left in queue: t.test reply should use the route serializer

  1116) child test left in queue: t.test cannot set the replySerializer when the server is running

  1117) child test left in queue: t.test reply should not call the custom serializer for errors and not found

  1118) child test left in queue: t.test reply.then

  1119) connect ECONNREFUSED 127.0.0.1:37003

  1120) test count !== plan
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


  2235 passing (31s)
  1120 failing

  1) test/404s.test.js default 404 unsupported method connect ECONNREFUSED 127.0.0.1:37579:
     Error: connect ECONNREFUSED 127.0.0.1:37579
      at test/404s.test.js:35:11

  2) test/404s.test.js default 404 unsupported method Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:36:32

  3) test/404s.test.js default 404 unsupported method test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  4) test/404s.test.js default 404 unsupported route connect ECONNREFUSED 127.0.0.1:37579:
     Error: connect ECONNREFUSED 127.0.0.1:37579
      at test/404s.test.js:49:11

  5) test/404s.test.js default 404 unsupported route Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:50:32

  6) test/404s.test.js default 404 unsupported route test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  7) test/404s.test.js customized 404 unsupported method connect ECONNREFUSED 127.0.0.1:35743:
     Error: connect ECONNREFUSED 127.0.0.1:35743
      at test/404s.test.js:94:11

  8) test/404s.test.js customized 404 unsupported method Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:95:32

  9) test/404s.test.js customized 404 unsupported method test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  10) test/404s.test.js customized 404 unsupported route connect ECONNREFUSED 127.0.0.1:35743:
     Error: connect ECONNREFUSED 127.0.0.1:35743
      at test/404s.test.js:106:11

  11) test/404s.test.js customized 404 unsupported route Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:107:32

  12) test/404s.test.js customized 404 unsupported route test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  13) test/404s.test.js customized 404 with error object connect ECONNREFUSED 127.0.0.1:35743:
     Error: connect ECONNREFUSED 127.0.0.1:35743
      at test/404s.test.js:118:11

  14) test/404s.test.js customized 404 with error object Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:119:32

  15) test/404s.test.js customized 404 with error object test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  16) test/404s.test.js customized 404 error object with headers property connect ECONNREFUSED 127.0.0.1:35743:
     Error: connect ECONNREFUSED 127.0.0.1:35743
      at test/404s.test.js:134:11

  17) test/404s.test.js customized 404 error object with headers property Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:135:32

  18) test/404s.test.js customized 404 error object with headers property test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  19) test/404s.test.js custom header in notFound handler not found with custom header connect ECONNREFUSED 127.0.0.1:42489:
     Error: connect ECONNREFUSED 127.0.0.1:42489
      at test/404s.test.js:168:11

  20) test/404s.test.js custom header in notFound handler not found with custom header Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:169:32

  21) test/404s.test.js custom header in notFound handler not found with custom header test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  22) test/404s.test.js encapsulated 404 root unsupported method connect ECONNREFUSED 127.0.0.1:42437:
     Error: connect ECONNREFUSED 127.0.0.1:42437
      at test/404s.test.js:357:11

  23) test/404s.test.js encapsulated 404 root unsupported method Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:358:32

  24) test/404s.test.js encapsulated 404 root unsupported method test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  25) test/404s.test.js encapsulated 404 root insupported route connect ECONNREFUSED 127.0.0.1:42437:
     Error: connect ECONNREFUSED 127.0.0.1:42437
      at test/404s.test.js:369:11

  26) test/404s.test.js encapsulated 404 root insupported route Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:370:32

  27) test/404s.test.js encapsulated 404 root insupported route test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  28) test/404s.test.js encapsulated 404 unsupported method connect ECONNREFUSED 127.0.0.1:42437:
     Error: connect ECONNREFUSED 127.0.0.1:42437
      at test/404s.test.js:383:11

  29) test/404s.test.js encapsulated 404 unsupported method Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:384:32

  30) test/404s.test.js encapsulated 404 unsupported method test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  31) test/404s.test.js encapsulated 404 unsupported route connect ECONNREFUSED 127.0.0.1:42437:
     Error: connect ECONNREFUSED 127.0.0.1:42437
      at test/404s.test.js:395:11

  32) test/404s.test.js encapsulated 404 unsupported route Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:396:32

  33) test/404s.test.js encapsulated 404 unsupported route test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  34) test/404s.test.js encapsulated 404 unsupported method bis connect ECONNREFUSED 127.0.0.1:42437:
     Error: connect ECONNREFUSED 127.0.0.1:42437
      at test/404s.test.js:409:11

  35) test/404s.test.js encapsulated 404 unsupported method bis Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:410:32

  36) test/404s.test.js encapsulated 404 unsupported method bis test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  37) test/404s.test.js encapsulated 404 unsupported route bis connect ECONNREFUSED 127.0.0.1:42437:
     Error: connect ECONNREFUSED 127.0.0.1:42437
      at test/404s.test.js:421:11

  38) test/404s.test.js encapsulated 404 unsupported route bis Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:422:32

  39) test/404s.test.js encapsulated 404 unsupported route bis test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  40) test/404s.test.js encapsulated 404 unsupported method 3 connect ECONNREFUSED 127.0.0.1:42437:
     Error: connect ECONNREFUSED 127.0.0.1:42437
      at test/404s.test.js:435:11

  41) test/404s.test.js encapsulated 404 unsupported method 3 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:436:32

  42) test/404s.test.js encapsulated 404 unsupported method 3 test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  43) test/404s.test.js encapsulated 404 unsupported route 3 connect ECONNREFUSED 127.0.0.1:42437:
     Error: connect ECONNREFUSED 127.0.0.1:42437
      at test/404s.test.js:447:11

  44) test/404s.test.js encapsulated 404 unsupported route 3 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:448:32

  45) test/404s.test.js encapsulated 404 unsupported route 3 test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  46) test/404s.test.js run hooks and middleware on default 404 connect ECONNREFUSED 127.0.0.1:38411:
     Error: connect ECONNREFUSED 127.0.0.1:38411
      at test/404s.test.js:618:9

  47) test/404s.test.js run hooks and middleware on default 404 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:619:30

  48) test/404s.test.js run hooks and middleware on default 404 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +8
      
  

  49) test/404s.test.js run hooks and middleware with encapsulated 404 connect ECONNREFUSED 127.0.0.1:40161:
     Error: connect ECONNREFUSED 127.0.0.1:40161
      at test/404s.test.js:799:9

  50) test/404s.test.js run hooks and middleware with encapsulated 404 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:800:30

  51) test/404s.test.js run hooks and middleware with encapsulated 404 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +13
      
  

  52) test/404s.test.js run middlewares on default 404 connect ECONNREFUSED 127.0.0.1:36501:
     Error: connect ECONNREFUSED 127.0.0.1:36501
      at test/404s.test.js:830:9

  53) test/404s.test.js run middlewares on default 404 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:831:30

  54) test/404s.test.js run middlewares on default 404 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  55) test/404s.test.js run middlewares with encapsulated 404 connect ECONNREFUSED 127.0.0.1:33555:
     Error: connect ECONNREFUSED 127.0.0.1:33555
      at test/404s.test.js:870:9

  56) test/404s.test.js run middlewares with encapsulated 404 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:871:30

  57) test/404s.test.js run middlewares with encapsulated 404 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  58) test/404s.test.js hooks check 404 connect ECONNREFUSED 127.0.0.1:37165:
     Error: connect ECONNREFUSED 127.0.0.1:37165
      at test/404s.test.js:910:9

  59) test/404s.test.js hooks check 404 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:911:30

  60) test/404s.test.js hooks check 404 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +13
      
  

  61) test/404s.test.js setNotFoundHandler should not suppress duplicated routes checking connect ECONNREFUSED 127.0.0.1:37165:
     Error: connect ECONNREFUSED 127.0.0.1:37165
      at test/404s.test.js:918:9

  62) test/404s.test.js setNotFoundHandler should not suppress duplicated routes checking test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +1
      
  

  63) test/404s.test.js Unknown method connect ECONNREFUSED 127.0.0.1:34739:
     Error: connect ECONNREFUSED 127.0.0.1:34739
      at test/404s.test.js:1015:9

  64) test/404s.test.js Unknown method Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:1016:30

  65) test/404s.test.js Unknown method test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +5
      
  

  66) test/404s.test.js recognizes errors from the http-errors module connect ECONNREFUSED 127.0.0.1:39763:
     Error: connect ECONNREFUSED 127.0.0.1:39763
      at test/404s.test.js:1048:11

  67) test/404s.test.js recognizes errors from the http-errors module Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/404s.test.js:1049:37

  68) test/404s.test.js 404 inside onSend connect ECONNREFUSED 127.0.0.1:32861:
     Error: connect ECONNREFUSED 127.0.0.1:32861
      at test/404s.test.js:1196:9

  69) test/404s.test.js 404 inside onSend Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:1197:30

  70) test/404s.test.js Not found on supported method (should return a 404) connect ECONNREFUSED 127.0.0.1:40291:
     Error: connect ECONNREFUSED 127.0.0.1:40291
      at test/404s.test.js:1227:11

  71) test/404s.test.js Not found on supported method (should return a 404) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:1228:32

  72) test/404s.test.js Not found on unsupported method (should return a 404) connect ECONNREFUSED 127.0.0.1:40993:
     Error: connect ECONNREFUSED 127.0.0.1:40993
      at test/404s.test.js:1260:11

  73) test/404s.test.js Not found on unsupported method (should return a 404) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:1261:32

  74) test/404s.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/404s.test.js:919:30

  75) test/async-await.test.js async await connect ECONNREFUSED 127.0.0.1:36145:
     Error: connect ECONNREFUSED 127.0.0.1:36145
      at test/async-await.js:58:11

  76) test/async-await.test.js async await Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/async-await.js:59:32

  77) test/async-await.test.js async await test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +11
      
  

  78) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (undefined) connect ECONNREFUSED 127.0.0.1:36145:
     Error: connect ECONNREFUSED 127.0.0.1:36145
      at test/async-await.js:68:11

  79) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (undefined) connect ECONNREFUSED 127.0.0.1:43011:
     Error: connect ECONNREFUSED 127.0.0.1:43011
      at test/async-await.js:94:11

  80) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (undefined) "undefined" is not valid JSON:
     Error: "undefined" is not valid JSON
      at JSON.parse (<anonymous>)
      at test/async-await.js:95:35

  81) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (object) connect ECONNREFUSED 127.0.0.1:37579:
     Error: connect ECONNREFUSED 127.0.0.1:37579
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
      
  

  84) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (undefined) connect ECONNREFUSED 127.0.0.1:44247:
     Error: connect ECONNREFUSED 127.0.0.1:44247
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
      
  

  87) test/async-await.test.js ignore the result of the promise if reply.send is called beforehand (object) connect ECONNREFUSED 127.0.0.1:37235:
     Error: connect ECONNREFUSED 127.0.0.1:37235
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

      -connect ECONNREFUSED 127.0.0.1:39573
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
      
  

  99) test/bodyLimit.test.js bodyLimit connect ECONNREFUSED 127.0.0.1:34317:
     Error: connect ECONNREFUSED 127.0.0.1:34317
      at test/bodyLimit.test.js:42:9

  100) test/bodyLimit.test.js bodyLimit Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/bodyLimit.test.js:43:30

  101) test/case-insensitive.test.js case insensitive connect ECONNREFUSED 127.0.0.1:43193:
     Error: connect ECONNREFUSED 127.0.0.1:43193
      at test/case-insensitive.test.js:27:9

  102) test/case-insensitive.test.js case insensitive Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/case-insensitive.test.js:28:30

  103) test/case-insensitive.test.js case insensitive test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  104) test/case-insensitive.test.js case insensitive (parametric) connect ECONNREFUSED 127.0.0.1:34287:
     Error: connect ECONNREFUSED 127.0.0.1:34287
      at test/case-insensitive.test.js:84:9

  105) test/case-insensitive.test.js case insensitive (parametric) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/case-insensitive.test.js:85:30

  106) test/case-insensitive.test.js case insensitive (parametric) test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  107) test/case-insensitive.test.js case insensitive (wildcard) connect ECONNREFUSED 127.0.0.1:40835:
     Error: connect ECONNREFUSED 127.0.0.1:40835
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
      
  

  115) test/close.test.js Current opened connection should continue to work after closing and return "connection: close" header - return503OnClosing: false timeout!:
     Error: timeout!


  116) test/close.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -7
      +1
      
  

  117) test/custom-http-server.test.js Should support a custom http server connect ECONNREFUSED 127.0.0.1:40891:
     Error: connect ECONNREFUSED 127.0.0.1:40891
      at test/custom-http-server.test.js:39:9

  118) test/custom-http-server.test.js Should support a custom http server Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-http-server.test.js:40:30

  119) test/custom-http-server.test.js Should support a custom http server test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +6
      
  

  120) test/custom-parser.test.js contentTypeParser should add a custom async parser in POST connect ECONNREFUSED 127.0.0.1:43213:
     Error: connect ECONNREFUSED 127.0.0.1:43213
      at test/custom-parser-async.js:41:11

  121) test/custom-parser.test.js contentTypeParser should add a custom async parser in POST Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser-async.js:42:32

  122) test/custom-parser.test.js contentTypeParser should add a custom async parser in POST test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  123) test/custom-parser.test.js contentTypeParser should add a custom async parser in OPTIONS connect ECONNREFUSED 127.0.0.1:43213:
     Error: connect ECONNREFUSED 127.0.0.1:43213
      at test/custom-parser-async.js:58:11

  124) test/custom-parser.test.js contentTypeParser should add a custom async parser in OPTIONS Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser-async.js:59:32

  125) test/custom-parser.test.js contentTypeParser should add a custom async parser in OPTIONS test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  126) test/custom-parser.test.js contentTypeParser should add a custom parser in POST connect ECONNREFUSED 127.0.0.1:42353:
     Error: connect ECONNREFUSED 127.0.0.1:42353
      at test/custom-parser.test.js:72:11

  127) test/custom-parser.test.js contentTypeParser should add a custom parser in POST Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:73:32

  128) test/custom-parser.test.js contentTypeParser should add a custom parser in POST test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  129) test/custom-parser.test.js contentTypeParser should add a custom parser in OPTIONS connect ECONNREFUSED 127.0.0.1:42353:
     Error: connect ECONNREFUSED 127.0.0.1:42353
      at test/custom-parser.test.js:89:11

  130) test/custom-parser.test.js contentTypeParser should add a custom parser in OPTIONS Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:90:32

  131) test/custom-parser.test.js contentTypeParser should add a custom parser in OPTIONS test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  132) test/custom-parser.test.js contentTypeParser should handle multiple custom parsers connect ECONNREFUSED 127.0.0.1:45107:
     Error: connect ECONNREFUSED 127.0.0.1:45107
      at test/custom-parser.test.js:130:9

  133) test/custom-parser.test.js contentTypeParser should handle multiple custom parsers Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:131:30

  134) test/custom-parser.test.js contentTypeParser should handle multiple custom parsers test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +7
      
  

  135) test/custom-parser.test.js contentTypeParser should handle an array of custom contentTypes connect ECONNREFUSED 127.0.0.1:45107:
     Error: connect ECONNREFUSED 127.0.0.1:45107
      at test/custom-parser.test.js:143:9

  136) test/custom-parser.test.js contentTypeParser should handle an array of custom contentTypes connect ECONNREFUSED 127.0.0.1:42999:
     Error: connect ECONNREFUSED 127.0.0.1:42999
      at test/custom-parser.test.js:182:9

  137) test/custom-parser.test.js contentTypeParser should handle an array of custom contentTypes Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:183:30

  138) test/custom-parser.test.js contentTypeParser should handle an array of custom contentTypes test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +7
      
  

  139) test/custom-parser.test.js contentTypeParser should handle errors connect ECONNREFUSED 127.0.0.1:42999:
     Error: connect ECONNREFUSED 127.0.0.1:42999
      at test/custom-parser.test.js:195:9

  140) test/custom-parser.test.js contentTypeParser should handle errors connect ECONNREFUSED 127.0.0.1:37329:
     Error: connect ECONNREFUSED 127.0.0.1:37329
      at test/custom-parser.test.js:225:9

  141) test/custom-parser.test.js contentTypeParser should handle errors Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:226:30

  142) test/custom-parser.test.js contentTypeParser should handle errors test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  143) test/custom-parser.test.js contentTypeParser should support encapsulation, second try connect ECONNREFUSED 127.0.0.1:33959:
     Error: connect ECONNREFUSED 127.0.0.1:33959
      at test/custom-parser.test.js:286:9

  144) test/custom-parser.test.js contentTypeParser should support encapsulation, second try Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:287:30

  145) test/custom-parser.test.js contentTypeParser should support encapsulation, second try test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  146) test/custom-parser.test.js contentTypeParser shouldn't support request with undefined "Content-Type" connect ECONNREFUSED 127.0.0.1:45511:
     Error: connect ECONNREFUSED 127.0.0.1:45511
      at test/custom-parser.test.js:319:9

  147) test/custom-parser.test.js contentTypeParser shouldn't support request with undefined "Content-Type" Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:320:30

  148) test/custom-parser.test.js catch all content type parser connect ECONNREFUSED 127.0.0.1:41029:
     Error: connect ECONNREFUSED 127.0.0.1:41029
      at test/custom-parser.test.js:389:9

  149) test/custom-parser.test.js catch all content type parser Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:390:30

  150) test/custom-parser.test.js catch all content type parser test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +7
      
  

  151) test/custom-parser.test.js catch all content type parser should not interfere with other conte type parsers connect ECONNREFUSED 127.0.0.1:39555:
     Error: connect ECONNREFUSED 127.0.0.1:39555
      at test/custom-parser.test.js:443:9

  152) test/custom-parser.test.js catch all content type parser should not interfere with other conte type parsers Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:444:30

  153) test/custom-parser.test.js catch all content type parser should not interfere with other conte type parsers test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +7
      
  

  154) test/custom-parser.test.js '*' catch undefined Content-Type requests connect ECONNREFUSED 127.0.0.1:39025:
     Error: connect ECONNREFUSED 127.0.0.1:39025
      at test/custom-parser.test.js:495:9

  155) test/custom-parser.test.js '*' catch undefined Content-Type requests Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:496:30

  156) test/custom-parser.test.js '*' catch undefined Content-Type requests test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  157) test/custom-parser.test.js Can override the default json parser connect ECONNREFUSED 127.0.0.1:40613:
     Error: connect ECONNREFUSED 127.0.0.1:40613
      at test/custom-parser.test.js:551:9

  158) test/custom-parser.test.js Can override the default json parser Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:552:30

  159) test/custom-parser.test.js Can override the default json parser test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  160) test/custom-parser.test.js Can override the default plain text parser connect ECONNREFUSED 127.0.0.1:36863:
     Error: connect ECONNREFUSED 127.0.0.1:36863
      at test/custom-parser.test.js:585:9

  161) test/custom-parser.test.js Can override the default plain text parser Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:586:30

  162) test/custom-parser.test.js Can override the default plain text parser test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  163) test/custom-parser.test.js Can override the default json parser in a plugin connect ECONNREFUSED 127.0.0.1:34721:
     Error: connect ECONNREFUSED 127.0.0.1:34721
      at test/custom-parser.test.js:623:9

  164) test/custom-parser.test.js Can override the default json parser in a plugin Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:624:30

  165) test/custom-parser.test.js Can override the default json parser in a plugin test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  166) test/custom-parser.test.js Should get the body as string connect ECONNREFUSED 127.0.0.1:36709:
     Error: connect ECONNREFUSED 127.0.0.1:36709
      at test/custom-parser.test.js:706:9

  167) test/custom-parser.test.js Should get the body as string Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:707:30

  168) test/custom-parser.test.js Should get the body as string test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  169) test/custom-parser.test.js Should return defined body with no custom parser defined and content type = 'text/plain' connect ECONNREFUSED 127.0.0.1:42229:
     Error: connect ECONNREFUSED 127.0.0.1:42229
      at test/custom-parser.test.js:733:9

  170) test/custom-parser.test.js Should return defined body with no custom parser defined and content type = 'text/plain' Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:734:30

  171) test/custom-parser.test.js Should return defined body with no custom parser defined and content type = 'text/plain' test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  172) test/custom-parser.test.js Should have typeof body object with no custom parser defined, no body defined and content type = 'text/plain' connect ECONNREFUSED 127.0.0.1:34497:
     Error: connect ECONNREFUSED 127.0.0.1:34497
      at test/custom-parser.test.js:759:9

  173) test/custom-parser.test.js Should have typeof body object with no custom parser defined, no body defined and content type = 'text/plain' Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:760:30

  174) test/custom-parser.test.js Should have typeof body object with no custom parser defined, no body defined and content type = 'text/plain' test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  175) test/custom-parser.test.js Should have typeof body object with no custom parser defined, null body and content type = 'text/plain' connect ECONNREFUSED 127.0.0.1:34913:
     Error: connect ECONNREFUSED 127.0.0.1:34913
      at test/custom-parser.test.js:786:9

  176) test/custom-parser.test.js Should have typeof body object with no custom parser defined, null body and content type = 'text/plain' Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:787:30

  177) test/custom-parser.test.js Should have typeof body object with no custom parser defined, null body and content type = 'text/plain' test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  178) test/custom-parser.test.js Should have typeof body object with no custom parser defined, undefined body and content type = 'text/plain' connect ECONNREFUSED 127.0.0.1:43373:
     Error: connect ECONNREFUSED 127.0.0.1:43373
      at test/custom-parser.test.js:813:9

  179) test/custom-parser.test.js Should have typeof body object with no custom parser defined, undefined body and content type = 'text/plain' Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:814:30

  180) test/custom-parser.test.js Should have typeof body object with no custom parser defined, undefined body and content type = 'text/plain' test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  181) test/custom-parser.test.js Should get the body as string connect ECONNREFUSED 127.0.0.1:33261:
     Error: connect ECONNREFUSED 127.0.0.1:33261
      at test/custom-parser.test.js:852:9

  182) test/custom-parser.test.js Should get the body as string Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:853:30

  183) test/custom-parser.test.js Should get the body as string test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  184) test/custom-parser.test.js Should get the body as buffer connect ECONNREFUSED 127.0.0.1:34437:
     Error: connect ECONNREFUSED 127.0.0.1:34437
      at test/custom-parser.test.js:891:9

  185) test/custom-parser.test.js Should get the body as buffer Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:892:30

  186) test/custom-parser.test.js Should get the body as buffer test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  187) test/custom-parser.test.js Should get the body as buffer connect ECONNREFUSED 127.0.0.1:33403:
     Error: connect ECONNREFUSED 127.0.0.1:33403
      at test/custom-parser.test.js:930:9

  188) test/custom-parser.test.js Should get the body as buffer Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:931:30

  189) test/custom-parser.test.js Should get the body as buffer test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  190) test/custom-parser.test.js Should parse empty bodies as a string connect ECONNREFUSED 127.0.0.1:38857:
     Error: connect ECONNREFUSED 127.0.0.1:38857
      at test/custom-parser.test.js:967:9

  191) test/custom-parser.test.js Should parse empty bodies as a string Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:968:30

  192) test/custom-parser.test.js Should parse empty bodies as a string test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +9
      
  

  193) test/custom-parser.test.js Should parse empty bodies as a buffer connect ECONNREFUSED 127.0.0.1:38857:
     Error: connect ECONNREFUSED 127.0.0.1:38857
      at test/custom-parser.test.js:981:9

  194) test/custom-parser.test.js Should parse empty bodies as a buffer connect ECONNREFUSED 127.0.0.1:35865:
     Error: connect ECONNREFUSED 127.0.0.1:35865
      at test/custom-parser.test.js:1013:9

  195) test/custom-parser.test.js Should parse empty bodies as a buffer Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:1014:30

  196) test/custom-parser.test.js Should parse empty bodies as a buffer test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +6
      
  

  197) test/custom-parser.test.js The charset should not interfere with the content type handling connect ECONNREFUSED 127.0.0.1:38725:
     Error: connect ECONNREFUSED 127.0.0.1:38725
      at test/custom-parser.test.js:1047:9

  198) test/custom-parser.test.js The charset should not interfere with the content type handling Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:1048:30

  199) test/custom-parser.test.js The charset should not interfere with the content type handling test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  200) test/custom-parser.test.js Should allow defining the bodyLimit per parser connect ECONNREFUSED 127.0.0.1:46715:
     Error: connect ECONNREFUSED 127.0.0.1:46715
      at test/custom-parser.test.js:1096:9

  201) test/custom-parser.test.js Should allow defining the bodyLimit per parser Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/custom-parser.test.js:1097:41

  202) test/custom-parser.test.js route bodyLimit should take precedence over a custom parser bodyLimit connect ECONNREFUSED 127.0.0.1:44235:
     Error: connect ECONNREFUSED 127.0.0.1:44235
      at test/custom-parser.test.js:1135:9

  203) test/custom-parser.test.js route bodyLimit should take precedence over a custom parser bodyLimit Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/custom-parser.test.js:1136:41

  204) test/custom-parser.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:144:30

  205) test/custom-parser.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:196:30

  206) test/custom-parser.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/custom-parser.test.js:982:30

  207) test/custom-parser.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -38
      +1
      
  

  208) test/decorator.test.js decorateReply inside register connect ECONNREFUSED 127.0.0.1:35875:
     Error: connect ECONNREFUSED 127.0.0.1:35875
      at test/decorator.test.js:125:9

  209) test/decorator.test.js decorateReply inside register Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:126:30

  210) test/decorator.test.js decorateReply inside register test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +12
      
  

  211) test/decorator.test.js decorateReply as plugin (inside .after) connect ECONNREFUSED 127.0.0.1:35875:
     Error: connect ECONNREFUSED 127.0.0.1:35875
      at test/decorator.test.js:115:9

  212) test/decorator.test.js decorateReply as plugin (inside .after) connect ECONNREFUSED 127.0.0.1:38433:
     Error: connect ECONNREFUSED 127.0.0.1:38433
      at test/decorator.test.js:163:9

  213) test/decorator.test.js decorateReply as plugin (inside .after) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:164:30

  214) test/decorator.test.js decorateReply as plugin (inside .after) test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +11
      
  

  215) test/decorator.test.js decorateReply as plugin (outside .after) connect ECONNREFUSED 127.0.0.1:38433:
     Error: connect ECONNREFUSED 127.0.0.1:38433
      at test/decorator.test.js:173:9

  216) test/decorator.test.js decorateReply as plugin (outside .after) connect ECONNREFUSED 127.0.0.1:42455:
     Error: connect ECONNREFUSED 127.0.0.1:42455
      at test/decorator.test.js:211:9

  217) test/decorator.test.js decorateReply as plugin (outside .after) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:212:30

  218) test/decorator.test.js decorateReply as plugin (outside .after) test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +11
      
  

  219) test/decorator.test.js decorateRequest inside register connect ECONNREFUSED 127.0.0.1:42455:
     Error: connect ECONNREFUSED 127.0.0.1:42455
      at test/decorator.test.js:221:9

  220) test/decorator.test.js decorateRequest inside register connect ECONNREFUSED 127.0.0.1:43601:
     Error: connect ECONNREFUSED 127.0.0.1:43601
      at test/decorator.test.js:258:9

  221) test/decorator.test.js decorateRequest inside register Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:259:30

  222) test/decorator.test.js decorateRequest inside register test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +12
      
  

  223) test/decorator.test.js decorateRequest as plugin (inside .after) connect ECONNREFUSED 127.0.0.1:43601:
     Error: connect ECONNREFUSED 127.0.0.1:43601
      at test/decorator.test.js:268:9

  224) test/decorator.test.js decorateRequest as plugin (inside .after) connect ECONNREFUSED 127.0.0.1:34815:
     Error: connect ECONNREFUSED 127.0.0.1:34815
      at test/decorator.test.js:306:9

  225) test/decorator.test.js decorateRequest as plugin (inside .after) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:307:30

  226) test/decorator.test.js decorateRequest as plugin (inside .after) test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +11
      
  

  227) test/decorator.test.js decorateRequest as plugin (outside .after) connect ECONNREFUSED 127.0.0.1:34815:
     Error: connect ECONNREFUSED 127.0.0.1:34815
      at test/decorator.test.js:316:9

  228) test/decorator.test.js decorateRequest as plugin (outside .after) connect ECONNREFUSED 127.0.0.1:38877:
     Error: connect ECONNREFUSED 127.0.0.1:38877
      at test/decorator.test.js:354:9

  229) test/decorator.test.js decorateRequest as plugin (outside .after) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:355:30

  230) test/decorator.test.js decorateRequest as plugin (outside .after) test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +11
      
  

  231) test/decorator.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:116:30

  232) test/decorator.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:174:30

  233) test/decorator.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:222:30

  234) test/decorator.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:269:30

  235) test/decorator.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/decorator.test.js:317:30

  236) test/decorator.test.js connect ECONNREFUSED 127.0.0.1:38877:
     Error: connect ECONNREFUSED 127.0.0.1:38877
      at test/decorator.test.js:364:9

  237) test/delete.test.js shorthand - request delete connect ECONNREFUSED 127.0.0.1:37457:
     Error: connect ECONNREFUSED 127.0.0.1:37457
      at test/delete.test.js:170:9

  238) test/delete.test.js shorthand - request delete Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:171:30

  239) test/delete.test.js shorthand - request delete test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  240) test/delete.test.js shorthand - request delete params schema connect ECONNREFUSED 127.0.0.1:37457:
     Error: connect ECONNREFUSED 127.0.0.1:37457
      at test/delete.test.js:183:9

  241) test/delete.test.js shorthand - request delete params schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:184:30

  242) test/delete.test.js shorthand - request delete params schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  243) test/delete.test.js shorthand - request delete params schema error connect ECONNREFUSED 127.0.0.1:37457:
     Error: connect ECONNREFUSED 127.0.0.1:37457
      at test/delete.test.js:196:9

  244) test/delete.test.js shorthand - request delete params schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:197:30

  245) test/delete.test.js shorthand - request delete params schema error test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  246) test/delete.test.js shorthand - request delete headers schema connect ECONNREFUSED 127.0.0.1:37457:
     Error: connect ECONNREFUSED 127.0.0.1:37457
      at test/delete.test.js:215:9

  247) test/delete.test.js shorthand - request delete headers schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:216:30

  248) test/delete.test.js shorthand - request delete headers schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  249) test/delete.test.js shorthand - request delete headers schema error connect ECONNREFUSED 127.0.0.1:37457:
     Error: connect ECONNREFUSED 127.0.0.1:37457
      at test/delete.test.js:231:9

  250) test/delete.test.js shorthand - request delete headers schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:232:30

  251) test/delete.test.js shorthand - request delete headers schema error test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  252) test/delete.test.js shorthand - request delete querystring schema connect ECONNREFUSED 127.0.0.1:37457:
     Error: connect ECONNREFUSED 127.0.0.1:37457
      at test/delete.test.js:247:9

  253) test/delete.test.js shorthand - request delete querystring schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:248:30

  254) test/delete.test.js shorthand - request delete querystring schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  255) test/delete.test.js shorthand - request delete querystring schema error connect ECONNREFUSED 127.0.0.1:37457:
     Error: connect ECONNREFUSED 127.0.0.1:37457
      at test/delete.test.js:260:9

  256) test/delete.test.js shorthand - request delete querystring schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:261:30

  257) test/delete.test.js shorthand - request delete querystring schema error test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  258) test/delete.test.js shorthand - request delete missing schema connect ECONNREFUSED 127.0.0.1:37457:
     Error: connect ECONNREFUSED 127.0.0.1:37457
      at test/delete.test.js:276:9

  259) test/delete.test.js shorthand - request delete missing schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:277:30

  260) test/delete.test.js shorthand - request delete missing schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  261) test/delete.test.js shorthand - delete with body connect ECONNREFUSED 127.0.0.1:37457:
     Error: connect ECONNREFUSED 127.0.0.1:37457
      at test/delete.test.js:293:9

  262) test/delete.test.js shorthand - delete with body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/delete.test.js:294:30

  263) test/delete.test.js shorthand - delete with body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  264) test/get.test.js shorthand - request get connect ECONNREFUSED 127.0.0.1:46613:
     Error: connect ECONNREFUSED 127.0.0.1:46613
      at test/get.test.js:216:9

  265) test/get.test.js shorthand - request get Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:217:30

  266) test/get.test.js shorthand - request get test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  267) test/get.test.js shorthand - request get params schema connect ECONNREFUSED 127.0.0.1:46613:
     Error: connect ECONNREFUSED 127.0.0.1:46613
      at test/get.test.js:229:9

  268) test/get.test.js shorthand - request get params schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:230:30

  269) test/get.test.js shorthand - request get params schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  270) test/get.test.js shorthand - request get params schema error connect ECONNREFUSED 127.0.0.1:46613:
     Error: connect ECONNREFUSED 127.0.0.1:46613
      at test/get.test.js:242:9

  271) test/get.test.js shorthand - request get params schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:243:30

  272) test/get.test.js shorthand - request get params schema error test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  273) test/get.test.js shorthand - request get headers schema connect ECONNREFUSED 127.0.0.1:46613:
     Error: connect ECONNREFUSED 127.0.0.1:46613
      at test/get.test.js:263:9

  274) test/get.test.js shorthand - request get headers schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:264:30

  275) test/get.test.js shorthand - request get headers schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  276) test/get.test.js shorthand - request get headers schema error connect ECONNREFUSED 127.0.0.1:46613:
     Error: connect ECONNREFUSED 127.0.0.1:46613
      at test/get.test.js:279:9

  277) test/get.test.js shorthand - request get headers schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:280:30

  278) test/get.test.js shorthand - request get headers schema error test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  279) test/get.test.js shorthand - request get querystring schema connect ECONNREFUSED 127.0.0.1:46613:
     Error: connect ECONNREFUSED 127.0.0.1:46613
      at test/get.test.js:295:9

  280) test/get.test.js shorthand - request get querystring schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:296:30

  281) test/get.test.js shorthand - request get querystring schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  282) test/get.test.js shorthand - request get querystring schema error connect ECONNREFUSED 127.0.0.1:46613:
     Error: connect ECONNREFUSED 127.0.0.1:46613
      at test/get.test.js:308:9

  283) test/get.test.js shorthand - request get querystring schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:309:30

  284) test/get.test.js shorthand - request get querystring schema error test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  285) test/get.test.js shorthand - request get missing schema connect ECONNREFUSED 127.0.0.1:46613:
     Error: connect ECONNREFUSED 127.0.0.1:46613
      at test/get.test.js:324:9

  286) test/get.test.js shorthand - request get missing schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:325:30

  287) test/get.test.js shorthand - request get missing schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  288) test/get.test.js shorthand - custom serializer connect ECONNREFUSED 127.0.0.1:46613:
     Error: connect ECONNREFUSED 127.0.0.1:46613
      at test/get.test.js:337:9

  289) test/get.test.js shorthand - custom serializer Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:338:30

  290) test/get.test.js shorthand - custom serializer test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  291) test/get.test.js shorthand - empty response connect ECONNREFUSED 127.0.0.1:46613:
     Error: connect ECONNREFUSED 127.0.0.1:46613
      at test/get.test.js:350:9

  292) test/get.test.js shorthand - empty response Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:351:30

  293) test/get.test.js shorthand - empty response test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  294) test/get.test.js shorthand - send a falsy boolean connect ECONNREFUSED 127.0.0.1:46613:
     Error: connect ECONNREFUSED 127.0.0.1:46613
      at test/get.test.js:363:9

  295) test/get.test.js shorthand - send a falsy boolean Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:364:30

  296) test/get.test.js shorthand - send a falsy boolean test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  297) test/get.test.js shorthand - send null value connect ECONNREFUSED 127.0.0.1:46613:
     Error: connect ECONNREFUSED 127.0.0.1:46613
      at test/get.test.js:375:9

  298) test/get.test.js shorthand - send null value Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/get.test.js:376:30

  299) test/get.test.js shorthand - send null value test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  300) test/handler-context.test.js handlers receive correct `this` context connect ECONNREFUSED 127.0.0.1:41411:
     connect ECONNREFUSED 127.0.0.1:41411
  

  301) test/handler-context.test.js handlers receive correct `this` context test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  302) test/handler-context.test.js handlers have access to the internal context connect ECONNREFUSED 127.0.0.1:36125:
     connect ECONNREFUSED 127.0.0.1:36125
  

  303) test/handler-context.test.js handlers have access to the internal context test count !== plan:

      test count !== plan
      + expected - actual

      -1
      +5
      
  

  304) test/head.test.js shorthand - request head connect ECONNREFUSED 127.0.0.1:43757:
     Error: connect ECONNREFUSED 127.0.0.1:43757
      at test/head.test.js:105:9

  305) test/head.test.js shorthand - request head Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/head.test.js:106:30

  306) test/head.test.js shorthand - request head params schema connect ECONNREFUSED 127.0.0.1:43757:
     Error: connect ECONNREFUSED 127.0.0.1:43757
      at test/head.test.js:116:9

  307) test/head.test.js shorthand - request head params schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/head.test.js:117:30

  308) test/head.test.js shorthand - request head params schema error connect ECONNREFUSED 127.0.0.1:43757:
     Error: connect ECONNREFUSED 127.0.0.1:43757
      at test/head.test.js:127:9

  309) test/head.test.js shorthand - request head params schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/head.test.js:128:30

  310) test/head.test.js shorthand - request head querystring schema connect ECONNREFUSED 127.0.0.1:43757:
     Error: connect ECONNREFUSED 127.0.0.1:43757
      at test/head.test.js:138:9

  311) test/head.test.js shorthand - request head querystring schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/head.test.js:139:30

  312) test/head.test.js shorthand - request head querystring schema error connect ECONNREFUSED 127.0.0.1:43757:
     Error: connect ECONNREFUSED 127.0.0.1:43757
      at test/head.test.js:149:9

  313) test/head.test.js shorthand - request head querystring schema error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/head.test.js:150:30

  314) test/head.test.js shorthand - request head missing schema connect ECONNREFUSED 127.0.0.1:43757:
     Error: connect ECONNREFUSED 127.0.0.1:43757
      at test/head.test.js:160:9

  315) test/head.test.js shorthand - request head missing schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/head.test.js:161:30

  316) test/hooks.test.js hooks connect ECONNREFUSED 127.0.0.1:36221:
     Error: connect ECONNREFUSED 127.0.0.1:36221
      at test/hooks.test.js:128:9

  317) test/hooks.test.js hooks Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:129:30

  318) test/hooks.test.js hooks test count !== plan:

      test count !== plan
      + expected - actual

      -8
      +38
      
  

  319) test/hooks.test.js onRequest hook should support encapsulation / 1 connect ECONNREFUSED 127.0.0.1:36221:
     Error: connect ECONNREFUSED 127.0.0.1:36221
      at test/hooks.test.js:138:9

  320) test/hooks.test.js onRequest hook should support encapsulation / 1 test count !== plan:

      test count !== plan
      + expected - actual

      -6
      +5
      
  

  321) test/hooks.test.js onRequest hook should support encapsulation / 3 connect ECONNREFUSED 127.0.0.1:36221:
     Error: connect ECONNREFUSED 127.0.0.1:36221
      at test/hooks.test.js:146:9

  322) test/hooks.test.js onRequest hook should support encapsulation / 3 connect ECONNREFUSED 127.0.0.1:44903:
     Error: connect ECONNREFUSED 127.0.0.1:44903
      at test/hooks.test.js:251:9

  323) test/hooks.test.js onRequest hook should support encapsulation / 3 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:252:30

  324) test/hooks.test.js onRequest hook should support encapsulation / 3 test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +20
      
  

  325) test/hooks.test.js preHandler hook should support encapsulation / 5 connect ECONNREFUSED 127.0.0.1:44903:
     Error: connect ECONNREFUSED 127.0.0.1:44903
      at test/hooks.test.js:261:9

  326) test/hooks.test.js preHandler hook should support encapsulation / 5 connect ECONNREFUSED 127.0.0.1:43841:
     Error: connect ECONNREFUSED 127.0.0.1:43841
      at test/hooks.test.js:312:9

  327) test/hooks.test.js preHandler hook should support encapsulation / 5 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:313:30

  328) test/hooks.test.js preHandler hook should support encapsulation / 5 test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +17
      
  

  329) test/hooks.test.js onRoute hook should be called / 1 connect ECONNREFUSED 127.0.0.1:43841:
     Error: connect ECONNREFUSED 127.0.0.1:43841
      at test/hooks.test.js:322:9

  330) test/hooks.test.js onRoute hook should be called / 1 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +2
      
  

  331) test/hooks.test.js onResponse hook should support encapsulation / 3 connect ECONNREFUSED 127.0.0.1:37557:
     Error: connect ECONNREFUSED 127.0.0.1:37557
      at test/hooks.test.js:716:9

  332) test/hooks.test.js onResponse hook should support encapsulation / 3 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:717:30

  333) test/hooks.test.js onResponse hook should support encapsulation / 3 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +16
      
  

  334) test/hooks.test.js onSend hook should support encapsulation / 1 connect ECONNREFUSED 127.0.0.1:37557:
     Error: connect ECONNREFUSED 127.0.0.1:37557
      at test/hooks.test.js:726:9

  335) test/hooks.test.js onSend hook should support encapsulation / 1 test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  336) test/hooks.test.js onSend hook should support encapsulation / 2 connect ECONNREFUSED 127.0.0.1:32995:
     Error: connect ECONNREFUSED 127.0.0.1:32995
      at test/hooks.test.js:793:9

  337) test/hooks.test.js onSend hook should support encapsulation / 2 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:794:30

  338) test/hooks.test.js onSend hook should support encapsulation / 2 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +16
      
  

  339) test/hooks.test.js onSend hook is called after payload is serialized and headers are set connect ECONNREFUSED 127.0.0.1:32995:
     Error: connect ECONNREFUSED 127.0.0.1:32995
      at test/hooks.test.js:803:9

  340) test/hooks.test.js onSend hook is called after payload is serialized and headers are set test count !== plan:

      test count !== plan
      + expected - actual

      -31
      +30
      
  

  341) test/hooks.test.js onSend hook throws connect ECONNREFUSED 127.0.0.1:33365:
     Error: connect ECONNREFUSED 127.0.0.1:33365
      at test/hooks.test.js:1046:9

  342) test/hooks.test.js onSend hook throws Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:1047:30

  343) test/hooks.test.js onSend hook throws test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +7
      
  

  344) test/hooks.test.js onSend hook should receive valid request and reply objects if onRequest hook fails connect ECONNREFUSED 127.0.0.1:33365:
     Error: connect ECONNREFUSED 127.0.0.1:33365
      at test/hooks.test.js:1055:9

  345) test/hooks.test.js onSend hook should receive valid request and reply objects if onRequest hook fails test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +4
      
  

  346) test/hooks.test.js preValidation hook should support encapsulation / 3 connect ECONNREFUSED 127.0.0.1:42319:
     Error: connect ECONNREFUSED 127.0.0.1:42319
      at test/hooks.test.js:2104:9

  347) test/hooks.test.js preValidation hook should support encapsulation / 3 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2105:30

  348) test/hooks.test.js preValidation hook should support encapsulation / 3 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +20
      
  

  349) test/hooks.test.js onError hook connect ECONNREFUSED 127.0.0.1:42319:
     Error: connect ECONNREFUSED 127.0.0.1:42319
      at test/hooks.test.js:2114:9

  350) test/hooks.test.js onError hook test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  351) test/hooks.test.js preParsing hook should support encapsulation / 3 connect ECONNREFUSED 127.0.0.1:42519:
     Error: connect ECONNREFUSED 127.0.0.1:42519
      at test/hooks.test.js:2349:9

  352) test/hooks.test.js preParsing hook should support encapsulation / 3 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2350:30

  353) test/hooks.test.js preParsing hook should support encapsulation / 3 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +20
      
  

  354) test/hooks.test.js preSerialization hook should run before serialization and be able to modify the payload connect ECONNREFUSED 127.0.0.1:42519:
     Error: connect ECONNREFUSED 127.0.0.1:42519
      at test/hooks.test.js:2359:9

  355) test/hooks.test.js preSerialization hook should run before serialization and be able to modify the payload connect ECONNREFUSED 127.0.0.1:43345:
     Error: connect ECONNREFUSED 127.0.0.1:43345
      at test/hooks.test.js:2411:9

  356) test/hooks.test.js preSerialization hook should run before serialization and be able to modify the payload Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2412:30

  357) test/hooks.test.js preSerialization hook should run before serialization and be able to modify the payload test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +5
      
  

  358) test/hooks.test.js preSerialization hook should be able to throw errors which are not validated against schema response connect ECONNREFUSED 127.0.0.1:43367:
     Error: connect ECONNREFUSED 127.0.0.1:43367
      at test/hooks.test.js:2456:9

  359) test/hooks.test.js preSerialization hook should be able to throw errors which are not validated against schema response Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2457:30

  360) test/hooks.test.js preSerialization hook which returned error should still run onError hooks connect ECONNREFUSED 127.0.0.1:36125:
     Error: connect ECONNREFUSED 127.0.0.1:36125
      at test/hooks.test.js:2490:9

  361) test/hooks.test.js preSerialization hook which returned error should still run onError hooks Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2491:30

  362) test/hooks.test.js preSerialization hook which returned error should still run onError hooks test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  363) test/hooks.test.js preSerialization hooks should run in the order in which they are defined connect ECONNREFUSED 127.0.0.1:46607:
     Error: connect ECONNREFUSED 127.0.0.1:46607
      at test/hooks.test.js:2524:9

  364) test/hooks.test.js preSerialization hooks should run in the order in which they are defined Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2525:30

  365) test/hooks.test.js preSerialization hooks should run in the order in which they are defined test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  366) test/hooks.test.js preSerialization hooks should support encapsulation connect ECONNREFUSED 127.0.0.1:33657:
     Error: connect ECONNREFUSED 127.0.0.1:33657
      at test/hooks.test.js:2568:9

  367) test/hooks.test.js preSerialization hooks should support encapsulation Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2569:30

  368) test/hooks.test.js preSerialization hooks should support encapsulation test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +9
      
  

  369) test/hooks.test.js onRegister hook should be called / 1 connect ECONNREFUSED 127.0.0.1:33657:
     Error: connect ECONNREFUSED 127.0.0.1:33657
      at test/hooks.test.js:2578:9

  370) test/hooks.test.js onRegister hook should be called / 1 test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  371) test/hooks.test.js async hooks connect ECONNREFUSED 127.0.0.1:37971:
     Error: connect ECONNREFUSED 127.0.0.1:37971
      at test/hooks-async.js:66:11

  372) test/hooks.test.js async hooks Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks-async.js:67:32

  373) test/hooks.test.js async hooks test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +21
      
  

  374) test/hooks.test.js modify payload connect ECONNREFUSED 127.0.0.1:37971:
     Error: connect ECONNREFUSED 127.0.0.1:37971
      at test/hooks-async.js:76:11

  375) test/hooks.test.js modify payload connect ECONNREFUSED 127.0.0.1:37971:
     Error: connect ECONNREFUSED 127.0.0.1:37971
      at test/hooks-async.js:84:11

  376) test/hooks.test.js modify payload test count !== plan:

      test count !== plan
      + expected - actual

      -12
      +10
      
  

  377) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:139:30

  378) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:147:30

  379) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:262:30

  380) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:323:30

  381) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:727:30

  382) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:804:30

  383) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:1056:30

  384) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2115:30

  385) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2360:30

  386) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks.test.js:2579:30

  387) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks-async.js:77:32

  388) test/hooks.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/hooks-async.js:85:32

  389) test/inject.test.js inject promisify - after the ready event Cannot access 'relativeContext' before initialization:
     Error: Cannot access 'relativeContext' before initialization


  390) test/listen.test.js listen accepts a callback should be equal:

      Error: should be equal
      + expected - actual

      -::1
      +127.0.0.1
      
      at test/listen.test.js:14:7
      at Server.wrap (lib/server.js:74:9)

  391) test/listen.test.js listen accepts a port and a callback should be equal:

      Error: should be equal
      + expected - actual

      -::1
      +127.0.0.1
      
      at test/listen.test.js:24:7
      at Server.wrap (lib/server.js:74:9)

  392) test/listen.test.js listen accepts a port and a callback with (err, address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:41231
      +http://127.0.0.1:41231
      
      at test/listen.test.js:34:7
      at Server.wrap (lib/server.js:74:9)

  393) test/listen.test.js listen after Promise.resolve() should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:42229
      +http://127.0.0.1:42229
      
      at test/listen.test.js:102:11
      at Server.wrap (lib/server.js:74:9)

  394) test/listen.test.js double listen errors callback with (err, address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:41247
      +http://127.0.0.1:41247
      
      at test/listen.test.js:144:7
      at Server.wrap (lib/server.js:74:9)

  395) test/listen.test.js listen twice on the same port should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:45733
      +http://127.0.0.1:45733
      
      at test/listen.test.js:158:7
      at Server.wrap (lib/server.js:74:9)

  396) test/listen.test.js listen twice on the same port callback with (err, address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:41247
      +http://127.0.0.1:41247
      
      at test/listen.test.js:175:7
      at Server.wrap (lib/server.js:74:9)

  397) test/listen.test.js listen without callback (port zero) should be equal:

      Error: should be equal
      + expected - actual

      -::1
      +127.0.0.1
      
      at test/listen.test.js:212:9

  398) test/listen.test.js listen without callback (port not given) should be equal:

      Error: should be equal
      + expected - actual

      -::1
      +127.0.0.1
      
      at test/listen.test.js:222:9

  399) test/listen.test.js listen null without callback with (address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:43411
      +http://127.0.0.1:43411
      
      at test/listen.test.js:232:9

  400) test/listen.test.js listen without port without callback with (address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:44373
      +http://127.0.0.1:44373
      
      at test/listen.test.js:242:9

  401) test/listen.test.js listen with undefined without callback with (address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:33483
      +http://127.0.0.1:33483
      
      at test/listen.test.js:252:9

  402) test/listen.test.js listen without callback with (address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:41725
      +http://127.0.0.1:41725
      
      at test/listen.test.js:262:9

  403) test/listen.test.js double listen without callback with (address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:46479
      +http://127.0.0.1:46479
      
      at test/listen.test.js:286:9

  404) test/listen.test.js listen twice on the same port without callback rejects with (address) should be equal:

      Error: should be equal
      + expected - actual

      -http://[::1]:38851
      +http://127.0.0.1:38851
      
      at test/listen.test.js:320:9

  405) test/logger.test.js defaults to info level test unfinished:
     Error: test unfinished
      at Object.<anonymous> (test/logger.test.js:33:1)

  406) test/logger.test.js defaults to info level test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +13
      
  

  407) test/logger.test.js child test left in queue: t.test test log stream:
     child test left in queue: t.test test log stream
  

  408) test/logger.test.js child test left in queue: t.test test error log stream:
     child test left in queue: t.test test error log stream
  

  409) test/logger.test.js child test left in queue: t.test can use external logger instance:
     child test left in queue: t.test can use external logger instance
  

  410) test/logger.test.js child test left in queue: t.test can use external logger instance with custom serializer:
     child test left in queue: t.test can use external logger instance with custom serializer
  

  411) test/logger.test.js child test left in queue: t.test expose the logger:
     child test left in queue: t.test expose the logger
  

  412) test/logger.test.js child test left in queue: t.test The request id header key can be customized:
     child test left in queue: t.test The request id header key can be customized
  

  413) test/logger.test.js child test left in queue: t.test The request id header key can be customized along with a custom id generator:
     child test left in queue: t.test The request id header key can be customized along with a custom id generator
  

  414) test/logger.test.js child test left in queue: t.test The request id log label can be changed:
     child test left in queue: t.test The request id log label can be changed
  

  415) test/logger.test.js child test left in queue: t.test The logger should accept custom serializer:
     child test left in queue: t.test The logger should accept custom serializer
  

  416) test/logger.test.js child test left in queue: t.test reply.send logs an error if called twice in a row:
     child test left in queue: t.test reply.send logs an error if called twice in a row
  

  417) test/logger.test.js child test left in queue: t.test logger can be silented:
     child test left in queue: t.test logger can be silented
  

  418) test/logger.test.js child test left in queue: t.test Should set a custom logLevel for a plugin:
     child test left in queue: t.test Should set a custom logLevel for a plugin
  

  419) test/logger.test.js child test left in queue: t.test Should set a custom logLevel for every plugin:
     child test left in queue: t.test Should set a custom logLevel for every plugin
  

  420) test/logger.test.js child test left in queue: t.test Should increase the log level for a specific plugin:
     child test left in queue: t.test Should increase the log level for a specific plugin
  

  421) test/logger.test.js child test left in queue: t.test Should set the log level for the customized 404 handler:
     child test left in queue: t.test Should set the log level for the customized 404 handler
  

  422) test/logger.test.js child test left in queue: t.test Should set the log level for the customized 500 handler:
     child test left in queue: t.test Should set the log level for the customized 500 handler
  

  423) test/logger.test.js child test left in queue: t.test Should set a custom log level for a specific route:
     child test left in queue: t.test Should set a custom log level for a specific route
  

  424) test/logger.test.js child test left in queue: t.test The default 404 handler logs the incoming request:
     child test left in queue: t.test The default 404 handler logs the incoming request
  

  425) test/logger.test.js child test left in queue: t.test should serialize request and response:
     child test left in queue: t.test should serialize request and response
  

  426) test/logger.test.js child test left in queue: t.test Wrap IPv6 address in listening log message:
     child test left in queue: t.test Wrap IPv6 address in listening log message
  

  427) test/logger.test.js child test left in queue: t.test Do not wrap IPv4 address:
     child test left in queue: t.test Do not wrap IPv4 address
  

  428) test/logger.test.js child test left in queue: t.test file option:
     child test left in queue: t.test file option
  

  429) test/logger.test.js child test left in queue: t.test should log the error if no error handler is defined:
     child test left in queue: t.test should log the error if no error handler is defined
  

  430) test/logger.test.js child test left in queue: t.test should log as info if error status code >= 400 and < 500 if no error handler is defined:
     child test left in queue: t.test should log as info if error status code >= 400 and < 500 if no error handler is defined
  

  431) test/logger.test.js child test left in queue: t.test should log as error if error status code >= 500 if no error handler is defined:
     child test left in queue: t.test should log as error if error status code >= 500 if no error handler is defined
  

  432) test/logger.test.js child test left in queue: t.test should not log the error if error handler is defined:
     child test left in queue: t.test should not log the error if error handler is defined
  

  433) test/logger.test.js child test left in queue: t.test should not rely on raw request to log errors:
     child test left in queue: t.test should not rely on raw request to log errors
  

  434) test/logger.test.js child test left in queue: t.test should redact the authorization header if so specified:
     child test left in queue: t.test should redact the authorization header if so specified
  

  435) test/logger.test.js child test left in queue: t.test should not log incoming request and outgoing response when disabled:
     child test left in queue: t.test should not log incoming request and outgoing response when disabled
  

  436) test/logger.test.js connect ECONNREFUSED 127.0.0.1:35773:
     connect ECONNREFUSED 127.0.0.1:35773
  

  437) test/logger.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -31
      +2
      
  

  438) test/middleware.test.js use a middleware connect ECONNREFUSED 127.0.0.1:43919:
     Error: connect ECONNREFUSED 127.0.0.1:43919
      at test/middleware.test.js:40:9

  439) test/middleware.test.js use a middleware Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/middleware.test.js:41:30

  440) test/middleware.test.js use a middleware test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +7
      
  

  441) test/middleware.test.js use cors connect ECONNREFUSED 127.0.0.1:42603:
     Error: connect ECONNREFUSED 127.0.0.1:42603
      at test/middleware.test.js:95:9

  442) test/middleware.test.js use cors Cannot read properties of undefined (reading 'headers'):
     Error: Cannot read properties of undefined (reading 'headers')
      at test/middleware.test.js:96:24

  443) test/middleware.test.js use helmet connect ECONNREFUSED 127.0.0.1:40643:
     Error: connect ECONNREFUSED 127.0.0.1:40643
      at test/middleware.test.js:121:9

  444) test/middleware.test.js use helmet Cannot read properties of undefined (reading 'headers'):
     Error: Cannot read properties of undefined (reading 'headers')
      at test/middleware.test.js:122:21

  445) test/middleware.test.js use helmet and cors connect ECONNREFUSED 127.0.0.1:38235:
     Error: connect ECONNREFUSED 127.0.0.1:38235
      at test/middleware.test.js:148:9

  446) test/middleware.test.js use helmet and cors Cannot read properties of undefined (reading 'headers'):
     Error: Cannot read properties of undefined (reading 'headers')
      at test/middleware.test.js:149:21

  447) test/middleware.test.js use helmet and cors test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  448) test/middleware.test.js middlewares should support encapsulation / 1 connect ECONNREFUSED 127.0.0.1:42997:
     Error: connect ECONNREFUSED 127.0.0.1:42997
      at test/middleware.test.js:183:9

  449) test/middleware.test.js middlewares should support encapsulation / 1 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/middleware.test.js:184:30

  450) test/middleware.test.js middlewares should support encapsulation / 1 test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +8
      
  

  451) test/middleware.test.js middlewares should support encapsulation / 2 connect ECONNREFUSED 127.0.0.1:34185:
     Error: connect ECONNREFUSED 127.0.0.1:34185
      at test/middleware.test.js:230:9

  452) test/middleware.test.js middlewares should support encapsulation / 2 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/middleware.test.js:231:30

  453) test/middleware.test.js middlewares should support encapsulation / 2 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +13
      
  

  454) test/middleware.test.js middlewares should support encapsulation / 3 connect ECONNREFUSED 127.0.0.1:46267:
     Error: connect ECONNREFUSED 127.0.0.1:46267
      at test/middleware.test.js:294:9

  455) test/middleware.test.js middlewares should support encapsulation / 3 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/middleware.test.js:295:30

  456) test/middleware.test.js middlewares should support encapsulation / 3 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +15
      
  

  457) test/middleware.test.js middlewares should support encapsulation / 4 connect ECONNREFUSED 127.0.0.1:37739:
     Error: connect ECONNREFUSED 127.0.0.1:37739
      at test/middleware.test.js:377:9

  458) test/middleware.test.js middlewares should support encapsulation / 4 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/middleware.test.js:378:30

  459) test/middleware.test.js middlewares should support encapsulation / 4 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +25
      
  

  460) test/middleware.test.js middlewares should support encapsulation / 5 connect ECONNREFUSED 127.0.0.1:44971:
     Error: connect ECONNREFUSED 127.0.0.1:44971
      at test/middleware.test.js:440:9

  461) test/middleware.test.js middlewares should support encapsulation / 5 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/middleware.test.js:441:30

  462) test/middleware.test.js middlewares should support encapsulation / 5 test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +9
      
  

  463) test/middleware.test.js middlewares should support encapsulation with prefix connect ECONNREFUSED 127.0.0.1:39237:
     Error: connect ECONNREFUSED 127.0.0.1:39237
      at test/middleware.test.js:496:9

  464) test/middleware.test.js middlewares should support encapsulation with prefix Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/middleware.test.js:497:30

  465) test/middleware.test.js middlewares should support encapsulation with prefix test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +9
      
  

  466) test/middleware.test.js middlewares with prefix / connect ECONNREFUSED 127.0.0.1:43157:
     Error: connect ECONNREFUSED 127.0.0.1:43157
      at test/middleware.test.js:626:11

  467) test/middleware.test.js middlewares with prefix / should be equivalent:
     Error: should be equivalent
      at test/middleware.test.js:627:11

  468) test/middleware.test.js middlewares with prefix /prefix connect ECONNREFUSED 127.0.0.1:43157:
     Error: connect ECONNREFUSED 127.0.0.1:43157
      at test/middleware.test.js:642:11

  469) test/middleware.test.js middlewares with prefix /prefix should be equivalent:
     Error: should be equivalent
      at test/middleware.test.js:643:11

  470) test/middleware.test.js middlewares with prefix /prefix/ connect ECONNREFUSED 127.0.0.1:43157:
     Error: connect ECONNREFUSED 127.0.0.1:43157
      at test/middleware.test.js:660:11

  471) test/middleware.test.js middlewares with prefix /prefix/ should be equivalent:
     Error: should be equivalent
      at test/middleware.test.js:661:11

  472) test/middleware.test.js middlewares with prefix /prefix/inner connect ECONNREFUSED 127.0.0.1:43157:
     Error: connect ECONNREFUSED 127.0.0.1:43157
      at test/middleware.test.js:678:11

  473) test/middleware.test.js middlewares with prefix /prefix/inner should be equivalent:
     Error: should be equivalent
      at test/middleware.test.js:679:11

  474) test/options.error-handler.test.js OPTIONS - correctly replies connect ECONNREFUSED 127.0.0.1:34911:
     Error: connect ECONNREFUSED 127.0.0.1:34911
      at test/helper.js:112:11

  475) test/options.error-handler.test.js OPTIONS - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:113:32

  476) test/options.error-handler.test.js OPTIONS - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  477) test/options.error-handler.test.js OPTIONS - correctly replies with very large body connect ECONNREFUSED 127.0.0.1:34911:
     Error: connect ECONNREFUSED 127.0.0.1:34911
      at test/helper.js:128:11

  478) test/options.error-handler.test.js OPTIONS - correctly replies with very large body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:129:32

  479) test/options.error-handler.test.js OPTIONS - correctly replies with very large body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  480) test/options.error-handler.test.js OPTIONS - correctly replies if the content type has the charset connect ECONNREFUSED 127.0.0.1:34911:
     Error: connect ECONNREFUSED 127.0.0.1:34911
      at test/helper.js:144:11

  481) test/options.error-handler.test.js OPTIONS - correctly replies if the content type has the charset Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:145:32

  482) test/options.error-handler.test.js OPTIONS - correctly replies if the content type has the charset test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  483) test/options.error-handler.test.js OPTIONS without schema - correctly replies connect ECONNREFUSED 127.0.0.1:34911:
     Error: connect ECONNREFUSED 127.0.0.1:34911
      at test/helper.js:160:11

  484) test/options.error-handler.test.js OPTIONS without schema - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:161:32

  485) test/options.error-handler.test.js OPTIONS without schema - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  486) test/options.error-handler.test.js OPTIONS with body and querystring - correctly replies connect ECONNREFUSED 127.0.0.1:34911:
     Error: connect ECONNREFUSED 127.0.0.1:34911
      at test/helper.js:176:11

  487) test/options.error-handler.test.js OPTIONS with body and querystring - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:177:32

  488) test/options.error-handler.test.js OPTIONS with body and querystring - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  489) test/options.error-handler.test.js OPTIONS with no body - correctly replies connect ECONNREFUSED 127.0.0.1:34911:
     Error: connect ECONNREFUSED 127.0.0.1:34911
      at test/helper.js:190:11

  490) test/options.error-handler.test.js OPTIONS with no body - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:191:32

  491) test/options.error-handler.test.js OPTIONS with no body - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +6
      
  

  492) test/options.error-handler.test.js OPTIONS returns 415 - incorrect media type if body is not json connect ECONNREFUSED 127.0.0.1:34911:
     Error: connect ECONNREFUSED 127.0.0.1:34911
      at test/helper.js:214:11

  493) test/options.error-handler.test.js OPTIONS returns 415 - incorrect media type if body is not json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:216:34

  494) test/options.error-handler.test.js OPTIONS returns 415 - should return 415 if Content-Type is not json or plain text connect ECONNREFUSED 127.0.0.1:34911:
     Error: connect ECONNREFUSED 127.0.0.1:34911
      at test/helper.js:234:13

  495) test/options.error-handler.test.js OPTIONS returns 415 - should return 415 if Content-Type is not json or plain text Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:235:34

  496) test/options.error-handler.test.js OPTIONS returns 400 - Bad Request connect ECONNREFUSED 127.0.0.1:34911:
     Error: connect ECONNREFUSED 127.0.0.1:34911
      at test/helper.js:251:11

  497) test/options.error-handler.test.js OPTIONS returns 400 - Bad Request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:252:32

  498) test/options.error-handler.test.js OPTIONS returns 400 - Bad Request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  499) test/options.error-handler.test.js OPTIONS returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:34911:
     Error: connect ECONNREFUSED 127.0.0.1:34911
      at test/helper.js:263:11

  500) test/options.error-handler.test.js OPTIONS returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:34911:
     Error: connect ECONNREFUSED 127.0.0.1:34911
      at test/helper.js:279:11

  501) test/options.error-handler.test.js OPTIONS returns 413 - Payload Too Large Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:280:32

  502) test/options.error-handler.test.js OPTIONS returns 413 - Payload Too Large test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  503) test/options.error-handler.test.js OPTIONS - correctly replies connect ECONNREFUSED 127.0.0.1:34911:
     Error: connect ECONNREFUSED 127.0.0.1:34911
      at test/helper.js:310:11

  504) test/options.error-handler.test.js OPTIONS - correctly replies connect ECONNREFUSED 127.0.0.1:44417:
     Error: connect ECONNREFUSED 127.0.0.1:44417
      at test/input-validation.js:134:13

  505) test/options.error-handler.test.js OPTIONS - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:135:34

  506) test/options.error-handler.test.js OPTIONS - 400 on bad parameters connect ECONNREFUSED 127.0.0.1:44417:
     Error: connect ECONNREFUSED 127.0.0.1:44417
      at test/input-validation.js:151:11

  507) test/options.error-handler.test.js OPTIONS - 400 on bad parameters Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:152:32

  508) test/options.error-handler.test.js OPTIONS - 400 on bad parameters test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  509) test/options.error-handler.test.js OPTIONS - input-validation coerce connect ECONNREFUSED 127.0.0.1:44417:
     Error: connect ECONNREFUSED 127.0.0.1:44417
      at test/input-validation.js:171:11

  510) test/options.error-handler.test.js OPTIONS - input-validation coerce Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:172:32

  511) test/options.error-handler.test.js OPTIONS - input-validation coerce test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  512) test/options.error-handler.test.js OPTIONS - input-validation custom schema compiler connect ECONNREFUSED 127.0.0.1:44417:
     Error: connect ECONNREFUSED 127.0.0.1:44417
      at test/input-validation.js:188:11

  513) test/options.error-handler.test.js OPTIONS - input-validation custom schema compiler Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:189:32

  514) test/options.error-handler.test.js OPTIONS - input-validation custom schema compiler test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  515) test/options.error-handler.test.js OPTIONS - input-validation joi schema compiler ok connect ECONNREFUSED 127.0.0.1:44417:
     Error: connect ECONNREFUSED 127.0.0.1:44417
      at test/input-validation.js:204:11

  516) test/options.error-handler.test.js OPTIONS - input-validation joi schema compiler ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:205:32

  517) test/options.error-handler.test.js OPTIONS - input-validation joi schema compiler ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  518) test/options.error-handler.test.js OPTIONS - input-validation joi schema compiler ko connect ECONNREFUSED 127.0.0.1:44417:
     Error: connect ECONNREFUSED 127.0.0.1:44417
      at test/input-validation.js:220:11

  519) test/options.error-handler.test.js OPTIONS - input-validation joi schema compiler ko Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:221:32

  520) test/options.error-handler.test.js OPTIONS - input-validation joi schema compiler ko test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  521) test/options.error-handler.test.js OPTIONS - input-validation instance custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:44417:
     Error: connect ECONNREFUSED 127.0.0.1:44417
      at test/input-validation.js:238:11

  522) test/options.error-handler.test.js OPTIONS - input-validation instance custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:239:32

  523) test/options.error-handler.test.js OPTIONS - input-validation instance custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  524) test/options.error-handler.test.js OPTIONS - input-validation custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:44417:
     Error: connect ECONNREFUSED 127.0.0.1:44417
      at test/input-validation.js:256:11

  525) test/options.error-handler.test.js OPTIONS - input-validation custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:257:32

  526) test/options.error-handler.test.js OPTIONS - input-validation custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  527) test/options.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:264:32

  528) test/options.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:311:32

  529) test/options.test.js OPTIONS - correctly replies connect ECONNREFUSED 127.0.0.1:43107:
     Error: connect ECONNREFUSED 127.0.0.1:43107
      at test/helper.js:112:11

  530) test/options.test.js OPTIONS - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:113:32

  531) test/options.test.js OPTIONS - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  532) test/options.test.js OPTIONS - correctly replies with very large body connect ECONNREFUSED 127.0.0.1:43107:
     Error: connect ECONNREFUSED 127.0.0.1:43107
      at test/helper.js:128:11

  533) test/options.test.js OPTIONS - correctly replies with very large body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:129:32

  534) test/options.test.js OPTIONS - correctly replies with very large body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  535) test/options.test.js OPTIONS - correctly replies if the content type has the charset connect ECONNREFUSED 127.0.0.1:43107:
     Error: connect ECONNREFUSED 127.0.0.1:43107
      at test/helper.js:144:11

  536) test/options.test.js OPTIONS - correctly replies if the content type has the charset Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:145:32

  537) test/options.test.js OPTIONS - correctly replies if the content type has the charset test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  538) test/options.test.js OPTIONS without schema - correctly replies connect ECONNREFUSED 127.0.0.1:43107:
     Error: connect ECONNREFUSED 127.0.0.1:43107
      at test/helper.js:160:11

  539) test/options.test.js OPTIONS without schema - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:161:32

  540) test/options.test.js OPTIONS without schema - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  541) test/options.test.js OPTIONS with body and querystring - correctly replies connect ECONNREFUSED 127.0.0.1:43107:
     Error: connect ECONNREFUSED 127.0.0.1:43107
      at test/helper.js:176:11

  542) test/options.test.js OPTIONS with body and querystring - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:177:32

  543) test/options.test.js OPTIONS with body and querystring - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  544) test/options.test.js OPTIONS with no body - correctly replies connect ECONNREFUSED 127.0.0.1:43107:
     Error: connect ECONNREFUSED 127.0.0.1:43107
      at test/helper.js:190:11

  545) test/options.test.js OPTIONS with no body - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:191:32

  546) test/options.test.js OPTIONS with no body - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +6
      
  

  547) test/options.test.js OPTIONS returns 415 - incorrect media type if body is not json connect ECONNREFUSED 127.0.0.1:43107:
     Error: connect ECONNREFUSED 127.0.0.1:43107
      at test/helper.js:214:11

  548) test/options.test.js OPTIONS returns 415 - incorrect media type if body is not json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:216:34

  549) test/options.test.js OPTIONS returns 415 - should return 415 if Content-Type is not json or plain text connect ECONNREFUSED 127.0.0.1:43107:
     Error: connect ECONNREFUSED 127.0.0.1:43107
      at test/helper.js:234:13

  550) test/options.test.js OPTIONS returns 415 - should return 415 if Content-Type is not json or plain text Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:235:34

  551) test/options.test.js OPTIONS returns 400 - Bad Request connect ECONNREFUSED 127.0.0.1:43107:
     Error: connect ECONNREFUSED 127.0.0.1:43107
      at test/helper.js:251:11

  552) test/options.test.js OPTIONS returns 400 - Bad Request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:252:32

  553) test/options.test.js OPTIONS returns 400 - Bad Request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  554) test/options.test.js OPTIONS returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:43107:
     Error: connect ECONNREFUSED 127.0.0.1:43107
      at test/helper.js:263:11

  555) test/options.test.js OPTIONS returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:43107:
     Error: connect ECONNREFUSED 127.0.0.1:43107
      at test/helper.js:279:11

  556) test/options.test.js OPTIONS returns 413 - Payload Too Large Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:280:32

  557) test/options.test.js OPTIONS returns 413 - Payload Too Large test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  558) test/options.test.js OPTIONS - correctly replies connect ECONNREFUSED 127.0.0.1:43107:
     Error: connect ECONNREFUSED 127.0.0.1:43107
      at test/helper.js:310:11

  559) test/options.test.js OPTIONS - correctly replies connect ECONNREFUSED 127.0.0.1:46303:
     Error: connect ECONNREFUSED 127.0.0.1:46303
      at test/input-validation.js:134:13

  560) test/options.test.js OPTIONS - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:135:34

  561) test/options.test.js OPTIONS - 400 on bad parameters connect ECONNREFUSED 127.0.0.1:46303:
     Error: connect ECONNREFUSED 127.0.0.1:46303
      at test/input-validation.js:151:11

  562) test/options.test.js OPTIONS - 400 on bad parameters Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:152:32

  563) test/options.test.js OPTIONS - 400 on bad parameters test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  564) test/options.test.js OPTIONS - input-validation coerce connect ECONNREFUSED 127.0.0.1:46303:
     Error: connect ECONNREFUSED 127.0.0.1:46303
      at test/input-validation.js:171:11

  565) test/options.test.js OPTIONS - input-validation coerce Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:172:32

  566) test/options.test.js OPTIONS - input-validation coerce test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  567) test/options.test.js OPTIONS - input-validation custom schema compiler connect ECONNREFUSED 127.0.0.1:46303:
     Error: connect ECONNREFUSED 127.0.0.1:46303
      at test/input-validation.js:188:11

  568) test/options.test.js OPTIONS - input-validation custom schema compiler Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:189:32

  569) test/options.test.js OPTIONS - input-validation custom schema compiler test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  570) test/options.test.js OPTIONS - input-validation joi schema compiler ok connect ECONNREFUSED 127.0.0.1:46303:
     Error: connect ECONNREFUSED 127.0.0.1:46303
      at test/input-validation.js:204:11

  571) test/options.test.js OPTIONS - input-validation joi schema compiler ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:205:32

  572) test/options.test.js OPTIONS - input-validation joi schema compiler ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  573) test/options.test.js OPTIONS - input-validation joi schema compiler ko connect ECONNREFUSED 127.0.0.1:46303:
     Error: connect ECONNREFUSED 127.0.0.1:46303
      at test/input-validation.js:220:11

  574) test/options.test.js OPTIONS - input-validation joi schema compiler ko Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:221:32

  575) test/options.test.js OPTIONS - input-validation joi schema compiler ko test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  576) test/options.test.js OPTIONS - input-validation instance custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:46303:
     Error: connect ECONNREFUSED 127.0.0.1:46303
      at test/input-validation.js:238:11

  577) test/options.test.js OPTIONS - input-validation instance custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:239:32

  578) test/options.test.js OPTIONS - input-validation instance custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  579) test/options.test.js OPTIONS - input-validation custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:46303:
     Error: connect ECONNREFUSED 127.0.0.1:46303
      at test/input-validation.js:256:11

  580) test/options.test.js OPTIONS - input-validation custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:257:32

  581) test/options.test.js OPTIONS - input-validation custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  582) test/options.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:264:32

  583) test/options.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:311:32

  584) test/output-validation.test.js shorthand - string get ok connect ECONNREFUSED 127.0.0.1:38169:
     Error: connect ECONNREFUSED 127.0.0.1:38169
      at test/output-validation.test.js:103:9

  585) test/output-validation.test.js shorthand - string get ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/output-validation.test.js:104:30

  586) test/output-validation.test.js shorthand - string get ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  587) test/output-validation.test.js shorthand - number get ok connect ECONNREFUSED 127.0.0.1:38169:
     Error: connect ECONNREFUSED 127.0.0.1:38169
      at test/output-validation.test.js:116:9

  588) test/output-validation.test.js shorthand - number get ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/output-validation.test.js:117:30

  589) test/output-validation.test.js shorthand - number get ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  590) test/output-validation.test.js shorthand - wrong-object-for-schema connect ECONNREFUSED 127.0.0.1:38169:
     Error: connect ECONNREFUSED 127.0.0.1:38169
      at test/output-validation.test.js:129:9

  591) test/output-validation.test.js shorthand - wrong-object-for-schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/output-validation.test.js:130:30

  592) test/output-validation.test.js shorthand - wrong-object-for-schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  593) test/output-validation.test.js shorthand - empty connect ECONNREFUSED 127.0.0.1:38169:
     Error: connect ECONNREFUSED 127.0.0.1:38169
      at test/output-validation.test.js:142:9

  594) test/output-validation.test.js shorthand - empty Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/output-validation.test.js:143:30

  595) test/output-validation.test.js shorthand - 400 connect ECONNREFUSED 127.0.0.1:38169:
     Error: connect ECONNREFUSED 127.0.0.1:38169
      at test/output-validation.test.js:153:9

  596) test/output-validation.test.js shorthand - 400 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/output-validation.test.js:154:30

  597) test/output-validation.test.js shorthand - 400 test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  598) test/patch.error-handler.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:112:11

  599) test/patch.error-handler.test.js PATCH - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:113:32

  600) test/patch.error-handler.test.js PATCH - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  601) test/patch.error-handler.test.js PATCH - correctly replies with very large body connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:128:11

  602) test/patch.error-handler.test.js PATCH - correctly replies with very large body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:129:32

  603) test/patch.error-handler.test.js PATCH - correctly replies with very large body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  604) test/patch.error-handler.test.js PATCH - correctly replies if the content type has the charset connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:144:11

  605) test/patch.error-handler.test.js PATCH - correctly replies if the content type has the charset Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:145:32

  606) test/patch.error-handler.test.js PATCH - correctly replies if the content type has the charset test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  607) test/patch.error-handler.test.js PATCH without schema - correctly replies connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:160:11

  608) test/patch.error-handler.test.js PATCH without schema - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:161:32

  609) test/patch.error-handler.test.js PATCH without schema - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  610) test/patch.error-handler.test.js PATCH with body and querystring - correctly replies connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:176:11

  611) test/patch.error-handler.test.js PATCH with body and querystring - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:177:32

  612) test/patch.error-handler.test.js PATCH with body and querystring - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  613) test/patch.error-handler.test.js PATCH with no body - correctly replies connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:190:11

  614) test/patch.error-handler.test.js PATCH with no body - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:191:32

  615) test/patch.error-handler.test.js PATCH with no body - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +6
      
  

  616) test/patch.error-handler.test.js PATCH returns 415 - incorrect media type if body is not json connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:214:11

  617) test/patch.error-handler.test.js PATCH returns 415 - incorrect media type if body is not json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:218:34

  618) test/patch.error-handler.test.js PATCH returns 400 - Bad Request connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:251:11

  619) test/patch.error-handler.test.js PATCH returns 400 - Bad Request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:252:32

  620) test/patch.error-handler.test.js PATCH returns 400 - Bad Request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  621) test/patch.error-handler.test.js PATCH returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:263:11

  622) test/patch.error-handler.test.js PATCH returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:279:11

  623) test/patch.error-handler.test.js PATCH returns 413 - Payload Too Large Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:280:32

  624) test/patch.error-handler.test.js PATCH returns 413 - Payload Too Large test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  625) test/patch.error-handler.test.js PATCH should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:298:13

  626) test/patch.error-handler.test.js PATCH should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:310:11

  627) test/patch.error-handler.test.js PATCH should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:343:11

  628) test/patch.error-handler.test.js PATCH should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:344:43

  629) test/patch.error-handler.test.js PATCH should fail with empty body and application/json content-type test count !== plan:

      test count !== plan
      + expected - actual

      -10
      +12
      
  

  630) test/patch.error-handler.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:377:11

  631) test/patch.error-handler.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:37549:
     Error: connect ECONNREFUSED 127.0.0.1:37549
      at test/helper.js:411:11

  632) test/patch.error-handler.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:41993:
     Error: connect ECONNREFUSED 127.0.0.1:41993
      at test/input-validation.js:134:13

  633) test/patch.error-handler.test.js PATCH - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:135:34

  634) test/patch.error-handler.test.js PATCH - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  635) test/patch.error-handler.test.js PATCH - 400 on bad parameters connect ECONNREFUSED 127.0.0.1:41993:
     Error: connect ECONNREFUSED 127.0.0.1:41993
      at test/input-validation.js:151:11

  636) test/patch.error-handler.test.js PATCH - 400 on bad parameters Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:152:32

  637) test/patch.error-handler.test.js PATCH - 400 on bad parameters test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  638) test/patch.error-handler.test.js PATCH - input-validation coerce connect ECONNREFUSED 127.0.0.1:41993:
     Error: connect ECONNREFUSED 127.0.0.1:41993
      at test/input-validation.js:171:11

  639) test/patch.error-handler.test.js PATCH - input-validation coerce Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:172:32

  640) test/patch.error-handler.test.js PATCH - input-validation coerce test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  641) test/patch.error-handler.test.js PATCH - input-validation custom schema compiler connect ECONNREFUSED 127.0.0.1:41993:
     Error: connect ECONNREFUSED 127.0.0.1:41993
      at test/input-validation.js:188:11

  642) test/patch.error-handler.test.js PATCH - input-validation custom schema compiler Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:189:32

  643) test/patch.error-handler.test.js PATCH - input-validation custom schema compiler test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  644) test/patch.error-handler.test.js PATCH - input-validation joi schema compiler ok connect ECONNREFUSED 127.0.0.1:41993:
     Error: connect ECONNREFUSED 127.0.0.1:41993
      at test/input-validation.js:204:11

  645) test/patch.error-handler.test.js PATCH - input-validation joi schema compiler ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:205:32

  646) test/patch.error-handler.test.js PATCH - input-validation joi schema compiler ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  647) test/patch.error-handler.test.js PATCH - input-validation joi schema compiler ko connect ECONNREFUSED 127.0.0.1:41993:
     Error: connect ECONNREFUSED 127.0.0.1:41993
      at test/input-validation.js:220:11

  648) test/patch.error-handler.test.js PATCH - input-validation joi schema compiler ko Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:221:32

  649) test/patch.error-handler.test.js PATCH - input-validation joi schema compiler ko test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  650) test/patch.error-handler.test.js PATCH - input-validation instance custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:41993:
     Error: connect ECONNREFUSED 127.0.0.1:41993
      at test/input-validation.js:238:11

  651) test/patch.error-handler.test.js PATCH - input-validation instance custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:239:32

  652) test/patch.error-handler.test.js PATCH - input-validation instance custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  653) test/patch.error-handler.test.js PATCH - input-validation custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:41993:
     Error: connect ECONNREFUSED 127.0.0.1:41993
      at test/input-validation.js:256:11

  654) test/patch.error-handler.test.js PATCH - input-validation custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:257:32

  655) test/patch.error-handler.test.js PATCH - input-validation custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  656) test/patch.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:264:32

  657) test/patch.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:299:34

  658) test/patch.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:311:32

  659) test/patch.error-handler.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  660) test/patch.error-handler.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:412:43

  661) test/patch.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:112:11

  662) test/patch.test.js PATCH - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:113:32

  663) test/patch.test.js PATCH - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  664) test/patch.test.js PATCH - correctly replies with very large body connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:128:11

  665) test/patch.test.js PATCH - correctly replies with very large body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:129:32

  666) test/patch.test.js PATCH - correctly replies with very large body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  667) test/patch.test.js PATCH - correctly replies if the content type has the charset connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:144:11

  668) test/patch.test.js PATCH - correctly replies if the content type has the charset Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:145:32

  669) test/patch.test.js PATCH - correctly replies if the content type has the charset test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  670) test/patch.test.js PATCH without schema - correctly replies connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:160:11

  671) test/patch.test.js PATCH without schema - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:161:32

  672) test/patch.test.js PATCH without schema - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  673) test/patch.test.js PATCH with body and querystring - correctly replies connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:176:11

  674) test/patch.test.js PATCH with body and querystring - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:177:32

  675) test/patch.test.js PATCH with body and querystring - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  676) test/patch.test.js PATCH with no body - correctly replies connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:190:11

  677) test/patch.test.js PATCH with no body - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:191:32

  678) test/patch.test.js PATCH with no body - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +6
      
  

  679) test/patch.test.js PATCH returns 415 - incorrect media type if body is not json connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:214:11

  680) test/patch.test.js PATCH returns 415 - incorrect media type if body is not json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:218:34

  681) test/patch.test.js PATCH returns 400 - Bad Request connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:251:11

  682) test/patch.test.js PATCH returns 400 - Bad Request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:252:32

  683) test/patch.test.js PATCH returns 400 - Bad Request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  684) test/patch.test.js PATCH returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:263:11

  685) test/patch.test.js PATCH returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:279:11

  686) test/patch.test.js PATCH returns 413 - Payload Too Large Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:280:32

  687) test/patch.test.js PATCH returns 413 - Payload Too Large test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  688) test/patch.test.js PATCH should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:298:13

  689) test/patch.test.js PATCH should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:310:11

  690) test/patch.test.js PATCH should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:343:11

  691) test/patch.test.js PATCH should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:344:43

  692) test/patch.test.js PATCH should fail with empty body and application/json content-type test count !== plan:

      test count !== plan
      + expected - actual

      -10
      +12
      
  

  693) test/patch.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:377:11

  694) test/patch.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:40959:
     Error: connect ECONNREFUSED 127.0.0.1:40959
      at test/helper.js:411:11

  695) test/patch.test.js PATCH - correctly replies connect ECONNREFUSED 127.0.0.1:42795:
     Error: connect ECONNREFUSED 127.0.0.1:42795
      at test/input-validation.js:134:13

  696) test/patch.test.js PATCH - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:135:34

  697) test/patch.test.js PATCH - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  698) test/patch.test.js PATCH - 400 on bad parameters connect ECONNREFUSED 127.0.0.1:42795:
     Error: connect ECONNREFUSED 127.0.0.1:42795
      at test/input-validation.js:151:11

  699) test/patch.test.js PATCH - 400 on bad parameters Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:152:32

  700) test/patch.test.js PATCH - 400 on bad parameters test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  701) test/patch.test.js PATCH - input-validation coerce connect ECONNREFUSED 127.0.0.1:42795:
     Error: connect ECONNREFUSED 127.0.0.1:42795
      at test/input-validation.js:171:11

  702) test/patch.test.js PATCH - input-validation coerce Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:172:32

  703) test/patch.test.js PATCH - input-validation coerce test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  704) test/patch.test.js PATCH - input-validation custom schema compiler connect ECONNREFUSED 127.0.0.1:42795:
     Error: connect ECONNREFUSED 127.0.0.1:42795
      at test/input-validation.js:188:11

  705) test/patch.test.js PATCH - input-validation custom schema compiler Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:189:32

  706) test/patch.test.js PATCH - input-validation custom schema compiler test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  707) test/patch.test.js PATCH - input-validation joi schema compiler ok connect ECONNREFUSED 127.0.0.1:42795:
     Error: connect ECONNREFUSED 127.0.0.1:42795
      at test/input-validation.js:204:11

  708) test/patch.test.js PATCH - input-validation joi schema compiler ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:205:32

  709) test/patch.test.js PATCH - input-validation joi schema compiler ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  710) test/patch.test.js PATCH - input-validation joi schema compiler ko connect ECONNREFUSED 127.0.0.1:42795:
     Error: connect ECONNREFUSED 127.0.0.1:42795
      at test/input-validation.js:220:11

  711) test/patch.test.js PATCH - input-validation joi schema compiler ko Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:221:32

  712) test/patch.test.js PATCH - input-validation joi schema compiler ko test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  713) test/patch.test.js PATCH - input-validation instance custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:42795:
     Error: connect ECONNREFUSED 127.0.0.1:42795
      at test/input-validation.js:238:11

  714) test/patch.test.js PATCH - input-validation instance custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:239:32

  715) test/patch.test.js PATCH - input-validation instance custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  716) test/patch.test.js PATCH - input-validation custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:42795:
     Error: connect ECONNREFUSED 127.0.0.1:42795
      at test/input-validation.js:256:11

  717) test/patch.test.js PATCH - input-validation custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:257:32

  718) test/patch.test.js PATCH - input-validation custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  719) test/patch.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:264:32

  720) test/patch.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:299:34

  721) test/patch.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:311:32

  722) test/patch.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  723) test/patch.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:412:43

  724) test/plugin.test.js fastify.register with fastify-plugin should not incapsulate his code connect ECONNREFUSED 127.0.0.1:38473:
     Error: connect ECONNREFUSED 127.0.0.1:38473
      at test/plugin.test.js:82:9

  725) test/plugin.test.js fastify.register with fastify-plugin should not incapsulate his code Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:83:30

  726) test/plugin.test.js fastify.register with fastify-plugin should not incapsulate his code test count !== plan:

      test count !== plan
      + expected - actual

      -7
      +10
      
  

  727) test/plugin.test.js fastify.register with fastify-plugin should provide access to external fastify instance if opts argument is a function connect ECONNREFUSED 127.0.0.1:42337:
     Error: connect ECONNREFUSED 127.0.0.1:42337
      at test/plugin.test.js:161:9

  728) test/plugin.test.js fastify.register with fastify-plugin should provide access to external fastify instance if opts argument is a function Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:162:30

  729) test/plugin.test.js fastify.register with fastify-plugin should provide access to external fastify instance if opts argument is a function test count !== plan:

      test count !== plan
      + expected - actual

      -19
      +22
      
  

  730) test/plugin.test.js fastify.register with fastify-plugin registers root level plugins connect ECONNREFUSED 127.0.0.1:34471:
     Error: connect ECONNREFUSED 127.0.0.1:34471
      at test/plugin.test.js:216:9

  731) test/plugin.test.js fastify.register with fastify-plugin registers root level plugins Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:217:30

  732) test/plugin.test.js fastify.register with fastify-plugin registers root level plugins test count !== plan:

      test count !== plan
      + expected - actual

      -7
      +15
      
  

  733) test/plugin.test.js check dependencies - should not throw connect ECONNREFUSED 127.0.0.1:34471:
     Error: connect ECONNREFUSED 127.0.0.1:34471
      at test/plugin.test.js:226:9

  734) test/plugin.test.js check dependencies - should not throw connect ECONNREFUSED 127.0.0.1:41261:
     Error: connect ECONNREFUSED 127.0.0.1:41261
      at test/plugin.test.js:278:9

  735) test/plugin.test.js check dependencies - should not throw Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:279:30

  736) test/plugin.test.js check dependencies - should not throw test count !== plan:

      test count !== plan
      + expected - actual

      -9
      +12
      
  

  737) test/plugin.test.js check dependencies - should throw connect ECONNREFUSED 127.0.0.1:37057:
     Error: connect ECONNREFUSED 127.0.0.1:37057
      at test/plugin.test.js:330:9

  738) test/plugin.test.js check dependencies - should throw Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:331:30

  739) test/plugin.test.js check dependencies - should throw test count !== plan:

      test count !== plan
      + expected - actual

      -8
      +12
      
  

  740) test/plugin.test.js plugin incapsulation connect ECONNREFUSED 127.0.0.1:36035:
     Error: connect ECONNREFUSED 127.0.0.1:36035
      at test/plugin.test.js:528:9

  741) test/plugin.test.js plugin incapsulation Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:529:30

  742) test/plugin.test.js plugin incapsulation test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +10
      
  

  743) test/plugin.test.js if a plugin raises an error and there is not a callback to handle it, the server must not start connect ECONNREFUSED 127.0.0.1:36035:
     Error: connect ECONNREFUSED 127.0.0.1:36035
      at test/plugin.test.js:538:9

  744) test/plugin.test.js if a plugin raises an error and there is not a callback to handle it, the server must not start test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +2
      
  

  745) test/plugin.test.js add hooks after route declaration connect ECONNREFUSED 127.0.0.1:34333:
     Error: connect ECONNREFUSED 127.0.0.1:34333
      at test/plugin.test.js:600:9

  746) test/plugin.test.js add hooks after route declaration "undefined" is not valid JSON:
     Error: "undefined" is not valid JSON
      at JSON.parse (<anonymous>)
      at test/plugin.test.js:601:24

  747) test/plugin.test.js nested plugins connect ECONNREFUSED 127.0.0.1:37479:
     Error: connect ECONNREFUSED 127.0.0.1:37479
      at test/plugin.test.js:639:9

  748) test/plugin.test.js nested plugins Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/plugin.test.js:640:24

  749) test/plugin.test.js nested plugins test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  750) test/plugin.test.js plugin metadata - decorators connect ECONNREFUSED 127.0.0.1:37479:
     Error: connect ECONNREFUSED 127.0.0.1:37479
      at test/plugin.test.js:647:9

  751) test/plugin.test.js plugin metadata - decorators test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +1
      
  

  752) test/plugin.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:227:30

  753) test/plugin.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/plugin.test.js:539:30

  754) test/plugin.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/plugin.test.js:648:24

  755) test/plugin.test.js timeout!:
     timeout!
  

  756) test/plugin.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -26
      +1
      
  

  757) test/post.test.js POST - correctly replies connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:112:11

  758) test/post.test.js POST - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:113:32

  759) test/post.test.js POST - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  760) test/post.test.js POST - correctly replies with very large body connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:128:11

  761) test/post.test.js POST - correctly replies with very large body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:129:32

  762) test/post.test.js POST - correctly replies with very large body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  763) test/post.test.js POST - correctly replies if the content type has the charset connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:144:11

  764) test/post.test.js POST - correctly replies if the content type has the charset Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:145:32

  765) test/post.test.js POST - correctly replies if the content type has the charset test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  766) test/post.test.js POST without schema - correctly replies connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:160:11

  767) test/post.test.js POST without schema - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:161:32

  768) test/post.test.js POST without schema - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  769) test/post.test.js POST with body and querystring - correctly replies connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:176:11

  770) test/post.test.js POST with body and querystring - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:177:32

  771) test/post.test.js POST with body and querystring - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  772) test/post.test.js POST with no body - correctly replies connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:190:11

  773) test/post.test.js POST with no body - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:191:32

  774) test/post.test.js POST with no body - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +6
      
  

  775) test/post.test.js POST returns 415 - incorrect media type if body is not json connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:214:11

  776) test/post.test.js POST returns 415 - incorrect media type if body is not json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:218:34

  777) test/post.test.js POST returns 400 - Bad Request connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:251:11

  778) test/post.test.js POST returns 400 - Bad Request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:252:32

  779) test/post.test.js POST returns 400 - Bad Request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  780) test/post.test.js POST returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:263:11

  781) test/post.test.js POST returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:279:11

  782) test/post.test.js POST returns 413 - Payload Too Large Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:280:32

  783) test/post.test.js POST returns 413 - Payload Too Large test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  784) test/post.test.js POST should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:298:13

  785) test/post.test.js POST should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:310:11

  786) test/post.test.js POST should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:343:11

  787) test/post.test.js POST should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:344:43

  788) test/post.test.js POST should fail with empty body and application/json content-type test count !== plan:

      test count !== plan
      + expected - actual

      -10
      +12
      
  

  789) test/post.test.js POST - correctly replies connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:377:11

  790) test/post.test.js POST - correctly replies connect ECONNREFUSED 127.0.0.1:44125:
     Error: connect ECONNREFUSED 127.0.0.1:44125
      at test/helper.js:411:11

  791) test/post.test.js POST - correctly replies connect ECONNREFUSED 127.0.0.1:38873:
     Error: connect ECONNREFUSED 127.0.0.1:38873
      at test/input-validation.js:134:13

  792) test/post.test.js POST - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:135:34

  793) test/post.test.js POST - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  794) test/post.test.js POST - 400 on bad parameters connect ECONNREFUSED 127.0.0.1:38873:
     Error: connect ECONNREFUSED 127.0.0.1:38873
      at test/input-validation.js:151:11

  795) test/post.test.js POST - 400 on bad parameters Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:152:32

  796) test/post.test.js POST - 400 on bad parameters test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  797) test/post.test.js POST - input-validation coerce connect ECONNREFUSED 127.0.0.1:38873:
     Error: connect ECONNREFUSED 127.0.0.1:38873
      at test/input-validation.js:171:11

  798) test/post.test.js POST - input-validation coerce Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:172:32

  799) test/post.test.js POST - input-validation coerce test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  800) test/post.test.js POST - input-validation custom schema compiler connect ECONNREFUSED 127.0.0.1:38873:
     Error: connect ECONNREFUSED 127.0.0.1:38873
      at test/input-validation.js:188:11

  801) test/post.test.js POST - input-validation custom schema compiler Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:189:32

  802) test/post.test.js POST - input-validation custom schema compiler test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  803) test/post.test.js POST - input-validation joi schema compiler ok connect ECONNREFUSED 127.0.0.1:38873:
     Error: connect ECONNREFUSED 127.0.0.1:38873
      at test/input-validation.js:204:11

  804) test/post.test.js POST - input-validation joi schema compiler ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:205:32

  805) test/post.test.js POST - input-validation joi schema compiler ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  806) test/post.test.js POST - input-validation joi schema compiler ko connect ECONNREFUSED 127.0.0.1:38873:
     Error: connect ECONNREFUSED 127.0.0.1:38873
      at test/input-validation.js:220:11

  807) test/post.test.js POST - input-validation joi schema compiler ko Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:221:32

  808) test/post.test.js POST - input-validation joi schema compiler ko test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  809) test/post.test.js POST - input-validation instance custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:38873:
     Error: connect ECONNREFUSED 127.0.0.1:38873
      at test/input-validation.js:238:11

  810) test/post.test.js POST - input-validation instance custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:239:32

  811) test/post.test.js POST - input-validation instance custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  812) test/post.test.js POST - input-validation custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:38873:
     Error: connect ECONNREFUSED 127.0.0.1:38873
      at test/input-validation.js:256:11

  813) test/post.test.js POST - input-validation custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:257:32

  814) test/post.test.js POST - input-validation custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  815) test/post.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:264:32

  816) test/post.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:299:34

  817) test/post.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:311:32

  818) test/post.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  819) test/post.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:412:43

  820) test/promises.test.js shorthand - sget return promise es6 get connect ECONNREFUSED 127.0.0.1:44525:
     Error: connect ECONNREFUSED 127.0.0.1:44525
      at test/promises.test.js:73:9

  821) test/promises.test.js shorthand - sget return promise es6 get Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/promises.test.js:74:30

  822) test/promises.test.js shorthand - sget return promise es6 get test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  823) test/promises.test.js shorthand - sget promise es6 get return error connect ECONNREFUSED 127.0.0.1:44525:
     Error: connect ECONNREFUSED 127.0.0.1:44525
      at test/promises.test.js:86:9

  824) test/promises.test.js shorthand - sget promise es6 get return error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/promises.test.js:87:30

  825) test/promises.test.js sget promise double send connect ECONNREFUSED 127.0.0.1:44525:
     Error: connect ECONNREFUSED 127.0.0.1:44525
      at test/promises.test.js:98:9

  826) test/promises.test.js sget promise double send Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/promises.test.js:99:30

  827) test/promises.test.js sget promise double send test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  828) test/promises.test.js thenable connect ECONNREFUSED 127.0.0.1:44525:
     Error: connect ECONNREFUSED 127.0.0.1:44525
      at test/promises.test.js:110:9

  829) test/promises.test.js thenable Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/promises.test.js:111:30

  830) test/promises.test.js thenable test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  831) test/promises.test.js thenable (error) connect ECONNREFUSED 127.0.0.1:44525:
     Error: connect ECONNREFUSED 127.0.0.1:44525
      at test/promises.test.js:123:9

  832) test/promises.test.js thenable (error) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/promises.test.js:124:30

  833) test/promises.test.js return-reply connect ECONNREFUSED 127.0.0.1:44525:
     Error: connect ECONNREFUSED 127.0.0.1:44525
      at test/promises.test.js:134:9

  834) test/promises.test.js return-reply Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/promises.test.js:135:30

  835) test/promises.test.js return-reply test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  836) test/proto-poisoning.test.js proto-poisoning error connect ECONNREFUSED 127.0.0.1:43173:
     Error: connect ECONNREFUSED 127.0.0.1:43173
      at test/proto-poisoning.test.js:27:9

  837) test/proto-poisoning.test.js proto-poisoning error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/proto-poisoning.test.js:28:30

  838) test/proto-poisoning.test.js proto-poisoning remove connect ECONNREFUSED 127.0.0.1:43197:
     Error: connect ECONNREFUSED 127.0.0.1:43197
      at test/proto-poisoning.test.js:53:9

  839) test/proto-poisoning.test.js proto-poisoning remove Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/proto-poisoning.test.js:54:30

  840) test/proto-poisoning.test.js proto-poisoning remove test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  841) test/proto-poisoning.test.js proto-poisoning ignore connect ECONNREFUSED 127.0.0.1:37155:
     Error: connect ECONNREFUSED 127.0.0.1:37155
      at test/proto-poisoning.test.js:79:9

  842) test/proto-poisoning.test.js proto-poisoning ignore Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/proto-poisoning.test.js:80:30

  843) test/proto-poisoning.test.js proto-poisoning ignore test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +4
      
  

  844) test/put.error-handler.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:112:11

  845) test/put.error-handler.test.js PUT - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:113:32

  846) test/put.error-handler.test.js PUT - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  847) test/put.error-handler.test.js PUT - correctly replies with very large body connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:128:11

  848) test/put.error-handler.test.js PUT - correctly replies with very large body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:129:32

  849) test/put.error-handler.test.js PUT - correctly replies with very large body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  850) test/put.error-handler.test.js PUT - correctly replies if the content type has the charset connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:144:11

  851) test/put.error-handler.test.js PUT - correctly replies if the content type has the charset Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:145:32

  852) test/put.error-handler.test.js PUT - correctly replies if the content type has the charset test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  853) test/put.error-handler.test.js PUT without schema - correctly replies connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:160:11

  854) test/put.error-handler.test.js PUT without schema - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:161:32

  855) test/put.error-handler.test.js PUT without schema - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  856) test/put.error-handler.test.js PUT with body and querystring - correctly replies connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:176:11

  857) test/put.error-handler.test.js PUT with body and querystring - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:177:32

  858) test/put.error-handler.test.js PUT with body and querystring - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  859) test/put.error-handler.test.js PUT with no body - correctly replies connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:190:11

  860) test/put.error-handler.test.js PUT with no body - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:191:32

  861) test/put.error-handler.test.js PUT with no body - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +6
      
  

  862) test/put.error-handler.test.js PUT returns 415 - incorrect media type if body is not json connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:214:11

  863) test/put.error-handler.test.js PUT returns 415 - incorrect media type if body is not json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:218:34

  864) test/put.error-handler.test.js PUT returns 400 - Bad Request connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:251:11

  865) test/put.error-handler.test.js PUT returns 400 - Bad Request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:252:32

  866) test/put.error-handler.test.js PUT returns 400 - Bad Request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  867) test/put.error-handler.test.js PUT returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:263:11

  868) test/put.error-handler.test.js PUT returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:279:11

  869) test/put.error-handler.test.js PUT returns 413 - Payload Too Large Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:280:32

  870) test/put.error-handler.test.js PUT returns 413 - Payload Too Large test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  871) test/put.error-handler.test.js PUT should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:298:13

  872) test/put.error-handler.test.js PUT should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:310:11

  873) test/put.error-handler.test.js PUT should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:377:11

  874) test/put.error-handler.test.js PUT should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  875) test/put.error-handler.test.js PUT should fail with empty body and application/json content-type test count !== plan:

      test count !== plan
      + expected - actual

      -10
      +12
      
  

  876) test/put.error-handler.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:411:11

  877) test/put.error-handler.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:43269:
     Error: connect ECONNREFUSED 127.0.0.1:43269
      at test/helper.js:343:11

  878) test/put.error-handler.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:33275:
     Error: connect ECONNREFUSED 127.0.0.1:33275
      at test/input-validation.js:134:13

  879) test/put.error-handler.test.js PUT - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:135:34

  880) test/put.error-handler.test.js PUT - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  881) test/put.error-handler.test.js PUT - 400 on bad parameters connect ECONNREFUSED 127.0.0.1:33275:
     Error: connect ECONNREFUSED 127.0.0.1:33275
      at test/input-validation.js:151:11

  882) test/put.error-handler.test.js PUT - 400 on bad parameters Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:152:32

  883) test/put.error-handler.test.js PUT - 400 on bad parameters test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  884) test/put.error-handler.test.js PUT - input-validation coerce connect ECONNREFUSED 127.0.0.1:33275:
     Error: connect ECONNREFUSED 127.0.0.1:33275
      at test/input-validation.js:171:11

  885) test/put.error-handler.test.js PUT - input-validation coerce Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:172:32

  886) test/put.error-handler.test.js PUT - input-validation coerce test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  887) test/put.error-handler.test.js PUT - input-validation custom schema compiler connect ECONNREFUSED 127.0.0.1:33275:
     Error: connect ECONNREFUSED 127.0.0.1:33275
      at test/input-validation.js:188:11

  888) test/put.error-handler.test.js PUT - input-validation custom schema compiler Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:189:32

  889) test/put.error-handler.test.js PUT - input-validation custom schema compiler test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  890) test/put.error-handler.test.js PUT - input-validation joi schema compiler ok connect ECONNREFUSED 127.0.0.1:33275:
     Error: connect ECONNREFUSED 127.0.0.1:33275
      at test/input-validation.js:204:11

  891) test/put.error-handler.test.js PUT - input-validation joi schema compiler ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:205:32

  892) test/put.error-handler.test.js PUT - input-validation joi schema compiler ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  893) test/put.error-handler.test.js PUT - input-validation joi schema compiler ko connect ECONNREFUSED 127.0.0.1:33275:
     Error: connect ECONNREFUSED 127.0.0.1:33275
      at test/input-validation.js:220:11

  894) test/put.error-handler.test.js PUT - input-validation joi schema compiler ko Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:221:32

  895) test/put.error-handler.test.js PUT - input-validation joi schema compiler ko test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  896) test/put.error-handler.test.js PUT - input-validation instance custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:33275:
     Error: connect ECONNREFUSED 127.0.0.1:33275
      at test/input-validation.js:238:11

  897) test/put.error-handler.test.js PUT - input-validation instance custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:239:32

  898) test/put.error-handler.test.js PUT - input-validation instance custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  899) test/put.error-handler.test.js PUT - input-validation custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:33275:
     Error: connect ECONNREFUSED 127.0.0.1:33275
      at test/input-validation.js:256:11

  900) test/put.error-handler.test.js PUT - input-validation custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:257:32

  901) test/put.error-handler.test.js PUT - input-validation custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  902) test/put.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:264:32

  903) test/put.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:299:34

  904) test/put.error-handler.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:311:32

  905) test/put.error-handler.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:412:43

  906) test/put.error-handler.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:344:43

  907) test/put.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:112:11

  908) test/put.test.js PUT - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:113:32

  909) test/put.test.js PUT - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  910) test/put.test.js PUT - correctly replies with very large body connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:128:11

  911) test/put.test.js PUT - correctly replies with very large body Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:129:32

  912) test/put.test.js PUT - correctly replies with very large body test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  913) test/put.test.js PUT - correctly replies if the content type has the charset connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:144:11

  914) test/put.test.js PUT - correctly replies if the content type has the charset Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:145:32

  915) test/put.test.js PUT - correctly replies if the content type has the charset test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  916) test/put.test.js PUT without schema - correctly replies connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:160:11

  917) test/put.test.js PUT without schema - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:161:32

  918) test/put.test.js PUT without schema - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  919) test/put.test.js PUT with body and querystring - correctly replies connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:176:11

  920) test/put.test.js PUT with body and querystring - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:177:32

  921) test/put.test.js PUT with body and querystring - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  922) test/put.test.js PUT with no body - correctly replies connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:190:11

  923) test/put.test.js PUT with no body - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:191:32

  924) test/put.test.js PUT with no body - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +6
      
  

  925) test/put.test.js PUT returns 415 - incorrect media type if body is not json connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:214:11

  926) test/put.test.js PUT returns 415 - incorrect media type if body is not json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:218:34

  927) test/put.test.js PUT returns 400 - Bad Request connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:251:11

  928) test/put.test.js PUT returns 400 - Bad Request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:252:32

  929) test/put.test.js PUT returns 400 - Bad Request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  930) test/put.test.js PUT returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:263:11

  931) test/put.test.js PUT returns 413 - Payload Too Large connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:279:11

  932) test/put.test.js PUT returns 413 - Payload Too Large Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:280:32

  933) test/put.test.js PUT returns 413 - Payload Too Large test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  934) test/put.test.js PUT should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:298:13

  935) test/put.test.js PUT should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:310:11

  936) test/put.test.js PUT should fail with empty body and application/json content-type connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:343:11

  937) test/put.test.js PUT should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:344:43

  938) test/put.test.js PUT should fail with empty body and application/json content-type test count !== plan:

      test count !== plan
      + expected - actual

      -10
      +12
      
  

  939) test/put.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:377:11

  940) test/put.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:36461:
     Error: connect ECONNREFUSED 127.0.0.1:36461
      at test/helper.js:411:11

  941) test/put.test.js PUT - correctly replies connect ECONNREFUSED 127.0.0.1:36463:
     Error: connect ECONNREFUSED 127.0.0.1:36463
      at test/input-validation.js:134:13

  942) test/put.test.js PUT - correctly replies Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:135:34

  943) test/put.test.js PUT - correctly replies test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +3
      
  

  944) test/put.test.js PUT - 400 on bad parameters connect ECONNREFUSED 127.0.0.1:36463:
     Error: connect ECONNREFUSED 127.0.0.1:36463
      at test/input-validation.js:151:11

  945) test/put.test.js PUT - 400 on bad parameters Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:152:32

  946) test/put.test.js PUT - 400 on bad parameters test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  947) test/put.test.js PUT - input-validation coerce connect ECONNREFUSED 127.0.0.1:36463:
     Error: connect ECONNREFUSED 127.0.0.1:36463
      at test/input-validation.js:171:11

  948) test/put.test.js PUT - input-validation coerce Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:172:32

  949) test/put.test.js PUT - input-validation coerce test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  950) test/put.test.js PUT - input-validation custom schema compiler connect ECONNREFUSED 127.0.0.1:36463:
     Error: connect ECONNREFUSED 127.0.0.1:36463
      at test/input-validation.js:188:11

  951) test/put.test.js PUT - input-validation custom schema compiler Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:189:32

  952) test/put.test.js PUT - input-validation custom schema compiler test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  953) test/put.test.js PUT - input-validation joi schema compiler ok connect ECONNREFUSED 127.0.0.1:36463:
     Error: connect ECONNREFUSED 127.0.0.1:36463
      at test/input-validation.js:204:11

  954) test/put.test.js PUT - input-validation joi schema compiler ok Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:205:32

  955) test/put.test.js PUT - input-validation joi schema compiler ok test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  956) test/put.test.js PUT - input-validation joi schema compiler ko connect ECONNREFUSED 127.0.0.1:36463:
     Error: connect ECONNREFUSED 127.0.0.1:36463
      at test/input-validation.js:220:11

  957) test/put.test.js PUT - input-validation joi schema compiler ko Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:221:32

  958) test/put.test.js PUT - input-validation joi schema compiler ko test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  959) test/put.test.js PUT - input-validation instance custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:36463:
     Error: connect ECONNREFUSED 127.0.0.1:36463
      at test/input-validation.js:238:11

  960) test/put.test.js PUT - input-validation instance custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:239:32

  961) test/put.test.js PUT - input-validation instance custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  962) test/put.test.js PUT - input-validation custom schema compiler encapsulated connect ECONNREFUSED 127.0.0.1:36463:
     Error: connect ECONNREFUSED 127.0.0.1:36463
      at test/input-validation.js:256:11

  963) test/put.test.js PUT - input-validation custom schema compiler encapsulated Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/input-validation.js:257:32

  964) test/put.test.js PUT - input-validation custom schema compiler encapsulated test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  965) test/put.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:264:32

  966) test/put.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:299:34

  967) test/put.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/helper.js:311:32

  968) test/put.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  969) test/put.test.js Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:412:43

  970) test/register.test.js register connect ECONNREFUSED 127.0.0.1:38205:
     Error: connect ECONNREFUSED 127.0.0.1:38205
      at test/register.test.js:54:9

  971) test/register.test.js register Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/register.test.js:55:30

  972) test/register.test.js register test count !== plan:

      test count !== plan
      + expected - actual

      -11
      +17
      
  

  973) test/register.test.js connect ECONNREFUSED 127.0.0.1:38205:
     Error: connect ECONNREFUSED 127.0.0.1:38205
      at test/register.test.js:54:9

  974) test/reply-error.test.js Should reply 400 on client error timeout!:
     Error: timeout!


  975) test/reply-error.test.js Error instance sets HTTP status code test count !== plan:

      test count !== plan
      + expected - actual

      -0
      +3
      
  

  976) test/reply-error.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -44
      +1
      
  

  977) test/route.test.js route route - get connect ECONNREFUSED 127.0.0.1:39347:
     Error: connect ECONNREFUSED 127.0.0.1:39347
      at test/route.test.js:152:11

  978) test/route.test.js route route - get Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/route.test.js:153:32

  979) test/route.test.js route route - get test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  980) test/route.test.js route route - missing schema connect ECONNREFUSED 127.0.0.1:39347:
     Error: connect ECONNREFUSED 127.0.0.1:39347
      at test/route.test.js:164:11

  981) test/route.test.js route route - missing schema Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/route.test.js:165:32

  982) test/route.test.js route route - missing schema test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  983) test/route.test.js route route - multiple methods connect ECONNREFUSED 127.0.0.1:39347:
     Error: connect ECONNREFUSED 127.0.0.1:39347
      at test/route.test.js:176:11

  984) test/route.test.js route route - multiple methods Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/route.test.js:177:32

  985) test/route.test.js route route - multiple methods test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +6
      
  

  986) test/route.test.js path can be specified in place of uri connect ECONNREFUSED 127.0.0.1:39347:
     Error: connect ECONNREFUSED 127.0.0.1:39347
      at test/route.test.js:185:11

  987) test/route.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/route.test.js:186:32

  988) test/router-options.test.js Should honor ignoreTrailingSlash option connect ECONNREFUSED 127.0.0.1:42589:
     connect ECONNREFUSED 127.0.0.1:42589
  

  989) test/router-options.test.js Should honor ignoreTrailingSlash option test count !== plan:

      test count !== plan
      + expected - actual

      -1
      +4
      
  

  990) test/router-options.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/router-options.test.js:25:16

  991) test/router-options.test.js connect ECONNREFUSED 127.0.0.1:42589:
     connect ECONNREFUSED 127.0.0.1:42589
  

  992) test/router-options.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/router-options.test.js:31:16

  993) test/stream.test.js should respond with a stream connect ECONNREFUSED 127.0.0.1:39797:
     Error: connect ECONNREFUSED 127.0.0.1:39797
      at test/stream.test.js:36:9

  994) test/stream.test.js should respond with a stream Cannot read properties of undefined (reading 'headers'):
     Error: Cannot read properties of undefined (reading 'headers')
      at test/stream.test.js:37:30

  995) test/stream.test.js should respond with a stream test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +8
      
  

  996) test/stream.test.js should trigger the onSend hook connect ECONNREFUSED 127.0.0.1:39797:
     Error: connect ECONNREFUSED 127.0.0.1:39797
      at test/stream.test.js:47:9

  997) test/stream.test.js should trigger the onSend hook test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +4
      
  

  998) test/stream.test.js should trigger the onSend hook only twice if pumping the stream fails, first with the stream, second with the serialized error connect ECONNREFUSED 127.0.0.1:34335:
     Error: connect ECONNREFUSED 127.0.0.1:34335
      at test/stream.test.js:103:9

  999) test/stream.test.js should trigger the onSend hook only twice if pumping the stream fails, first with the stream, second with the serialized error Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/stream.test.js:104:30

  1000) test/stream.test.js should trigger the onSend hook only twice if pumping the stream fails, first with the stream, second with the serialized error test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  1001) test/stream.test.js Destroying streams prematurely test unfinished:
     Error: test unfinished
      at Object.<anonymous> (test/stream.test.js:142:1)

  1002) test/stream.test.js Destroying streams prematurely test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +6
      
  

  1003) test/stream.test.js child test left in queue: t.test Destroying streams prematurely should call close method:
     child test left in queue: t.test Destroying streams prematurely should call close method
  

  1004) test/stream.test.js child test left in queue: t.test Destroying streams prematurely should call abort method:
     child test left in queue: t.test Destroying streams prematurely should call abort method
  

  1005) test/stream.test.js child test left in queue: t.test should respond with a stream1:
     child test left in queue: t.test should respond with a stream1
  

  1006) test/stream.test.js child test left in queue: t.test return a 404 if the stream emits a 404 error:
     child test left in queue: t.test return a 404 if the stream emits a 404 error
  

  1007) test/stream.test.js child test left in queue: t.test should support send module 200 and 404:
     child test left in queue: t.test should support send module 200 and 404
  

  1008) test/stream.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -10
      +1
      
  

  1009) test/trust-proxy.test.js trust proxy, add properties to node req test unfinished:
     Error: test unfinished
      at Object.<anonymous> (test/trust-proxy.test.js:44:1)

  1010) test/trust-proxy.test.js trust proxy, add properties to node req test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +15
      
  

  1011) test/trust-proxy.test.js child test left in queue: t.test trust proxy, not add properties to node req:
     child test left in queue: t.test trust proxy, not add properties to node req
  

  1012) test/trust-proxy.test.js child test left in queue: t.test trust proxy chain:
     child test left in queue: t.test trust proxy chain
  

  1013) test/trust-proxy.test.js child test left in queue: t.test trust proxy function:
     child test left in queue: t.test trust proxy function
  

  1014) test/trust-proxy.test.js child test left in queue: t.test trust proxy number:
     child test left in queue: t.test trust proxy number
  

  1015) test/trust-proxy.test.js child test left in queue: t.test trust proxy IP addresses:
     child test left in queue: t.test trust proxy IP addresses
  

  1016) test/trust-proxy.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -6
      +1
      
  

  1017) test/validation-error-handling.test.js should handle response validation error should be equal:

      Error: should be equal
      + expected - actual

      -{"statusCode":500,"error":"Internal Server Error","message":"\"name\" is required!"}
      +{"statusCode":500,"error":"Internal Server Error","message":"name is required!"}
      
      at test/validation-error-handling.test.js:223:7

  1018) test/validation-error-handling.test.js should handle response validation error with promises should be equal:

      Error: should be equal
      + expected - actual

      -{"statusCode":500,"error":"Internal Server Error","message":"\"name\" is required!"}
      +{"statusCode":500,"error":"Internal Server Error","message":"name is required!"}
      
      at test/validation-error-handling.test.js:253:7

  1019) test/versioned-routes.test.js Should register a versioned route connect ECONNREFUSED 127.0.0.1:36615:
     Error: connect ECONNREFUSED 127.0.0.1:36615
      at test/versioned-routes.test.js:209:9

  1020) test/versioned-routes.test.js Should register a versioned route Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/versioned-routes.test.js:210:30

  1021) test/versioned-routes.test.js Should register a versioned route test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +6
      
  

  1022) test/versioned-routes.test.js Shorthand route declaration connect ECONNREFUSED 127.0.0.1:36615:
     Error: connect ECONNREFUSED 127.0.0.1:36615
      at test/versioned-routes.test.js:221:9

  1023) test/versioned-routes.test.js Shorthand route declaration test count !== plan:

      test count !== plan
      + expected - actual

      -6
      +5
      
  

  1024) test/versioned-routes.test.js Bas accept version (server) connect ECONNREFUSED 127.0.0.1:40325:
     Error: connect ECONNREFUSED 127.0.0.1:40325
      at test/versioned-routes.test.js:350:9

  1025) test/versioned-routes.test.js Bas accept version (server) Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/versioned-routes.test.js:351:30

  1026) test/versioned-routes.test.js Bas accept version (server) test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +5
      
  

  1027) test/versioned-routes.test.js test log stream connect ECONNREFUSED 127.0.0.1:40325:
     Error: connect ECONNREFUSED 127.0.0.1:40325
      at test/versioned-routes.test.js:361:9

  1028) test/versioned-routes.test.js test log stream test unfinished:
     Error: test unfinished
      at Object.<anonymous> (test/versioned-routes.test.js:367:1)

  1029) test/versioned-routes.test.js child test left in queue: t.test Should register a versioned route with custome versioning strategy:
     child test left in queue: t.test Should register a versioned route with custome versioning strategy
  

  1030) test/versioned-routes.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/versioned-routes.test.js:222:30

  1031) test/versioned-routes.test.js Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/versioned-routes.test.js:362:30

  1032) test/versioned-routes.test.js connect ECONNREFUSED 127.0.0.1:40905:
     connect ECONNREFUSED 127.0.0.1:40905
  

  1033) test/versioned-routes.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -14
      +13
      
  

  1034) test/http2/http2.test.js http get request test unfinished:
     Error: test unfinished
      at test/http2/plain.js:27:3
      at Http2Server.wrap (lib/server.js:74:9)

  1035) test/http2/http2.test.js http get request test count !== plan:

      test count !== plan
      + expected - actual

      -1
      +3
      
  

  1036) test/http2/http2.test.js child test left in queue: t.test https get request:
     child test left in queue: t.test https get request
  

  1037) test/http2/http2.test.js child test left in queue: t.test http UNKNOWN_METHOD request:
     child test left in queue: t.test http UNKNOWN_METHOD request
  

  1038) test/http2/http2.test.js child test left in queue: t.test https get error:
     child test left in queue: t.test https get error
  

  1039) test/http2/http2.test.js child test left in queue: t.test https post:
     child test left in queue: t.test https post
  

  1040) test/http2/http2.test.js child test left in queue: t.test https get request:
     child test left in queue: t.test https get request
  

  1041) test/http2/http2.test.js child test left in queue: t.test http1 get request:
     child test left in queue: t.test http1 get request
  

  1042) test/http2/http2.test.js child test left in queue: t.test http1 get error:
     child test left in queue: t.test http1 get error
  

  1043) test/http2/http2.test.js connect ECONNREFUSED 127.0.0.1:34227:
     connect ECONNREFUSED 127.0.0.1:34227
  

  1044) test/http2/http2.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -20
      +13
      
  

  1045) test/https/custom-https-server.test.js Should support a custom https server connect ECONNREFUSED 127.0.0.1:45345:
     Error: connect ECONNREFUSED 127.0.0.1:45345
      at test/https/custom-https-server.test.js:47:9

  1046) test/https/custom-https-server.test.js Should support a custom https server Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/https/custom-https-server.test.js:48:30

  1047) test/https/custom-https-server.test.js Should support a custom https server test count !== plan:

      test count !== plan
      + expected - actual

      -4
      +6
      
  

  1048) test/https/https.test.js https get request connect ECONNREFUSED 127.0.0.1:35349:
     Error: connect ECONNREFUSED 127.0.0.1:35349
      at test/https/https.test.js:45:9

  1049) test/https/https.test.js https get request Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/https/https.test.js:46:30

  1050) test/https/https.test.js https get request test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  1051) test/internals/handleRequest.test.js request should be defined in onSend Hook on post request with content type application/json connect ECONNREFUSED 127.0.0.1:37773:
     Error: connect ECONNREFUSED 127.0.0.1:37773
      at test/internals/handleRequest.test.js:165:9

  1052) test/internals/handleRequest.test.js request should be defined in onSend Hook on post request with content type application/json Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/internals/handleRequest.test.js:167:30

  1053) test/internals/handleRequest.test.js request should be defined in onSend Hook on post request with content type application/json test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +8
      
  

  1054) test/internals/handleRequest.test.js request should be defined in onSend Hook on post request with content type application/x-www-form-urlencoded connect ECONNREFUSED 127.0.0.1:38815:
     Error: connect ECONNREFUSED 127.0.0.1:38815
      at test/internals/handleRequest.test.js:196:9

  1055) test/internals/handleRequest.test.js request should be defined in onSend Hook on post request with content type application/x-www-form-urlencoded Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/internals/handleRequest.test.js:198:30

  1056) test/internals/handleRequest.test.js request should be defined in onSend Hook on post request with content type application/x-www-form-urlencoded test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +7
      
  

  1057) test/internals/handleRequest.test.js request should be defined in onSend Hook on options request with content type application/x-www-form-urlencoded connect ECONNREFUSED 127.0.0.1:39267:
     Error: connect ECONNREFUSED 127.0.0.1:39267
      at test/internals/handleRequest.test.js:227:9

  1058) test/internals/handleRequest.test.js request should be defined in onSend Hook on options request with content type application/x-www-form-urlencoded Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/internals/handleRequest.test.js:229:30

  1059) test/internals/handleRequest.test.js request should be defined in onSend Hook on options request with content type application/x-www-form-urlencoded test count !== plan:

      test count !== plan
      + expected - actual

      -3
      +7
      
  

  1060) test/internals/initialConfig.test.js Should not have issues when passing stream options to Pino.js test unfinished:
     Error: test unfinished
      at Object.<anonymous> (test/internals/initialConfig.test.js:205:1)

  1061) test/internals/initialConfig.test.js Should not have issues when passing stream options to Pino.js test count !== plan:

      test count !== plan
      + expected - actual

      -5
      +15
      
  

  1062) test/internals/initialConfig.test.js child test left in queue: t.test deepFreezeObject() should not throw on TypedArray:
     child test left in queue: t.test deepFreezeObject() should not throw on TypedArray
  

  1063) test/internals/initialConfig.test.js connect ECONNREFUSED 127.0.0.1:42521:
     connect ECONNREFUSED 127.0.0.1:42521
  

  1064) test/internals/initialConfig.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -11
      +10
      
  

  1065) test/internals/reply.test.js within an instance custom serializer should be used connect ECONNREFUSED 127.0.0.1:37003:
     Error: connect ECONNREFUSED 127.0.0.1:37003
      at test/internals/reply.test.js:193:11

  1066) test/internals/reply.test.js within an instance custom serializer should be used Cannot read properties of undefined (reading 'headers'):
     Error: Cannot read properties of undefined (reading 'headers')
      at test/internals/reply.test.js:194:32

  1067) test/internals/reply.test.js within an instance custom serializer should be used test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  1068) test/internals/reply.test.js within an instance status code and content-type should be correct connect ECONNREFUSED 127.0.0.1:37003:
     Error: connect ECONNREFUSED 127.0.0.1:37003
      at test/internals/reply.test.js:205:11

  1069) test/internals/reply.test.js within an instance status code and content-type should be correct Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/internals/reply.test.js:206:32

  1070) test/internals/reply.test.js within an instance status code and content-type should be correct test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +4
      
  

  1071) test/internals/reply.test.js within an instance auto status code shoud be 200 connect ECONNREFUSED 127.0.0.1:37003:
     Error: connect ECONNREFUSED 127.0.0.1:37003
      at test/internals/reply.test.js:218:11

  1072) test/internals/reply.test.js within an instance auto status code shoud be 200 Cannot read properties of undefined (reading 'statusCode'):
     Error: Cannot read properties of undefined (reading 'statusCode')
      at test/internals/reply.test.js:219:32

  1073) test/internals/reply.test.js within an instance auto status code shoud be 200 test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  1074) test/internals/reply.test.js within an instance auto type shoud be text/plain connect ECONNREFUSED 127.0.0.1:37003:
     Error: connect ECONNREFUSED 127.0.0.1:37003
      at test/internals/reply.test.js:230:11

  1075) test/internals/reply.test.js within an instance auto type shoud be text/plain Cannot read properties of undefined (reading 'headers'):
     Error: Cannot read properties of undefined (reading 'headers')
      at test/internals/reply.test.js:231:32

  1076) test/internals/reply.test.js within an instance auto type shoud be text/plain test count !== plan:

      test count !== plan
      + expected - actual

      -2
      +3
      
  

  1077) test/internals/reply.test.js within an instance redirect to `/` - 1 test unfinished:
     Error: test unfinished
      at test/internals/reply.test.js:236:5
      at Server.wrap (lib/server.js:74:9)

  1078) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 2:
     child test left in queue: t.test redirect to `/` - 2
  

  1079) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 3:
     child test left in queue: t.test redirect to `/` - 3
  

  1080) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 4:
     child test left in queue: t.test redirect to `/` - 4
  

  1081) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 5:
     child test left in queue: t.test redirect to `/` - 5
  

  1082) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 6:
     child test left in queue: t.test redirect to `/` - 6
  

  1083) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 7:
     child test left in queue: t.test redirect to `/` - 7
  

  1084) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 8:
     child test left in queue: t.test redirect to `/` - 8
  

  1085) test/internals/reply.test.js within an instance child test left in queue: t.test redirect to `/` - 9:
     child test left in queue: t.test redirect to `/` - 9
  

  1086) test/internals/reply.test.js within an instance test count !== plan:

      test count !== plan
      + expected - actual

      -14
      +6
      
  

  1087) test/internals/reply.test.js child test left in queue: t.test buffer without content type should send a application/octet-stream and raw buffer:
     child test left in queue: t.test buffer without content type should send a application/octet-stream and raw buffer
  

  1088) test/internals/reply.test.js child test left in queue: t.test buffer with content type should not send application/octet-stream:
     child test left in queue: t.test buffer with content type should not send application/octet-stream
  

  1089) test/internals/reply.test.js child test left in queue: t.test stream with content type should not send application/octet-stream:
     child test left in queue: t.test stream with content type should not send application/octet-stream
  

  1090) test/internals/reply.test.js child test left in queue: t.test stream using reply.res.writeHead should return customize headers:
     child test left in queue: t.test stream using reply.res.writeHead should return customize headers
  

  1091) test/internals/reply.test.js child test left in queue: t.test plain string without content type should send a text/plain:
     child test left in queue: t.test plain string without content type should send a text/plain
  

  1092) test/internals/reply.test.js child test left in queue: t.test plain string with content type should be sent unmodified:
     child test left in queue: t.test plain string with content type should be sent unmodified
  

  1093) test/internals/reply.test.js child test left in queue: t.test plain string with content type and custom serializer should be serialized:
     child test left in queue: t.test plain string with content type and custom serializer should be serialized
  

  1094) test/internals/reply.test.js child test left in queue: t.test plain string with content type application/json should be serialized as json:
     child test left in queue: t.test plain string with content type application/json should be serialized as json
  

  1095) test/internals/reply.test.js child test left in queue: t.test error object with a content type that is not application/json should work:
     child test left in queue: t.test error object with a content type that is not application/json should work
  

  1096) test/internals/reply.test.js child test left in queue: t.test undefined payload should be sent as-is:
     child test left in queue: t.test undefined payload should be sent as-is
  

  1097) test/internals/reply.test.js child test left in queue: t.test reply.send(new NotFound()) should not invoke the 404 handler:
     child test left in queue: t.test reply.send(new NotFound()) should not invoke the 404 handler
  

  1098) test/internals/reply.test.js child test left in queue: t.test reply can set multiple instances of same header:
     child test left in queue: t.test reply can set multiple instances of same header
  

  1099) test/internals/reply.test.js child test left in queue: t.test reply.hasHeader returns correct values:
     child test left in queue: t.test reply.hasHeader returns correct values
  

  1100) test/internals/reply.test.js child test left in queue: t.test reply.getHeader returns correct values:
     child test left in queue: t.test reply.getHeader returns correct values
  

  1101) test/internals/reply.test.js child test left in queue: t.test reply.removeHeader can remove the value:
     child test left in queue: t.test reply.removeHeader can remove the value
  

  1102) test/internals/reply.test.js child test left in queue: t.test reply.header can reset the value:
     child test left in queue: t.test reply.header can reset the value
  

  1103) test/internals/reply.test.js child test left in queue: t.test Reply should handle JSON content type with a charset:
     child test left in queue: t.test Reply should handle JSON content type with a charset
  

  1104) test/internals/reply.test.js child test left in queue: t.test Content type and charset set previously:
     child test left in queue: t.test Content type and charset set previously
  

  1105) test/internals/reply.test.js child test left in queue: t.test .status() is an alias for .code():
     child test left in queue: t.test .status() is an alias for .code()
  

  1106) test/internals/reply.test.js child test left in queue: t.test .statusCode is getter and setter:
     child test left in queue: t.test .statusCode is getter and setter
  

  1107) test/internals/reply.test.js child test left in queue: t.test reply.header setting multiple cookies as multiple Set-Cookie headers:
     child test left in queue: t.test reply.header setting multiple cookies as multiple Set-Cookie headers
  

  1108) test/internals/reply.test.js child test left in queue: t.test should throw error when passing falsy value to reply.sent:
     child test left in queue: t.test should throw error when passing falsy value to reply.sent
  

  1109) test/internals/reply.test.js child test left in queue: t.test should throw error when attempting to set reply.sent more than once:
     child test left in queue: t.test should throw error when attempting to set reply.sent more than once
  

  1110) test/internals/reply.test.js child test left in queue: t.test reply.getResponseTime() should return 0 before the timer is initialised on the reply by setting up response listeners:
     child test left in queue: t.test reply.getResponseTime() should return 0 before the timer is initialised on the reply by setting up response listeners
  

  1111) test/internals/reply.test.js child test left in queue: t.test reply.getResponseTime() should return a number greater than 0 after the timer is initialised on the reply by setting up response listeners:
     child test left in queue: t.test reply.getResponseTime() should return a number greater than 0 after the timer is initialised on the reply by setting up response listeners
  

  1112) test/internals/reply.test.js child test left in queue: t.test reply should use the custom serializer:
     child test left in queue: t.test reply should use the custom serializer
  

  1113) test/internals/reply.test.js child test left in queue: t.test reply should use the right serializer in encapsulated context:
     child test left in queue: t.test reply should use the right serializer in encapsulated context
  

  1114) test/internals/reply.test.js child test left in queue: t.test reply should use the right serializer in deep encapsulated context:
     child test left in queue: t.test reply should use the right serializer in deep encapsulated context
  

  1115) test/internals/reply.test.js child test left in queue: t.test reply should use the route serializer:
     child test left in queue: t.test reply should use the route serializer
  

  1116) test/internals/reply.test.js child test left in queue: t.test cannot set the replySerializer when the server is running:
     child test left in queue: t.test cannot set the replySerializer when the server is running
  

  1117) test/internals/reply.test.js child test left in queue: t.test reply should not call the custom serializer for errors and not found:
     child test left in queue: t.test reply should not call the custom serializer for errors and not found
  

  1118) test/internals/reply.test.js child test left in queue: t.test reply.then:
     child test left in queue: t.test reply.then
  

  1119) test/internals/reply.test.js connect ECONNREFUSED 127.0.0.1:37003:
     connect ECONNREFUSED 127.0.0.1:37003
  

  1120) test/internals/reply.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -41
      +9
      
  

