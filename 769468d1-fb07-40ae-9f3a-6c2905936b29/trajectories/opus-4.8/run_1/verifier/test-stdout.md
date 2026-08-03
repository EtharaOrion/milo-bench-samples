=== RUN   TestLoadConfig
=== RUN   TestLoadConfig/config_does_not_exist
=== RUN   TestLoadConfig/malformed_config
--- PASS: TestLoadConfig (0.00s)
    --- PASS: TestLoadConfig/config_does_not_exist (0.00s)
    --- PASS: TestLoadConfig/malformed_config (0.00s)
=== RUN   TestLoadDefaultConfig
=== RUN   TestLoadDefaultConfig/will_find_closest_match
=== RUN   TestLoadDefaultConfig/will_find_config_in_parent_dirs
=== RUN   TestLoadDefaultConfig/will_fallback_to_defaults
--- PASS: TestLoadDefaultConfig (0.00s)
    --- PASS: TestLoadDefaultConfig/will_find_closest_match (0.00s)
    --- PASS: TestLoadDefaultConfig/will_find_config_in_parent_dirs (0.00s)
    --- PASS: TestLoadDefaultConfig/will_fallback_to_defaults (0.00s)
=== RUN   Test_fullPackageName
=== RUN   Test_fullPackageName/gopath_longer_than_package_name
    config_test.go:68: 
        	Error Trace:	/home/gqlgen/codegen/config_test.go:68
        	Error:      	Not equal: 
        	            	expected: "/b/src/y/foo/bar"
        	            	actual  : "/b/src/y/foo"
        	            	
        	            	Diff:
        	            	--- Expected
        	            	+++ Actual
        	            	@@ -1 +1 @@
        	            	-/b/src/y/foo/bar
        	            	+/b/src/y/foo
        	Test:       	Test_fullPackageName/gopath_longer_than_package_name
=== RUN   Test_fullPackageName/stop_searching_on_first_hit
    config_test.go:77: 
        	Error Trace:	/home/gqlgen/codegen/config_test.go:77
        	Error:      	Not equal: 
        	            	expected: "/a/src/x/foo/bar"
        	            	actual  : "/a/src/x/foo"
        	            	
        	            	Diff:
        	            	--- Expected
        	            	+++ Actual
        	            	@@ -1 +1 @@
        	            	-/a/src/x/foo/bar
        	            	+/a/src/x/foo
        	Test:       	Test_fullPackageName/stop_searching_on_first_hit
--- FAIL: Test_fullPackageName (0.00s)
    --- FAIL: Test_fullPackageName/gopath_longer_than_package_name (0.00s)
    --- FAIL: Test_fullPackageName/stop_searching_on_first_hit (0.00s)
=== RUN   TestInvalidPackagenames
--- PASS: TestInvalidPackagenames (1.95s)
=== RUN   TestImportCollisions
--- PASS: TestImportCollisions (1.85s)
=== RUN   TestDeterministicDecollisioning
--- PASS: TestDeterministicDecollisioning (0.00s)
=== RUN   TestTypeUnionAsInput
--- PASS: TestTypeUnionAsInput (0.61s)
=== RUN   TestTypeInInput
--- PASS: TestTypeInInput (0.59s)
=== RUN   TestRawMapInputs
--- PASS: TestRawMapInputs (1.76s)
=== RUN   TestRecursiveInputType
--- PASS: TestRecursiveInputType (1.99s)
=== RUN   TestComplexInputTypes
    input_test.go:91: 
        	Error Trace:	/home/gqlgen/codegen/input_test.go:91
        	Error:      	Received unexpected error:
        	            	unable to resolve package for /home/gqlgen/codegen/testdata/gen/complexinput.InnerObject: import "/home/gqlgen/codegen/testdata/gen/complexinput": cannot import absolute path
        	            	
        	            	github.com/vektah/gqlgen/codegen.findGoType
        	            		/home/gqlgen/codegen/util.go:23
        	            	github.com/vektah/gqlgen/codegen.(*Config).buildObjects
        	            		/home/gqlgen/codegen/object_build.go:23
        	            	github.com/vektah/gqlgen/codegen.(*Config).bind
        	            		/home/gqlgen/codegen/build.go:79
        	            	github.com/vektah/gqlgen/codegen.Generate
        	            		/home/gqlgen/codegen/codegen.go:56
        	            	github.com/vektah/gqlgen/codegen.generate
        	            		/home/gqlgen/codegen/interface_test.go:48
        	            	github.com/vektah/gqlgen/codegen.TestComplexInputTypes
        	            		/home/gqlgen/codegen/input_test.go:67
        	            	testing.tRunner
        	            		/usr/local/go/src/testing/testing.go:1934
        	            	runtime.goexit
        	            		/usr/local/go/src/runtime/asm_arm64.s:1268
        	            	exec plan failed
        	            	github.com/vektah/gqlgen/codegen.Generate
        	            		/home/gqlgen/codegen/codegen.go:58
        	            	github.com/vektah/gqlgen/codegen.generate
        	            		/home/gqlgen/codegen/interface_test.go:48
        	            	github.com/vektah/gqlgen/codegen.TestComplexInputTypes
        	            		/home/gqlgen/codegen/input_test.go:67
        	            	testing.tRunner
        	            		/usr/local/go/src/testing/testing.go:1934
        	            	runtime.goexit
        	            		/usr/local/go/src/runtime/asm_arm64.s:1268
        	Test:       	TestComplexInputTypes
--- FAIL: TestComplexInputTypes (1.18s)
=== RUN   TestKeywordInputFields
    input_test.go:128: 
        	Error Trace:	/home/gqlgen/codegen/input_test.go:128
        	Error:      	Received unexpected error:
        	            	unable to resolve package for /home/gqlgen/codegen/testdata/gen/input_keywords_fields.Object: import "/home/gqlgen/codegen/testdata/gen/input_keywords_fields": cannot import absolute path
        	            	
        	            	github.com/vektah/gqlgen/codegen.findGoType
        	            		/home/gqlgen/codegen/util.go:23
        	            	github.com/vektah/gqlgen/codegen.(*Config).buildInputs
        	            		/home/gqlgen/codegen/input_build.go:24
        	            	github.com/vektah/gqlgen/codegen.(*Config).bind
        	            		/home/gqlgen/codegen/build.go:84
        	            	github.com/vektah/gqlgen/codegen.Generate
        	            		/home/gqlgen/codegen/codegen.go:56
        	            	github.com/vektah/gqlgen/codegen.generate
        	            		/home/gqlgen/codegen/interface_test.go:48
        	            	github.com/vektah/gqlgen/codegen.TestKeywordInputFields
        	            		/home/gqlgen/codegen/input_test.go:95
        	            	testing.tRunner
        	            		/usr/local/go/src/testing/testing.go:1934
        	            	runtime.goexit
        	            		/usr/local/go/src/runtime/asm_arm64.s:1268
        	            	cannot find type
        	            	github.com/vektah/gqlgen/codegen.(*Config).buildInputs
        	            		/home/gqlgen/codegen/input_build.go:26
        	            	github.com/vektah/gqlgen/codegen.(*Config).bind
        	            		/home/gqlgen/codegen/build.go:84
        	            	github.com/vektah/gqlgen/codegen.Generate
        	            		/home/gqlgen/codegen/codegen.go:56
        	            	github.com/vektah/gqlgen/codegen.generate
        	            		/home/gqlgen/codegen/interface_test.go:48
        	            	github.com/vektah/gqlgen/codegen.TestKeywordInputFields
        	            		/home/gqlgen/codegen/input_test.go:95
        	            	testing.tRunner
        	            		/usr/local/go/src/testing/testing.go:1934
        	            	runtime.goexit
        	            		/usr/local/go/src/runtime/asm_arm64.s:1268
        	            	exec plan failed
        	            	github.com/vektah/gqlgen/codegen.Generate
        	            		/home/gqlgen/codegen/codegen.go:58
        	            	github.com/vektah/gqlgen/codegen.generate
        	            		/home/gqlgen/codegen/interface_test.go:48
        	            	github.com/vektah/gqlgen/codegen.TestKeywordInputFields
        	            		/home/gqlgen/codegen/input_test.go:95
        	            	testing.tRunner
        	            		/usr/local/go/src/testing/testing.go:1934
        	            	runtime.goexit
        	            		/usr/local/go/src/runtime/asm_arm64.s:1268
        	Test:       	TestKeywordInputFields
--- FAIL: TestKeywordInputFields (1.17s)
=== RUN   TestInputKeywordArgs
--- PASS: TestInputKeywordArgs (1.83s)
=== RUN   TestShapes
--- PASS: TestShapes (2.10s)
=== RUN   TestNormalizeVendor
--- PASS: TestNormalizeVendor (0.00s)
FAIL
FAIL	github.com/vektah/gqlgen/codegen	15.049s
FAIL
# github.com/vektah/gqlgen/test
test/models-go/viewer.go:3:8: package remote_api is not in std (/usr/local/go/src/remote_api)
FAIL	github.com/vektah/gqlgen/test [setup failed]
FAIL
