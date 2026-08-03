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
Checking patch src/utils/request/onUnhandledRequest.ts...
Applied patch package.json cleanly.
Applied patch src/handlers/GraphQLHandler.ts cleanly.
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
Done in 2.90s.
yarn run v1.22.22
$ /home/msw/node_modules/.bin/jest --maxWorkers=3
PASS src/utils/internal/getCallFrame.test.ts
FAIL src/utils/request/onUnhandledRequest.test.ts
  ● supports calling default strategies from the custom callback function

    expect(received).toThrow(expected)

    Expected substring: "[MSW] Cannot bypass a request when using the \"error\" strategy for the \"onUnhandledRequest\" option."

    Received function did not throw

      123 |     url: new URL('http://localhost/api'),
      124 |   })
    > 125 |   expect(() => onUnhandledRequest(request, [], callback)).toThrow(
          |                                                           ^
      126 |     `[MSW] Cannot bypass a request when using the "error" strategy for the "onUnhandledRequest" option.`,
      127 |   )
      128 |

      at Object.<anonymous> (src/utils/request/onUnhandledRequest.test.ts:125:59)

PASS src/utils/handleRequest.test.ts
PASS src/handlers/GraphQLHandler.test.ts
PASS src/utils/matching/matchRequestUrl.test.ts
PASS src/handlers/RestHandler.test.ts
PASS src/utils/request/parseBody.test.ts
PASS src/utils/internal/parseMultipartData.test.ts
PASS src/utils/internal/parseGraphQLRequest.test.ts
PASS src/setupWorker/start/utils/prepareStartHandler.test.ts
PASS src/context/errors.test.ts
PASS src/context/delay.test.ts
PASS src/context/extensions.test.ts
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
PASS src/context/set.test.ts
PASS src/utils/logging/prepareRequest.test.ts
PASS src/utils/request/getRequestCookies.node.test.ts
PASS src/utils/deferNetworkRequestsUntil.test.ts
PASS src/utils/request/pruneGetRequestBody.test.ts
PASS src/utils/logging/getStatusCodeColor.test.ts
PASS src/context/body.test.ts
PASS src/utils/request/getPublicUrlFromRequest.test.ts
PASS src/utils/internal/mergeRight.test.ts
PASS src/utils/internal/tryCatch.test.ts
PASS src/utils/url/cleanUrl.test.ts
PASS src/utils/logging/getTimestamp.test.ts
PASS src/context/status.test.ts
PASS src/utils/internal/compose.test.ts
PASS src/setupWorker/stop/utils/printStopMessage.test.ts
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
  ● supports calling default strategies from the custom callback function

    expect(received).toThrow(expected)

    Expected substring: "[MSW] Cannot bypass a request when using the \"error\" strategy for the \"onUnhandledRequest\" option."

    Received function did not throw

      123 |     url: new URL('http://localhost/api'),
      124 |   })
    > 125 |   expect(() => onUnhandledRequest(request, [], callback)).toThrow(
          |                                                           ^
      126 |     `[MSW] Cannot bypass a request when using the "error" strategy for the "onUnhandledRequest" option.`,
      127 |   )
      128 |

      at Object.<anonymous> (src/utils/request/onUnhandledRequest.test.ts:125:59)


Test Suites: 1 failed, 52 passed, 53 total
Tests:       1 failed, 206 passed, 207 total
Snapshots:   0 total
Time:        6.038 s
Ran all test suites.
error Command failed with exit code 1.
info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.
