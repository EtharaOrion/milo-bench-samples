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
Checking patch package.json...
Checking patch src/utils/request/onUnhandledRequest.ts...
Checking patch test-jest.js...
Applied patch package.json cleanly.
Applied patch src/utils/request/onUnhandledRequest.ts cleanly.
Applied patch test-jest.js cleanly.
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
Done in 0.15s.
Done in 4.88s.
yarn run v1.22.22
$ /home/msw/node_modules/.bin/jest --maxWorkers=3
PASS src/utils/internal/getCallFrame.test.ts
FAIL src/utils/request/onUnhandledRequest.test.ts
  ● supports a custom callback function

    expect(jest.fn()).toHaveBeenCalledWith(...expected)

    - Expected
    + Received

      {"body": "", "bodyUsed": false, "cache": "default", "cookies": {}, "credentials": "same-origin", "destination": "document", "headers": {"_headers": {"x-origin": "msw-test"}, "_names": Map {"x-origin" => "x-origin"}}, "id": "ee58d5c5-e95f-4f74-bd96-a47859bf0c6b", "integrity": "", "keepalive": true, "method": "GET", "mode": "same-origin", "redirect": "manual", "referrer": "", "referrerPolicy": "origin", "url": "http://localhost:3000/user"},
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

    expect(received).toThrow(expected)

    Expected substring: "[MSW] Cannot bypass a request when using the \"error\" strategy for the \"onUnhandledRequest\" option."
    Received message:   "Cannot read properties of undefined (reading 'error')"

          116 |
          117 |       // Call the default "error" strategy.
        > 118 |       print.error()
              |             ^
          119 |     },
          120 |   )
          121 |   const request = createMockedRequest({

      at src/utils/request/onUnhandledRequest.test.ts:118:13
      at Object.onUnhandledRequest (src/utils/request/onUnhandledRequest.ts:200:9)
      at src/utils/request/onUnhandledRequest.test.ts:125:16
      at Object.<anonymous> (node_modules/expect/build/toThrowMatchers.js:83:11)
      at Object.throwingMatcher [as toThrow] (node_modules/expect/build/index.js:338:21)
      at Object.<anonymous> (src/utils/request/onUnhandledRequest.test.ts:125:59)
      at Object.<anonymous> (src/utils/request/onUnhandledRequest.test.ts:125:59)

FAIL src/handlers/GraphQLHandler.test.ts
  ● Test suite failed to run

    [96msrc/graphql.ts[0m:[93m86[0m:[93m37[0m - [91merror[0m[90m TS2345: [0mArgument of type '"query"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m86[0m   query: createScopedGraphQLHandler('query', '*'),
    [7m  [0m [91m                                    ~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m96[0m:[93m40[0m - [91merror[0m[90m TS2345: [0mArgument of type '"mutation"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m96[0m   mutation: createScopedGraphQLHandler('mutation', '*'),
    [7m  [0m [91m                                       ~~~~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m102[0m:[93m39[0m - [91merror[0m[90m TS2345: [0mArgument of type '"query"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m102[0m     query: createScopedGraphQLHandler('query', url),
    [7m   [0m [91m                                      ~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m103[0m:[93m42[0m - [91merror[0m[90m TS2345: [0mArgument of type '"mutation"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m103[0m     mutation: createScopedGraphQLHandler('mutation', url),
    [7m   [0m [91m                                         ~~~~~~~~~~[0m

FAIL src/utils/handleRequest.test.ts
  ● Test suite failed to run

    [96msrc/graphql.ts[0m:[93m86[0m:[93m37[0m - [91merror[0m[90m TS2345: [0mArgument of type '"query"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m86[0m   query: createScopedGraphQLHandler('query', '*'),
    [7m  [0m [91m                                    ~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m96[0m:[93m40[0m - [91merror[0m[90m TS2345: [0mArgument of type '"mutation"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m96[0m   mutation: createScopedGraphQLHandler('mutation', '*'),
    [7m  [0m [91m                                       ~~~~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m102[0m:[93m39[0m - [91merror[0m[90m TS2345: [0mArgument of type '"query"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m102[0m     query: createScopedGraphQLHandler('query', url),
    [7m   [0m [91m                                      ~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m103[0m:[93m42[0m - [91merror[0m[90m TS2345: [0mArgument of type '"mutation"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m103[0m     mutation: createScopedGraphQLHandler('mutation', url),
    [7m   [0m [91m                                         ~~~~~~~~~~[0m

FAIL src/handlers/RestHandler.test.ts
  ● Test suite failed to run

    [96msrc/graphql.ts[0m:[93m86[0m:[93m37[0m - [91merror[0m[90m TS2345: [0mArgument of type '"query"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m86[0m   query: createScopedGraphQLHandler('query', '*'),
    [7m  [0m [91m                                    ~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m96[0m:[93m40[0m - [91merror[0m[90m TS2345: [0mArgument of type '"mutation"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m96[0m   mutation: createScopedGraphQLHandler('mutation', '*'),
    [7m  [0m [91m                                       ~~~~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m102[0m:[93m39[0m - [91merror[0m[90m TS2345: [0mArgument of type '"query"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m102[0m     query: createScopedGraphQLHandler('query', url),
    [7m   [0m [91m                                      ~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m103[0m:[93m42[0m - [91merror[0m[90m TS2345: [0mArgument of type '"mutation"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m103[0m     mutation: createScopedGraphQLHandler('mutation', url),
    [7m   [0m [91m                                         ~~~~~~~~~~[0m

PASS src/utils/matching/matchRequestUrl.test.ts
PASS src/utils/request/parseBody.test.ts
PASS src/utils/internal/parseGraphQLRequest.test.ts
PASS src/utils/internal/parseMultipartData.test.ts
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
PASS src/context/status.test.ts
PASS src/utils/internal/compose.test.ts
PASS src/utils/deferNetworkRequestsUntil.test.ts
PASS src/context/cookie.test.ts
PASS src/utils/url/getAbsoluteUrl.node.test.ts
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

      {"body": "", "bodyUsed": false, "cache": "default", "cookies": {}, "credentials": "same-origin", "destination": "document", "headers": {"_headers": {"x-origin": "msw-test"}, "_names": Map {"x-origin" => "x-origin"}}, "id": "ee58d5c5-e95f-4f74-bd96-a47859bf0c6b", "integrity": "", "keepalive": true, "method": "GET", "mode": "same-origin", "redirect": "manual", "referrer": "", "referrerPolicy": "origin", "url": "http://localhost:3000/user"},
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

    expect(received).toThrow(expected)

    Expected substring: "[MSW] Cannot bypass a request when using the \"error\" strategy for the \"onUnhandledRequest\" option."
    Received message:   "Cannot read properties of undefined (reading 'error')"

          116 |
          117 |       // Call the default "error" strategy.
        > 118 |       print.error()
              |             ^
          119 |     },
          120 |   )
          121 |   const request = createMockedRequest({

      at src/utils/request/onUnhandledRequest.test.ts:118:13
      at Object.onUnhandledRequest (src/utils/request/onUnhandledRequest.ts:200:9)
      at src/utils/request/onUnhandledRequest.test.ts:125:16
      at Object.<anonymous> (node_modules/expect/build/toThrowMatchers.js:83:11)
      at Object.throwingMatcher [as toThrow] (node_modules/expect/build/index.js:338:21)
      at Object.<anonymous> (src/utils/request/onUnhandledRequest.test.ts:125:59)
      at Object.<anonymous> (src/utils/request/onUnhandledRequest.test.ts:125:59)

FAIL src/handlers/GraphQLHandler.test.ts
  ● Test suite failed to run

    [96msrc/graphql.ts[0m:[93m86[0m:[93m37[0m - [91merror[0m[90m TS2345: [0mArgument of type '"query"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m86[0m   query: createScopedGraphQLHandler('query', '*'),
    [7m  [0m [91m                                    ~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m96[0m:[93m40[0m - [91merror[0m[90m TS2345: [0mArgument of type '"mutation"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m96[0m   mutation: createScopedGraphQLHandler('mutation', '*'),
    [7m  [0m [91m                                       ~~~~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m102[0m:[93m39[0m - [91merror[0m[90m TS2345: [0mArgument of type '"query"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m102[0m     query: createScopedGraphQLHandler('query', url),
    [7m   [0m [91m                                      ~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m103[0m:[93m42[0m - [91merror[0m[90m TS2345: [0mArgument of type '"mutation"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m103[0m     mutation: createScopedGraphQLHandler('mutation', url),
    [7m   [0m [91m                                         ~~~~~~~~~~[0m

FAIL src/utils/handleRequest.test.ts
  ● Test suite failed to run

    [96msrc/graphql.ts[0m:[93m86[0m:[93m37[0m - [91merror[0m[90m TS2345: [0mArgument of type '"query"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m86[0m   query: createScopedGraphQLHandler('query', '*'),
    [7m  [0m [91m                                    ~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m96[0m:[93m40[0m - [91merror[0m[90m TS2345: [0mArgument of type '"mutation"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m96[0m   mutation: createScopedGraphQLHandler('mutation', '*'),
    [7m  [0m [91m                                       ~~~~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m102[0m:[93m39[0m - [91merror[0m[90m TS2345: [0mArgument of type '"query"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m102[0m     query: createScopedGraphQLHandler('query', url),
    [7m   [0m [91m                                      ~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m103[0m:[93m42[0m - [91merror[0m[90m TS2345: [0mArgument of type '"mutation"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m103[0m     mutation: createScopedGraphQLHandler('mutation', url),
    [7m   [0m [91m                                         ~~~~~~~~~~[0m

FAIL src/handlers/RestHandler.test.ts
  ● Test suite failed to run

    [96msrc/graphql.ts[0m:[93m86[0m:[93m37[0m - [91merror[0m[90m TS2345: [0mArgument of type '"query"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m86[0m   query: createScopedGraphQLHandler('query', '*'),
    [7m  [0m [91m                                    ~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m96[0m:[93m40[0m - [91merror[0m[90m TS2345: [0mArgument of type '"mutation"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m96[0m   mutation: createScopedGraphQLHandler('mutation', '*'),
    [7m  [0m [91m                                       ~~~~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m102[0m:[93m39[0m - [91merror[0m[90m TS2345: [0mArgument of type '"query"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m102[0m     query: createScopedGraphQLHandler('query', url),
    [7m   [0m [91m                                      ~~~~~~~[0m
    [96msrc/graphql.ts[0m:[93m103[0m:[93m42[0m - [91merror[0m[90m TS2345: [0mArgument of type '"mutation"' is not assignable to parameter of type 'ExpectedOperationTypeNode'.

    [7m103[0m     mutation: createScopedGraphQLHandler('mutation', url),
    [7m   [0m [91m                                         ~~~~~~~~~~[0m


Test Suites: 4 failed, 49 passed, 53 total
Tests:       2 failed, 163 passed, 165 total
Snapshots:   0 total
Time:        5.576 s
Ran all test suites.
error Command failed with exit code 1.
info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.
