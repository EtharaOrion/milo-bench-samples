=== RUN   TestBindingToInvalid
--- PASS: TestBindingToInvalid (0.00s)
=== RUN   TestSlicePointerBinding
=== RUN   TestSlicePointerBinding/without_OmitSliceElementPointers
=== RUN   TestSlicePointerBinding/with_OmitSliceElementPointers
--- PASS: TestSlicePointerBinding (0.66s)
    --- PASS: TestSlicePointerBinding/without_OmitSliceElementPointers (0.47s)
    --- PASS: TestSlicePointerBinding/with_OmitSliceElementPointers (0.19s)
=== RUN   TestOmittableBinding
=== RUN   TestOmittableBinding/bind_nullable_string_with_Omittable[string]
=== RUN   TestOmittableBinding/bind_nullable_string_with_Omittable[*string]
=== RUN   TestOmittableBinding/fail_binding_non-nullable_string_with_Omittable[string]
=== RUN   TestOmittableBinding/fail_binding_non-nullable_string_with_Omittable[*string]
=== RUN   TestOmittableBinding/bind_nullable_object_with_Omittable[T]
=== RUN   TestOmittableBinding/bind_nullable_object_with_Omittable[*T]
--- PASS: TestOmittableBinding (1.98s)
    --- PASS: TestOmittableBinding/bind_nullable_string_with_Omittable[string] (0.68s)
    --- PASS: TestOmittableBinding/bind_nullable_string_with_Omittable[*string] (0.25s)
    --- PASS: TestOmittableBinding/fail_binding_non-nullable_string_with_Omittable[string] (0.32s)
    --- PASS: TestOmittableBinding/fail_binding_non-nullable_string_with_Omittable[*string] (0.27s)
    --- PASS: TestOmittableBinding/bind_nullable_object_with_Omittable[T] (0.20s)
    --- PASS: TestOmittableBinding/bind_nullable_object_with_Omittable[*T] (0.26s)
=== RUN   TestEnumBinding
--- PASS: TestEnumBinding (0.22s)
=== RUN   TestIsNilable
=== RUN   TestIsNilable/nilable-any
=== RUN   TestIsNilable/nilable-rune
=== RUN   TestIsNilable/nilable-byte
=== RUN   TestIsNilable/nilable-error
=== RUN   TestIsNilable/nilable-int
=== RUN   TestIsNilable/nilable-string
=== RUN   TestIsNilable/nilable-chan<-_int
=== RUN   TestIsNilable/nilable-*int
=== RUN   TestIsNilable/nilable-*string
=== RUN   TestIsNilable/nilable-map[int]int
=== RUN   TestIsNilable/nilable-[]int
=== RUN   TestIsNilable/nilable-interface{}
=== RUN   TestIsNilable/nilable-interfaceAlias
    binder_test.go:302: 
        	Error Trace:	/home/gqlgen/codegen/config/binder_test.go:302
        	Error:      	Not equal: 
        	            	expected: true
        	            	actual  : false
        	Test:       	TestIsNilable/nilable-interfaceAlias
=== RUN   TestIsNilable/nilable-interfaceNestedAlias
    binder_test.go:302: 
        	Error Trace:	/home/gqlgen/codegen/config/binder_test.go:302
        	Error:      	Not equal: 
        	            	expected: true
        	            	actual  : false
        	Test:       	TestIsNilable/nilable-interfaceNestedAlias
=== RUN   TestIsNilable/nilable-intAlias
=== RUN   TestIsNilable/nilable-intNestedAlias
--- FAIL: TestIsNilable (0.00s)
    --- PASS: TestIsNilable/nilable-any (0.00s)
    --- PASS: TestIsNilable/nilable-rune (0.00s)
    --- PASS: TestIsNilable/nilable-byte (0.00s)
    --- PASS: TestIsNilable/nilable-error (0.00s)
    --- PASS: TestIsNilable/nilable-int (0.00s)
    --- PASS: TestIsNilable/nilable-string (0.00s)
    --- PASS: TestIsNilable/nilable-chan<-_int (0.00s)
    --- PASS: TestIsNilable/nilable-*int (0.00s)
    --- PASS: TestIsNilable/nilable-*string (0.00s)
    --- PASS: TestIsNilable/nilable-map[int]int (0.00s)
    --- PASS: TestIsNilable/nilable-[]int (0.00s)
    --- PASS: TestIsNilable/nilable-interface{} (0.00s)
    --- FAIL: TestIsNilable/nilable-interfaceAlias (0.00s)
    --- FAIL: TestIsNilable/nilable-interfaceNestedAlias (0.00s)
    --- PASS: TestIsNilable/nilable-intAlias (0.00s)
    --- PASS: TestIsNilable/nilable-intNestedAlias (0.00s)
=== RUN   TestLoadConfig
=== RUN   TestLoadConfig/config_does_not_exist
--- PASS: TestLoadConfig (0.00s)
    --- PASS: TestLoadConfig/config_does_not_exist (0.00s)
=== RUN   TestReadConfig
=== RUN   TestReadConfig/empty_config
=== RUN   TestReadConfig/malformed_config
=== RUN   TestReadConfig/unknown_keys
=== RUN   TestReadConfig/globbed_filenames
=== RUN   TestReadConfig/unwalkable_path
--- PASS: TestReadConfig (0.00s)
    --- PASS: TestReadConfig/empty_config (0.00s)
    --- PASS: TestReadConfig/malformed_config (0.00s)
    --- PASS: TestReadConfig/unknown_keys (0.00s)
    --- PASS: TestReadConfig/globbed_filenames (0.00s)
    --- PASS: TestReadConfig/unwalkable_path (0.00s)
=== RUN   TestLoadConfigFromDefaultLocation
=== RUN   TestLoadConfigFromDefaultLocation/will_find_closest_match
=== RUN   TestLoadConfigFromDefaultLocation/will_find_config_in_parent_dirs
=== RUN   TestLoadConfigFromDefaultLocation/will_return_error_if_config_doesn't_exist
--- PASS: TestLoadConfigFromDefaultLocation (0.00s)
    --- PASS: TestLoadConfigFromDefaultLocation/will_find_closest_match (0.00s)
    --- PASS: TestLoadConfigFromDefaultLocation/will_find_config_in_parent_dirs (0.00s)
    --- PASS: TestLoadConfigFromDefaultLocation/will_return_error_if_config_doesn't_exist (0.00s)
=== RUN   TestLoadDefaultConfig
=== RUN   TestLoadDefaultConfig/will_find_the_schema
=== RUN   TestLoadDefaultConfig/will_return_error_if_schema_doesn't_exist
--- PASS: TestLoadDefaultConfig (0.00s)
    --- PASS: TestLoadDefaultConfig/will_find_the_schema (0.00s)
    --- PASS: TestLoadDefaultConfig/will_return_error_if_schema_doesn't_exist (0.00s)
=== RUN   TestReferencedPackages
=== RUN   TestReferencedPackages/valid
--- PASS: TestReferencedPackages (0.00s)
    --- PASS: TestReferencedPackages/valid (0.00s)
=== RUN   TestConfigCheck
=== RUN   TestConfigCheck/single-file
=== RUN   TestConfigCheck/single-file/invalid_config_format_due_to_conflicting_package_names
=== RUN   TestConfigCheck/single-file/federation_must_be_in_exec_package
=== RUN   TestConfigCheck/single-file/federation_must_have_same_package_name_as_exec
=== RUN   TestConfigCheck/single-file/deprecated_federated_flag_raises_an_error
=== RUN   TestConfigCheck/follow-schema
=== RUN   TestConfigCheck/follow-schema/invalid_config_format_due_to_conflicting_package_names
=== RUN   TestConfigCheck/follow-schema/federation_must_be_in_exec_package
=== RUN   TestConfigCheck/follow-schema/federation_must_have_same_package_name_as_exec
=== RUN   TestConfigCheck/follow-schema/deprecated_federated_flag_raises_an_error
--- PASS: TestConfigCheck (0.00s)
    --- PASS: TestConfigCheck/single-file (0.00s)
        --- PASS: TestConfigCheck/single-file/invalid_config_format_due_to_conflicting_package_names (0.00s)
        --- PASS: TestConfigCheck/single-file/federation_must_be_in_exec_package (0.00s)
        --- PASS: TestConfigCheck/single-file/federation_must_have_same_package_name_as_exec (0.00s)
        --- PASS: TestConfigCheck/single-file/deprecated_federated_flag_raises_an_error (0.00s)
    --- PASS: TestConfigCheck/follow-schema (0.00s)
        --- PASS: TestConfigCheck/follow-schema/invalid_config_format_due_to_conflicting_package_names (0.00s)
        --- PASS: TestConfigCheck/follow-schema/federation_must_be_in_exec_package (0.00s)
        --- PASS: TestConfigCheck/follow-schema/federation_must_have_same_package_name_as_exec (0.00s)
        --- PASS: TestConfigCheck/follow-schema/deprecated_federated_flag_raises_an_error (0.00s)
=== RUN   TestAutobinding
=== RUN   TestAutobinding/valid_paths
=== RUN   TestAutobinding/normalized_type_names
=== RUN   TestAutobinding/with_file_path
--- PASS: TestAutobinding (0.40s)
    --- PASS: TestAutobinding/valid_paths (0.22s)
    --- PASS: TestAutobinding/normalized_type_names (0.18s)
    --- PASS: TestAutobinding/with_file_path (0.01s)
=== RUN   TestLoadSchema
=== PAUSE TestLoadSchema
=== RUN   TestGoInitialismsConfig
=== RUN   TestGoInitialismsConfig/load_go_initialisms_config
=== RUN   TestGoInitialismsConfig/empty_initialism_config_doesn't_change_anything
=== RUN   TestGoInitialismsConfig/initialism_config_appends_if_desired
=== RUN   TestGoInitialismsConfig/initialism_config_replaces_if_desired
=== RUN   TestGoInitialismsConfig/initialism_config_uppercases_the_initialisms
--- PASS: TestGoInitialismsConfig (0.00s)
    --- PASS: TestGoInitialismsConfig/load_go_initialisms_config (0.00s)
    --- PASS: TestGoInitialismsConfig/empty_initialism_config_doesn't_change_anything (0.00s)
    --- PASS: TestGoInitialismsConfig/initialism_config_appends_if_desired (0.00s)
    --- PASS: TestGoInitialismsConfig/initialism_config_replaces_if_desired (0.00s)
    --- PASS: TestGoInitialismsConfig/initialism_config_uppercases_the_initialisms (0.00s)
=== RUN   TestPackageConfig
=== RUN   TestPackageConfig/when_given_just_a_filename
=== RUN   TestPackageConfig/when_given_both
=== RUN   TestPackageConfig/when_given_nothing
=== RUN   TestPackageConfig/when_given_invalid_filename
=== RUN   TestPackageConfig/when_package_includes_a_filename
--- PASS: TestPackageConfig (0.00s)
    --- PASS: TestPackageConfig/when_given_just_a_filename (0.00s)
    --- PASS: TestPackageConfig/when_given_both (0.00s)
    --- PASS: TestPackageConfig/when_given_nothing (0.00s)
    --- PASS: TestPackageConfig/when_given_invalid_filename (0.00s)
    --- PASS: TestPackageConfig/when_package_includes_a_filename (0.00s)
=== RUN   TestResolverConfig
=== RUN   TestResolverConfig/single-file
=== RUN   TestResolverConfig/single-file/when_given_just_a_filename
=== RUN   TestResolverConfig/single-file/when_given_both
=== RUN   TestResolverConfig/single-file/when_given_nothing
=== RUN   TestResolverConfig/single-file/when_given_invalid_filename
=== RUN   TestResolverConfig/single-file/when_package_includes_a_filename
=== RUN   TestResolverConfig/follow-schema
=== RUN   TestResolverConfig/follow-schema/when_given_just_a_dir
=== RUN   TestResolverConfig/follow-schema/when_given_dir_and_package_name
=== RUN   TestResolverConfig/follow-schema/when_given_a_filename
=== RUN   TestResolverConfig/follow-schema/when_given_nothing
=== RUN   TestResolverConfig/invalid_layout
--- PASS: TestResolverConfig (0.00s)
    --- PASS: TestResolverConfig/single-file (0.00s)
        --- PASS: TestResolverConfig/single-file/when_given_just_a_filename (0.00s)
        --- PASS: TestResolverConfig/single-file/when_given_both (0.00s)
        --- PASS: TestResolverConfig/single-file/when_given_nothing (0.00s)
        --- PASS: TestResolverConfig/single-file/when_given_invalid_filename (0.00s)
        --- PASS: TestResolverConfig/single-file/when_package_includes_a_filename (0.00s)
    --- PASS: TestResolverConfig/follow-schema (0.00s)
        --- PASS: TestResolverConfig/follow-schema/when_given_just_a_dir (0.00s)
        --- PASS: TestResolverConfig/follow-schema/when_given_dir_and_package_name (0.00s)
        --- PASS: TestResolverConfig/follow-schema/when_given_a_filename (0.00s)
        --- PASS: TestResolverConfig/follow-schema/when_given_nothing (0.00s)
    --- PASS: TestResolverConfig/invalid_layout (0.00s)
=== CONT  TestLoadSchema
=== RUN   TestLoadSchema/valid_schema
=== RUN   TestLoadSchema/invalid_schema
--- PASS: TestLoadSchema (0.00s)
    --- PASS: TestLoadSchema/valid_schema (0.00s)
    --- PASS: TestLoadSchema/invalid_schema (0.00s)
FAIL
FAIL	github.com/99designs/gqlgen/codegen/config	3.276s
FAIL
=== RUN   TestImports
=== RUN   TestImports/multiple_lookups_is_ok
=== RUN   TestImports/lookup_by_type
=== RUN   TestImports/duplicates_are_decollisioned
=== RUN   TestImports/duplicates_are_decollisioned/additional_calls_get_decollisioned_name
=== RUN   TestImports/duplicates_above_10_are_decollisioned
=== RUN   TestImports/package_name_defined_in_code_will_be_used
=== RUN   TestImports/string_printing_for_import_block
=== RUN   TestImports/aliased_imports_will_not_collide
--- PASS: TestImports (0.83s)
    --- PASS: TestImports/multiple_lookups_is_ok (0.01s)
    --- PASS: TestImports/lookup_by_type (0.01s)
    --- PASS: TestImports/duplicates_are_decollisioned (0.02s)
        --- PASS: TestImports/duplicates_are_decollisioned/additional_calls_get_decollisioned_name (0.00s)
    --- PASS: TestImports/duplicates_above_10_are_decollisioned (0.73s)
    --- PASS: TestImports/package_name_defined_in_code_will_be_used (0.01s)
    --- PASS: TestImports/string_printing_for_import_block (0.02s)
    --- PASS: TestImports/aliased_imports_will_not_collide (0.01s)
=== RUN   TestToGo
--- PASS: TestToGo (0.00s)
=== RUN   TestToGoPrivate
--- PASS: TestToGoPrivate (0.00s)
=== RUN   TestToGoModelName
=== RUN   TestToGoModelName/modelname-0
=== RUN   TestToGoModelName/modelname-1
=== RUN   TestToGoModelName/modelname-2
=== RUN   TestToGoModelName/modelname-3
=== RUN   TestToGoModelName/modelname-4
=== RUN   TestToGoModelName/modelname-5
=== RUN   TestToGoModelName/modelname-6
=== RUN   TestToGoModelName/modelname-7
=== RUN   TestToGoModelName/modelname-8
=== RUN   TestToGoModelName/modelname-9
--- PASS: TestToGoModelName (0.00s)
    --- PASS: TestToGoModelName/modelname-0 (0.00s)
    --- PASS: TestToGoModelName/modelname-1 (0.00s)
    --- PASS: TestToGoModelName/modelname-2 (0.00s)
    --- PASS: TestToGoModelName/modelname-3 (0.00s)
    --- PASS: TestToGoModelName/modelname-4 (0.00s)
    --- PASS: TestToGoModelName/modelname-5 (0.00s)
    --- PASS: TestToGoModelName/modelname-6 (0.00s)
    --- PASS: TestToGoModelName/modelname-7 (0.00s)
    --- PASS: TestToGoModelName/modelname-8 (0.00s)
    --- PASS: TestToGoModelName/modelname-9 (0.00s)
=== RUN   TestToGoPrivateModelName
=== RUN   TestToGoPrivateModelName/modelname-0
=== RUN   TestToGoPrivateModelName/modelname-1
=== RUN   TestToGoPrivateModelName/modelname-2
=== RUN   TestToGoPrivateModelName/modelname-3
=== RUN   TestToGoPrivateModelName/modelname-4
=== RUN   TestToGoPrivateModelName/modelname-5
=== RUN   TestToGoPrivateModelName/modelname-6
=== RUN   TestToGoPrivateModelName/modelname-7
=== RUN   TestToGoPrivateModelName/modelname-8
=== RUN   TestToGoPrivateModelName/modelname-9
--- PASS: TestToGoPrivateModelName (0.00s)
    --- PASS: TestToGoPrivateModelName/modelname-0 (0.00s)
    --- PASS: TestToGoPrivateModelName/modelname-1 (0.00s)
    --- PASS: TestToGoPrivateModelName/modelname-2 (0.00s)
    --- PASS: TestToGoPrivateModelName/modelname-3 (0.00s)
    --- PASS: TestToGoPrivateModelName/modelname-4 (0.00s)
    --- PASS: TestToGoPrivateModelName/modelname-5 (0.00s)
    --- PASS: TestToGoPrivateModelName/modelname-6 (0.00s)
    --- PASS: TestToGoPrivateModelName/modelname-7 (0.00s)
    --- PASS: TestToGoPrivateModelName/modelname-8 (0.00s)
    --- PASS: TestToGoPrivateModelName/modelname-9 (0.00s)
=== RUN   Test_wordWalker
=== RUN   Test_wordWalker/wordWalker-0
=== RUN   Test_wordWalker/wordWalker-1
=== RUN   Test_wordWalker/wordWalker-2
=== RUN   Test_wordWalker/wordWalker-3
=== RUN   Test_wordWalker/wordWalker-4
=== RUN   Test_wordWalker/wordWalker-5
=== RUN   Test_wordWalker/wordWalker-6
=== RUN   Test_wordWalker/wordWalker-7
=== RUN   Test_wordWalker/wordWalker-8
=== RUN   Test_wordWalker/wordWalker-9
=== RUN   Test_wordWalker/wordWalker-10
=== RUN   Test_wordWalker/wordWalker-11
=== RUN   Test_wordWalker/wordWalker-12
=== RUN   Test_wordWalker/wordWalker-13
=== RUN   Test_wordWalker/wordWalker-14
=== RUN   Test_wordWalker/wordWalker-15
=== RUN   Test_wordWalker/wordWalker-16
=== RUN   Test_wordWalker/wordWalker-17
=== RUN   Test_wordWalker/wordWalker-18
=== RUN   Test_wordWalker/wordWalker-19
--- PASS: Test_wordWalker (0.00s)
    --- PASS: Test_wordWalker/wordWalker-0 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-1 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-2 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-3 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-4 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-5 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-6 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-7 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-8 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-9 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-10 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-11 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-12 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-13 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-14 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-15 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-16 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-17 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-18 (0.00s)
    --- PASS: Test_wordWalker/wordWalker-19 (0.00s)
=== RUN   TestCenter
--- PASS: TestCenter (0.00s)
=== RUN   TestTemplateOverride
gofmt failed on gqlgen4130217815: /tmp/TestTemplateOverride2068305639/001/gqlgen4130217815:3:1: expected 'IDENT', found 'import' (and 1 more errors)
--- PASS: TestTemplateOverride (0.00s)
=== RUN   TestRenderFS
gofmt failed on gqlgen.go4221738578: /tmp/TestRenderFS3945069967/001/output/gqlgen.go4221738578:3:1: expected 'IDENT', found 'import' (and 1 more errors)
--- PASS: TestRenderFS (0.00s)
PASS
ok  	github.com/99designs/gqlgen/codegen/templates	0.835s
