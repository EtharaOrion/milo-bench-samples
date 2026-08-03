Checking patch src/handlers/GraphQLHandler.test.ts...
Checking patch src/utils/handleRequest.test.ts...
Checking patch src/utils/request/onUnhandledRequest.test.ts...
Checking patch test/msw-api/setup-worker/start/on-unhandled-request/callback-print.mocks.ts...
Checking patch test/msw-api/setup-worker/start/on-unhandled-request/callback-print.test.ts...
Applied patch src/handlers/GraphQLHandler.test.ts cleanly.
Applied patch src/utils/handleRequest.test.ts cleanly.
Applied patch src/utils/request/onUnhandledRequest.test.ts cleanly.
Applied patch test/msw-api/setup-worker/start/on-unhandled-request/callback-print.mocks.ts cleanly.
Applied patch test/msw-api/setup-worker/start/on-unhandled-request/callback-print.test.ts cleanly.
error: patch fragment without header at line 5: @@ -4821,7 +4929,7 @@ global-modules@^1.0.0:
yarn install v1.22.22
[1/4] Resolving packages...
warning Resolution field "chokidar@3.4.1" is incompatible with requested version "chokidar@^2.1.8"
success Already up-to-date.
$ node -e "try{require('./config/scripts/postinstall')}catch(e){}"
$ yarn simple-git-hooks init
yarn run v1.22.22
$ /home/msw/node_modules/.bin/simple-git-hooks init
[INFO] Successfully set the pre-commit with command: yarn lint-staged
[INFO] Successfully set the prepare-commit-msg with command: grep -qE '^[^#]' .git/COMMIT_EDITMSG || (exec < /dev/tty && yarn cz --hook || true)
[INFO] Successfully set the commit-msg with command: yarn commitlint --edit $1
[INFO] Successfully set all git hooks
Done in 0.07s.
Done in 0.48s.
yarn run v1.22.22
$ /home/msw/node_modules/.bin/jest --maxWorkers=3
PASS src/utils/internal/getCallFrame.test.ts
FAIL src/utils/request/onUnhandledRequest.test.ts
  ● Test suite failed to run

    [96msrc/utils/request/onUnhandledRequest.test.ts[0m:[93m114[0m:[93m5[0m - [91merror[0m[90m TS2345: [0mArgument of type '(request: any, print: any) => void' is not assignable to parameter of type '(request: MockedRequest<DefaultRequestBody>) => void'.

    [7m114[0m     (request, print) => {
    [7m   [0m [91m    ~~~~~~~~~~~~~~~~~~~~~[0m
    [96msrc/utils/request/onUnhandledRequest.test.ts[0m:[93m114[0m:[93m6[0m - [91merror[0m[90m TS7006: [0mParameter 'request' implicitly has an 'any' type.

    [7m114[0m     (request, print) => {
    [7m   [0m [91m     ~~~~~~~[0m
    [96msrc/utils/request/onUnhandledRequest.test.ts[0m:[93m114[0m:[93m15[0m - [91merror[0m[90m TS7006: [0mParameter 'print' implicitly has an 'any' type.

    [7m114[0m     (request, print) => {
    [7m   [0m [91m              ~~~~~[0m

FAIL src/handlers/GraphQLHandler.test.ts
  ● Test suite failed to run

    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m74[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m74[0m       OperationTypeNode.QUERY,
    [7m  [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m87[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m87[0m       OperationTypeNode.MUTATION,
    [7m  [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m108[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m108[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m128[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m128[0m       OperationTypeNode.MUTATION,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m149[0m:[93m32[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m149[0m       () => new GraphQLHandler(OperationTypeNode.QUERY, node, '*', resolver),
    [7m   [0m [91m                               ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m160[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m160[0m         OperationTypeNode.QUERY,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m178[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m178[0m         OperationTypeNode.QUERY,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m201[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m201[0m         OperationTypeNode.QUERY,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m219[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m219[0m         OperationTypeNode.QUERY,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m244[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m244[0m         OperationTypeNode.MUTATION,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m262[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m262[0m         OperationTypeNode.MUTATION,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m285[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m285[0m         OperationTypeNode.MUTATION,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m303[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m303[0m         OperationTypeNode.MUTATION,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m329[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m329[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m349[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m349[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m391[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m391[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m416[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m416[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m434[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m434[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m458[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m458[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m481[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m481[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m519[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m519[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m

PASS src/utils/matching/matchRequestUrl.test.ts
PASS src/utils/request/parseBody.test.ts
PASS src/utils/internal/parseGraphQLRequest.test.ts
PASS src/utils/internal/parseMultipartData.test.ts
FAIL src/utils/handleRequest.test.ts
  ● reports request as unhandled when it has no matching request handlers

    expect(jest.fn()).toHaveBeenNthCalledWith(n, ...expected)

    n: 1
    - Expected
    + Received

      {"body": "", "bodyUsed": false, "cache": "default", "cookies": {}, "credentials": "same-origin", "destination": "document", "headers": {"_headers": {"x-origin": "msw-test"}, "_names": Map {"x-origin" => "x-origin"}}, "id": "8c00b868-db2f-46ec-9434-a4de8512c386", "integrity": "", "keepalive": true, "method": "GET", "mode": "same-origin", "redirect": "manual", "referrer": "", "referrerPolicy": "origin", "url": "http://localhost/user"},
    - {"error": Any<Function>, "warning": Any<Function>},

    Number of calls: 1

      93 |     ['request:end', request],
      94 |   ])
    > 95 |   expect(options.onUnhandledRequest).toHaveBeenNthCalledWith(1, request, {
         |                                      ^
      96 |     warning: expect.any(Function),
      97 |     error: expect.any(Function),
      98 |   })

      at src/utils/handleRequest.test.ts:95:38
      at fulfilled (src/utils/handleRequest.test.ts:5:58)

PASS src/handlers/RestHandler.test.ts
PASS src/setupWorker/start/utils/prepareStartHandler.test.ts
PASS src/context/errors.test.ts
PASS src/context/delay.test.ts
PASS src/context/extensions.test.ts
PASS src/utils/matching/normalizePath.test.ts
PASS src/utils/request/getRequestCookies.test.ts
PASS src/context/delay.node.test.ts
PASS src/context/data.test.ts
PASS src/utils/matching/normalizePath.node.test.ts
PASS src/utils/logging/prepareResponse.test.ts
PASS src/setupWorker/start/utils/printStartMessage.test.ts
PASS src/utils/internal/isStringEqual.test.ts
PASS src/context/json.test.ts
PASS src/context/fetch.test.ts
PASS src/utils/url/getAbsoluteUrl.test.ts
PASS src/utils/url/isAbsoluteUrl.test.ts
PASS src/context/set.test.ts
PASS src/utils/logging/prepareRequest.test.ts
PASS src/utils/logging/getStatusCodeColor.test.ts
PASS src/utils/request/getRequestCookies.node.test.ts
PASS src/utils/request/pruneGetRequestBody.test.ts
PASS src/utils/request/getPublicUrlFromRequest.test.ts
PASS src/context/body.test.ts
PASS src/utils/internal/mergeRight.test.ts
PASS src/utils/url/cleanUrl.test.ts
PASS src/utils/logging/getTimestamp.test.ts
PASS src/utils/internal/tryCatch.test.ts
PASS src/setupWorker/stop/utils/printStopMessage.test.ts
PASS src/utils/deferNetworkRequestsUntil.test.ts
PASS src/context/status.test.ts
PASS src/utils/internal/compose.test.ts
PASS src/utils/url/getAbsoluteUrl.node.test.ts
PASS src/context/cookie.test.ts
PASS src/utils/internal/isObject.test.ts
PASS src/utils/internal/pipeEvents.test.ts
PASS src/utils/internal/isIterable.test.ts
PASS src/utils/url/getAbsoluteWorkerUrl.test.ts
PASS src/utils/internal/jsonParse.test.ts
PASS src/context/xml.test.ts
PASS src/context/text.test.ts
PASS src/context/cookie.node.test.ts
PASS src/setupWorker/setupWorker.node.test.ts
PASS src/rest.spec.ts
PASS src/graphql.test.ts

Summary of all failing tests
FAIL src/utils/request/onUnhandledRequest.test.ts
  ● Test suite failed to run

    [96msrc/utils/request/onUnhandledRequest.test.ts[0m:[93m114[0m:[93m5[0m - [91merror[0m[90m TS2345: [0mArgument of type '(request: any, print: any) => void' is not assignable to parameter of type '(request: MockedRequest<DefaultRequestBody>) => void'.

    [7m114[0m     (request, print) => {
    [7m   [0m [91m    ~~~~~~~~~~~~~~~~~~~~~[0m
    [96msrc/utils/request/onUnhandledRequest.test.ts[0m:[93m114[0m:[93m6[0m - [91merror[0m[90m TS7006: [0mParameter 'request' implicitly has an 'any' type.

    [7m114[0m     (request, print) => {
    [7m   [0m [91m     ~~~~~~~[0m
    [96msrc/utils/request/onUnhandledRequest.test.ts[0m:[93m114[0m:[93m15[0m - [91merror[0m[90m TS7006: [0mParameter 'print' implicitly has an 'any' type.

    [7m114[0m     (request, print) => {
    [7m   [0m [91m              ~~~~~[0m

FAIL src/handlers/GraphQLHandler.test.ts
  ● Test suite failed to run

    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m74[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m74[0m       OperationTypeNode.QUERY,
    [7m  [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m87[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m87[0m       OperationTypeNode.MUTATION,
    [7m  [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m108[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m108[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m128[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m128[0m       OperationTypeNode.MUTATION,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m149[0m:[93m32[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m149[0m       () => new GraphQLHandler(OperationTypeNode.QUERY, node, '*', resolver),
    [7m   [0m [91m                               ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m160[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m160[0m         OperationTypeNode.QUERY,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m178[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m178[0m         OperationTypeNode.QUERY,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m201[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m201[0m         OperationTypeNode.QUERY,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m219[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m219[0m         OperationTypeNode.QUERY,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m244[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m244[0m         OperationTypeNode.MUTATION,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m262[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m262[0m         OperationTypeNode.MUTATION,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m285[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m285[0m         OperationTypeNode.MUTATION,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m303[0m:[93m9[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m303[0m         OperationTypeNode.MUTATION,
    [7m   [0m [91m        ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m329[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m329[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m349[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m349[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m391[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m391[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m416[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m416[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m434[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m434[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m458[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m458[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m481[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m481[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m
    [96msrc/handlers/GraphQLHandler.test.ts[0m:[93m519[0m:[93m7[0m - [91merror[0m[90m TS2693: [0m'OperationTypeNode' only refers to a type, but is being used as a value here.

    [7m519[0m       OperationTypeNode.QUERY,
    [7m   [0m [91m      ~~~~~~~~~~~~~~~~~[0m

FAIL src/utils/handleRequest.test.ts
  ● reports request as unhandled when it has no matching request handlers

    expect(jest.fn()).toHaveBeenNthCalledWith(n, ...expected)

    n: 1
    - Expected
    + Received

      {"body": "", "bodyUsed": false, "cache": "default", "cookies": {}, "credentials": "same-origin", "destination": "document", "headers": {"_headers": {"x-origin": "msw-test"}, "_names": Map {"x-origin" => "x-origin"}}, "id": "8c00b868-db2f-46ec-9434-a4de8512c386", "integrity": "", "keepalive": true, "method": "GET", "mode": "same-origin", "redirect": "manual", "referrer": "", "referrerPolicy": "origin", "url": "http://localhost/user"},
    - {"error": Any<Function>, "warning": Any<Function>},

    Number of calls: 1

      93 |     ['request:end', request],
      94 |   ])
    > 95 |   expect(options.onUnhandledRequest).toHaveBeenNthCalledWith(1, request, {
         |                                      ^
      96 |     warning: expect.any(Function),
      97 |     error: expect.any(Function),
      98 |   })

      at src/utils/handleRequest.test.ts:95:38
      at fulfilled (src/utils/handleRequest.test.ts:5:58)


Test Suites: 3 failed, 50 passed, 53 total
Tests:       1 failed, 171 passed, 172 total
Snapshots:   0 total
Time:        4.77 s
Ran all test suites.
error Command failed with exit code 1.
info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.
