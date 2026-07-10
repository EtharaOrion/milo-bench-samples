
> fastify@2.9.0 unit
> tap --no-esm -J test/*.test.js test/*/*.test.js --reporter=spec


(node:234) Warning: Using 'genReqId' in logger options is deprecated. Use fastify options instead. See: https://www.fastify.io/docs/latest/Server/#gen-request-id
(Use `node --trace-warnings ...` to show where the warning was created)
(node:234) Warning: basePath is deprecated. Use prefix instead. See: https://www.fastify.io/docs/latest/Server/#prefix
(node:234) Warning: The route option `beforeHandler` has been deprecated, use `preHandler` instead
test/404s.test.js
  default 404

    ✓ should not error
    unsupported method

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    unsupported route

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

  customized 404

    ✓ should not error
    unsupported method

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    unsupported route

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    with error object

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    error object with headers property

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent

  custom header in notFound handler

    ✓ should not error
    not found with custom header

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal

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

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    root insupported route

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    unsupported method

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    unsupported route

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    unsupported method bis

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    unsupported route bis

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    unsupported method 3

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    unsupported route 3

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

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

    ✓ onRequest called

    ✓ middleware called

    ✓ preHandler called

    ✓ onSend called

    ✓ onResponse called

    ✓ should not error

    ✓ should be equal

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

    ✓ onRequest called

    ✓ onRequest 2 called

    ✓ middleware called

    ✓ middleware 2 called

    ✓ preHandler called

    ✓ preHandler 2 called

    ✓ onSend called

    ✓ onSend 2 called

    ✓ onResponse called

    ✓ onResponse 2 called

    ✓ should not error

    ✓ should be equal

  run middlewares on default 404

    ✓ should not error

    ✓ middleware called

    ✓ should not error

    ✓ should be equal

  run middlewares with encapsulated 404

    ✓ should not error

    ✓ middleware called

    ✓ middleware 2 called

    ✓ should not error

    ✓ should be equal

  hooks check 404

    ✓ should not error

    ✓ onRequest

    ✓ should be equivalent

    ✓ onSend

    ✓ onResponse

    ✓ should not error

    ✓ should be equal

    ✓ onRequest

    ✓ should be equivalent

    ✓ onSend

    ✓ onResponse

    ✓ should not error

    ✓ should be equal

  setNotFoundHandler should not suppress duplicated routes checking

    ✓ expect truthy value

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

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent strictly

  recognizes errors from the http-errors module

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equivalent strictly

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

(node:534) Warning: The route option `beforeHandler` has been deprecated, use `preHandler` instead
(Use `node --trace-warnings ...` to show where the warning was created)
  404 inside onSend

    ✓ should not error

    ✓ should not error

    ✓ should be equal

  Not found on supported method (should return a 404)

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  Not found on unsupported method (should return a 404)

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

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

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  ignore the result of the promise if reply.send is called beforehand (undefined)

    ✓ should not error

    ✓ should not error

    ✓ should be equivalent

    ✓ should be equal

  ignore the result of the promise if reply.send is called beforehand (object)

    ✓ should not error

    ✓ should not error

    ✓ should be equivalent

    ✓ should be equal

  server logs an error if reply.send is called and a value is returned via async/await

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equivalent

    ✓ should be equal

  ignore the result of the promise if reply.send is called beforehand (undefined)

    ✓ should not error

    ✓ should not error

    ✓ should be equivalent

    ✓ should be equal

  ignore the result of the promise if reply.send is called beforehand (object)

    ✓ should not error

    ✓ should not error

    ✓ should be equivalent

    ✓ should be equal

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

    ✓ should be equal

    ✓ should be equal

  error is not logged because promise was fulfilled with undefined but statusCode 204 was set

    ✓ should not error

    ✓ should not error

    ✓ should be equal

  error is not logged because promise was fulfilled with undefined but response was sent before promise resolution

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  Thrown Error instance sets HTTP status code

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  customErrorHandler support

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  customErrorHandler support without throwing

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

test/bodyLimit.test.js
  bodyLimit

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should not error

    ✓ should be equal

test/case-insensitive.test.js
  case insensitive

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  case insensitive inject

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  case insensitive (parametric)

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  case insensitive (wildcard)

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

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

    ✓ should be equal

    1) should be equal

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

    ✓ should be equal

    2) should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

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

    3) should match pattern provided

    4) should match pattern provided

    5) timeout!


  6) test count !== plan
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

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

test/custom-parser.test.js
  contentTypeParser should add a custom async parser

    ✓ should not error
    in POST

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    in OPTIONS

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

  contentTypeParser method should exist

    ✓ expect truthy value

  contentTypeParser should add a custom parser

    ✓ should not error
    in POST

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    in OPTIONS

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

  contentTypeParser should handle multiple custom parsers

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  contentTypeParser should handle an array of custom contentTypes

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  contentTypeParser should handle errors

    ✓ should not error

    ✓ should not error

    ✓ should be equal

  contentTypeParser should support encapsulation

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ expect falsey value

    ✓ expect falsey value

  contentTypeParser should support encapsulation, second try

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  contentTypeParser shouldn't support request with undefined "Content-Type"

    ✓ should not error

    ✓ should not error

    ✓ should be equal

  the content type should be a string

    ✓ should be equal

  the content type cannot be an empty string

    ✓ should be equal

  the content type handler should be a function

    ✓ should be equal

  catch all content type parser

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  catch all content type parser should not interfere with other conte type parsers

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  '*' catch undefined Content-Type requests

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  cannot add custom parser after binding

    ✓ should not error

    ✓ (unnamed test)

  Can override the default json parser

    ✓ should not error

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Can override the default plain text parser

    ✓ should not error

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Can override the default json parser in a plugin

    ✓ should not error

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Can't override the json parser multiple times

    ✓ should be equal

  Can't override the plain text parser multiple times

    ✓ should be equal

  Should get the body as string

    ✓ should not error

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Should return defined body with no custom parser defined and content type = 'text/plain'

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Should have typeof body object with no custom parser defined, no body defined and content type = 'text/plain'

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Should have typeof body object with no custom parser defined, null body and content type = 'text/plain'

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Should have typeof body object with no custom parser defined, undefined body and content type = 'text/plain'

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Should get the body as string

    ✓ should not error

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Should get the body as buffer

    ✓ should not error

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Should get the body as buffer

    ✓ should not error

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Should parse empty bodies as a string

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Should parse empty bodies as a buffer

    ✓ should not error

    ✓ expect truthy value

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  The charset should not interfere with the content type handling

    ✓ should not error

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Wrong parseAs parameter

    ✓ should be equal

  Should allow defining the bodyLimit per parser

    ✓ should not error

    ✓ should not error

    ✓ should be equivalent strictly

  route bodyLimit should take precedence over a custom parser bodyLimit

    ✓ should not error

    ✓ should not error

    ✓ should be equivalent strictly

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

    ✓ test exists

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  decorateReply as plugin (inside .after)

    ✓ should not error

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  decorateReply as plugin (outside .after)

    ✓ should not error

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  decorateRequest inside register

    ✓ expect truthy value

    ✓ should not error

    ✓ test exists

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  decorateRequest as plugin (inside .after)

    ✓ should not error

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  decorateRequest as plugin (outside .after)

    ✓ should not error

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

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

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  shorthand - request delete params schema

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  shorthand - request delete params schema error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  shorthand - request delete headers schema

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

  shorthand - request delete headers schema error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  shorthand - request delete querystring schema

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  shorthand - request delete querystring schema error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  shorthand - request delete missing schema

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  shorthand - delete with body

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

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

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  shorthand - request get params schema

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  shorthand - request get params schema error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  shorthand - request get headers schema

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

  shorthand - request get headers schema error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  shorthand - request get querystring schema

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  shorthand - request get querystring schema error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  shorthand - request get missing schema

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  shorthand - custom serializer

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  shorthand - empty response

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  shorthand - send a falsy boolean

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  shorthand - send null value

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

test/handler-context.test.js
  handlers receive correct `this` context

    ✓ expect truthy value

    ✓ should be equal

    ✓ expect truthy value

    ✓ should be equal

  handlers have access to the internal context

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ type is Object

    ✓ expect truthy value

    ✓ should be equal

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

    ✓ should not error

    ✓ should be equal

  shorthand - request head params schema

    ✓ should not error

    ✓ should be equal

  shorthand - request head params schema error

    ✓ should not error

    ✓ should be equal

  shorthand - request head querystring schema

    ✓ should not error

    ✓ should be equal

  shorthand - request head querystring schema error

    ✓ should not error

    ✓ should be equal

  shorthand - request head missing schema

    ✓ should not error

    ✓ should be equal

test/hooks.test.js
  hooks

    ✓ (unnamed test)

    ✓ (unnamed test)

    ✓ (unnamed test)

    ✓ (unnamed test)

    ✓ (unnamed test)

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

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

  onRequest hook should support encapsulation / 1

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  onRequest hook should support encapsulation / 2

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  onRequest hook should support encapsulation / 3

    ✓ should not error

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  preHandler hook should support encapsulation / 5

    ✓ should not error

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  onRoute hook should be called / 1

    ✓ (unnamed test)

    ✓ should not error

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

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  onSend hook should support encapsulation / 1

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  onSend hook should support encapsulation / 2

    ✓ should not error

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  onSend hook is called after payload is serialized and headers are set

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

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

  onSend hook should receive valid request and reply objects if onRequest hook fails

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

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

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  onError hook

    ✓ should match pattern provided

    ✓ should not error

    ✓ should be equivalent

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

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  preSerialization hook should run before serialization and be able to modify the payload

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  preSerialization hook should be able to throw errors which are not validated against schema response

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  preSerialization hook which returned error should still run onError hooks

    ✓ should not error

    ✓ (unnamed test)

    ✓ should not error

    ✓ should be equal

  preSerialization hooks should run in the order in which they are defined

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  preSerialization hooks should support encapsulation

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  onRegister hook should be called / 1

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

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

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ expect truthy value

    ✓ expect truthy value

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

    7) Cannot access 'relativeContext' before initialization

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

    ✓ should be equal

    ✓ should not error

  listen accepts a port and a callback

    ✓ should be equal

    ✓ should not error

  listen accepts a port and a callback with (err, address)

    ✓ should be equal

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

    ✓ should be equal

    ✓ should not error

  register after listen using Promise.resolve()

    ✓ resolved

  double listen errors

    ✓ should not error

    ✓ should be equal

    ✓ expect truthy value

  double listen errors callback with (err, address)

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ expect truthy value

  listen twice on the same port

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ expect truthy value

  listen twice on the same port callback with (err, address)

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ expect truthy value

  listen on socket

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  listen without callback (port zero)

    ✓ should be equal

  listen without callback (port not given)

    ✓ should be equal

  listen null without callback with (address)

    ✓ should be equal

  listen without port without callback with (address)

    ✓ should be equal

  listen with undefined without callback with (address)

    ✓ should be equal

  listen without callback with (address)

    ✓ should be equal

  double listen without callback rejects

    ✓ expect truthy value

  double listen without callback with (address)

    ✓ should be equal

    ✓ expect truthy value

  listen twice on the same port without callback rejects

    ✓ expect truthy value

  listen twice on the same port without callback rejects with (address)

    ✓ should be equal

    ✓ expect truthy value

  listen on invalid port without callback rejects

    ✓ expect truthy value

  listen logs the port as info

    ✓ expect truthy value

test/logger.test.js
  defaults to info level

    ✓ listen at log message is ok

    ✓ should not error

    ✓ reqId is defined

    ✓ req is defined

    ✓ message is set

    ✓ method is get

    ✓ expect truthy value

    ✓ should be equal

    ✓ reqId is defined

    ✓ res is defined

    ✓ message is set

    ✓ statusCode is 200

    ✓ responseTime is defined

  test log stream

    ✓ should not error

    ✓ listen at log message is ok

    ✓ reqId is defined

    ✓ req is defined

    ✓ message is set

    ✓ method is get

    ✓ expect truthy value

    ✓ should be equal

    ✓ reqId is defined

    ✓ res is defined

    ✓ message is set

    ✓ statusCode is 200

  test error log stream

    ✓ should not error

    ✓ listen at log message is ok

    ✓ reqId is defined

    ✓ req is defined

    ✓ message is set

    ✓ method is get

    ✓ expect truthy value

    ✓ reqId is defined

    ✓ res is defined

    ✓ message is set

    ✓ statusCode is 500

  can use external logger instance

    ✓ "Server listening at http://127.0.0.1:43581" dont match "/^Server listening at /"

    ✓ should not error

    ✓ "incoming request" dont match "/^incoming request$/"

    ✓ expect truthy value

    ✓ "log success" dont match "/^log success$/"

    ✓ "request completed" dont match "/^request completed$/"

  can use external logger instance with custom serializer

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equivalent

    ✓ expect truthy value

    ✓ should be equivalent

    ✓ should be equivalent

  expose the logger

    ✓ expect truthy value

    ✓ should be equal

  The request id header key can be customized

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ message is set

    ✓ should be equal

    ✓ message is set

    ✓ should be equal

    ✓ message is set

  The request id header key can be customized along with a custom id generator

    ✓ should match pattern provided

    ✓ should be equal

    ✓ should match pattern provided

    ✓ should match pattern provided

    ✓ should not error

    ✓ should be equal

    ✓ should match pattern provided

    ✓ should be equal

    ✓ should match pattern provided

    ✓ should match pattern provided

    ✓ should not error

    ✓ should be equal

  The request id log label can be changed

    ✓ should match pattern provided

    ✓ should be equal

    ✓ should match pattern provided

    ✓ should match pattern provided

    ✓ should not error

    ✓ should be equal

  The logger should accept custom serializer

    ✓ should not error

    ✓ listen at log message is ok

    ✓ req is defined

    ✓ message is set

    ✓ custom req serialiser is use

    ✓ expect truthy value

    ✓ res is defined

    ✓ message is set

    ✓ default res serialiser is use

  reply.send logs an error if called twice in a row

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equivalent

  logger can be silented

    ✓ expect truthy value

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

  Should set a custom logLevel for a plugin

    ✓ should not error

    ✓ should be equivalent

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equivalent

  Should set a custom logLevel for every plugin

    ✓ should not error

    ✓ should be equivalent

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equivalent

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equivalent

  Should increase the log level for a specific plugin

    ✓ should be equal

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equivalent

  Should set the log level for the customized 404 handler

    ✓ should be equal

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

  Should set the log level for the customized 500 handler

    ✓ should be equal

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

  Should set a custom log level for a specific route

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equivalent

  The default 404 handler logs the incoming request

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  should serialize request and response

    ✓ expect truthy value

    ✓ should be equal

    ✓ should be equal

  Do not wrap IPv4 address

    ✓ should not error

    ✓ should be equal

  file option

    ✓ should not error

    ✓ expect truthy value

    ✓ listen at log message is ok

    ✓ reqId is defined

    ✓ req is defined

    ✓ message is set

    ✓ method is get

    ✓ should be equal

    ✓ reqId is defined

    ✓ res is defined

    ✓ message is set

    ✓ statusCode is 200

    ✓ responseTime is defined

  should log the error if no error handler is defined

    ✓ should not error

    ✓ listen at log message is ok

    ✓ message is set

    ✓ expect truthy value

    ✓ level is correct

    ✓ message is set

    ✓ message is set

    ✓ status code is set

  should log as info if error status code >= 400 and < 500 if no error handler is defined

    ✓ should not error

    ✓ listen at log message is ok

    ✓ message is set

    ✓ expect truthy value

    ✓ level is correct

    ✓ message is set

    ✓ message is set

    ✓ status code is set

  should log as error if error status code >= 500 if no error handler is defined

    ✓ should not error

    ✓ listen at log message is ok

    ✓ message is set

    ✓ expect truthy value

    ✓ level is correct

    ✓ message is set

    ✓ message is set

    ✓ status code is set

  should not log the error if error handler is defined

    ✓ should not error

    ✓ listen at log message is ok

    ✓ message is set

    ✓ expect truthy value

    ✓ level is correct

    ✓ message is set

    ✓ status code is set

  should not rely on raw request to log errors

    ✓ should not error

    ✓ listen at log message is ok

    ✓ message is set

    ✓ expect truthy value

    ✓ level is correct

    ✓ message is set

    ✓ status code is set

  should redact the authorization header if so specified

    ✓ listen at log message is ok

    ✓ should not error

    ✓ authorization is redacted

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  should not log incoming request and outgoing response when disabled

    ✓ should be equal

    ✓ expect truthy value

    ✓ should be equal

test/middleware.test.js
  use a middleware

    ✓ should be equal

    ✓ should not error

    ✓ middleware called

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  cannot add middleware after binding

    ✓ should not error

    ✓ (unnamed test)

  use cors

    ✓ should not error

    ✓ should not error

    ✓ should be equal

  use helmet

    ✓ should not error

    ✓ should not error

    ✓ expect truthy value

  use helmet and cors

    ✓ should not error

    ✓ should not error

    ✓ expect truthy value

    ✓ should be equal

  middlewares should support encapsulation / 1

    ✓ expect truthy value

    ✓ should not error

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  middlewares should support encapsulation / 2

    ✓ should not error

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  middlewares should support encapsulation / 3

    ✓ should not error

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  middlewares should support encapsulation / 4

    ✓ should not error

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ expect falsey value

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  middlewares should support encapsulation / 5

    ✓ should not error

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  middlewares should support encapsulation with prefix

    ✓ should not error

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

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

      ✓ should not error

      ✓ should be equivalent
    /prefix

      ✓ should not error

      ✓ should be equivalent
    /prefix/

      ✓ should not error

      ✓ should be equivalent
    /prefix/inner

      ✓ should not error

      ✓ should be equivalent

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

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - correctly replies with very large body

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - correctly replies if the content type has the charset

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS without schema - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS with body and querystring - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS with no body - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  OPTIONS returns 415 - incorrect media type if body is not json

    ✓ should not error

    ✓ should be equal

  OPTIONS returns 415 - should return 415 if Content-Type is not json or plain text

    ✓ should not error

    ✓ should be equal

  OPTIONS returns 400 - Bad Request

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  OPTIONS returns 413 - Payload Too Large

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal


  ✓ OPTIONS should fail with empty body and application/json content-type
  OPTIONS - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - 400 on bad parameters

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - input-validation coerce

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - input-validation custom schema compiler

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - input-validation joi schema compiler ok

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - input-validation joi schema compiler ko

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - input-validation instance custom schema compiler encapsulated

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - input-validation custom schema compiler encapsulated

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent


  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request
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

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - 400 on bad parameters

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - input-validation coerce

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - input-validation custom schema compiler

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - input-validation joi schema compiler ok

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - input-validation joi schema compiler ko

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - input-validation instance custom schema compiler encapsulated

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - input-validation custom schema compiler encapsulated

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - correctly replies with very large body

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS - correctly replies if the content type has the charset

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS without schema - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS with body and querystring - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  OPTIONS with no body - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  OPTIONS returns 415 - incorrect media type if body is not json

    ✓ should not error

    ✓ should be equal

  OPTIONS returns 415 - should return 415 if Content-Type is not json or plain text

    ✓ should not error

    ✓ should be equal

  OPTIONS returns 400 - Bad Request

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  OPTIONS returns 413 - Payload Too Large

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal


  ✓ OPTIONS should fail with empty body and application/json content-type
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

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  shorthand - number get ok

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  shorthand - wrong-object-for-schema

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  shorthand - empty

    ✓ should not error

    ✓ should be equal

  shorthand - 400

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

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

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - correctly replies with very large body

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - correctly replies if the content type has the charset

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH without schema - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH with body and querystring - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH with no body - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  PATCH returns 415 - incorrect media type if body is not json

    ✓ should not error

    ✓ should be equal

  PATCH returns 400 - Bad Request

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  PATCH returns 413 - Payload Too Large

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  PATCH should fail with empty body and application/json content-type

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    8) Request timed out

    9) Cannot read properties of undefined (reading 'toString')

  PATCH - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - 400 on bad parameters

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - input-validation coerce

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - input-validation custom schema compiler

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - input-validation joi schema compiler ok

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - input-validation joi schema compiler ko

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - input-validation instance custom schema compiler encapsulated

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - input-validation custom schema compiler encapsulated

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent


  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request
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

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - correctly replies with very large body

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - correctly replies if the content type has the charset

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH without schema - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH with body and querystring - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH with no body - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  PATCH returns 415 - incorrect media type if body is not json

    ✓ should not error

    ✓ should be equal

  PATCH returns 400 - Bad Request

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  PATCH returns 413 - Payload Too Large

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  PATCH should fail with empty body and application/json content-type

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    10) Request timed out

    11) Cannot read properties of undefined (reading 'toString')

  PATCH - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - 400 on bad parameters

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - input-validation coerce

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - input-validation custom schema compiler

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - input-validation joi schema compiler ok

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - input-validation joi schema compiler ko

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - input-validation instance custom schema compiler encapsulated

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PATCH - input-validation custom schema compiler encapsulated

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

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

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

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

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  fastify.register with fastify-plugin registers root level plugins

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ should not error

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  check dependencies - should not throw

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ expect falsey value

    ✓ should not error

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  check dependencies - should throw

    ✓ should be equal

    ✓ should be equal

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ expect falsey value

    ✓ should not error

    ✓ expect truthy value

    ✓ expect falsey value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

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

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  if a plugin raises an error and there is not a callback to handle it, the server must not start

    ✓ expect truthy value

    ✓ should be equal

  add hooks after route declaration

    ✓ should not error

    ✓ should not error

    ✓ should be equivalent

  nested plugins

    ✓ should not error

    ✓ should not error

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equivalent

  plugin metadata - decorators

    ✓ expect truthy value

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

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  POST - correctly replies with very large body

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  POST - correctly replies if the content type has the charset

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  POST without schema - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  POST with body and querystring - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  POST with no body - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  POST returns 415 - incorrect media type if body is not json

    ✓ should not error

    ✓ should be equal

  POST returns 400 - Bad Request

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  POST returns 413 - Payload Too Large

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  POST should fail with empty body and application/json content-type

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    12) Request timed out

    13) Cannot read properties of undefined (reading 'toString')

  POST - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  POST - 400 on bad parameters

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  POST - input-validation coerce

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  POST - input-validation custom schema compiler

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  POST - input-validation joi schema compiler ok

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  POST - input-validation joi schema compiler ko

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  POST - input-validation instance custom schema compiler encapsulated

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  POST - input-validation custom schema compiler encapsulated

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

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

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  shorthand - sget promise es6 get return error

    ✓ should not error

    ✓ should be equal

  sget promise double send

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  thenable

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  thenable (error)

    ✓ should not error

    ✓ should be equal

  return-reply

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

test/proto-poisoning.test.js
  proto-poisoning error

    ✓ should not error

    ✓ should not error

    ✓ should be equal

  proto-poisoning remove

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  proto-poisoning ignore

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

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

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - correctly replies with very large body

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - correctly replies if the content type has the charset

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT without schema - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT with body and querystring - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT with no body - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  PUT returns 415 - incorrect media type if body is not json

    ✓ should not error

    ✓ should be equal

  PUT returns 400 - Bad Request

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  PUT returns 413 - Payload Too Large

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  PUT should fail with empty body and application/json content-type

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    14) Request timed out

    15) Cannot read properties of undefined (reading 'toString')

  PUT - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - 400 on bad parameters

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - input-validation coerce

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - input-validation custom schema compiler

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - input-validation joi schema compiler ok

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - input-validation joi schema compiler ko

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - input-validation instance custom schema compiler encapsulated

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - input-validation custom schema compiler encapsulated

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent


  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request

  ✓ type is object

  ✓ type is _Request
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

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - correctly replies with very large body

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - correctly replies if the content type has the charset

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT without schema - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT with body and querystring - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT with no body - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  PUT returns 415 - incorrect media type if body is not json

    ✓ should not error

    ✓ should be equal

  PUT returns 400 - Bad Request

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  PUT returns 413 - Payload Too Large

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  PUT should fail with empty body and application/json content-type

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should be equivalent strictly

    16) Request timed out

    17) Cannot read properties of undefined (reading 'toString')

  PUT - correctly replies

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - 400 on bad parameters

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - input-validation coerce

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - input-validation custom schema compiler

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - input-validation joi schema compiler ok

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - input-validation joi schema compiler ko

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - input-validation instance custom schema compiler encapsulated

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  PUT - input-validation custom schema compiler encapsulated

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

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

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  internal route declaration should pass the error generated by the register to the next handler / 1

    ✓ should be equal

  internal route declaration should pass the error generated by the register to the next handler / 2

    ✓ should be equal

    ✓ should not error

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

    ✓ should be equal

  Error instance sets HTTP status code

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  Error status code below 400 defaults to 500

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  Error.status property support

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  Support rejection with values that are not Error instances
    Type: number

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    Type: string

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    Type: object

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    Type: object

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    Type: object

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    Type: undefined

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    Type: number

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    Type: string

      ✓ should be equal

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    Type: object

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    Type: object

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should be equal
    Type: object

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

  invalid schema - ajv

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  should set the status code and the headers from the error object (from route handler)

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  should set the status code and the headers from the error object (from custom error handler)

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  '*' should throw an error due to serializer can not handle the payload type

    ✓ type is TypeError

    ✓ should be equal

    ✓ should be equal

  should throw an error if the custom serializer does not serialize the payload to a valid type

    ✓ type is TypeError

    ✓ should be equal

    ✓ should be equal

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

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    route - missing schema

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    route - multiple methods

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent

  path can be specified in place of uri

    ✓ should not error

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

test/router-options.test.js
  Should honor ignoreTrailingSlash option

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

  Should honor maxParamLength option

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

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

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  should trigger the onSend hook

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  should trigger the onSend hook only twice if pumping the stream fails, first with the stream, second with the serialized error

    ✓ should not error

    ✓ expect truthy value

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  onSend hook stream

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Destroying streams prematurely

    ✓ should not error

    ✓ Received request

    ✓ should be equal

    ✓ Response closed

    ✓ should be equal

    ✓ should be equal

  Destroying streams prematurely should call close method

    ✓ should not error

    ✓ Received request

    ✓ should be equal

    ✓ Response closed

    ✓ should be equal

    ✓ should be equal

    ✓ expect truthy value

  Destroying streams prematurely should call abort method

    ✓ should not error

    ✓ Received request

    ✓ should be equal

    ✓ Response closed

    ✓ should be equal

    ✓ should be equal

    ✓ expect truthy value

  should respond with a stream1

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  return a 404 if the stream emits a 404 error

    ✓ should not error

    ✓ Received request

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  should support send module 200 and 404

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

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

    ✓ ip is defined

    ✓ gets ip from x-forwarded-for

    ✓ ip is defined

    ✓ gets ip from x-forwarded-for

    ✓ hostname is defined

    ✓ gets hostname from x-forwarded-host

    ✓ hostname is defined

    ✓ gets hostname from x-forwarded-host

    ✓ ip is defined

    ✓ gets ip from x-forwarded-for

    ✓ ip is defined

    ✓ gets ip from x-forwarded-for

    ✓ gets ips from x-forwarded-for

    ✓ gets ips from x-forwarded-for

  trust proxy, not add properties to node req

    ✓ should not error

    ✓ ip is defined

    ✓ gets ip from x-forwarded-for

    ✓ hostname is defined

    ✓ gets hostname from x-forwarded-host

    ✓ ip is defined

    ✓ gets ip from x-forwarded-for

    ✓ gets ips from x-forwarded-for

  trust proxy chain

    ✓ should not error

    ✓ ip is defined

    ✓ gets ip from x-forwarded-for

  trust proxy function

    ✓ should not error

    ✓ ip is defined

    ✓ gets ip from x-forwarded-for

  trust proxy number

    ✓ should not error

    ✓ ip is defined

    ✓ gets ip from x-forwarded-for

    ✓ gets ips from x-forwarded-for

  trust proxy IP addresses

    ✓ should not error

    ✓ ip is defined

    ✓ gets ip from x-forwarded-for

    ✓ gets ips from x-forwarded-for

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

    18) should be equal

  should handle response validation error with promises

    ✓ should not error

    19) should be equal

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

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

  Shorthand route declaration

    ✓ should not error

    ✓ should be equivalent

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

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

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  test log stream

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  Should register a versioned route with custome versioning strategy

    ✓ should not error

    ✓ should be equivalent

    ✓ should be equal

    ✓ should not error

    ✓ should be equivalent

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

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
    return 200

      ✓ should be equal

  http/2 request while fastify closing - return503OnClosing: false

    ✓ http2 successfully loaded

    ✓ should not error
    return 200

      ✓ should be equal


  ✓ should not error
  http get request

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent


  ✓ should not error
  https get request

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent


  ✓ should not error
  http UNKNOWN_METHOD request

    ✓ should be equal

    ✓ should be equivalent


  ✓ should not error
  https get error

    ✓ should be equal

  https post

    ✓ should be equal

    ✓ should be equivalent

  https get request

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  http1 get request

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  http1 get error

    ✓ should not error

    ✓ should be equal

test/https/custom-https-server.test.js
  Should support a custom https server

    ✓ expect truthy value

    ✓ should not error

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

test/https/https.test.js

  ✓ Key/cert successfully loaded
  https get

    ✓ (unnamed test)


  ✓ should not error
  https get request

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

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

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

  request should be defined in onSend Hook on post request with content type application/x-www-form-urlencoded

    ✓ should not error

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

  request should be defined in onSend Hook on options request with content type application/x-www-form-urlencoded

    ✓ should not error

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ expect truthy value

    ✓ should not error

    ✓ should be equal

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

    ✓ reqId is defined

    ✓ req is defined

    ✓ message is set

    ✓ method is get

    ✓ expect truthy value

    ✓ should be equal

    ✓ reqId is defined

    ✓ res is defined

    ✓ message is set

    ✓ statusCode is 200

    ✓ responseTime is defined

  deepFreezeObject() should not throw on TypedArray

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

    ✓ (unnamed test)

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

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    status code and content-type should be correct

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    auto status code shoud be 200

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    auto type shoud be text/plain

      ✓ should not error

      ✓ should be equal

      ✓ should be equivalent
    redirect to `/` - 1

      ✓ should be equal
    redirect to `/` - 2

      ✓ should be equal
    redirect to `/` - 3

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    redirect to `/` - 4

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    redirect to `/` - 5

      ✓ should be equal

      ✓ should be equal

      ✓ should be equal
    redirect to `/` - 6

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    redirect to `/` - 7

      ✓ should not error

      ✓ should be equal

      ✓ should be equal

      ✓ should be equivalent
    redirect to `/` - 8

      ✓ should be equal
    redirect to `/` - 9

      ✓ should be equal

  buffer without content type should send a application/octet-stream and raw buffer

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  buffer with content type should not send application/octet-stream

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  stream with content type should not send application/octet-stream

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  stream using reply.res.writeHead should return customize headers

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  plain string without content type should send a text/plain

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  plain string with content type should be sent unmodified

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  plain string with content type and custom serializer should be serialized

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  plain string with content type application/json should be serialized as json

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

  error object with a content type that is not application/json should work

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  undefined payload should be sent as-is

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equal

  reply.send(new NotFound()) should not invoke the 404 handler

    ✓ should not error

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent

  reply can set multiple instances of same header

    ✓ should not error

    ✓ should not error

    ✓ expect truthy value

    ✓ should be equivalent strictly

  reply.hasHeader returns correct values

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

  reply.getHeader returns correct values

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent strictly

    ✓ should be equivalent strictly

  reply.removeHeader can remove the value

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should be equivalent strictly

    ✓ (unnamed test)

  reply.header can reset the value

    ✓ should not error

    ✓ should be equivalent strictly

    ✓ (unnamed test)

  Reply should handle JSON content type with a charset

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  Content type and charset set previously

    ✓ should not error

    ✓ should be equal

  .status() is an alias for .code()

    ✓ should not error

    ✓ should be equal

  .statusCode is getter and setter

    ✓ 200

    ✓ 418

    ✓ should not error

    ✓ should be equal

  reply.header setting multiple cookies as multiple Set-Cookie headers

    ✓ should not error

    ✓ expect truthy value

    ✓ should be equivalent strictly

    ✓ should not error

    ✓ should not error

    ✓ expect truthy value

    ✓ should be equivalent strictly

  should throw error when passing falsy value to reply.sent

    ✓ should be equal

    ✓ should not error

    ✓ (unnamed test)

  should throw error when attempting to set reply.sent more than once

    ✓ should be equal

    ✓ should not error

    ✓ (unnamed test)

  reply.getResponseTime() should return 0 before the timer is initialised on the reply by setting up response listeners

    ✓ should be equal

  reply.getResponseTime() should return a number greater than 0 after the timer is initialised on the reply by setting up response listeners

    ✓ expect truthy value

  reply should use the custom serializer

    ✓ should be equivalent

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  reply should use the right serializer in encapsulated context

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

  reply should use the right serializer in deep encapsulated context

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

  reply should use the route serializer

    ✓ should be equivalent

    ✓ should not error

    ✓ should be equal

  cannot set the replySerializer when the server is running

    ✓ should not error

    ✓ should be equal

  reply should not call the custom serializer for errors and not found

    ✓ should be equivalent

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

    ✓ should not error

    ✓ should be equal

  reply.then
    without an error

      ✓ fullfilled called
    with an error

      ✓ should be equal

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


  4147 passing (30s)
  19 failing

  1) test/close-pipelining.test.js Should return 503 while closing - pipelining should be equal:
     Error: should be equal
      at EventEmitter.<anonymous> (test/close-pipelining.test.js:36:9)

  2) test/close-pipelining.test.js Should not return 503 while closing - pipelining - return503OnClosing should be equal:
     Error: should be equal
      at EventEmitter.<anonymous> (test/close-pipelining.test.js:72:9)

  3) test/close.test.js Current opened connection should continue to work after closing and return "connection: close" header - return503OnClosing: false should match pattern provided:
     Error: should match pattern provided
      at Socket.<anonymous> (test/close.test.js:168:11)

  4) test/close.test.js Current opened connection should continue to work after closing and return "connection: close" header - return503OnClosing: false should match pattern provided:
     Error: should match pattern provided
      at Socket.<anonymous> (test/close.test.js:169:11)

  5) test/close.test.js Current opened connection should continue to work after closing and return "connection: close" header - return503OnClosing: false timeout!:
     Error: timeout!


  6) test/close.test.js test count !== plan:

      test count !== plan
      + expected - actual

      -7
      +1
      
  

  7) test/inject.test.js inject promisify - after the ready event Cannot access 'relativeContext' before initialization:
     Error: Cannot access 'relativeContext' before initialization


  8) test/patch.error-handler.test.js PATCH should fail with empty body and application/json content-type Request timed out:
     Error: Request timed out
      at test/helper.js:377:11

  9) test/patch.error-handler.test.js PATCH should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  10) test/patch.test.js PATCH should fail with empty body and application/json content-type Request timed out:
     Error: Request timed out
      at test/helper.js:377:11

  11) test/patch.test.js PATCH should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  12) test/post.test.js POST should fail with empty body and application/json content-type Request timed out:
     Error: Request timed out
      at test/helper.js:377:11

  13) test/post.test.js POST should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  14) test/put.error-handler.test.js PUT should fail with empty body and application/json content-type Request timed out:
     Error: Request timed out
      at test/helper.js:377:11

  15) test/put.error-handler.test.js PUT should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  16) test/put.test.js PUT should fail with empty body and application/json content-type Request timed out:
     Error: Request timed out
      at test/helper.js:377:11

  17) test/put.test.js PUT should fail with empty body and application/json content-type Cannot read properties of undefined (reading 'toString'):
     Error: Cannot read properties of undefined (reading 'toString')
      at test/helper.js:378:43

  18) test/validation-error-handling.test.js should handle response validation error should be equal:

      Error: should be equal
      + expected - actual

      -{"statusCode":500,"error":"Internal Server Error","message":"\"name\" is required!"}
      +{"statusCode":500,"error":"Internal Server Error","message":"name is required!"}
      
      at test/validation-error-handling.test.js:223:7

  19) test/validation-error-handling.test.js should handle response validation error with promises should be equal:

      Error: should be equal
      + expected - actual

      -{"statusCode":500,"error":"Internal Server Error","message":"\"name\" is required!"}
      +{"statusCode":500,"error":"Internal Server Error","message":"name is required!"}
      
      at test/validation-error-handling.test.js:253:7

