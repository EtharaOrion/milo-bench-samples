-- The CXX compiler identification is GNU 10.5.0
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /usr/local/bin/c++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Looking for C++ include initializer_list
-- Looking for C++ include initializer_list - found
-- Found OpenSSL: /usr/lib/aarch64-linux-gnu/libcrypto.so (found version "1.1.1w") found components: Crypto SSL 
-- Found ZLIB: /usr/lib/aarch64-linux-gnu/libz.so (found version "1.2.11") 
-- Configuring done
-- Generating done
-- Build files have been written to: /home/capnproto/c++/build
Scanning dependencies of target kj
[  2%] Building CXX object src/kj/CMakeFiles/kj.dir/common.c++.o
[  2%] Building CXX object src/kj/CMakeFiles/kj.dir/exception.c++.o
[  2%] Building CXX object src/kj/CMakeFiles/kj.dir/debug.c++.o
[  2%] Building CXX object src/kj/CMakeFiles/kj.dir/array.c++.o
[  3%] Building CXX object src/kj/CMakeFiles/kj.dir/io.c++.o
[  4%] Building CXX object src/kj/CMakeFiles/kj.dir/memory.c++.o
[  4%] Building CXX object src/kj/CMakeFiles/kj.dir/mutex.c++.o
[  5%] Building CXX object src/kj/CMakeFiles/kj.dir/hash.c++.o
[  6%] Building CXX object src/kj/CMakeFiles/kj.dir/string.c++.o
[  6%] Building CXX object src/kj/CMakeFiles/kj.dir/table.c++.o
[  6%] Building CXX object src/kj/CMakeFiles/kj.dir/thread.c++.o
[  7%] Building CXX object src/kj/CMakeFiles/kj.dir/main.c++.o
[  7%] Building CXX object src/kj/CMakeFiles/kj.dir/arena.c++.o
[  7%] Building CXX object src/kj/CMakeFiles/kj.dir/units.c++.o
[  8%] Building CXX object src/kj/CMakeFiles/kj.dir/encoding.c++.o
[ 10%] Building CXX object src/kj/CMakeFiles/kj.dir/string-tree.c++.o
[ 10%] Building CXX object src/kj/CMakeFiles/kj.dir/test-helpers.c++.o
[ 10%] Building CXX object src/kj/CMakeFiles/kj.dir/refcount.c++.o
[ 11%] Building CXX object src/kj/CMakeFiles/kj.dir/time.c++.o
[ 11%] Building CXX object src/kj/CMakeFiles/kj.dir/filesystem.c++.o
[ 12%] Building CXX object src/kj/CMakeFiles/kj.dir/filesystem-disk-unix.c++.o
[ 12%] Building CXX object src/kj/CMakeFiles/kj.dir/filesystem-disk-win32.c++.o
[ 13%] Building CXX object src/kj/CMakeFiles/kj.dir/parse/char.c++.o
[ 13%] Linking CXX static library libkj.a
[ 13%] Built target kj
Scanning dependencies of target kj-test
Scanning dependencies of target kj-async
Scanning dependencies of target capnp
[ 14%] Building CXX object src/kj/CMakeFiles/kj-test.dir/test.c++.o
[ 16%] Building CXX object src/kj/CMakeFiles/kj-async.dir/async-unix.c++.o
[ 16%] Building CXX object src/kj/CMakeFiles/kj-async.dir/async.c++.o
[ 17%] Building CXX object src/kj/CMakeFiles/kj-async.dir/async-win32.c++.o
[ 17%] Building CXX object src/kj/CMakeFiles/kj-async.dir/async-io-win32.c++.o
[ 17%] Building CXX object src/kj/CMakeFiles/kj-async.dir/async-io.c++.o
[ 18%] Building CXX object src/kj/CMakeFiles/kj-async.dir/timer.c++.o
[ 18%] Building CXX object src/kj/CMakeFiles/kj-async.dir/async-io-unix.c++.o
[ 19%] Building CXX object src/capnp/CMakeFiles/capnp.dir/arena.c++.o
[ 19%] Building CXX object src/capnp/CMakeFiles/capnp.dir/c++.capnp.c++.o
[ 19%] Building CXX object src/capnp/CMakeFiles/capnp.dir/blob.c++.o
[ 20%] Building CXX object src/capnp/CMakeFiles/capnp.dir/layout.c++.o
[ 20%] Building CXX object src/capnp/CMakeFiles/capnp.dir/list.c++.o
[ 21%] Building CXX object src/capnp/CMakeFiles/capnp.dir/any.c++.o
[ 21%] Building CXX object src/capnp/CMakeFiles/capnp.dir/message.c++.o
[ 22%] Building CXX object src/capnp/CMakeFiles/capnp.dir/schema.capnp.c++.o
[ 23%] Building CXX object src/capnp/CMakeFiles/capnp.dir/serialize.c++.o
[ 23%] Building CXX object src/capnp/CMakeFiles/capnp.dir/stream.capnp.c++.o
[ 24%] Building CXX object src/capnp/CMakeFiles/capnp.dir/schema.c++.o
[ 25%] Building CXX object src/capnp/CMakeFiles/capnp.dir/schema-loader.c++.o
[ 25%] Building CXX object src/capnp/CMakeFiles/capnp.dir/dynamic.c++.o
[ 26%] Building CXX object src/capnp/CMakeFiles/capnp.dir/stringify.c++.o
[ 26%] Building CXX object src/capnp/CMakeFiles/capnp.dir/serialize-packed.c++.o
[ 27%] Linking CXX static library libkj-test.a
[ 27%] Built target kj-test
Scanning dependencies of target kj-tests
[ 28%] Building CXX object src/kj/CMakeFiles/kj-tests.dir/common-test.c++.o
[ 28%] Building CXX object src/kj/CMakeFiles/kj-tests.dir/memory-test.c++.o
[ 28%] Building CXX object src/kj/CMakeFiles/kj-tests.dir/array-test.c++.o
[ 29%] Building CXX object src/kj/CMakeFiles/kj-tests.dir/string-test.c++.o
[ 29%] Building CXX object src/kj/CMakeFiles/kj-tests.dir/table-test.c++.o
[ 30%] Building CXX object src/kj/CMakeFiles/kj-tests.dir/map-test.c++.o
[ 30%] Building CXX object src/kj/CMakeFiles/kj-tests.dir/exception-test.c++.o
[ 31%] Building CXX object src/kj/CMakeFiles/kj-tests.dir/debug-test.c++.o
[ 31%] Building CXX object src/kj/CMakeFiles/kj-tests.dir/io-test.c++.o
[ 32%] Building CXX object src/kj/CMakeFiles/kj-tests.dir/mutex-test.c++.o
[ 33%] Building CXX object src/kj/CMakeFiles/kj-tests.dir/time-test.c++.o
[ 33%] Building CXX object src/kj/CMakeFiles/kj-tests.dir/threadlocal-test.c++.o
[ 34%] Building CXX object src/kj/CMakeFiles/kj-tests.dir/test-test.c++.o
[ 34%] Building CXX object src/kj/CMakeFiles/kj-tests.dir/std/iostream-test.c++.o
/home/capnproto/c++/src/kj/debug-test.c++: In member function ‘virtual void kj::_::{anonymous}::TestCase281::run()’:
/home/capnproto/c++/src/kj/debug-test.c++:325:7: error: ‘KJ_KNOWN_UNREACHABLE’ was not declared in this scope; did you mean ‘KJ_UNREACHABLE’?
  325 |       KJ_KNOWN_UNREACHABLE(ADD_FAILURE() << "Expected exception.");
      |       ^~~~~~~~~~~~~~~~~~~~
      |       KJ_UNREACHABLE
make[2]: *** [src/kj/CMakeFiles/kj-tests.dir/build.make:173: src/kj/CMakeFiles/kj-tests.dir/debug-test.c++.o] Error 1
[ 34%] Linking CXX static library libcapnp.a
[ 34%] Built target capnp
Scanning dependencies of target capnpc_capnp
Scanning dependencies of target capnpc_cpp
Scanning dependencies of target capnpc
[ 35%] Building CXX object src/capnp/CMakeFiles/capnpc_cpp.dir/compiler/capnpc-c++.c++.o
[ 37%] Building CXX object src/capnp/CMakeFiles/capnpc.dir/compiler/error-reporter.c++.o
[ 37%] Building CXX object src/capnp/CMakeFiles/capnpc.dir/compiler/type-id.c++.o
[ 37%] Building CXX object src/capnp/CMakeFiles/capnpc.dir/compiler/lexer.capnp.c++.o
[ 38%] Building CXX object src/capnp/CMakeFiles/capnpc.dir/compiler/grammar.capnp.c++.o
[ 38%] Building CXX object src/capnp/CMakeFiles/capnpc.dir/compiler/parser.c++.o
[ 39%] Building CXX object src/capnp/CMakeFiles/capnpc.dir/compiler/node-translator.c++.o
[ 40%] Building CXX object src/capnp/CMakeFiles/capnpc.dir/schema-parser.c++.o
[ 40%] Building CXX object src/capnp/CMakeFiles/capnpc.dir/compiler/compiler.c++.o
[ 41%] Building CXX object src/capnp/CMakeFiles/capnpc.dir/serialize-text.c++.o
[ 41%] Building CXX object src/capnp/CMakeFiles/capnpc.dir/compiler/lexer.c++.o
[ 42%] Building CXX object src/capnp/CMakeFiles/capnpc_capnp.dir/compiler/capnpc-capnp.c++.o
make[2]: Target 'src/kj/CMakeFiles/kj-tests.dir/build' not remade because of errors.
make[1]: *** [CMakeFiles/Makefile2:1029: src/kj/CMakeFiles/kj-tests.dir/all] Error 2
[ 43%] Linking CXX static library libkj-async.a
[ 43%] Built target kj-async
Scanning dependencies of target kj-tls
Scanning dependencies of target kj-http
Scanning dependencies of target kj-gzip
Scanning dependencies of target capnp-rpc
[ 43%] Building CXX object src/kj/CMakeFiles/kj-tls.dir/compat/readiness-io.c++.o
[ 44%] Building CXX object src/kj/CMakeFiles/kj-tls.dir/compat/tls.c++.o
Scanning dependencies of target capnp-json
[ 45%] Building CXX object src/kj/CMakeFiles/kj-http.dir/compat/http.c++.o
[ 45%] Building CXX object src/kj/CMakeFiles/kj-gzip.dir/compat/gzip.c++.o
[ 46%] Building CXX object src/capnp/CMakeFiles/capnp-json.dir/compat/json.c++.o
[ 46%] Building CXX object src/kj/CMakeFiles/kj-http.dir/compat/url.c++.o
[ 47%] Building CXX object src/capnp/CMakeFiles/capnp-rpc.dir/serialize-async.c++.o
[ 48%] Building CXX object src/capnp/CMakeFiles/capnp-json.dir/compat/json.capnp.c++.o
[ 48%] Building CXX object src/capnp/CMakeFiles/capnp-rpc.dir/capability.c++.o
[ 49%] Building CXX object src/capnp/CMakeFiles/capnp-rpc.dir/membrane.c++.o
[ 50%] Building CXX object src/capnp/CMakeFiles/capnp-rpc.dir/rpc-twoparty.c++.o
[ 51%] Building CXX object src/capnp/CMakeFiles/capnp-rpc.dir/rpc.c++.o
[ 51%] Building CXX object src/capnp/CMakeFiles/capnp-rpc.dir/ez-rpc.c++.o
[ 52%] Building CXX object src/capnp/CMakeFiles/capnp-rpc.dir/persistent.capnp.c++.o
[ 52%] Building CXX object src/capnp/CMakeFiles/capnp-rpc.dir/rpc.capnp.c++.o
[ 52%] Building CXX object src/capnp/CMakeFiles/capnp-rpc.dir/rpc-twoparty.capnp.c++.o
[ 52%] Building CXX object src/capnp/CMakeFiles/capnp-rpc.dir/dynamic-capability.c++.o
[ 52%] Linking CXX executable capnpc-capnp
[ 53%] Linking CXX static library libkj-gzip.a
[ 53%] Built target kj-gzip
[ 53%] Built target capnpc_capnp
[ 53%] Linking CXX static library libkj-tls.a
[ 53%] Built target kj-tls
[ 53%] Linking CXX static library libcapnp-json.a
[ 53%] Built target capnp-json
[ 53%] Linking CXX static library libcapnpc.a
[ 53%] Built target capnpc
Scanning dependencies of target capnp-evolution-tests
Scanning dependencies of target capnp_tool
[ 54%] Building CXX object src/capnp/CMakeFiles/capnp-evolution-tests.dir/compiler/evolution-test.c++.o
[ 54%] Building CXX object src/capnp/CMakeFiles/capnp_tool.dir/compiler/module-loader.c++.o
[ 55%] Building CXX object src/capnp/CMakeFiles/capnp_tool.dir/compiler/capnp.c++.o
[ 55%] Linking CXX executable capnp-evolution-tests
[ 55%] Linking CXX executable capnpc-c++
[ 56%] Linking CXX static library libcapnp-rpc.a
[ 56%] Built target capnp-rpc
[ 56%] Built target capnp-evolution-tests
[ 56%] Built target capnpc_cpp
[ 56%] Linking CXX static library libkj-http.a
[ 56%] Linking CXX executable capnp
[ 56%] Built target kj-http
Scanning dependencies of target kj-heavy-tests
[ 56%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/async-test.c++.o
[ 56%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/async-unix-test.c++.o
[ 58%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/async-unix-xthread-test.c++.o
[ 59%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/async-xthread-test.c++.o
[ 59%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/async-win32-test.c++.o
[ 59%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/async-win32-xthread-test.c++.o
[ 60%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/async-io-test.c++.o
[ 60%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/refcount-test.c++.o
[ 61%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/string-tree-test.c++.o
[ 61%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/encoding-test.c++.o
[ 62%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/arena-test.c++.o
[ 62%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/units-test.c++.o
[ 63%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/tuple-test.c++.o
[ 63%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/one-of-test.c++.o
[ 64%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/filesystem-test.c++.o
[ 64%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/function-test.c++.o
[ 65%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/filesystem-disk-test.c++.o
[ 66%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/parse/common-test.c++.o
[ 66%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/parse/char-test.c++.o
[ 67%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/compat/url-test.c++.o
[ 67%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/compat/http-test.c++.o
[ 68%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/compat/gzip-test.c++.o
[ 68%] Building CXX object src/kj/CMakeFiles/kj-heavy-tests.dir/compat/tls-test.c++.o
[ 68%] Built target capnp_tool
Scanning dependencies of target test_capnp
[ 71%] Compiling Cap'n Proto schema compat/json-test.capnp
[ 71%] Compiling Cap'n Proto schema test-import2.capnp
[ 71%] Compiling Cap'n Proto schema test.capnp
[ 71%] Compiling Cap'n Proto schema test-import.capnp
[ 71%] Built target test_capnp
Scanning dependencies of target capnp-tests
Scanning dependencies of target capnp-heavy-tests
[ 74%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/blob-test.c++.o
[ 74%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/any-test.c++.o
[ 74%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/endian-fallback-test.c++.o
[ 74%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/common-test.c++.o
[ 75%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/layout-test.c++.o
[ 76%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/message-test.c++.o
[ 74%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/endian-test.c++.o
[ 76%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/orphan-test.c++.o
[ 77%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/serialize-test.c++.o
[ 77%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/serialize-packed-test.c++.o
[ 78%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/canonicalize-test.c++.o
[ 78%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/fuzz-test.c++.o
[ 79%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/test-util.c++.o
[ 79%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/encoding-test.c++.o
[ 79%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/test_capnp/capnp/test.capnp.c++.o
[ 80%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/test_capnp/capnp/test-import2.capnp.c++.o
[ 80%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/test_capnp/capnp/test-import.capnp.c++.o
[ 81%] Building CXX object src/capnp/CMakeFiles/capnp-tests.dir/test_capnp/capnp/compat/json-test.capnp.c++.o
[ 82%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/endian-reverse-test.c++.o
[ 83%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/capability-test.c++.o
[ 83%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/membrane-test.c++.o
[ 84%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/schema-test.c++.o
[ 84%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/schema-loader-test.c++.o
[ 85%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/schema-parser-test.c++.o
[ 85%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/dynamic-test.c++.o
[ 86%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/stringify-test.c++.o
[ 86%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/serialize-async-test.c++.o
[ 87%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/serialize-text-test.c++.o
[ 87%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/compiler/lexer-test.c++.o
[ 88%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/compiler/type-id-test.c++.o
[ 90%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/compat/json-test.c++.o
[ 90%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/test_capnp/capnp/test.capnp.c++.o
[ 90%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/rpc-twoparty-test.c++.o
[ 90%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/test_capnp/capnp/test-import2.capnp.c++.o
[ 91%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/test_capnp/capnp/test-import.capnp.c++.o
[ 92%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/ez-rpc-test.c++.o
[ 92%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/rpc-test.c++.o
[ 92%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/test-util.c++.o
[ 93%] Building CXX object src/capnp/CMakeFiles/capnp-heavy-tests.dir/test_capnp/capnp/compat/json-test.capnp.c++.o
[ 94%] Linking CXX executable kj-heavy-tests
[ 94%] Built target kj-heavy-tests
[ 95%] Linking CXX executable capnp-tests
[ 97%] Built target capnp-tests
[ 97%] Linking CXX executable capnp-heavy-tests
[ 99%] Built target capnp-heavy-tests
make[1]: Target 'all' not remade because of errors.
make: *** [Makefile:149: all] Error 2
make: Target 'default_target' not remade because of errors.
Test project /home/capnproto/c++/build/src
    Start 1: kj-tests-run
Could not find executable /home/capnproto/c++/build/src/kj/kj-tests
Looked in the following places:
/home/capnproto/c++/build/src/kj/kj-tests
/home/capnproto/c++/build/src/kj/kj-tests
/home/capnproto/c++/build/src/kj/Release/kj-tests
/home/capnproto/c++/build/src/kj/Release/kj-tests
/home/capnproto/c++/build/src/kj/Debug/kj-tests
/home/capnproto/c++/build/src/kj/Debug/kj-tests
/home/capnproto/c++/build/src/kj/MinSizeRel/kj-tests
/home/capnproto/c++/build/src/kj/MinSizeRel/kj-tests
/home/capnproto/c++/build/src/kj/RelWithDebInfo/kj-tests
/home/capnproto/c++/build/src/kj/RelWithDebInfo/kj-tests
/home/capnproto/c++/build/src/kj/Deployment/kj-tests
/home/capnproto/c++/build/src/kj/Deployment/kj-tests
/home/capnproto/c++/build/src/kj/Development/kj-tests
/home/capnproto/c++/build/src/kj/Development/kj-tests
home/capnproto/c++/build/src/kj/kj-tests
home/capnproto/c++/build/src/kj/kj-tests
home/capnproto/c++/build/src/kj/Release/kj-tests
home/capnproto/c++/build/src/kj/Release/kj-tests
home/capnproto/c++/build/src/kj/Debug/kj-tests
home/capnproto/c++/build/src/kj/Debug/kj-tests
home/capnproto/c++/build/src/kj/MinSizeRel/kj-tests
home/capnproto/c++/build/src/kj/MinSizeRel/kj-tests
home/capnproto/c++/build/src/kj/RelWithDebInfo/kj-tests
home/capnproto/c++/build/src/kj/RelWithDebInfo/kj-tests
home/capnproto/c++/build/src/kj/Deployment/kj-tests
home/capnproto/c++/build/src/kj/Deployment/kj-tests
home/capnproto/c++/build/src/kj/Development/kj-tests
home/capnproto/c++/build/src/kj/Development/kj-tests
Unable to find executable: /home/capnproto/c++/build/src/kj/kj-tests
1/5 Test #1: kj-tests-run .....................***Not Run   0.00 sec
    Start 2: kj-heavy-tests-run
2/5 Test #2: kj-heavy-tests-run ...............   Passed    0.95 sec
    Start 3: capnp-tests-run
3/5 Test #3: capnp-tests-run ..................   Passed   29.60 sec
    Start 4: capnp-heavy-tests-run
4/5 Test #4: capnp-heavy-tests-run ............***Failed    0.74 sec
[ TEST ] endian-reverse-test.c++:36: legacy test: EndianReverse/Byte
[ PASS ] endian-reverse-test.c++:36: legacy test: EndianReverse/Byte (6 μs)
[ TEST ] endian-reverse-test.c++:57: legacy test: EndianReverse/TwoBytes
[ PASS ] endian-reverse-test.c++:57: legacy test: EndianReverse/TwoBytes (0 μs)
[ TEST ] endian-reverse-test.c++:74: legacy test: EndianReverse/FourBytes
[ PASS ] endian-reverse-test.c++:74: legacy test: EndianReverse/FourBytes (0 μs)
[ TEST ] endian-reverse-test.c++:89: legacy test: EndianReverse/EightBytes
[ PASS ] endian-reverse-test.c++:89: legacy test: EndianReverse/EightBytes (0 μs)
[ TEST ] capability-test.c++:43: legacy test: Capability/Basic
[ PASS ] capability-test.c++:43: legacy test: Capability/Basic (351 μs)
[ TEST ] capability-test.c++:83: legacy test: Capability/Inheritance
[ PASS ] capability-test.c++:83: legacy test: Capability/Inheritance (58 μs)
[ TEST ] capability-test.c++:112: legacy test: Capability/Pipelining
[ PASS ] capability-test.c++:112: legacy test: Capability/Pipelining (135 μs)
[ TEST ] capability-test.c++:148: use pipeline after dropping response
[ PASS ] capability-test.c++:148: use pipeline after dropping response (77 μs)
[ TEST ] capability-test.c++:185: legacy test: Capability/TailCall
[ PASS ] capability-test.c++:185: legacy test: Capability/TailCall (107 μs)
[ TEST ] capability-test.c++:219: legacy test: Capability/AsyncCancelation
[ PASS ] capability-test.c++:219: legacy test: Capability/AsyncCancelation (25 μs)
[ TEST ] capability-test.c++:261: legacy test: Capability/DynamicClient
[ PASS ] capability-test.c++:261: legacy test: Capability/DynamicClient (263 μs)
[ TEST ] capability-test.c++:302: legacy test: Capability/DynamicClientInheritance
[ PASS ] capability-test.c++:302: legacy test: Capability/DynamicClientInheritance (211 μs)
[ TEST ] capability-test.c++:339: legacy test: Capability/DynamicClientPipelining
[ PASS ] capability-test.c++:339: legacy test: Capability/DynamicClientPipelining (105 μs)
[ TEST ] capability-test.c++:378: legacy test: Capability/DynamicClientPipelineAnyCap
[ PASS ] capability-test.c++:378: legacy test: Capability/DynamicClientPipelineAnyCap (100 μs)
[ TEST ] capability-test.c++:455: legacy test: Capability/DynamicServer
[ PASS ] capability-test.c++:455: legacy test: Capability/DynamicServer (255 μs)
[ TEST ] capability-test.c++:526: legacy test: Capability/DynamicServerInheritance
[ PASS ] capability-test.c++:526: legacy test: Capability/DynamicServerInheritance (157 μs)
[ TEST ] capability-test.c++:612: legacy test: Capability/DynamicServerPipelining
[ PASS ] capability-test.c++:612: legacy test: Capability/DynamicServerPipelining (106 μs)
[ TEST ] capability-test.c++:675: legacy test: Capability/DynamicServerTailCall
[ PASS ] capability-test.c++:675: legacy test: Capability/DynamicServerTailCall (98 μs)
[ TEST ] capability-test.c++:735: legacy test: Capability/AnyPointersAndOrphans
[ PASS ] capability-test.c++:735: legacy test: Capability/AnyPointersAndOrphans (206 μs)
[ TEST ] capability-test.c++:799: legacy test: Capability/Lists
[ PASS ] capability-test.c++:799: legacy test: Capability/Lists (170 μs)
[ TEST ] capability-test.c++:838: legacy test: Capability/KeywordMethods
[ PASS ] capability-test.c++:838: legacy test: Capability/KeywordMethods (16 μs)
[ TEST ] capability-test.c++:864: legacy test: Capability/Generics
[ PASS ] capability-test.c++:864: legacy test: Capability/Generics (26 μs)
[ TEST ] capability-test.c++:894: legacy test: Capability/Generics2
[ PASS ] capability-test.c++:894: legacy test: Capability/Generics2 (1 μs)
[ TEST ] capability-test.c++:901: legacy test: Capability/ImplicitParams
[ PASS ] capability-test.c++:901: legacy test: Capability/ImplicitParams (15 μs)
[ TEST ] capability-test.c++:925: legacy test: Capability/CapabilityServerSet
[ PASS ] capability-test.c++:925: legacy test: Capability/CapabilityServerSet (45 μs)
[ TEST ] capability-test.c++:1019: legacy test: Capability/ThisCap
[ PASS ] capability-test.c++:1019: legacy test: Capability/ThisCap (40 μs)
[ TEST ] capability-test.c++:1047: legacy test: Capability/TransferCap
[ PASS ] capability-test.c++:1047: legacy test: Capability/TransferCap (12 μs)
[ TEST ] capability-test.c++:1071: Promise<RemotePromise<T>> automatically reduces to RemotePromise<T>
[ PASS ] capability-test.c++:1071: Promise<RemotePromise<T>> automatically reduces to RemotePromise<T> (22 μs)
[ TEST ] capability-test.c++:1091: Promise<RemotePromise<T>> automatically reduces to RemotePromise<T> with pipelining
[ PASS ] capability-test.c++:1091: Promise<RemotePromise<T>> automatically reduces to RemotePromise<T> with pipelining (70 μs)
[ TEST ] capability-test.c++:1120: clone() with caps
[ PASS ] capability-test.c++:1120: clone() with caps (10 μs)
[ TEST ] capability-test.c++:1141: Streaming calls block subsequent calls
[ PASS ] capability-test.c++:1141: Streaming calls block subsequent calls (52 μs)
[ TEST ] capability-test.c++:1214: Streaming calls can be canceled
[ PASS ] capability-test.c++:1214: Streaming calls can be canceled (45 μs)
[ TEST ] capability-test.c++:1275: Streaming call throwing cascades to following calls
[ PASS ] capability-test.c++:1275: Streaming call throwing cascades to following calls (181 μs)
[ TEST ] membrane-test.c++:188: call local object inside membrane
[ PASS ] membrane-test.c++:188: call local object inside membrane (244 μs)
[ TEST ] membrane-test.c++:195: call local promise inside membrane
[ PASS ] membrane-test.c++:195: call local promise inside membrane (273 μs)
[ TEST ] membrane-test.c++:202: call local resolved promise inside membrane
[ PASS ] membrane-test.c++:202: call local resolved promise inside membrane (268 μs)
[ TEST ] membrane-test.c++:211: call local object outside membrane
[ PASS ] membrane-test.c++:211: call local object outside membrane (133 μs)
[ TEST ] membrane-test.c++:218: call local capability that has passed into and back out of membrane
[ PASS ] membrane-test.c++:218: call local capability that has passed into and back out of membrane (220 μs)
[ TEST ] membrane-test.c++:227: call local promise pointing into membrane that eventually resolves to outside
[ PASS ] membrane-test.c++:227: call local promise pointing into membrane that eventually resolves to outside (277 μs)
[ TEST ] membrane-test.c++:236: apply membrane using copyOutOfMembrane() on struct
[ PASS ] membrane-test.c++:236: apply membrane using copyOutOfMembrane() on struct (147 μs)
[ TEST ] membrane-test.c++:250: apply membrane using copyOutOfMembrane() on list
[ PASS ] membrane-test.c++:250: apply membrane using copyOutOfMembrane() on list (158 μs)
[ TEST ] membrane-test.c++:264: apply membrane using copyOutOfMembrane() on AnyPointer
[ PASS ] membrane-test.c++:264: apply membrane using copyOutOfMembrane() on AnyPointer (144 μs)
[ TEST ] membrane-test.c++:305: call remote object inside membrane
[ PASS ] membrane-test.c++:305: call remote object inside membrane (1242 μs)
[ TEST ] membrane-test.c++:312: call remote promise inside membrane
[ PASS ] membrane-test.c++:312: call remote promise inside membrane (1046 μs)
[ TEST ] membrane-test.c++:319: call remote resolved promise inside membrane
[ PASS ] membrane-test.c++:319: call remote resolved promise inside membrane (297 μs)
[ TEST ] membrane-test.c++:328: call remote object outside membrane
[ PASS ] membrane-test.c++:328: call remote object outside membrane (604 μs)
[ TEST ] membrane-test.c++:335: call remote capability that has passed into and back out of membrane
[ PASS ] membrane-test.c++:335: call remote capability that has passed into and back out of membrane (1105 μs)
[ TEST ] membrane-test.c++:344: call remote promise pointing into membrane that eventually resolves to outside
[ PASS ] membrane-test.c++:344: call remote promise pointing into membrane that eventually resolves to outside (1270 μs)
[ TEST ] membrane-test.c++:353: revoke membrane
[ PASS ] membrane-test.c++:353: revoke membrane (493 μs)
[ TEST ] schema-test.c++:41: legacy test: Schema/Structs
[ PASS ] schema-test.c++:41: legacy test: Schema/Structs (106 μs)
[ TEST ] schema-test.c++:81: legacy test: Schema/FieldLookupOutOfOrder
[ PASS ] schema-test.c++:81: legacy test: Schema/FieldLookupOutOfOrder (12 μs)
[ TEST ] schema-test.c++:107: legacy test: Schema/Unions
[ PASS ] schema-test.c++:107: legacy test: Schema/Unions (13 μs)
[ TEST ] schema-test.c++:132: legacy test: Schema/Enums
[ PASS ] schema-test.c++:132: legacy test: Schema/Enums (102 μs)
[ TEST ] schema-test.c++:164: legacy test: Schema/Lists
[ PASS ] schema-test.c++:164: legacy test: Schema/Lists (516 μs)
[ TEST ] schema-test.c++:253: legacy test: Schema/UnnamedUnion
[ PASS ] schema-test.c++:253: legacy test: Schema/UnnamedUnion (3 μs)
[ TEST ] schema-test.c++:264: legacy test: Schema/NullSchemas
[ PASS ] schema-test.c++:264: legacy test: Schema/NullSchemas (3 μs)
[ TEST ] schema-test.c++:281: legacy test: Schema/Interfaces
[ PASS ] schema-test.c++:281: legacy test: Schema/Interfaces (88 μs)
[ TEST ] schema-test.c++:322: legacy test: Schema/Generics
[ PASS ] schema-test.c++:322: legacy test: Schema/Generics (21 μs)
[ TEST ] schema-loader-test.c++:33: legacy test: SchemaLoader/Load
[ PASS ] schema-loader-test.c++:33: legacy test: SchemaLoader/Load (1350 μs)
[ TEST ] schema-loader-test.c++:59: legacy test: SchemaLoader/LoadLateUnion
[ PASS ] schema-loader-test.c++:59: legacy test: SchemaLoader/LoadLateUnion (80 μs)
[ TEST ] schema-loader-test.c++:77: legacy test: SchemaLoader/LoadUnnamedUnion
[ PASS ] schema-loader-test.c++:77: legacy test: SchemaLoader/LoadUnnamedUnion (19 μs)
[ TEST ] schema-loader-test.c++:91: legacy test: SchemaLoader/Use
[ PASS ] schema-loader-test.c++:91: legacy test: SchemaLoader/Use (1044 μs)
[ TEST ] schema-loader-test.c++:192: legacy test: SchemaLoader/Upgrade
[ PASS ] schema-loader-test.c++:192: legacy test: SchemaLoader/Upgrade (330 μs)
[ TEST ] schema-loader-test.c++:212: legacy test: SchemaLoader/Downgrade
[ PASS ] schema-loader-test.c++:212: legacy test: SchemaLoader/Downgrade (440 μs)
[ TEST ] schema-loader-test.c++:229: legacy test: SchemaLoader/Incompatible
[ PASS ] schema-loader-test.c++:229: legacy test: SchemaLoader/Incompatible (244 μs)
[ TEST ] schema-loader-test.c++:236: legacy test: SchemaLoader/Enumerate
[ PASS ] schema-loader-test.c++:236: legacy test: SchemaLoader/Enumerate (33 μs)
[ TEST ] schema-loader-test.c++:250: legacy test: SchemaLoader/EnumerateNoPlaceholders
[ PASS ] schema-loader-test.c++:250: legacy test: SchemaLoader/EnumerateNoPlaceholders (139 μs)
[ TEST ] schema-loader-test.c++:297: legacy test: SchemaLoader/LazyLoad
[ PASS ] schema-loader-test.c++:297: legacy test: SchemaLoader/LazyLoad (118 μs)
[ TEST ] schema-loader-test.c++:314: legacy test: SchemaLoader/LazyLoadGetDependency
[ PASS ] schema-loader-test.c++:314: legacy test: SchemaLoader/LazyLoadGetDependency (239 μs)
[ TEST ] schema-loader-test.c++:333: legacy test: SchemaLoader/Generics
[ PASS ] schema-loader-test.c++:333: legacy test: SchemaLoader/Generics (797 μs)
[ TEST ] schema-loader-test.c++:392: legacy test: SchemaLoader/LoadStreaming
[ PASS ] schema-loader-test.c++:392: legacy test: SchemaLoader/LoadStreaming (65 μs)
[ TEST ] schema-parser-test.c++:63: legacy test: SchemaParser/Basic
[ PASS ] schema-parser-test.c++:63: legacy test: SchemaParser/Basic (1499 μs)
[ TEST ] schema-parser-test.c++:156: legacy test: SchemaParser/Constants
[ PASS ] schema-parser-test.c++:156: legacy test: SchemaParser/Constants (1054 μs)
[ TEST ] schema-parser-test.c++:212: legacy test: SchemaParser/SourceInfo
[ PASS ] schema-parser-test.c++:212: legacy test: SchemaParser/SourceInfo (932 μs)
[ TEST ] dynamic-test.c++:47: legacy test: DynamicApi/Build
[ PASS ] dynamic-test.c++:47: legacy test: DynamicApi/Build (402 μs)
[ TEST ] dynamic-test.c++:58: legacy test: DynamicApi/Read
[ PASS ] dynamic-test.c++:58: legacy test: DynamicApi/Read (364 μs)
[ TEST ] dynamic-test.c++:69: legacy test: DynamicApi/Defaults
[ PASS ] dynamic-test.c++:69: legacy test: DynamicApi/Defaults (117 μs)
[ TEST ] dynamic-test.c++:77: legacy test: DynamicApi/DefaultsBuilder
[ PASS ] dynamic-test.c++:77: legacy test: DynamicApi/DefaultsBuilder (492 μs)
[ TEST ] dynamic-test.c++:93: legacy test: DynamicApi/Zero
[ PASS ] dynamic-test.c++:93: legacy test: DynamicApi/Zero (187 μs)
[ TEST ] dynamic-test.c++:103: legacy test: DynamicApi/ListListsBuild
[ PASS ] dynamic-test.c++:103: legacy test: DynamicApi/ListListsBuild (193 μs)
[ TEST ] dynamic-test.c++:114: legacy test: DynamicApi/ListListsRead
[ PASS ] dynamic-test.c++:114: legacy test: DynamicApi/ListListsRead (186 μs)
[ TEST ] dynamic-test.c++:125: legacy test: DynamicApi/AnyPointers
[ PASS ] dynamic-test.c++:125: legacy test: DynamicApi/AnyPointers (446 μs)
[ TEST ] dynamic-test.c++:194: legacy test: DynamicApi/DynamicAnyPointers
[ PASS ] dynamic-test.c++:194: legacy test: DynamicApi/DynamicAnyPointers (605 μs)
[ TEST ] dynamic-test.c++:256: legacy test: DynamicApi/DynamicAnyStructs
[ PASS ] dynamic-test.c++:256: legacy test: DynamicApi/DynamicAnyStructs (3 μs)
[ TEST ] dynamic-test.c++:272: legacy test: DynamicApi/UnionsRead
[ PASS ] dynamic-test.c++:272: legacy test: DynamicApi/UnionsRead (27 μs)
[ TEST ] dynamic-test.c++:331: legacy test: DynamicApi/UnionsWrite
[ PASS ] dynamic-test.c++:331: legacy test: DynamicApi/UnionsWrite (100 μs)
[ TEST ] dynamic-test.c++:358: legacy test: DynamicApi/UnnamedUnion
[ PASS ] dynamic-test.c++:358: legacy test: DynamicApi/UnnamedUnion (251 μs)
[ TEST ] dynamic-test.c++:394: legacy test: DynamicApi/ConversionFailures
[ PASS ] dynamic-test.c++:394: legacy test: DynamicApi/ConversionFailures (139 μs)
[ TEST ] dynamic-test.c++:411: legacy test: DynamicApi/LateUnion
[ PASS ] dynamic-test.c++:411: legacy test: DynamicApi/LateUnion (4 μs)
[ TEST ] dynamic-test.c++:419: legacy test: DynamicApi/Has
[ PASS ] dynamic-test.c++:419: legacy test: DynamicApi/Has (18 μs)
[ TEST ] dynamic-test.c++:441: legacy test: DynamicApi/HasWhenEmpty
[ PASS ] dynamic-test.c++:441: legacy test: DynamicApi/HasWhenEmpty (10 μs)
[ TEST ] dynamic-test.c++:458: legacy test: DynamicApi/SetEnumFromNative
[ PASS ] dynamic-test.c++:458: legacy test: DynamicApi/SetEnumFromNative (9 μs)
[ TEST ] dynamic-test.c++:468: legacy test: DynamicApi/SetDataFromText
[ PASS ] dynamic-test.c++:468: legacy test: DynamicApi/SetDataFromText (4 μs)
[ TEST ] dynamic-test.c++:476: legacy test: DynamicApi/BuilderAssign
[ PASS ] dynamic-test.c++:476: legacy test: DynamicApi/BuilderAssign (6 μs)
[ TEST ] stringify-test.c++:33: legacy test: Stringify/KjStringification
[ PASS ] stringify-test.c++:33: legacy test: Stringify/KjStringification (706 μs)
[ TEST ] stringify-test.c++:257: legacy test: Stringify/PrettyPrint
[ PASS ] stringify-test.c++:257: legacy test: Stringify/PrettyPrint (702 μs)
[ TEST ] stringify-test.c++:471: legacy test: Stringify/PrettyPrintAdvanced
[ PASS ] stringify-test.c++:471: legacy test: Stringify/PrettyPrintAdvanced (248 μs)
[ TEST ] stringify-test.c++:581: legacy test: Stringify/Unions
[ PASS ] stringify-test.c++:581: legacy test: Stringify/Unions (60 μs)
[ TEST ] stringify-test.c++:605: legacy test: Stringify/UnionDefaults
[ PASS ] stringify-test.c++:605: legacy test: Stringify/UnionDefaults (59 μs)
[ TEST ] stringify-test.c++:629: legacy test: Stringify/UnnamedUnions
[ PASS ] stringify-test.c++:629: legacy test: Stringify/UnnamedUnions (92 μs)
[ TEST ] stringify-test.c++:672: legacy test: Stringify/StructUnions
[ PASS ] stringify-test.c++:672: legacy test: Stringify/StructUnions (16 μs)
[ TEST ] stringify-test.c++:683: legacy test: Stringify/MoreValues
[ PASS ] stringify-test.c++:683: legacy test: Stringify/MoreValues (10 μs)
[ TEST ] stringify-test.c++:693: legacy test: Stringify/Generics
[ PASS ] stringify-test.c++:693: legacy test: Stringify/Generics (12 μs)
[ TEST ] serialize-async-test.c++:217: legacy test: SerializeAsyncTest/ParseAsync
[ PASS ] serialize-async-test.c++:217: legacy test: SerializeAsyncTest/ParseAsync (50923 μs)
[ TEST ] serialize-async-test.c++:236: legacy test: SerializeAsyncTest/ParseAsyncOddSegmentCount
[ PASS ] serialize-async-test.c++:236: legacy test: SerializeAsyncTest/ParseAsyncOddSegmentCount (167435 μs)
[ TEST ] serialize-async-test.c++:255: legacy test: SerializeAsyncTest/ParseAsyncEvenSegmentCount
[ PASS ] serialize-async-test.c++:255: legacy test: SerializeAsyncTest/ParseAsyncEvenSegmentCount (258618 μs)
[ TEST ] serialize-async-test.c++:274: legacy test: SerializeAsyncTest/WriteAsync
[ PASS ] serialize-async-test.c++:274: legacy test: SerializeAsyncTest/WriteAsync (542 μs)
[ TEST ] serialize-async-test.c++:299: legacy test: SerializeAsyncTest/WriteAsyncOddSegmentCount
[ PASS ] serialize-async-test.c++:299: legacy test: SerializeAsyncTest/WriteAsyncOddSegmentCount (572 μs)
[ TEST ] serialize-async-test.c++:324: legacy test: SerializeAsyncTest/WriteAsyncEvenSegmentCount
[ PASS ] serialize-async-test.c++:324: legacy test: SerializeAsyncTest/WriteAsyncEvenSegmentCount (571 μs)
[ TEST ] serialize-text-test.c++:35: TextCodec TestAllTypes
[ PASS ] serialize-text-test.c++:35: TextCodec TestAllTypes (13736 μs)
[ TEST ] serialize-text-test.c++:69: TextCodec TestDefaults
[ PASS ] serialize-text-test.c++:69: TextCodec TestDefaults (6101 μs)
[ TEST ] serialize-text-test.c++:82: TextCodec TestListDefaults
[ PASS ] serialize-text-test.c++:82: TextCodec TestListDefaults (2249 μs)
[ TEST ] serialize-text-test.c++:95: TextCodec raw text
[ PASS ] serialize-text-test.c++:95: TextCodec raw text (220 μs)
[ TEST ] serialize-text-test.c++:129: TextCodec parse error
capnp/serialize-text-test.c++:139: failed: expected exception.getFile() == "(capnp text input)"_kj
stack: 47290f 4ace7f 83ff9f 8431db 8480df 8411c7 8402cb 84320b 84324f 843283 86280b 85ecc3 868ab7 861533 85c87b 86071b 8480df 85fda7 85cb07 83f567 ffff80cdde17 4042b3
    ??:?: returning here
    serialize-text-test.c++:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    main.c++:?: returning here
    main.c++:?: returning here
    ??:?: returning here
    main.c++:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:0: returning here
    ??:?: returning here
capnp/serialize-text-test.c++:140: failed: expected exception.getLine() == 2
stack: 42a47f 4acedf 83ff9f 8431db 8480df 8411c7 8402cb 84320b 84324f 843283 86280b 85ecc3 868ab7 861533 85c87b 86071b 8480df 85fda7 85cb07 83f567 ffff80cdde17 4042b3
    ??:?: returning here
    serialize-text-test.c++:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    main.c++:?: returning here
    main.c++:?: returning here
    ??:?: returning here
    main.c++:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:0: returning here
    ??:?: returning here
capnp/serialize-text-test.c++:141: failed: expected exception.getDescription() == "3-6: Parse error: Empty list item."; exception.getDescription() = Parse error: Empty list item. (line 2, columns 3-6).
stack: 4ae49f 4acf77 83ff9f 8431db 8480df 8411c7 8402cb 84320b 84324f 843283 86280b 85ecc3 868ab7 861533 85c87b 86071b 8480df 85fda7 85cb07 83f567 ffff80cdde17 4042b3
    ??:?: returning here
    serialize-text-test.c++:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:?: returning here
    main.c++:?: returning here
    main.c++:?: returning here
    ??:?: returning here
    main.c++:?: returning here
    ??:?: returning here
    ??:?: returning here
    ??:0: returning here
    ??:?: returning here
[ FAIL ] serialize-text-test.c++:129: TextCodec parse error (64147 μs)
[ TEST ] rpc-test.c++:497: legacy test: Rpc/Basic
[ PASS ] rpc-test.c++:497: legacy test: Rpc/Basic (541 μs)
[ TEST ] rpc-test.c++:538: legacy test: Rpc/Pipelining
[ PASS ] rpc-test.c++:538: legacy test: Rpc/Pipelining (364 μs)
[ TEST ] rpc-test.c++:574: legacy test: Rpc/Release
[ PASS ] rpc-test.c++:574: legacy test: Rpc/Release (266 μs)
[ TEST ] rpc-test.c++:602: legacy test: Rpc/ReleaseOnCancel
[ PASS ] rpc-test.c++:602: legacy test: Rpc/ReleaseOnCancel (175 μs)
[ TEST ] rpc-test.c++:631: legacy test: Rpc/TailCall
[ PASS ] rpc-test.c++:631: legacy test: Rpc/TailCall (353 μs)
[ TEST ] rpc-test.c++:676: legacy test: Rpc/Cancelation
[ PASS ] rpc-test.c++:676: legacy test: Rpc/Cancelation (172 μs)
[ TEST ] rpc-test.c++:717: legacy test: Rpc/PromiseResolve
[ PASS ] rpc-test.c++:717: legacy test: Rpc/PromiseResolve (402 μs)
[ TEST ] rpc-test.c++:755: legacy test: Rpc/RetainAndRelease
[ PASS ] rpc-test.c++:755: legacy test: Rpc/RetainAndRelease (559 μs)
[ TEST ] rpc-test.c++:818: legacy test: Rpc/Cancel
[ PASS ] rpc-test.c++:818: legacy test: Rpc/Cancel (238 μs)
[ TEST ] rpc-test.c++:849: legacy test: Rpc/SendTwice
[ PASS ] rpc-test.c++:849: legacy test: Rpc/SendTwice (406 μs)
[ TEST ] rpc-test.c++:897: legacy test: Rpc/Embargo
[ PASS ] rpc-test.c++:897: legacy test: Rpc/Embargo (485 μs)
[ TEST ] rpc-test.c++:934: legacy test: Rpc/EmbargoUnwrap
[ PASS ] rpc-test.c++:934: legacy test: Rpc/EmbargoUnwrap (490 μs)
[ TEST ] rpc-test.c++:995: legacy test: Rpc/EmbargoError
[ PASS ] rpc-test.c++:995: legacy test: Rpc/EmbargoError (649 μs)
[ TEST ] rpc-test.c++:1039: legacy test: Rpc/EmbargoNull
[ PASS ] rpc-test.c++:1039: legacy test: Rpc/EmbargoNull (256 μs)
[ TEST ] rpc-test.c++:1067: legacy test: Rpc/CallBrokenPromise
[ PASS ] rpc-test.c++:1067: legacy test: Rpc/CallBrokenPromise (397 μs)
[ TEST ] rpc-test.c++:1120: legacy test: Rpc/Abort
[ PASS ] rpc-test.c++:1120: legacy test: Rpc/Abort (91 μs)
[ TEST ] rpc-test.c++:1200: legacy test: Rpc/RealmGatewayImport
[ PASS ] rpc-test.c++:1200: legacy test: Rpc/RealmGatewayImport (187 μs)
[ TEST ] rpc-test.c++:1216: legacy test: Rpc/RealmGatewayExport
[ PASS ] rpc-test.c++:1216: legacy test: Rpc/RealmGatewayExport (170 μs)
[ TEST ] rpc-test.c++:1232: legacy test: Rpc/RealmGatewayImportExport
[ PASS ] rpc-test.c++:1232: legacy test: Rpc/RealmGatewayImportExport (205 μs)
[ TEST ] rpc-test.c++:1285: legacy test: Rpc/RealmGatewayImportExport
[ PASS ] rpc-test.c++:1285: legacy test: Rpc/RealmGatewayImportExport (255 μs)
[ TEST ] rpc-test.c++:1338: loopback bootstrap()
[ PASS ] rpc-test.c++:1338: loopback bootstrap() (38 μs)
[ TEST ] rpc-twoparty-test.c++:118: legacy test: TwoPartyNetwork/Basic
[ PASS ] rpc-twoparty-test.c++:118: legacy test: TwoPartyNetwork/Basic (665 μs)
[ TEST ] rpc-twoparty-test.c++:164: legacy test: TwoPartyNetwork/Pipelining
[ PASS ] rpc-twoparty-test.c++:164: legacy test: TwoPartyNetwork/Pipelining (802 μs)
[ TEST ] rpc-twoparty-test.c++:246: legacy test: TwoPartyNetwork/Release
[ PASS ] rpc-twoparty-test.c++:246: legacy test: TwoPartyNetwork/Release (30938 μs)
[ TEST ] rpc-twoparty-test.c++:299: legacy test: TwoPartyNetwork/Abort
[ PASS ] rpc-twoparty-test.c++:299: legacy test: TwoPartyNetwork/Abort (282 μs)
[ TEST ] rpc-twoparty-test.c++:330: legacy test: TwoPartyNetwork/ConvenienceClasses
[ PASS ] rpc-twoparty-test.c++:330: legacy test: TwoPartyNetwork/ConvenienceClasses (491 μs)
[ TEST ] rpc-twoparty-test.c++:358: legacy test: TwoPartyNetwork/HugeMessage
[ PASS ] rpc-twoparty-test.c++:358: legacy test: TwoPartyNetwork/HugeMessage (706 μs)
[ TEST ] rpc-twoparty-test.c++:429: legacy test: TwoPartyNetwork/BootstrapFactory
[ PASS ] rpc-twoparty-test.c++:429: legacy test: TwoPartyNetwork/BootstrapFactory (334 μs)
[ TEST ] rpc-twoparty-test.c++:443: send FD over RPC
[ PASS ] rpc-twoparty-test.c++:443: send FD over RPC (441 μs)
[ TEST ] rpc-twoparty-test.c++:490: FD per message limit
[ PASS ] rpc-twoparty-test.c++:490: FD per message limit (380 μs)
[ TEST ] rpc-twoparty-test.c++:588: Streaming over RPC
[ PASS ] rpc-twoparty-test.c++:588: Streaming over RPC (3447 μs)
[ TEST ] rpc-twoparty-test.c++:654: Streaming over RPC then unwrap with CapabilitySet
[ PASS ] rpc-twoparty-test.c++:654: Streaming over RPC then unwrap with CapabilitySet (57818 μs)
[ TEST ] rpc-twoparty-test.c++:747: promise cap resolves between starting request and sending it
[ PASS ] rpc-twoparty-test.c++:747: promise cap resolves between starting request and sending it (495 μs)
[ TEST ] ez-rpc-test.c++:32: legacy test: EzRpc/Basic
[ PASS ] ez-rpc-test.c++:32: legacy test: EzRpc/Basic (29978 μs)
[ TEST ] ez-rpc-test.c++:49: legacy test: EzRpc/DeprecatedNames
[ PASS ] ez-rpc-test.c++:49: legacy test: EzRpc/DeprecatedNames (1117 μs)
[ TEST ] compiler/lexer-test.c++:70: legacy test: Lexer/Tokens
[ PASS ] compiler/lexer-test.c++:70: legacy test: Lexer/Tokens (756 μs)
[ TEST ] compiler/lexer-test.c++:189: legacy test: Lexer/Statements
[ PASS ] compiler/lexer-test.c++:189: legacy test: Lexer/Statements (308 μs)
[ TEST ] compiler/lexer-test.c++:236: legacy test: Lexer/DocComments
[ PASS ] compiler/lexer-test.c++:236: legacy test: Lexer/DocComments (590 μs)
[ TEST ] compiler/lexer-test.c++:361: legacy test: Lexer/Utf8Bom
[ PASS ] compiler/lexer-test.c++:361: legacy test: Lexer/Utf8Bom (49 μs)
[ TEST ] compiler/type-id-test.c++:30: type ID generation hasn't changed
[ PASS ] compiler/type-id-test.c++:30: type ID generation hasn't changed (7 μs)
[ TEST ] compat/json-test.c++:34: basic json encoding
[ PASS ] compat/json-test.c++:34: basic json encoding (40 μs)
[ TEST ] compat/json-test.c++:143: encode all types
[ PASS ] compat/json-test.c++:143: encode all types (2309 μs)
[ TEST ] compat/json-test.c++:170: encode union
[ PASS ] compat/json-test.c++:170: encode union (51 μs)
[ TEST ] compat/json-test.c++:187: decode all types
[ PASS ] compat/json-test.c++:187: decode all types (3893 μs)
[ TEST ] compat/json-test.c++:345: decode test message
[ PASS ] compat/json-test.c++:345: decode test message (3561 μs)
[ TEST ] compat/json-test.c++:360: basic json decoding
[ PASS ] compat/json-test.c++:360: basic json decoding (919 μs)
[ TEST ] compat/json-test.c++:611: maximum nesting depth
[ PASS ] compat/json-test.c++:611: maximum nesting depth (114 μs)
[ TEST ] compat/json-test.c++:650: unknown fields
[ PASS ] compat/json-test.c++:650: unknown fields (243 μs)
[ TEST ] compat/json-test.c++:730: register custom encoding handlers
[ PASS ] compat/json-test.c++:730: register custom encoding handlers (21 μs)
[ TEST ] compat/json-test.c++:748: register custom roundtrip handler
[ PASS ] compat/json-test.c++:748: register custom roundtrip handler (70 μs)
[ TEST ] compat/json-test.c++:789: register field handler
[ PASS ] compat/json-test.c++:789: register field handler (50 μs)
[ TEST ] compat/json-test.c++:837: register capability handler
[ PASS ] compat/json-test.c++:837: register capability handler (1 μs)
[ TEST ] compat/json-test.c++:910: rename fields
[ PASS ] compat/json-test.c++:910: rename fields (1184 μs)
[ TEST ] compat/json-test.c++:995: base64 union encoded correctly
[ PASS ] compat/json-test.c++:995: base64 union encoded correctly (22 μs)
167 test(s) passed 
1 test(s) failed 

    Start 5: capnp-evolution-tests-run
5/5 Test #5: capnp-evolution-tests-run ........   Passed    0.75 sec

60% tests passed, 2 tests failed out of 5

Total Test time (real) =  32.05 sec

The following tests FAILED:
	  1 - kj-tests-run (Not Run)
	  4 - capnp-heavy-tests-run (Failed)
Errors while running CTest
