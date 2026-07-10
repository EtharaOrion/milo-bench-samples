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
Skipped patch 'yarn.lock'.
Checking patch package.json...
Checking patch src/handlers/GraphQLHandler.ts...
Checking patch src/utils/internal/parseGraphQLRequest.ts...
Checking patch src/utils/request/onUnhandledRequest.ts...
Applied patch package.json cleanly.
Applied patch src/handlers/GraphQLHandler.ts cleanly.
Applied patch src/utils/internal/parseGraphQLRequest.ts cleanly.
Applied patch src/utils/request/onUnhandledRequest.ts cleanly.
yarn install v1.22.22
[1/4] Resolving packages...
warning Resolution field "chokidar@3.4.1" is incompatible with requested version "chokidar@^2.1.8"
[2/4] Fetching packages...
[3/4] Linking dependencies...
[4/4] Building fresh packages...
success Saved lockfile.
$ node -e "try{require('./config/scripts/postinstall')}catch(e){}"
$ yarn simple-git-hooks init
yarn run v1.22.22
$ /home/msw/node_modules/.bin/simple-git-hooks init
[INFO] Successfully set the pre-commit with command: yarn lint-staged
[INFO] Successfully set the prepare-commit-msg with command: grep -qE '^[^#]' .git/COMMIT_EDITMSG || (exec < /dev/tty && yarn cz --hook || true)
[INFO] Successfully set the commit-msg with command: yarn commitlint --edit $1
[INFO] Successfully set all git hooks
Done in 0.07s.
Done in 5.10s.
yarn run v1.22.22
$ /home/msw/node_modules/.bin/jest --maxWorkers=3
PASS src/utils/internal/getCallFrame.test.ts
FAIL src/utils/request/onUnhandledRequest.test.ts
  ● supports a custom callback function

    expect(jest.fn()).toHaveBeenCalledWith(...expected)

    - Expected
    + Received

      {"body": "", "bodyUsed": false, "cache": "default", "cookies": {}, "credentials": "same-origin", "destination": "document", "headers": {"_headers": {"x-origin": "msw-test"}, "_names": Map {"x-origin" => "x-origin"}}, "id": "b9b3533c-0a6b-4d8d-9a37-ece462528375", "integrity": "", "keepalive": true, "method": "GET", "mode": "same-origin", "redirect": "manual", "referrer": "", "referrerPolicy": "origin", "url": "http://localhost:3000/user"},
    - {"error": Any<Function>, "warning": Any<Function>},

    Number of calls: 1

       99 |
      100 |   expect(callback).toHaveBeenCalledTimes(1)
    > 101 |   expect(callback).toHaveBeenCalledWith(request, {
          |                    ^
      102 |     warning: expect.any(Function),
      103 |     error: expect.any(Function),
      104 |   })

      at Object.<anonymous> (src/utils/request/onUnhandledRequest.test.ts:101:20)

  ● supports calling default strategies from the custom callback function

    expect(jest.fn()).toHaveBeenCalledWith(...expected)

    - Expected
    + Received

      {"body": "", "bodyUsed": false, "cache": "default", "cookies": {}, "credentials": "same-origin", "destination": "document", "headers": {"_headers": {"x-origin": "msw-test"}, "_names": Map {"x-origin" => "x-origin"}}, "id": "request-1", "integrity": "", "keepalive": true, "method": "GET", "mode": "same-origin", "redirect": "manual", "referrer": "", "referrerPolicy": "origin", "url": "http://localhost/api"},
    - {"error": Any<Function>, "warning": Any<Function>},
    + [Function next],

    Number of calls: 1

      128 |
      129 |   expect(callback).toHaveBeenCalledTimes(1)
    > 130 |   expect(callback).toHaveBeenCalledWith(request, {
          |                    ^
      131 |     warning: expect.any(Function),
      132 |     error: expect.any(Function),
      133 |   })

      at Object.<anonymous> (src/utils/request/onUnhandledRequest.test.ts:130:20)

FAIL src/utils/handleRequest.test.ts
  ● reports request as unhandled when it has no matching request handlers

    expect(jest.fn()).toHaveBeenNthCalledWith(n, ...expected)

    n: 1
    - Expected
    + Received

      {"body": "", "bodyUsed": false, "cache": "default", "cookies": {}, "credentials": "same-origin", "destination": "document", "headers": {"_headers": {"x-origin": "msw-test"}, "_names": Map {"x-origin" => "x-origin"}}, "id": "2dc73fae-29e4-49b1-867d-89b872d4837b", "integrity": "", "keepalive": true, "method": "GET", "mode": "same-origin", "redirect": "manual", "referrer": "", "referrerPolicy": "origin", "url": "http://localhost/user"},
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
PASS src/handlers/GraphQLHandler.test.ts
PASS src/utils/request/parseBody.test.ts
PASS src/utils/matching/matchRequestUrl.test.ts
PASS src/utils/internal/parseGraphQLRequest.test.ts
PASS src/setupWorker/start/utils/prepareStartHandler.test.ts
PASS src/utils/internal/parseMultipartData.test.ts
PASS src/context/errors.test.ts
PASS src/context/extensions.test.ts
PASS src/context/delay.test.ts
PASS src/utils/matching/normalizePath.test.ts
PASS src/context/delay.node.test.ts
PASS src/utils/request/getRequestCookies.test.ts
PASS src/context/data.test.ts
PASS src/utils/matching/normalizePath.node.test.ts
PASS src/utils/logging/prepareResponse.test.ts
PASS src/setupWorker/start/utils/printStartMessage.test.ts
PASS src/utils/internal/isStringEqual.test.ts
PASS src/context/json.test.ts
PASS src/context/fetch.test.ts
PASS src/utils/url/getAbsoluteUrl.test.ts
PASS src/utils/url/isAbsoluteUrl.test.ts
PASS src/utils/logging/prepareRequest.test.ts
PASS src/context/set.test.ts
PASS src/utils/request/getRequestCookies.node.test.ts
PASS src/utils/logging/getStatusCodeColor.test.ts
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
  ● supports a custom callback function

    expect(jest.fn()).toHaveBeenCalledWith(...expected)

    - Expected
    + Received

      {"body": "", "bodyUsed": false, "cache": "default", "cookies": {}, "credentials": "same-origin", "destination": "document", "headers": {"_headers": {"x-origin": "msw-test"}, "_names": Map {"x-origin" => "x-origin"}}, "id": "b9b3533c-0a6b-4d8d-9a37-ece462528375", "integrity": "", "keepalive": true, "method": "GET", "mode": "same-origin", "redirect": "manual", "referrer": "", "referrerPolicy": "origin", "url": "http://localhost:3000/user"},
    - {"error": Any<Function>, "warning": Any<Function>},

    Number of calls: 1

       99 |
      100 |   expect(callback).toHaveBeenCalledTimes(1)
    > 101 |   expect(callback).toHaveBeenCalledWith(request, {
          |                    ^
      102 |     warning: expect.any(Function),
      103 |     error: expect.any(Function),
      104 |   })

      at Object.<anonymous> (src/utils/request/onUnhandledRequest.test.ts:101:20)

  ● supports calling default strategies from the custom callback function

    expect(jest.fn()).toHaveBeenCalledWith(...expected)

    - Expected
    + Received

      {"body": "", "bodyUsed": false, "cache": "default", "cookies": {}, "credentials": "same-origin", "destination": "document", "headers": {"_headers": {"x-origin": "msw-test"}, "_names": Map {"x-origin" => "x-origin"}}, "id": "request-1", "integrity": "", "keepalive": true, "method": "GET", "mode": "same-origin", "redirect": "manual", "referrer": "", "referrerPolicy": "origin", "url": "http://localhost/api"},
    - {"error": Any<Function>, "warning": Any<Function>},
    + [Function next],

    Number of calls: 1

      128 |
      129 |   expect(callback).toHaveBeenCalledTimes(1)
    > 130 |   expect(callback).toHaveBeenCalledWith(request, {
          |                    ^
      131 |     warning: expect.any(Function),
      132 |     error: expect.any(Function),
      133 |   })

      at Object.<anonymous> (src/utils/request/onUnhandledRequest.test.ts:130:20)

FAIL src/utils/handleRequest.test.ts
  ● reports request as unhandled when it has no matching request handlers

    expect(jest.fn()).toHaveBeenNthCalledWith(n, ...expected)

    n: 1
    - Expected
    + Received

      {"body": "", "bodyUsed": false, "cache": "default", "cookies": {}, "credentials": "same-origin", "destination": "document", "headers": {"_headers": {"x-origin": "msw-test"}, "_names": Map {"x-origin" => "x-origin"}}, "id": "2dc73fae-29e4-49b1-867d-89b872d4837b", "integrity": "", "keepalive": true, "method": "GET", "mode": "same-origin", "redirect": "manual", "referrer": "", "referrerPolicy": "origin", "url": "http://localhost/user"},
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


Test Suites: 2 failed, 51 passed, 53 total
Tests:       3 failed, 204 passed, 207 total
Snapshots:   0 total
Time:        5.612 s
Ran all test suites.
error Command failed with exit code 1.
info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.
