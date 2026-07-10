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
Checking patch src/utils/request/onUnhandledRequest.ts...
Applied patch package.json cleanly.
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
Done in 5.19s.
yarn run v1.22.22
$ /home/msw/node_modules/.bin/jest --maxWorkers=3
PASS src/utils/internal/getCallFrame.test.ts
FAIL src/utils/request/onUnhandledRequest.test.ts
  ● Test suite failed to run

    [96msrc/utils/request/onUnhandledRequest.test.ts[0m:[93m118[0m:[93m13[0m - [91merror[0m[90m TS2339: [0mProperty 'error' does not exist on type 'UnhandledRequestDefaultCallback'.

    [7m118[0m       print.error()
    [7m   [0m [91m            ~~~~~[0m

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

PASS src/utils/request/parseBody.test.ts
PASS src/utils/matching/matchRequestUrl.test.ts
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
PASS src/context/fetch.test.ts
PASS src/context/json.test.ts
PASS src/utils/url/isAbsoluteUrl.test.ts
PASS src/utils/url/getAbsoluteUrl.test.ts
PASS src/context/set.test.ts
PASS src/utils/logging/prepareRequest.test.ts
PASS src/utils/request/getRequestCookies.node.test.ts
PASS src/utils/logging/getStatusCodeColor.test.ts
PASS src/utils/request/pruneGetRequestBody.test.ts
PASS src/utils/request/getPublicUrlFromRequest.test.ts
PASS src/utils/deferNetworkRequestsUntil.test.ts
PASS src/utils/internal/mergeRight.test.ts
PASS src/context/body.test.ts
PASS src/utils/url/cleanUrl.test.ts
PASS src/utils/logging/getTimestamp.test.ts
PASS src/utils/internal/tryCatch.test.ts
PASS src/setupWorker/stop/utils/printStopMessage.test.ts
PASS src/utils/internal/compose.test.ts
PASS src/context/status.test.ts
PASS src/context/cookie.test.ts
PASS src/utils/url/getAbsoluteUrl.node.test.ts
PASS src/utils/internal/isObject.test.ts
PASS src/utils/internal/pipeEvents.test.ts
PASS src/utils/url/getAbsoluteWorkerUrl.test.ts
PASS src/utils/internal/jsonParse.test.ts
PASS src/utils/internal/isIterable.test.ts
PASS src/context/xml.test.ts
PASS src/context/cookie.node.test.ts
PASS src/context/text.test.ts
PASS src/setupWorker/setupWorker.node.test.ts
PASS src/rest.spec.ts
PASS src/graphql.test.ts

Summary of all failing tests
FAIL src/utils/request/onUnhandledRequest.test.ts
  ● Test suite failed to run

    [96msrc/utils/request/onUnhandledRequest.test.ts[0m:[93m118[0m:[93m13[0m - [91merror[0m[90m TS2339: [0mProperty 'error' does not exist on type 'UnhandledRequestDefaultCallback'.

    [7m118[0m       print.error()
    [7m   [0m [91m            ~~~~~[0m

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


Test Suites: 4 failed, 49 passed, 53 total
Tests:       154 passed, 154 total
Snapshots:   0 total
Time:        6.635 s
Ran all test suites.
error Command failed with exit code 1.
info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.
