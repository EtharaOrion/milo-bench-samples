=== RUN   TestComplexityCollisions
--- PASS: TestComplexityCollisions (0.00s)
=== RUN   TestComplexityFuncs
=== RUN   TestComplexityFuncs/with_high_complexity_limit_will_not_run
=== RUN   TestComplexityFuncs/with_low_complexity_will_run
=== RUN   TestComplexityFuncs/with_multiple_low_complexity_will_not_run
--- PASS: TestComplexityFuncs (0.00s)
    --- PASS: TestComplexityFuncs/with_high_complexity_limit_will_not_run (0.00s)
    --- PASS: TestComplexityFuncs/with_low_complexity_will_run (0.00s)
    --- PASS: TestComplexityFuncs/with_multiple_low_complexity_will_not_run (0.00s)
=== RUN   TestDirectives
=== RUN   TestDirectives/arg_directives
=== RUN   TestDirectives/arg_directives/when_function_errors_on_directives
=== RUN   TestDirectives/arg_directives/when_function_errors_on_nullable_arg_directives
=== RUN   TestDirectives/arg_directives/when_function_success_on_nullable_arg_directives
=== RUN   TestDirectives/arg_directives/when_function_success_on_valid_nullable_arg_directives
=== RUN   TestDirectives/arg_directives/when_function_success
=== RUN   TestDirectives/field_definition_directives
=== RUN   TestDirectives/field_definition_directives/too_short
=== RUN   TestDirectives/field_definition_directives/has_2_directives
=== RUN   TestDirectives/field_definition_directives/directive_is_not_implemented
=== RUN   TestDirectives/field_definition_directives/ok
=== RUN   TestDirectives/field_directives
=== RUN   TestDirectives/field_directives/add_field_directive
=== RUN   TestDirectives/field_directives/without_field_directive
=== RUN   TestDirectives/input_field_directives
=== RUN   TestDirectives/input_field_directives/when_function_errors_on_directives
=== RUN   TestDirectives/input_field_directives/when_function_errors_on_inner_directives
=== RUN   TestDirectives/input_field_directives/when_function_errors_on_nullable_inner_directives
=== RUN   TestDirectives/input_field_directives/when_function_success
=== RUN   TestDirectives/input_field_directives/when_function_inner_nullable_success
=== RUN   TestDirectives/input_field_directives/when_arg_has_directive
=== RUN   TestDirectives/object_field_directives
=== RUN   TestDirectives/object_field_directives/when_function_success
=== RUN   TestDirectives/object_field_directives/when_directive_returns_nil_&_custom_go_field_is_not_nilable
=== RUN   TestDirectives/Subscription_directives
=== RUN   TestDirectives/Subscription_directives/arg_directives
=== RUN   TestDirectives/Subscription_directives/arg_directives/when_function_errors_on_directives
=== RUN   TestDirectives/Subscription_directives/arg_directives/when_function_errors_on_nullable_arg_directives
=== RUN   TestDirectives/Subscription_directives/arg_directives/when_function_success_on_nullable_arg_directives
=== RUN   TestDirectives/Subscription_directives/arg_directives/when_function_success_on_valid_nullable_arg_directives
=== RUN   TestDirectives/Subscription_directives/arg_directives/when_function_success
--- PASS: TestDirectives (0.00s)
    --- PASS: TestDirectives/arg_directives (0.00s)
        --- PASS: TestDirectives/arg_directives/when_function_errors_on_directives (0.00s)
        --- PASS: TestDirectives/arg_directives/when_function_errors_on_nullable_arg_directives (0.00s)
        --- PASS: TestDirectives/arg_directives/when_function_success_on_nullable_arg_directives (0.00s)
        --- PASS: TestDirectives/arg_directives/when_function_success_on_valid_nullable_arg_directives (0.00s)
        --- PASS: TestDirectives/arg_directives/when_function_success (0.00s)
    --- PASS: TestDirectives/field_definition_directives (0.00s)
        --- PASS: TestDirectives/field_definition_directives/too_short (0.00s)
        --- PASS: TestDirectives/field_definition_directives/has_2_directives (0.00s)
        --- PASS: TestDirectives/field_definition_directives/directive_is_not_implemented (0.00s)
        --- PASS: TestDirectives/field_definition_directives/ok (0.00s)
    --- PASS: TestDirectives/field_directives (0.00s)
        --- PASS: TestDirectives/field_directives/add_field_directive (0.00s)
        --- PASS: TestDirectives/field_directives/without_field_directive (0.00s)
    --- PASS: TestDirectives/input_field_directives (0.00s)
        --- PASS: TestDirectives/input_field_directives/when_function_errors_on_directives (0.00s)
        --- PASS: TestDirectives/input_field_directives/when_function_errors_on_inner_directives (0.00s)
        --- PASS: TestDirectives/input_field_directives/when_function_errors_on_nullable_inner_directives (0.00s)
        --- PASS: TestDirectives/input_field_directives/when_function_success (0.00s)
        --- PASS: TestDirectives/input_field_directives/when_function_inner_nullable_success (0.00s)
        --- PASS: TestDirectives/input_field_directives/when_arg_has_directive (0.00s)
    --- PASS: TestDirectives/object_field_directives (0.00s)
        --- PASS: TestDirectives/object_field_directives/when_function_success (0.00s)
        --- PASS: TestDirectives/object_field_directives/when_directive_returns_nil_&_custom_go_field_is_not_nilable (0.00s)
    --- PASS: TestDirectives/Subscription_directives (0.00s)
        --- PASS: TestDirectives/Subscription_directives/arg_directives (0.00s)
            --- PASS: TestDirectives/Subscription_directives/arg_directives/when_function_errors_on_directives (0.00s)
            --- PASS: TestDirectives/Subscription_directives/arg_directives/when_function_errors_on_nullable_arg_directives (0.00s)
            --- PASS: TestDirectives/Subscription_directives/arg_directives/when_function_success_on_nullable_arg_directives (0.00s)
            --- PASS: TestDirectives/Subscription_directives/arg_directives/when_function_success_on_valid_nullable_arg_directives (0.00s)
            --- PASS: TestDirectives/Subscription_directives/arg_directives/when_function_success (0.00s)
=== RUN   TestEmbedded
=== RUN   TestEmbedded/embedded_case_1
=== RUN   TestEmbedded/embedded_case_2
=== RUN   TestEmbedded/embedded_case_3
--- PASS: TestEmbedded (0.00s)
    --- PASS: TestEmbedded/embedded_case_1 (0.00s)
    --- PASS: TestEmbedded/embedded_case_2 (0.00s)
    --- PASS: TestEmbedded/embedded_case_3 (0.00s)
=== RUN   TestEnumsResolver
=== RUN   TestEnumsResolver/input_with_valid_enum_value
=== RUN   TestEnumsResolver/input_with_invalid_enum_value
=== RUN   TestEnumsResolver/input_with_invalid_enum_value_via_vars
--- PASS: TestEnumsResolver (0.00s)
    --- PASS: TestEnumsResolver/input_with_valid_enum_value (0.00s)
    --- PASS: TestEnumsResolver/input_with_invalid_enum_value (0.00s)
    --- PASS: TestEnumsResolver/input_with_invalid_enum_value_via_vars (0.00s)
=== RUN   TestForcedResolverFieldIsPointer
--- PASS: TestForcedResolverFieldIsPointer (0.00s)
=== RUN   TestEnums
=== RUN   TestEnums/list_of_enums
=== RUN   TestEnums/invalid_enum_values
--- PASS: TestEnums (0.00s)
    --- PASS: TestEnums/list_of_enums (0.00s)
    --- PASS: TestEnums/invalid_enum_values (0.00s)
=== RUN   TestUnionFragments
=== RUN   TestUnionFragments/inline_fragment_on_union
=== RUN   TestUnionFragments/named_fragment
--- PASS: TestUnionFragments (0.00s)
    --- PASS: TestUnionFragments/inline_fragment_on_union (0.00s)
    --- PASS: TestUnionFragments/named_fragment (0.00s)
=== RUN   TestInput
=== RUN   TestInput/when_function_errors_on_directives
--- PASS: TestInput (0.00s)
    --- PASS: TestInput/when_function_errors_on_directives (0.00s)
=== RUN   TestInterfaces
=== RUN   TestInterfaces/slices_of_interfaces_are_not_pointers
=== RUN   TestInterfaces/models_returning_interfaces
=== RUN   TestInterfaces/interfaces_can_be_nil
=== RUN   TestInterfaces/interfaces_can_be_typed_nil
=== RUN   TestInterfaces/interfaces_can_be_nil_(test_with_code-generated_resolver)
=== RUN   TestInterfaces/can_bind_to_interfaces_even_when_the_graphql_is_not
=== RUN   TestInterfaces/can_return_errors_from_interface_funcs
=== RUN   TestInterfaces/interfaces_can_implement_other_interfaces
--- PASS: TestInterfaces (0.00s)
    --- PASS: TestInterfaces/slices_of_interfaces_are_not_pointers (0.00s)
    --- PASS: TestInterfaces/models_returning_interfaces (0.00s)
    --- PASS: TestInterfaces/interfaces_can_be_nil (0.00s)
    --- PASS: TestInterfaces/interfaces_can_be_typed_nil (0.00s)
    --- PASS: TestInterfaces/interfaces_can_be_nil_(test_with_code-generated_resolver) (0.00s)
    --- PASS: TestInterfaces/can_bind_to_interfaces_even_when_the_graphql_is_not (0.00s)
    --- PASS: TestInterfaces/can_return_errors_from_interface_funcs (0.00s)
    --- PASS: TestInterfaces/interfaces_can_implement_other_interfaces (0.00s)
=== RUN   TestIntrospection
=== RUN   TestIntrospection/disabled_when_creating_your_own_server
=== RUN   TestIntrospection/enabled_by_default
=== RUN   TestIntrospection/enabled_by_default/does_not_return_empty_deprecation_strings
=== RUN   TestIntrospection/disabled_by_middleware
--- PASS: TestIntrospection (0.01s)
    --- PASS: TestIntrospection/disabled_when_creating_your_own_server (0.00s)
    --- PASS: TestIntrospection/enabled_by_default (0.01s)
        --- PASS: TestIntrospection/enabled_by_default/does_not_return_empty_deprecation_strings (0.00s)
    --- PASS: TestIntrospection/disabled_by_middleware (0.00s)
=== RUN   TestMaps
=== RUN   TestMaps/unset
=== RUN   TestMaps/nil
=== RUN   TestMaps/values
=== RUN   TestMaps/nested
=== RUN   TestMaps/nested_nil
--- PASS: TestMaps (0.00s)
    --- PASS: TestMaps/unset (0.00s)
    --- PASS: TestMaps/nil (0.00s)
    --- PASS: TestMaps/values (0.00s)
    --- PASS: TestMaps/nested (0.00s)
    --- PASS: TestMaps/nested_nil (0.00s)
=== RUN   TestMiddleware
--- PASS: TestMiddleware (0.00s)
=== RUN   TestModelMethods
=== RUN   TestModelMethods/without_context
=== RUN   TestModelMethods/with_context
--- PASS: TestModelMethods (0.00s)
    --- PASS: TestModelMethods/without_context (0.00s)
    --- PASS: TestModelMethods/with_context (0.00s)
=== RUN   TestNullBubbling
=== RUN   TestNullBubbling/when_function_errors_on_non_required_field
=== RUN   TestNullBubbling/when_function_errors
=== RUN   TestNullBubbling/when_user_returns_null_on_required_field
=== RUN   TestNullBubbling/null_args
=== RUN   TestNullBubbling/concurrent_null_detection
--- PASS: TestNullBubbling (0.00s)
    --- PASS: TestNullBubbling/when_function_errors_on_non_required_field (0.00s)
    --- PASS: TestNullBubbling/when_function_errors (0.00s)
    --- PASS: TestNullBubbling/when_user_returns_null_on_required_field (0.00s)
    --- PASS: TestNullBubbling/null_args (0.00s)
    --- PASS: TestNullBubbling/concurrent_null_detection (0.00s)
=== RUN   TestPanics
=== RUN   TestPanics/panics_in_marshallers_will_not_kill_server
=== RUN   TestPanics/panics_in_unmarshalers_will_not_kill_server
=== RUN   TestPanics/panics_in_funcs_unmarshal_return_errors
=== RUN   TestPanics/panics_in_funcs_marshal_return_errors
--- PASS: TestPanics (0.00s)
    --- PASS: TestPanics/panics_in_marshallers_will_not_kill_server (0.00s)
    --- PASS: TestPanics/panics_in_unmarshalers_will_not_kill_server (0.00s)
    --- PASS: TestPanics/panics_in_funcs_unmarshal_return_errors (0.00s)
    --- PASS: TestPanics/panics_in_funcs_marshal_return_errors (0.00s)
=== RUN   TestPrimitiveObjects
=== RUN   TestPrimitiveObjects/can_fetch_value
--- PASS: TestPrimitiveObjects (0.00s)
    --- PASS: TestPrimitiveObjects/can_fetch_value (0.00s)
=== RUN   TestPrimitiveStringObjects
=== RUN   TestPrimitiveStringObjects/can_fetch_value
--- PASS: TestPrimitiveStringObjects (0.00s)
    --- PASS: TestPrimitiveStringObjects/can_fetch_value (0.00s)
=== RUN   TestResponseExtension
--- PASS: TestResponseExtension (0.00s)
=== RUN   TestDefaultScalarImplementation
=== RUN   TestDefaultScalarImplementation/with_arg_value
=== RUN   TestDefaultScalarImplementation/with_default_value
--- PASS: TestDefaultScalarImplementation (0.00s)
    --- PASS: TestDefaultScalarImplementation/with_arg_value (0.00s)
    --- PASS: TestDefaultScalarImplementation/with_default_value (0.00s)
=== RUN   TestSlices
=== RUN   TestSlices/nulls_vs_empty_slices
=== RUN   TestSlices/custom_scalars_to_slices_work
--- PASS: TestSlices (0.00s)
    --- PASS: TestSlices/nulls_vs_empty_slices (0.00s)
    --- PASS: TestSlices/custom_scalars_to_slices_work (0.00s)
=== RUN   TestSubscriptions
=== RUN   TestSubscriptions/wont_leak_goroutines
=== RUN   TestSubscriptions/will_parse_init_payload
--- PASS: TestSubscriptions (0.01s)
    --- PASS: TestSubscriptions/wont_leak_goroutines (0.01s)
    --- PASS: TestSubscriptions/will_parse_init_payload (0.00s)
=== RUN   TestTime
=== RUN   TestTime/zero_value_in_nullable_field
=== RUN   TestTime/zero_value_in_non_nullable_field
=== RUN   TestTime/with_values
--- PASS: TestTime (0.00s)
    --- PASS: TestTime/zero_value_in_nullable_field (0.00s)
    --- PASS: TestTime/zero_value_in_non_nullable_field (0.00s)
    --- PASS: TestTime/with_values (0.00s)
=== RUN   TestTypeFallback
=== RUN   TestTypeFallback/fallback_to_string_passthrough
--- PASS: TestTypeFallback (0.00s)
    --- PASS: TestTypeFallback/fallback_to_string_passthrough (0.00s)
=== RUN   TestUserPtr
--- PASS: TestUserPtr (0.00s)
=== RUN   TestValidType
=== RUN   TestValidType/fields_with_differing_cases_can_be_distinguished
--- PASS: TestValidType (0.00s)
    --- PASS: TestValidType/fields_with_differing_cases_can_be_distinguished (0.00s)
=== RUN   TestWrappedTypes
=== RUN   TestWrappedTypes/wrapped_struct
=== RUN   TestWrappedTypes/wrapped_scalar
--- PASS: TestWrappedTypes (0.00s)
    --- PASS: TestWrappedTypes/wrapped_struct (0.00s)
    --- PASS: TestWrappedTypes/wrapped_scalar (0.00s)
PASS
ok  	github.com/99designs/gqlgen/codegen/testserver	0.022s
=== RUN   TestRewriter
=== RUN   TestRewriter/default
=== RUN   TestRewriter/out_of_scope_dir
    rewriter_test.go:42: 
        	Error Trace:	rewriter_test.go:42
        	Error:      	An error is expected but got nil.
        	Test:       	TestRewriter/out_of_scope_dir
--- FAIL: TestRewriter (0.28s)
    --- PASS: TestRewriter/default (0.28s)
    --- FAIL: TestRewriter/out_of_scope_dir (0.01s)
FAIL
FAIL	github.com/99designs/gqlgen/internal/rewrite	0.284s
FAIL
