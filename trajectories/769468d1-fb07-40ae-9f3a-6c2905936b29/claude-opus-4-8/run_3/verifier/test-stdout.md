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
--- PASS: TestInvalidPackagenames (1.79s)
=== RUN   TestImportCollisions
--- PASS: TestImportCollisions (1.66s)
=== RUN   TestDeterministicDecollisioning
--- PASS: TestDeterministicDecollisioning (0.00s)
=== RUN   TestTypeUnionAsInput
--- PASS: TestTypeUnionAsInput (0.52s)
=== RUN   TestTypeInInput
--- PASS: TestTypeInInput (0.53s)
=== RUN   TestRawMapInputs
--- PASS: TestRawMapInputs (1.74s)
=== RUN   TestRecursiveInputType
--- PASS: TestRecursiveInputType (1.71s)
=== RUN   TestComplexInputTypes
--- PASS: TestComplexInputTypes (1.70s)
=== RUN   TestKeywordInputFields
--- PASS: TestKeywordInputFields (1.70s)
=== RUN   TestInputKeywordArgs
--- PASS: TestInputKeywordArgs (1.64s)
=== RUN   TestShapes
--- PASS: TestShapes (2.00s)
=== RUN   TestNormalizeVendor
--- PASS: TestNormalizeVendor (0.00s)
FAIL
FAIL	github.com/vektah/gqlgen/codegen	15.009s
FAIL
# github.com/vektah/gqlgen/test
test/models-go/viewer.go:3:8: package remote_api is not in std (/usr/local/go/src/remote_api)
FAIL	github.com/vektah/gqlgen/test [setup failed]
FAIL
