+ cd /home/crossplane
+ git reset --hard
HEAD is now at f60d10f2 Merge pull request #3079 from hasheddan/rel-1.7-drop-reg
+ git checkout f60d10f28905082fe8e5537f17ed74d0117de532
HEAD is now at f60d10f2 Merge pull request #3079 from hasheddan/rel-1.7-drop-reg
+ git apply --whitespace=nowarn /home/fix.patch
+ git apply --whitespace=nowarn /home/test.patch
+ go test -v -count=1 -timeout 30m ./...
?   	github.com/crossplane/crossplane/apis	[no test files]
?   	github.com/crossplane/crossplane/apis/apiextensions	[no test files]
=== RUN   TestPatchApply
=== RUN   TestPatchApply/InvalidCompositeFieldPathPatch
=== RUN   TestPatchApply/MissingOptionalFieldPath
=== RUN   TestPatchApply/MergeOptionsKeepMapValues
=== RUN   TestPatchApply/MissingCombineStrategyFromCompositeConfig
=== RUN   TestPatchApply/InvalidPatchType
=== RUN   TestPatchApply/MissingRequiredFieldPath
=== RUN   TestPatchApply/ValidToCompositeFieldPathPatch
=== RUN   TestPatchApply/MissingCombineFromCompositeConfig
=== RUN   TestPatchApply/MissingCombineVariablesFromCompositeConfig
=== RUN   TestPatchApply/NoOpOptionalInputFieldFromCompositeConfig
=== RUN   TestPatchApply/ValidCombineToComposite
=== RUN   TestPatchApply/ValidCompositeFieldPathPatch
=== RUN   TestPatchApply/FilterExcludeCompositeFieldPathPatch
=== RUN   TestPatchApply/FilterIncludeCompositeFieldPathPatch
=== RUN   TestPatchApply/DefaultToFieldCompositeFieldPathPatch
=== RUN   TestPatchApply/ValidCombineFromComposite
--- PASS: TestPatchApply (0.00s)
    --- PASS: TestPatchApply/InvalidCompositeFieldPathPatch (0.00s)
    --- PASS: TestPatchApply/MissingOptionalFieldPath (0.00s)
    --- PASS: TestPatchApply/MergeOptionsKeepMapValues (0.00s)
    --- PASS: TestPatchApply/MissingCombineStrategyFromCompositeConfig (0.00s)
    --- PASS: TestPatchApply/InvalidPatchType (0.00s)
    --- PASS: TestPatchApply/MissingRequiredFieldPath (0.00s)
    --- PASS: TestPatchApply/ValidToCompositeFieldPathPatch (0.00s)
    --- PASS: TestPatchApply/MissingCombineFromCompositeConfig (0.00s)
    --- PASS: TestPatchApply/MissingCombineVariablesFromCompositeConfig (0.00s)
    --- PASS: TestPatchApply/NoOpOptionalInputFieldFromCompositeConfig (0.00s)
    --- PASS: TestPatchApply/ValidCombineToComposite (0.00s)
    --- PASS: TestPatchApply/ValidCompositeFieldPathPatch (0.00s)
    --- PASS: TestPatchApply/FilterExcludeCompositeFieldPathPatch (0.00s)
    --- PASS: TestPatchApply/FilterIncludeCompositeFieldPathPatch (0.00s)
    --- PASS: TestPatchApply/DefaultToFieldCompositeFieldPathPatch (0.00s)
    --- PASS: TestPatchApply/ValidCombineFromComposite (0.00s)
=== RUN   TestOptionalFieldPathNotFound
=== RUN   TestOptionalFieldPathNotFound/NotAnError
=== RUN   TestOptionalFieldPathNotFound/NotFieldNotFoundError
=== RUN   TestOptionalFieldPathNotFound/DefaultOptionalNoPolicy
=== RUN   TestOptionalFieldPathNotFound/DefaultOptionalNoPathPolicy
=== RUN   TestOptionalFieldPathNotFound/OptionalNotFound
=== RUN   TestOptionalFieldPathNotFound/RequiredNotFound
--- PASS: TestOptionalFieldPathNotFound (0.00s)
    --- PASS: TestOptionalFieldPathNotFound/NotAnError (0.00s)
    --- PASS: TestOptionalFieldPathNotFound/NotFieldNotFoundError (0.00s)
    --- PASS: TestOptionalFieldPathNotFound/DefaultOptionalNoPolicy (0.00s)
    --- PASS: TestOptionalFieldPathNotFound/DefaultOptionalNoPathPolicy (0.00s)
    --- PASS: TestOptionalFieldPathNotFound/OptionalNotFound (0.00s)
    --- PASS: TestOptionalFieldPathNotFound/RequiredNotFound (0.00s)
=== RUN   TestComposedTemplates
=== RUN   TestComposedTemplates/NoCompositionPatchSets
=== RUN   TestComposedTemplates/UndefinedPatchSet
=== RUN   TestComposedTemplates/DefinedPatchSets
--- PASS: TestComposedTemplates (0.00s)
    --- PASS: TestComposedTemplates/NoCompositionPatchSets (0.00s)
    --- PASS: TestComposedTemplates/UndefinedPatchSet (0.00s)
    --- PASS: TestComposedTemplates/DefinedPatchSets (0.00s)
=== RUN   TestMapResolve
=== RUN   TestMapResolve/NonStringInput
=== RUN   TestMapResolve/KeyNotFound
=== RUN   TestMapResolve/Success
--- PASS: TestMapResolve (0.00s)
    --- PASS: TestMapResolve/NonStringInput (0.00s)
    --- PASS: TestMapResolve/KeyNotFound (0.00s)
    --- PASS: TestMapResolve/Success (0.00s)
=== RUN   TestMathResolve
=== RUN   TestMathResolve/NonNumberInput
=== RUN   TestMathResolve/Success
=== RUN   TestMathResolve/SuccessInt64
=== RUN   TestMathResolve/NoMultiplier
--- PASS: TestMathResolve (0.00s)
    --- PASS: TestMathResolve/NonNumberInput (0.00s)
    --- PASS: TestMathResolve/Success (0.00s)
    --- PASS: TestMathResolve/SuccessInt64 (0.00s)
    --- PASS: TestMathResolve/NoMultiplier (0.00s)
=== RUN   TestStringResolve
=== RUN   TestStringResolve/TrimPrefix
=== RUN   TestStringResolve/NotSupportedType
=== RUN   TestStringResolve/FmtString
=== RUN   TestStringResolve/ConvertToLower
=== RUN   TestStringResolve/ConvertTypFailed
=== RUN   TestStringResolve/ConvertToUpper
=== RUN   TestStringResolve/TrimSuffix
=== RUN   TestStringResolve/TrimPrefixWithoutMatch
=== RUN   TestStringResolve/TrimSuffixWithoutMatch
=== RUN   TestStringResolve/FmtFailed
=== RUN   TestStringResolve/FmtInteger
=== RUN   TestStringResolve/ConvertNotSet
--- PASS: TestStringResolve (0.00s)
    --- PASS: TestStringResolve/TrimPrefix (0.00s)
    --- PASS: TestStringResolve/NotSupportedType (0.00s)
    --- PASS: TestStringResolve/FmtString (0.00s)
    --- PASS: TestStringResolve/ConvertToLower (0.00s)
    --- PASS: TestStringResolve/ConvertTypFailed (0.00s)
    --- PASS: TestStringResolve/ConvertToUpper (0.00s)
    --- PASS: TestStringResolve/TrimSuffix (0.00s)
    --- PASS: TestStringResolve/TrimPrefixWithoutMatch (0.00s)
    --- PASS: TestStringResolve/TrimSuffixWithoutMatch (0.00s)
    --- PASS: TestStringResolve/FmtFailed (0.00s)
    --- PASS: TestStringResolve/FmtInteger (0.00s)
    --- PASS: TestStringResolve/ConvertNotSet (0.00s)
=== RUN   TestConvertResolve
=== RUN   TestConvertResolve/StringToBool
=== RUN   TestConvertResolve/SameTypeNoOp
=== RUN   TestConvertResolve/IntAliasToInt64
=== RUN   TestConvertResolve/InputTypeNotSupported
=== RUN   TestConvertResolve/ConversionPairNotSupported
--- PASS: TestConvertResolve (0.00s)
    --- PASS: TestConvertResolve/StringToBool (0.00s)
    --- PASS: TestConvertResolve/SameTypeNoOp (0.00s)
    --- PASS: TestConvertResolve/IntAliasToInt64 (0.00s)
    --- PASS: TestConvertResolve/InputTypeNotSupported (0.00s)
    --- PASS: TestConvertResolve/ConversionPairNotSupported (0.00s)
=== RUN   TestValidateUpdate
=== RUN   TestValidateUpdate/KindChanged
=== RUN   TestValidateUpdate/ClaimPluralChanged
=== RUN   TestValidateUpdate/ClaimKindChanged
=== RUN   TestValidateUpdate/Success
=== RUN   TestValidateUpdate/UnexpectedType
=== RUN   TestValidateUpdate/GroupChanged
=== RUN   TestValidateUpdate/PluralChanged
--- PASS: TestValidateUpdate (0.00s)
    --- PASS: TestValidateUpdate/KindChanged (0.00s)
    --- PASS: TestValidateUpdate/ClaimPluralChanged (0.00s)
    --- PASS: TestValidateUpdate/ClaimKindChanged (0.00s)
    --- PASS: TestValidateUpdate/Success (0.00s)
    --- PASS: TestValidateUpdate/UnexpectedType (0.00s)
    --- PASS: TestValidateUpdate/GroupChanged (0.00s)
    --- PASS: TestValidateUpdate/PluralChanged (0.00s)
PASS
ok  	github.com/crossplane/crossplane/apis/apiextensions/v1	0.015s
?   	github.com/crossplane/crossplane/apis/apiextensions/v1alpha1	[no test files]
?   	github.com/crossplane/crossplane/apis/pkg	[no test files]
?   	github.com/crossplane/crossplane/apis/pkg/meta/v1	[no test files]
=== RUN   TestConvertTo
=== RUN   TestConvertTo/ErrConfigurationWrongHub
=== RUN   TestConvertTo/MinimalConfigurationConversion
=== RUN   TestConvertTo/FullConfigurationConversion
=== RUN   TestConvertTo/ErrProviderWrongHub
=== RUN   TestConvertTo/MinimalProviderConversion
=== RUN   TestConvertTo/FullProviderConversion
--- PASS: TestConvertTo (0.00s)
    --- PASS: TestConvertTo/ErrConfigurationWrongHub (0.00s)
    --- PASS: TestConvertTo/MinimalConfigurationConversion (0.00s)
    --- PASS: TestConvertTo/FullConfigurationConversion (0.00s)
    --- PASS: TestConvertTo/ErrProviderWrongHub (0.00s)
    --- PASS: TestConvertTo/MinimalProviderConversion (0.00s)
    --- PASS: TestConvertTo/FullProviderConversion (0.00s)
=== RUN   TestConvertFrom
=== RUN   TestConvertFrom/FullConfigurationConversion
=== RUN   TestConvertFrom/ErrProviderWrongHub
=== RUN   TestConvertFrom/MinimalProviderConversion
=== RUN   TestConvertFrom/FullProviderConversion
=== RUN   TestConvertFrom/ErrConfigurationWrongHub
=== RUN   TestConvertFrom/MinimalConfigurationConversion
--- PASS: TestConvertFrom (0.00s)
    --- PASS: TestConvertFrom/FullConfigurationConversion (0.00s)
    --- PASS: TestConvertFrom/ErrProviderWrongHub (0.00s)
    --- PASS: TestConvertFrom/MinimalProviderConversion (0.00s)
    --- PASS: TestConvertFrom/FullProviderConversion (0.00s)
    --- PASS: TestConvertFrom/ErrConfigurationWrongHub (0.00s)
    --- PASS: TestConvertFrom/MinimalConfigurationConversion (0.00s)
PASS
ok  	github.com/crossplane/crossplane/apis/pkg/meta/v1alpha1	0.011s
?   	github.com/crossplane/crossplane/apis/pkg/v1	[no test files]
?   	github.com/crossplane/crossplane/apis/pkg/v1alpha1	[no test files]
?   	github.com/crossplane/crossplane/apis/pkg/v1beta1	[no test files]
?   	github.com/crossplane/crossplane/apis/secrets	[no test files]
?   	github.com/crossplane/crossplane/apis/secrets/v1alpha1	[no test files]
=== RUN   TestBuild
=== RUN   TestBuild/SuccessfulWithName
=== RUN   TestBuild/ErrNoNameNoMeta
--- PASS: TestBuild (0.00s)
    --- PASS: TestBuild/SuccessfulWithName (0.00s)
    --- PASS: TestBuild/ErrNoNameNoMeta (0.00s)
PASS
ok  	github.com/crossplane/crossplane/cmd/crank	0.015s
?   	github.com/crossplane/crossplane/cmd/crossplane	[no test files]
?   	github.com/crossplane/crossplane/cmd/crossplane/core	[no test files]
?   	github.com/crossplane/crossplane/cmd/crossplane/rbac	[no test files]
?   	github.com/crossplane/crossplane/internal/client/clientset/versioned	[no test files]
?   	github.com/crossplane/crossplane/internal/client/clientset/versioned/fake	[no test files]
?   	github.com/crossplane/crossplane/internal/client/clientset/versioned/scheme	[no test files]
?   	github.com/crossplane/crossplane/internal/client/clientset/versioned/typed/apiextensions/v1	[no test files]
?   	github.com/crossplane/crossplane/internal/client/clientset/versioned/typed/apiextensions/v1/fake	[no test files]
?   	github.com/crossplane/crossplane/internal/client/clientset/versioned/typed/pkg/v1	[no test files]
?   	github.com/crossplane/crossplane/internal/client/clientset/versioned/typed/pkg/v1/fake	[no test files]
?   	github.com/crossplane/crossplane/internal/client/clientset/versioned/typed/pkg/v1alpha1	[no test files]
?   	github.com/crossplane/crossplane/internal/client/clientset/versioned/typed/pkg/v1alpha1/fake	[no test files]
?   	github.com/crossplane/crossplane/internal/client/clientset/versioned/typed/pkg/v1beta1	[no test files]
?   	github.com/crossplane/crossplane/internal/client/clientset/versioned/typed/pkg/v1beta1/fake	[no test files]
?   	github.com/crossplane/crossplane/internal/client/clientset/versioned/typed/secrets/v1alpha1	[no test files]
?   	github.com/crossplane/crossplane/internal/client/clientset/versioned/typed/secrets/v1alpha1/fake	[no test files]
?   	github.com/crossplane/crossplane/internal/controller	[no test files]
?   	github.com/crossplane/crossplane/internal/controller/apiextensions	[no test files]
=== RUN   TestBind
=== RUN   TestBind/CompositeRefConflict
=== RUN   TestBind/UpdateClaimError
=== RUN   TestBind/NoOp
--- PASS: TestBind (0.00s)
    --- PASS: TestBind/CompositeRefConflict (0.00s)
    --- PASS: TestBind/UpdateClaimError (0.00s)
    --- PASS: TestBind/NoOp (0.00s)
=== RUN   TestPropagateConnection
=== RUN   TestPropagateConnection/SuccessfulNoOp
=== RUN   TestPropagateConnection/SuccessfulPublish
=== RUN   TestPropagateConnection/ClaimDoesNotWantConnectionSecret
=== RUN   TestPropagateConnection/ManagedDoesNotExposeConnectionSecret
=== RUN   TestPropagateConnection/GetManagedSecretError
=== RUN   TestPropagateConnection/ManagedResourceDoesNotControlSecret
=== RUN   TestPropagateConnection/ApplyClaimSecretError
--- PASS: TestPropagateConnection (0.00s)
    --- PASS: TestPropagateConnection/SuccessfulNoOp (0.00s)
    --- PASS: TestPropagateConnection/SuccessfulPublish (0.00s)
    --- PASS: TestPropagateConnection/ClaimDoesNotWantConnectionSecret (0.00s)
    --- PASS: TestPropagateConnection/ManagedDoesNotExposeConnectionSecret (0.00s)
    --- PASS: TestPropagateConnection/GetManagedSecretError (0.00s)
    --- PASS: TestPropagateConnection/ManagedResourceDoesNotControlSecret (0.00s)
    --- PASS: TestPropagateConnection/ApplyClaimSecretError (0.00s)
=== RUN   TestCompositeConfigure
=== RUN   TestCompositeConfigure/AlreadyClaimedError
=== RUN   TestCompositeConfigure/DryRunError
=== RUN   TestCompositeConfigure/ConfiguredNewXR
=== RUN   TestCompositeConfigure/ConfiguredExistingXR
=== RUN   TestCompositeConfigure/ClaimNotUnstructured
=== RUN   TestCompositeConfigure/CompositeNotUnstructured
=== RUN   TestCompositeConfigure/UnsupportedSpecError
--- PASS: TestCompositeConfigure (0.00s)
    --- PASS: TestCompositeConfigure/AlreadyClaimedError (0.00s)
    --- PASS: TestCompositeConfigure/DryRunError (0.00s)
    --- PASS: TestCompositeConfigure/ConfiguredNewXR (0.00s)
    --- PASS: TestCompositeConfigure/ConfiguredExistingXR (0.00s)
    --- PASS: TestCompositeConfigure/ClaimNotUnstructured (0.00s)
    --- PASS: TestCompositeConfigure/CompositeNotUnstructured (0.00s)
    --- PASS: TestCompositeConfigure/UnsupportedSpecError (0.00s)
=== RUN   TestClaimConfigure
=== RUN   TestClaimConfigure/MergeStatusCompositeError
=== RUN   TestClaimConfigure/UpdateStatusError
=== RUN   TestClaimConfigure/MergeSpecError
=== RUN   TestClaimConfigure/UpdateClaimError
=== RUN   TestClaimConfigure/LateInitializeClaim
=== RUN   TestClaimConfigure/ConfigureStatus
=== RUN   TestClaimConfigure/MergeStatusClaimError
--- PASS: TestClaimConfigure (0.00s)
    --- PASS: TestClaimConfigure/MergeStatusCompositeError (0.00s)
    --- PASS: TestClaimConfigure/UpdateStatusError (0.00s)
    --- PASS: TestClaimConfigure/MergeSpecError (0.00s)
    --- PASS: TestClaimConfigure/UpdateClaimError (0.00s)
    --- PASS: TestClaimConfigure/LateInitializeClaim (0.00s)
    --- PASS: TestClaimConfigure/ConfigureStatus (0.00s)
    --- PASS: TestClaimConfigure/MergeStatusClaimError (0.00s)
=== RUN   TestReconcile
=== RUN   TestReconcile/GetCompositeError
=== RUN   TestReconcile/DeleteCompositeError
=== RUN   TestReconcile/SuccessfulDelete
=== RUN   TestReconcile/ConfigureError
=== RUN   TestReconcile/CompositeNotReady
=== RUN   TestReconcile/ClaimNotFound
=== RUN   TestReconcile/DeleteUnboundCompositeError
=== RUN   TestReconcile/AddFinalizerError
=== RUN   TestReconcile/PropagateConnectionError
=== RUN   TestReconcile/ApplyError
=== RUN   TestReconcile/SuccessfulPropagate
=== RUN   TestReconcile/CompositeAlreadyDeleted
=== RUN   TestReconcile/RemoveFinalizerError
=== RUN   TestReconcile/BindError
=== RUN   TestReconcile/ClaimConfigureError
--- PASS: TestReconcile (0.00s)
    --- PASS: TestReconcile/GetCompositeError (0.00s)
    --- PASS: TestReconcile/DeleteCompositeError (0.00s)
    --- PASS: TestReconcile/SuccessfulDelete (0.00s)
    --- PASS: TestReconcile/ConfigureError (0.00s)
    --- PASS: TestReconcile/CompositeNotReady (0.00s)
    --- PASS: TestReconcile/ClaimNotFound (0.00s)
    --- PASS: TestReconcile/DeleteUnboundCompositeError (0.00s)
    --- PASS: TestReconcile/AddFinalizerError (0.00s)
    --- PASS: TestReconcile/PropagateConnectionError (0.00s)
    --- PASS: TestReconcile/ApplyError (0.00s)
    --- PASS: TestReconcile/SuccessfulPropagate (0.00s)
    --- PASS: TestReconcile/CompositeAlreadyDeleted (0.00s)
    --- PASS: TestReconcile/RemoveFinalizerError (0.00s)
    --- PASS: TestReconcile/BindError (0.00s)
    --- PASS: TestReconcile/ClaimConfigureError (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/controller/apiextensions/claim	0.015s
=== RUN   TestPublishConnection
=== RUN   TestPublishConnection/SuccessfulPublish
=== RUN   TestPublishConnection/SuccessfulPublishAllWithEmptyList
=== RUN   TestPublishConnection/ResourceDoesNotPublishSecret
=== RUN   TestPublishConnection/ApplyError
=== RUN   TestPublishConnection/SuccessfulNoOp
--- PASS: TestPublishConnection (0.00s)
    --- PASS: TestPublishConnection/SuccessfulPublish (0.00s)
    --- PASS: TestPublishConnection/SuccessfulPublishAllWithEmptyList (0.00s)
    --- PASS: TestPublishConnection/ResourceDoesNotPublishSecret (0.00s)
    --- PASS: TestPublishConnection/ApplyError (0.00s)
    --- PASS: TestPublishConnection/SuccessfulNoOp (0.00s)
=== RUN   TestFetchComposition
=== RUN   TestFetchComposition/GetCompositionError
=== RUN   TestFetchComposition/Success
--- PASS: TestFetchComposition (0.00s)
    --- PASS: TestFetchComposition/GetCompositionError (0.00s)
    --- PASS: TestFetchComposition/Success (0.00s)
=== RUN   TestFetchRevision
=== RUN   TestFetchRevision/SetRevisionError
=== RUN   TestFetchRevision/ListCompositionRevisionsError
=== RUN   TestFetchRevision/AlreadyAtLatestRevision
=== RUN   TestFetchRevision/GetCompositionError
=== RUN   TestFetchRevision/NoCompositionRevisionsError
=== RUN   TestFetchRevision/NoRevisionSet
=== RUN   TestFetchRevision/OutdatedRevisionSet
=== RUN   TestFetchRevision/GetCompositionRevisionError
=== RUN   TestFetchRevision/UpdateManual
--- PASS: TestFetchRevision (0.00s)
    --- PASS: TestFetchRevision/SetRevisionError (0.00s)
    --- PASS: TestFetchRevision/ListCompositionRevisionsError (0.00s)
    --- PASS: TestFetchRevision/AlreadyAtLatestRevision (0.00s)
    --- PASS: TestFetchRevision/GetCompositionError (0.00s)
    --- PASS: TestFetchRevision/NoCompositionRevisionsError (0.00s)
    --- PASS: TestFetchRevision/NoRevisionSet (0.00s)
    --- PASS: TestFetchRevision/OutdatedRevisionSet (0.00s)
    --- PASS: TestFetchRevision/GetCompositionRevisionError (0.00s)
    --- PASS: TestFetchRevision/UpdateManual (0.00s)
=== RUN   TestConfigure
=== RUN   TestConfigure/NilWriteConnectionSecretsToNamespace
=== RUN   TestConfigure/UpdateFailed
=== RUN   TestConfigure/NotCompatible
=== RUN   TestConfigure/AlreadyFilled
=== RUN   TestConfigure/ConnectionSecretRefMissing
--- PASS: TestConfigure (0.00s)
    --- PASS: TestConfigure/NilWriteConnectionSecretsToNamespace (0.00s)
    --- PASS: TestConfigure/UpdateFailed (0.00s)
    --- PASS: TestConfigure/NotCompatible (0.00s)
    --- PASS: TestConfigure/AlreadyFilled (0.00s)
    --- PASS: TestConfigure/ConnectionSecretRefMissing (0.00s)
=== RUN   TestSelectorResolver
=== RUN   TestSelectorResolver/ListFailed
=== RUN   TestSelectorResolver/NoneCompatible
=== RUN   TestSelectorResolver/SelectedTheCompatibleOne
=== RUN   TestSelectorResolver/AlreadyResolved
--- PASS: TestSelectorResolver (0.00s)
    --- PASS: TestSelectorResolver/ListFailed (0.00s)
    --- PASS: TestSelectorResolver/NoneCompatible (0.00s)
    --- PASS: TestSelectorResolver/SelectedTheCompatibleOne (0.00s)
    --- PASS: TestSelectorResolver/AlreadyResolved (0.00s)
=== RUN   TestAPIDefaultCompositionSelector
=== RUN   TestAPIDefaultCompositionSelector/AlreadyResolved
=== RUN   TestAPIDefaultCompositionSelector/SelectorInPlace
=== RUN   TestAPIDefaultCompositionSelector/NoDefault
=== RUN   TestAPIDefaultCompositionSelector/GetDefinitionFailed
=== RUN   TestAPIDefaultCompositionSelector/Success
--- PASS: TestAPIDefaultCompositionSelector (0.00s)
    --- PASS: TestAPIDefaultCompositionSelector/AlreadyResolved (0.00s)
    --- PASS: TestAPIDefaultCompositionSelector/SelectorInPlace (0.00s)
    --- PASS: TestAPIDefaultCompositionSelector/NoDefault (0.00s)
    --- PASS: TestAPIDefaultCompositionSelector/GetDefinitionFailed (0.00s)
    --- PASS: TestAPIDefaultCompositionSelector/Success (0.00s)
=== RUN   TestAPIEnforcedCompositionSelector
=== RUN   TestAPIEnforcedCompositionSelector/NoEnforced
=== RUN   TestAPIEnforcedCompositionSelector/EnforcedAlreadySet
=== RUN   TestAPIEnforcedCompositionSelector/Success
=== RUN   TestAPIEnforcedCompositionSelector/SuccessOverride
--- PASS: TestAPIEnforcedCompositionSelector (0.00s)
    --- PASS: TestAPIEnforcedCompositionSelector/NoEnforced (0.00s)
    --- PASS: TestAPIEnforcedCompositionSelector/EnforcedAlreadySet (0.00s)
    --- PASS: TestAPIEnforcedCompositionSelector/Success (0.00s)
    --- PASS: TestAPIEnforcedCompositionSelector/SuccessOverride (0.00s)
=== RUN   TestAPINamingConfigurator
=== RUN   TestAPINamingConfigurator/LabelAlreadyExists
=== RUN   TestAPINamingConfigurator/AssignedName
--- PASS: TestAPINamingConfigurator (0.00s)
    --- PASS: TestAPINamingConfigurator/LabelAlreadyExists (0.00s)
    --- PASS: TestAPINamingConfigurator/AssignedName (0.00s)
=== RUN   TestRejectMixedTemplates
=== RUN   TestRejectMixedTemplates/Mixed
=== RUN   TestRejectMixedTemplates/Anonymous
=== RUN   TestRejectMixedTemplates/Named
--- PASS: TestRejectMixedTemplates (0.00s)
    --- PASS: TestRejectMixedTemplates/Mixed (0.00s)
    --- PASS: TestRejectMixedTemplates/Anonymous (0.00s)
    --- PASS: TestRejectMixedTemplates/Named (0.00s)
=== RUN   TestRejectDuplicateNames
=== RUN   TestRejectDuplicateNames/Anonymous
=== RUN   TestRejectDuplicateNames/Duplicates
=== RUN   TestRejectDuplicateNames/Unique
--- PASS: TestRejectDuplicateNames (0.00s)
    --- PASS: TestRejectDuplicateNames/Anonymous (0.00s)
    --- PASS: TestRejectDuplicateNames/Duplicates (0.00s)
    --- PASS: TestRejectDuplicateNames/Unique (0.00s)
=== RUN   TestRender
=== RUN   TestRender/InvalidTemplate
=== RUN   TestRender/NoLabel
=== RUN   TestRender/DryRunError
=== RUN   TestRender/Success
--- PASS: TestRender (0.00s)
    --- PASS: TestRender/InvalidTemplate (0.00s)
    --- PASS: TestRender/NoLabel (0.00s)
    --- PASS: TestRender/DryRunError (0.00s)
    --- PASS: TestRender/Success (0.00s)
=== RUN   TestAssociateByOrder
=== RUN   TestAssociateByOrder/ExtraReferences
=== RUN   TestAssociateByOrder/NoReferences
=== RUN   TestAssociateByOrder/SomeReferences
--- PASS: TestAssociateByOrder (0.00s)
    --- PASS: TestAssociateByOrder/ExtraReferences (0.00s)
    --- PASS: TestAssociateByOrder/NoReferences (0.00s)
    --- PASS: TestAssociateByOrder/SomeReferences (0.00s)
=== RUN   TestGarbageCollectingAssociator
=== RUN   TestGarbageCollectingAssociator/ResourceNotFoundError
=== RUN   TestGarbageCollectingAssociator/GetResourceError
=== RUN   TestGarbageCollectingAssociator/AnonymousResource
=== RUN   TestGarbageCollectingAssociator/AssociatedResource
=== RUN   TestGarbageCollectingAssociator/UncontrolledResource
=== RUN   TestGarbageCollectingAssociator/GarbageCollectionError
=== RUN   TestGarbageCollectingAssociator/GarbageCollectedResource
=== RUN   TestGarbageCollectingAssociator/AnonymousTemplates
--- PASS: TestGarbageCollectingAssociator (0.00s)
    --- PASS: TestGarbageCollectingAssociator/ResourceNotFoundError (0.00s)
    --- PASS: TestGarbageCollectingAssociator/GetResourceError (0.00s)
    --- PASS: TestGarbageCollectingAssociator/AnonymousResource (0.00s)
    --- PASS: TestGarbageCollectingAssociator/AssociatedResource (0.00s)
    --- PASS: TestGarbageCollectingAssociator/UncontrolledResource (0.00s)
    --- PASS: TestGarbageCollectingAssociator/GarbageCollectionError (0.00s)
    --- PASS: TestGarbageCollectingAssociator/GarbageCollectedResource (0.00s)
    --- PASS: TestGarbageCollectingAssociator/AnonymousTemplates (0.00s)
=== RUN   TestFetch
=== RUN   TestFetch/SecretGetFailed
=== RUN   TestFetch/ErrConnectionDetailFromConnectionSecretKeyNotSet
=== RUN   TestFetch/ErrConnectionDetailFromFieldPathNotSet
=== RUN   TestFetch/DoesNotPublish
=== RUN   TestFetch/SecretNotPublishedYet
=== RUN   TestFetch/Success
=== RUN   TestFetch/ConnectionDetailValueNotSet
=== RUN   TestFetch/ErrConnectionDetailNameNotSet
=== RUN   TestFetch/ErrConnectionDetailFromFieldPathNameNotSet
=== RUN   TestFetch/SuccessFieldPath
=== RUN   TestFetch/SuccessFieldPathMarshal
--- PASS: TestFetch (0.00s)
    --- PASS: TestFetch/SecretGetFailed (0.00s)
    --- PASS: TestFetch/ErrConnectionDetailFromConnectionSecretKeyNotSet (0.00s)
    --- PASS: TestFetch/ErrConnectionDetailFromFieldPathNotSet (0.00s)
    --- PASS: TestFetch/DoesNotPublish (0.00s)
    --- PASS: TestFetch/SecretNotPublishedYet (0.00s)
    --- PASS: TestFetch/Success (0.00s)
    --- PASS: TestFetch/ConnectionDetailValueNotSet (0.00s)
    --- PASS: TestFetch/ErrConnectionDetailNameNotSet (0.00s)
    --- PASS: TestFetch/ErrConnectionDetailFromFieldPathNameNotSet (0.00s)
    --- PASS: TestFetch/SuccessFieldPath (0.00s)
    --- PASS: TestFetch/SuccessFieldPathMarshal (0.00s)
=== RUN   TestConnectionDetailType
=== RUN   TestConnectionDetailType/FromValueExplicit
=== RUN   TestConnectionDetailType/FromValueInferred
=== RUN   TestConnectionDetailType/FromConnectionSecretKeyInferred
=== RUN   TestConnectionDetailType/FromFieldPathInferred
--- PASS: TestConnectionDetailType (0.00s)
    --- PASS: TestConnectionDetailType/FromValueExplicit (0.00s)
    --- PASS: TestConnectionDetailType/FromValueInferred (0.00s)
    --- PASS: TestConnectionDetailType/FromConnectionSecretKeyInferred (0.00s)
    --- PASS: TestConnectionDetailType/FromFieldPathInferred (0.00s)
=== RUN   TestIsReady
=== RUN   TestIsReady/UnknownType
=== RUN   TestIsReady/NonEmptyErr
=== RUN   TestIsReady/NonEmptyFalse
=== RUN   TestIsReady/MatchStringErr
=== RUN   TestIsReady/MatchIntegerErr
=== RUN   TestIsReady/MatchIntegerFalse
=== RUN   TestIsReady/MatchIntegerTrue
=== RUN   TestIsReady/NoCustomCheck
=== RUN   TestIsReady/ExplictNone
=== RUN   TestIsReady/NonEmptyTrue
=== RUN   TestIsReady/MatchStringFalse
=== RUN   TestIsReady/MatchStringTrue
--- PASS: TestIsReady (0.00s)
    --- PASS: TestIsReady/UnknownType (0.00s)
    --- PASS: TestIsReady/NonEmptyErr (0.00s)
    --- PASS: TestIsReady/NonEmptyFalse (0.00s)
    --- PASS: TestIsReady/MatchStringErr (0.00s)
    --- PASS: TestIsReady/MatchIntegerErr (0.00s)
    --- PASS: TestIsReady/MatchIntegerFalse (0.00s)
    --- PASS: TestIsReady/MatchIntegerTrue (0.00s)
    --- PASS: TestIsReady/NoCustomCheck (0.00s)
    --- PASS: TestIsReady/ExplictNone (0.00s)
    --- PASS: TestIsReady/NonEmptyTrue (0.00s)
    --- PASS: TestIsReady/MatchStringFalse (0.00s)
    --- PASS: TestIsReady/MatchStringTrue (0.00s)
=== RUN   TestMergePath
=== RUN   TestMergePath/PathNotFound
=== RUN   TestMergePath/SrcValueEmpty
=== RUN   TestMergePath/DstValueEmpty
=== RUN   TestMergePath/ErrSrcNotPaved
=== RUN   TestMergePath/ErrDstNotPaved
=== RUN   TestMergePath/ReplacePath
=== RUN   TestMergePath/MergePathNoSliceAppend
=== RUN   TestMergePath/MergePathWithSliceAppend
--- PASS: TestMergePath (0.00s)
    --- PASS: TestMergePath/PathNotFound (0.00s)
    --- PASS: TestMergePath/SrcValueEmpty (0.00s)
    --- PASS: TestMergePath/DstValueEmpty (0.00s)
    --- PASS: TestMergePath/ErrSrcNotPaved (0.00s)
    --- PASS: TestMergePath/ErrDstNotPaved (0.00s)
    --- PASS: TestMergePath/ReplacePath (0.00s)
    --- PASS: TestMergePath/MergePathNoSliceAppend (0.00s)
    --- PASS: TestMergePath/MergePathWithSliceAppend (0.00s)
=== RUN   TestMergeReplace
=== RUN   TestMergeReplace/HappyPath
=== RUN   TestMergeReplace/ErrFromMergePath
--- PASS: TestMergeReplace (0.00s)
    --- PASS: TestMergeReplace/HappyPath (0.00s)
    --- PASS: TestMergeReplace/ErrFromMergePath (0.00s)
=== RUN   TestMergeOptions
=== RUN   TestMergeOptions/PatchEmptyPolicy
=== RUN   TestMergeOptions/TwoPatches
=== RUN   TestMergeOptions/PatchNoPolicy
=== RUN   TestMergeOptions/PatchNoToFieldPath
--- PASS: TestMergeOptions (0.00s)
    --- PASS: TestMergeOptions/PatchEmptyPolicy (0.00s)
    --- PASS: TestMergeOptions/TwoPatches (0.00s)
    --- PASS: TestMergeOptions/PatchNoPolicy (0.00s)
    --- PASS: TestMergeOptions/PatchNoToFieldPath (0.00s)
=== RUN   TestReconcile
=== RUN   TestReconcile/AssociateTemplatesError
=== RUN   TestReconcile/UpdateCompositeError
=== RUN   TestReconcile/FetchConnectionDetailsError
=== RUN   TestReconcile/PublishConnectionDetailsError
=== RUN   TestReconcile/RemoveFinalizerError
=== RUN   TestReconcile/ConfigureCompositeError
=== RUN   TestReconcile/CompositeUpdateError
=== RUN   TestReconcile/ValidateCompositionError
=== RUN   TestReconcile/ComposedTemplatesError
=== RUN   TestReconcile/ApplyComposedError
=== RUN   TestReconcile/CheckReadinessError
=== RUN   TestReconcile/CompositeRenderError
=== RUN   TestReconcile/GetCompositeResourceError
=== RUN   TestReconcile/SuccessfulDelete
=== RUN   TestReconcile/AddFinalizerError
=== RUN   TestReconcile/ComposedResourcesNotReady
=== RUN   TestReconcile/ComposedResourcesReady
=== RUN   TestReconcile/FetchCompositionError
=== RUN   TestReconcile/CompositeUpdateEarlyExit
=== RUN   TestReconcile/CompositeResourceNotFound
=== RUN   TestReconcile/UnpublishConnectionError
=== RUN   TestReconcile/SelectCompositionError
--- PASS: TestReconcile (0.00s)
    --- PASS: TestReconcile/AssociateTemplatesError (0.00s)
    --- PASS: TestReconcile/UpdateCompositeError (0.00s)
    --- PASS: TestReconcile/FetchConnectionDetailsError (0.00s)
    --- PASS: TestReconcile/PublishConnectionDetailsError (0.00s)
    --- PASS: TestReconcile/RemoveFinalizerError (0.00s)
    --- PASS: TestReconcile/ConfigureCompositeError (0.00s)
    --- PASS: TestReconcile/CompositeUpdateError (0.00s)
    --- PASS: TestReconcile/ValidateCompositionError (0.00s)
    --- PASS: TestReconcile/ComposedTemplatesError (0.00s)
    --- PASS: TestReconcile/ApplyComposedError (0.00s)
    --- PASS: TestReconcile/CheckReadinessError (0.00s)
    --- PASS: TestReconcile/CompositeRenderError (0.00s)
    --- PASS: TestReconcile/GetCompositeResourceError (0.00s)
    --- PASS: TestReconcile/SuccessfulDelete (0.00s)
    --- PASS: TestReconcile/AddFinalizerError (0.00s)
    --- PASS: TestReconcile/ComposedResourcesNotReady (0.00s)
    --- PASS: TestReconcile/ComposedResourcesReady (0.00s)
    --- PASS: TestReconcile/FetchCompositionError (0.00s)
    --- PASS: TestReconcile/CompositeUpdateEarlyExit (0.00s)
    --- PASS: TestReconcile/CompositeResourceNotFound (0.00s)
    --- PASS: TestReconcile/UnpublishConnectionError (0.00s)
    --- PASS: TestReconcile/SelectCompositionError (0.00s)
=== RUN   TestFilterToXRPatches
=== RUN   TestFilterToXRPatches/NonEmptyToXRPatches
=== RUN   TestFilterToXRPatches/NoToXRPatches
=== RUN   TestFilterToXRPatches/EmptyToXRPatches
--- PASS: TestFilterToXRPatches (0.00s)
    --- PASS: TestFilterToXRPatches/NonEmptyToXRPatches (0.00s)
    --- PASS: TestFilterToXRPatches/NoToXRPatches (0.00s)
    --- PASS: TestFilterToXRPatches/EmptyToXRPatches (0.00s)
=== RUN   TestAsComposition
--- PASS: TestAsComposition (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/controller/apiextensions/composite	0.020s
=== RUN   TestReconcile
=== RUN   TestReconcile/ListCompositionRevisionsError
=== RUN   TestReconcile/SuccessfulNoOp
=== RUN   TestReconcile/UpdateRevisionStatusError
=== RUN   TestReconcile/CreateCompositionRevisionError
=== RUN   TestReconcile/SuccessfulCreation
=== RUN   TestReconcile/CompositionNotFound
=== RUN   TestReconcile/GetCompositionError
=== RUN   TestReconcile/CompositionDeleted
--- PASS: TestReconcile (0.00s)
    --- PASS: TestReconcile/ListCompositionRevisionsError (0.00s)
    --- PASS: TestReconcile/SuccessfulNoOp (0.00s)
    --- PASS: TestReconcile/UpdateRevisionStatusError (0.00s)
    --- PASS: TestReconcile/CreateCompositionRevisionError (0.00s)
    --- PASS: TestReconcile/SuccessfulCreation (0.00s)
    --- PASS: TestReconcile/CompositionNotFound (0.00s)
    --- PASS: TestReconcile/GetCompositionError (0.00s)
    --- PASS: TestReconcile/CompositionDeleted (0.00s)
=== RUN   TestNewCompositionRevision
--- PASS: TestNewCompositionRevision (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/controller/apiextensions/composition	0.014s
=== RUN   TestReconcile
=== RUN   TestReconcile/RenderCustomResourceDefinitionError
=== RUN   TestReconcile/AddFinalizerError
=== RUN   TestReconcile/ApplyCustomResourceDefinitionError
=== RUN   TestReconcile/CustomResourceDefinitionIsNotEstablished
=== RUN   TestReconcile/SetTerminatingConditionError
=== RUN   TestReconcile/SuccessfulDelete
=== RUN   TestReconcile/ListCustomResourcesError
=== RUN   TestReconcile/CompositeResourceDefinitionNotFound
=== RUN   TestReconcile/SuccessfulCleanup
=== RUN   TestReconcile/DeleteCustomResourceDefinitionError
=== RUN   TestReconcile/StartControllerError
=== RUN   TestReconcile/SuccessfulStart
=== RUN   TestReconcile/GetCompositeResourceDefinitionError
=== RUN   TestReconcile/GetCustomResourceDefinitionError
=== RUN   TestReconcile/RemoveFinalizerError
=== RUN   TestReconcile/DeleteAllCustomResourcesError
=== RUN   TestReconcile/WaitForDeleteAllOf
=== RUN   TestReconcile/SuccessfulUpdateControllerVersion
--- PASS: TestReconcile (0.00s)
    --- PASS: TestReconcile/RenderCustomResourceDefinitionError (0.00s)
    --- PASS: TestReconcile/AddFinalizerError (0.00s)
    --- PASS: TestReconcile/ApplyCustomResourceDefinitionError (0.00s)
    --- PASS: TestReconcile/CustomResourceDefinitionIsNotEstablished (0.00s)
    --- PASS: TestReconcile/SetTerminatingConditionError (0.00s)
    --- PASS: TestReconcile/SuccessfulDelete (0.00s)
    --- PASS: TestReconcile/ListCustomResourcesError (0.00s)
    --- PASS: TestReconcile/CompositeResourceDefinitionNotFound (0.00s)
    --- PASS: TestReconcile/SuccessfulCleanup (0.00s)
    --- PASS: TestReconcile/DeleteCustomResourceDefinitionError (0.00s)
    --- PASS: TestReconcile/StartControllerError (0.00s)
    --- PASS: TestReconcile/SuccessfulStart (0.00s)
    --- PASS: TestReconcile/GetCompositeResourceDefinitionError (0.00s)
    --- PASS: TestReconcile/GetCustomResourceDefinitionError (0.00s)
    --- PASS: TestReconcile/RemoveFinalizerError (0.00s)
    --- PASS: TestReconcile/DeleteAllCustomResourcesError (0.00s)
    --- PASS: TestReconcile/WaitForDeleteAllOf (0.00s)
    --- PASS: TestReconcile/SuccessfulUpdateControllerVersion (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/controller/apiextensions/definition	0.015s
=== RUN   TestReconcile
=== RUN   TestReconcile/RenderCompositeResourceDefinitionError
=== RUN   TestReconcile/RemoveFinalizerError
=== RUN   TestReconcile/ListCustomResourcesError
=== RUN   TestReconcile/GetCompositeResourceDefinitionError
=== RUN   TestReconcile/SuccessfulDeleteCustomResources
=== RUN   TestReconcile/SuccessfulUpdateControllerVersion
=== RUN   TestReconcile/CompositeResourceDefinitionNotFound
=== RUN   TestReconcile/SuccessfulDelete
=== RUN   TestReconcile/CustomResourceDefinitionIsNotEstablished
=== RUN   TestReconcile/SuccessfulStart
=== RUN   TestReconcile/SuccessfulCleanup
=== RUN   TestReconcile/AddFinalizerError
=== RUN   TestReconcile/ApplyCRDError
=== RUN   TestReconcile/StartControllerError
=== RUN   TestReconcile/SetTerminatingConditionError
=== RUN   TestReconcile/GetCustomResourceDefinitionError
=== RUN   TestReconcile/DeleteCustomResourcesError
=== RUN   TestReconcile/DeleteCustomResourceDefinitionError
--- PASS: TestReconcile (0.00s)
    --- PASS: TestReconcile/RenderCompositeResourceDefinitionError (0.00s)
    --- PASS: TestReconcile/RemoveFinalizerError (0.00s)
    --- PASS: TestReconcile/ListCustomResourcesError (0.00s)
    --- PASS: TestReconcile/GetCompositeResourceDefinitionError (0.00s)
    --- PASS: TestReconcile/SuccessfulDeleteCustomResources (0.00s)
    --- PASS: TestReconcile/SuccessfulUpdateControllerVersion (0.00s)
    --- PASS: TestReconcile/CompositeResourceDefinitionNotFound (0.00s)
    --- PASS: TestReconcile/SuccessfulDelete (0.00s)
    --- PASS: TestReconcile/CustomResourceDefinitionIsNotEstablished (0.00s)
    --- PASS: TestReconcile/SuccessfulStart (0.00s)
    --- PASS: TestReconcile/SuccessfulCleanup (0.00s)
    --- PASS: TestReconcile/AddFinalizerError (0.00s)
    --- PASS: TestReconcile/ApplyCRDError (0.00s)
    --- PASS: TestReconcile/StartControllerError (0.00s)
    --- PASS: TestReconcile/SetTerminatingConditionError (0.00s)
    --- PASS: TestReconcile/GetCustomResourceDefinitionError (0.00s)
    --- PASS: TestReconcile/DeleteCustomResourcesError (0.00s)
    --- PASS: TestReconcile/DeleteCustomResourceDefinitionError (0.00s)
=== RUN   TestOffersClaim
=== RUN   TestOffersClaim/NotAnXRD
=== RUN   TestOffersClaim/DoesNotOfferClaim
=== RUN   TestOffersClaim/OffersClaim
--- PASS: TestOffersClaim (0.00s)
    --- PASS: TestOffersClaim/NotAnXRD (0.00s)
    --- PASS: TestOffersClaim/DoesNotOfferClaim (0.00s)
    --- PASS: TestOffersClaim/OffersClaim (0.00s)
=== RUN   TestAddClaim
--- PASS: TestAddClaim (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/controller/apiextensions/offered	0.015s
?   	github.com/crossplane/crossplane/internal/controller/pkg	[no test files]
?   	github.com/crossplane/crossplane/internal/controller/pkg/controller	[no test files]
=== RUN   TestReconcile
=== RUN   TestReconcile/ErrGetPackage
=== RUN   TestReconcile/SuccessfulRevisionExistsNeedsActive
=== RUN   TestReconcile/ErrGC
=== RUN   TestReconcile/PackageNotFound
=== RUN   TestReconcile/SuccessfulNoExistingRevisionsAutoActivate
=== RUN   TestReconcile/SuccessfulNoExistingRevisionsAutoActivatePullAlways
=== RUN   TestReconcile/SuccessfulNoExistingRevisionsManualActivate
=== RUN   TestReconcile/SuccessfulActiveRevisionExists
=== RUN   TestReconcile/ErrUpdatePackageRevision
=== RUN   TestReconcile/SuccessfulTransitionUnhealthy
=== RUN   TestReconcile/SuccessfulRevisionExistsNeedGC
=== RUN   TestReconcile/ErrListRevisions
--- PASS: TestReconcile (0.00s)
    --- PASS: TestReconcile/ErrGetPackage (0.00s)
    --- PASS: TestReconcile/SuccessfulRevisionExistsNeedsActive (0.00s)
    --- PASS: TestReconcile/ErrGC (0.00s)
    --- PASS: TestReconcile/PackageNotFound (0.00s)
    --- PASS: TestReconcile/SuccessfulNoExistingRevisionsAutoActivate (0.00s)
    --- PASS: TestReconcile/SuccessfulNoExistingRevisionsAutoActivatePullAlways (0.00s)
    --- PASS: TestReconcile/SuccessfulNoExistingRevisionsManualActivate (0.00s)
    --- PASS: TestReconcile/SuccessfulActiveRevisionExists (0.00s)
    --- PASS: TestReconcile/ErrUpdatePackageRevision (0.00s)
    --- PASS: TestReconcile/SuccessfulTransitionUnhealthy (0.00s)
    --- PASS: TestReconcile/SuccessfulRevisionExistsNeedGC (0.00s)
    --- PASS: TestReconcile/ErrListRevisions (0.00s)
=== RUN   TestPackageRevisioner
=== RUN   TestPackageRevisioner/SuccessfulPullNever
=== RUN   TestPackageRevisioner/SuccessfulPullIfNotPresentSameSource
=== RUN   TestPackageRevisioner/ErrParseRef
=== RUN   TestPackageRevisioner/ErrBadFetch
--- PASS: TestPackageRevisioner (0.00s)
    --- PASS: TestPackageRevisioner/SuccessfulPullNever (0.00s)
    --- PASS: TestPackageRevisioner/SuccessfulPullIfNotPresentSameSource (0.00s)
    --- PASS: TestPackageRevisioner/ErrParseRef (0.00s)
    --- PASS: TestPackageRevisioner/ErrBadFetch (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/controller/pkg/manager	0.014s
=== RUN   TestReconcile
=== RUN   TestReconcile/LockNotFound
=== RUN   TestReconcile/ErrGetLock
=== RUN   TestReconcile/ErrAddFinalizer
=== RUN   TestReconcile/ErrInitDag
=== RUN   TestReconcile/SuccessfulNoMissing
=== RUN   TestReconcile/ErrorNoValidVersion
=== RUN   TestReconcile/SuccessfulCreateMissingDependency
=== RUN   TestReconcile/ErrRemoveFinalizer
=== RUN   TestReconcile/SuccessfulEmptyList
=== RUN   TestReconcile/ErrSortDag
=== RUN   TestReconcile/ErrorInvalidDependency
=== RUN   TestReconcile/ErrorFetchTags
=== RUN   TestReconcile/ErrorCreateMissingDependency
--- PASS: TestReconcile (0.00s)
    --- PASS: TestReconcile/LockNotFound (0.00s)
    --- PASS: TestReconcile/ErrGetLock (0.00s)
    --- PASS: TestReconcile/ErrAddFinalizer (0.00s)
    --- PASS: TestReconcile/ErrInitDag (0.00s)
    --- PASS: TestReconcile/SuccessfulNoMissing (0.00s)
    --- PASS: TestReconcile/ErrorNoValidVersion (0.00s)
    --- PASS: TestReconcile/SuccessfulCreateMissingDependency (0.00s)
    --- PASS: TestReconcile/ErrRemoveFinalizer (0.00s)
    --- PASS: TestReconcile/SuccessfulEmptyList (0.00s)
    --- PASS: TestReconcile/ErrSortDag (0.00s)
    --- PASS: TestReconcile/ErrorInvalidDependency (0.00s)
    --- PASS: TestReconcile/ErrorFetchTags (0.00s)
    --- PASS: TestReconcile/ErrorCreateMissingDependency (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/controller/pkg/resolver	0.013s
=== RUN   TestResolve
=== RUN   TestResolve/ErrNotMeta
=== RUN   TestResolve/ErrGetLock
=== RUN   TestResolve/ErrCreateLock
=== RUN   TestResolve/ErrBuildDag
=== RUN   TestResolve/SuccessfulInactiveAlreadyRemoved
=== RUN   TestResolve/SuccessfulSelfExistValidDependencies
=== RUN   TestResolve/SuccessfulInactiveNoLock
=== RUN   TestResolve/SuccessfulInactiveExists
=== RUN   TestResolve/ErrorRemoveInactiveFromLock
=== RUN   TestResolve/SuccessfulSelfExistNoDependencies
=== RUN   TestResolve/ErrorSelfNotExistMissingDirectDependencies
=== RUN   TestResolve/ErrorSelfExistMissingDependencies
=== RUN   TestResolve/ErrorSelfExistInvalidDependencies
--- PASS: TestResolve (0.00s)
    --- PASS: TestResolve/ErrNotMeta (0.00s)
    --- PASS: TestResolve/ErrGetLock (0.00s)
    --- PASS: TestResolve/ErrCreateLock (0.00s)
    --- PASS: TestResolve/ErrBuildDag (0.00s)
    --- PASS: TestResolve/SuccessfulInactiveAlreadyRemoved (0.00s)
    --- PASS: TestResolve/SuccessfulSelfExistValidDependencies (0.00s)
    --- PASS: TestResolve/SuccessfulInactiveNoLock (0.00s)
    --- PASS: TestResolve/SuccessfulInactiveExists (0.00s)
    --- PASS: TestResolve/ErrorRemoveInactiveFromLock (0.00s)
    --- PASS: TestResolve/SuccessfulSelfExistNoDependencies (0.00s)
    --- PASS: TestResolve/ErrorSelfNotExistMissingDirectDependencies (0.00s)
    --- PASS: TestResolve/ErrorSelfExistMissingDependencies (0.00s)
    --- PASS: TestResolve/ErrorSelfExistInvalidDependencies (0.00s)
=== RUN   TestBuildProviderDeployment
=== RUN   TestBuildProviderDeployment/ImgNoCCWithWebhookTLS
=== RUN   TestBuildProviderDeployment/ImgNoCC
=== RUN   TestBuildProviderDeployment/ImgCC
=== RUN   TestBuildProviderDeployment/NoImgNoCC
--- PASS: TestBuildProviderDeployment (0.00s)
    --- PASS: TestBuildProviderDeployment/ImgNoCCWithWebhookTLS (0.00s)
    --- PASS: TestBuildProviderDeployment/ImgNoCC (0.00s)
    --- PASS: TestBuildProviderDeployment/ImgCC (0.00s)
    --- PASS: TestBuildProviderDeployment/NoImgNoCC (0.00s)
=== RUN   TestAPIEstablisherEstablish
=== RUN   TestAPIEstablisherEstablish/SuccessfulNotExistsEstablishControl
=== RUN   TestAPIEstablisherEstablish/SuccessfulNotExistsEstablishControlWebhookEnabled
=== RUN   TestAPIEstablisherEstablish/SuccessfulExistsEstablishOwnership
=== RUN   TestAPIEstablisherEstablish/SuccessfulNotExistsDoNotCreate
=== RUN   TestAPIEstablisherEstablish/FailedCreationWebhookDisabledConversionRequested
=== RUN   TestAPIEstablisherEstablish/FailedEmptyWebhookTLSSecret
=== RUN   TestAPIEstablisherEstablish/SuccessfulExistsEstablishControl
=== RUN   TestAPIEstablisherEstablish/FailedCreate
=== RUN   TestAPIEstablisherEstablish/FailedUpdate
=== RUN   TestAPIEstablisherEstablish/FailedGettingWebhookTLSSecret
--- PASS: TestAPIEstablisherEstablish (0.00s)
    --- PASS: TestAPIEstablisherEstablish/SuccessfulNotExistsEstablishControl (0.00s)
    --- PASS: TestAPIEstablisherEstablish/SuccessfulNotExistsEstablishControlWebhookEnabled (0.00s)
    --- PASS: TestAPIEstablisherEstablish/SuccessfulExistsEstablishOwnership (0.00s)
    --- PASS: TestAPIEstablisherEstablish/SuccessfulNotExistsDoNotCreate (0.00s)
    --- PASS: TestAPIEstablisherEstablish/FailedCreationWebhookDisabledConversionRequested (0.00s)
    --- PASS: TestAPIEstablisherEstablish/FailedEmptyWebhookTLSSecret (0.00s)
    --- PASS: TestAPIEstablisherEstablish/SuccessfulExistsEstablishControl (0.00s)
    --- PASS: TestAPIEstablisherEstablish/FailedCreate (0.00s)
    --- PASS: TestAPIEstablisherEstablish/FailedUpdate (0.00s)
    --- PASS: TestAPIEstablisherEstablish/FailedGettingWebhookTLSSecret (0.00s)
=== RUN   TestGetPackageOwnerReference
=== RUN   TestGetPackageOwnerReference/Found
=== RUN   TestGetPackageOwnerReference/NotFound
--- PASS: TestGetPackageOwnerReference (0.00s)
    --- PASS: TestGetPackageOwnerReference/Found (0.00s)
    --- PASS: TestGetPackageOwnerReference/NotFound (0.00s)
=== RUN   TestHookPre
=== RUN   TestHookPre/ProviderActive
=== RUN   TestHookPre/Configuration
=== RUN   TestHookPre/ErrProviderDeleteDeployment
=== RUN   TestHookPre/ErrProviderDeleteSA
=== RUN   TestHookPre/SuccessfulProviderDelete
=== RUN   TestHookPre/ErrNotProvider
=== RUN   TestHookPre/ErrNotProviderRevision
--- PASS: TestHookPre (0.00s)
    --- PASS: TestHookPre/ProviderActive (0.00s)
    --- PASS: TestHookPre/Configuration (0.00s)
    --- PASS: TestHookPre/ErrProviderDeleteDeployment (0.00s)
    --- PASS: TestHookPre/ErrProviderDeleteSA (0.00s)
    --- PASS: TestHookPre/SuccessfulProviderDelete (0.00s)
    --- PASS: TestHookPre/ErrNotProvider (0.00s)
    --- PASS: TestHookPre/ErrNotProviderRevision (0.00s)
=== RUN   TestHookPost
=== RUN   TestHookPost/ProviderInactive
=== RUN   TestHookPost/ErrProviderApplySA
=== RUN   TestHookPost/ErrProviderGetControllerConfigDeployment
=== RUN   TestHookPost/ErrProviderApplyDeployment
=== RUN   TestHookPost/ErrProviderUnavailableDeployment
=== RUN   TestHookPost/SuccessfulProviderApply
=== RUN   TestHookPost/ErrNotProvider
--- PASS: TestHookPost (0.00s)
    --- PASS: TestHookPost/ProviderInactive (0.00s)
    --- PASS: TestHookPost/ErrProviderApplySA (0.00s)
    --- PASS: TestHookPost/ErrProviderGetControllerConfigDeployment (0.00s)
    --- PASS: TestHookPost/ErrProviderApplyDeployment (0.00s)
    --- PASS: TestHookPost/ErrProviderUnavailableDeployment (0.00s)
    --- PASS: TestHookPost/SuccessfulProviderApply (0.00s)
    --- PASS: TestHookPost/ErrNotProvider (0.00s)
=== RUN   TestImageBackend
=== RUN   TestImageBackend/ErrEmptyImage
=== RUN   TestImageBackend/ErrFetchPackage
=== RUN   TestImageBackend/SuccessFetchPackage
=== RUN   TestImageBackend/ErrBadReference
=== RUN   TestImageBackend/ErrMultipleAnnotatedLayers
=== RUN   TestImageBackend/ErrFetchedBadPackage
--- PASS: TestImageBackend (0.00s)
    --- PASS: TestImageBackend/ErrEmptyImage (0.00s)
    --- PASS: TestImageBackend/ErrFetchPackage (0.00s)
    --- PASS: TestImageBackend/SuccessFetchPackage (0.00s)
    --- PASS: TestImageBackend/ErrBadReference (0.00s)
    --- PASS: TestImageBackend/ErrMultipleAnnotatedLayers (0.00s)
    --- PASS: TestImageBackend/ErrFetchedBadPackage (0.00s)
=== RUN   TestReconcile
=== RUN   TestReconcile/PackageRevisionNotFound
=== RUN   TestReconcile/ErrUpdateAnnotations
=== RUN   TestReconcile/ErrParseFromImage
=== RUN   TestReconcile/ErrResolveDependencies
=== RUN   TestReconcile/ErrPreHook
=== RUN   TestReconcile/ErrAddFinalizer
=== RUN   TestReconcile/ErrGetFromCacheSuccessfulDelete
=== RUN   TestReconcile/ErrParseFromCache
=== RUN   TestReconcile/SuccessfulActiveRevision
=== RUN   TestReconcile/ErrEstablishActiveRevision
=== RUN   TestReconcile/ErrEstablishInactiveRevision
=== RUN   TestReconcile/SuccessfulDeleted
=== RUN   TestReconcile/ErrGetFromCacheFailedDelete
=== RUN   TestReconcile/ErrOneMeta
=== RUN   TestReconcile/ErrPostHook
=== RUN   TestReconcile/ErrParseFromImageFailedCache
=== RUN   TestReconcile/SuccessfulActiveRevisionIgnoreConstraints
=== RUN   TestReconcile/SuccessfulInactiveRevision
=== RUN   TestReconcile/ErrCrossplaneConstraints
=== RUN   TestReconcile/ErrInitParserBackend
=== RUN   TestReconcile/ErrGetPackageRevision
=== RUN   TestReconcile/ErrDeletedClearCache
=== RUN   TestReconcile/ErrDeletedRemoveSelf
=== RUN   TestReconcile/ErrDeletedRemoveFinalizer
=== RUN   TestReconcile/ErrNotInCachePullPolicyNever
=== RUN   TestReconcile/ErrParseFromImageFailedCacheFailedDelete
=== RUN   TestReconcile/ErrLint
--- PASS: TestReconcile (0.00s)
    --- PASS: TestReconcile/PackageRevisionNotFound (0.00s)
    --- PASS: TestReconcile/ErrUpdateAnnotations (0.00s)
    --- PASS: TestReconcile/ErrParseFromImage (0.00s)
    --- PASS: TestReconcile/ErrResolveDependencies (0.00s)
    --- PASS: TestReconcile/ErrPreHook (0.00s)
    --- PASS: TestReconcile/ErrAddFinalizer (0.00s)
    --- PASS: TestReconcile/ErrGetFromCacheSuccessfulDelete (0.00s)
    --- PASS: TestReconcile/ErrParseFromCache (0.00s)
    --- PASS: TestReconcile/SuccessfulActiveRevision (0.00s)
    --- PASS: TestReconcile/ErrEstablishActiveRevision (0.00s)
    --- PASS: TestReconcile/ErrEstablishInactiveRevision (0.00s)
    --- PASS: TestReconcile/SuccessfulDeleted (0.00s)
    --- PASS: TestReconcile/ErrGetFromCacheFailedDelete (0.00s)
    --- PASS: TestReconcile/ErrOneMeta (0.00s)
    --- PASS: TestReconcile/ErrPostHook (0.00s)
    --- PASS: TestReconcile/ErrParseFromImageFailedCache (0.00s)
    --- PASS: TestReconcile/SuccessfulActiveRevisionIgnoreConstraints (0.00s)
    --- PASS: TestReconcile/SuccessfulInactiveRevision (0.00s)
    --- PASS: TestReconcile/ErrCrossplaneConstraints (0.00s)
    --- PASS: TestReconcile/ErrInitParserBackend (0.00s)
    --- PASS: TestReconcile/ErrGetPackageRevision (0.00s)
    --- PASS: TestReconcile/ErrDeletedClearCache (0.00s)
    --- PASS: TestReconcile/ErrDeletedRemoveSelf (0.00s)
    --- PASS: TestReconcile/ErrDeletedRemoveFinalizer (0.00s)
    --- PASS: TestReconcile/ErrNotInCachePullPolicyNever (0.00s)
    --- PASS: TestReconcile/ErrParseFromImageFailedCacheFailedDelete (0.00s)
    --- PASS: TestReconcile/ErrLint (0.00s)
=== RUN   TestAdd
--- PASS: TestAdd (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/controller/pkg/revision	0.021s
?   	github.com/crossplane/crossplane/internal/controller/rbac	[no test files]
?   	github.com/crossplane/crossplane/internal/controller/rbac/controller	[no test files]
=== RUN   TestReconcile
=== RUN   TestReconcile/CompositeResourceDefinitionDeleted
=== RUN   TestReconcile/ApplyClusterRoleError
=== RUN   TestReconcile/SuccessfulNoOp
=== RUN   TestReconcile/SuccessfulApply
=== RUN   TestReconcile/CompositeResourceDefinitionNotFound
=== RUN   TestReconcile/GetCompositeResourceDefinitionError
--- PASS: TestReconcile (0.00s)
    --- PASS: TestReconcile/CompositeResourceDefinitionDeleted (0.00s)
    --- PASS: TestReconcile/ApplyClusterRoleError (0.00s)
    --- PASS: TestReconcile/SuccessfulNoOp (0.00s)
    --- PASS: TestReconcile/SuccessfulApply (0.00s)
    --- PASS: TestReconcile/CompositeResourceDefinitionNotFound (0.00s)
    --- PASS: TestReconcile/GetCompositeResourceDefinitionError (0.00s)
=== RUN   TestClusterRolesDiffer
=== RUN   TestClusterRolesDiffer/RulesDiffer
=== RUN   TestClusterRolesDiffer/Equal
=== RUN   TestClusterRolesDiffer/LabelsDiffer
--- PASS: TestClusterRolesDiffer (0.00s)
    --- PASS: TestClusterRolesDiffer/RulesDiffer (0.00s)
    --- PASS: TestClusterRolesDiffer/Equal (0.00s)
    --- PASS: TestClusterRolesDiffer/LabelsDiffer (0.00s)
=== RUN   TestRenderClusterRoles
=== RUN   TestRenderClusterRoles/DoesNotOfferClaim
=== RUN   TestRenderClusterRoles/OffersClaim
--- PASS: TestRenderClusterRoles (0.00s)
    --- PASS: TestRenderClusterRoles/DoesNotOfferClaim (0.00s)
    --- PASS: TestRenderClusterRoles/OffersClaim (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/controller/rbac/definition	0.015s
=== RUN   TestReconcile
=== RUN   TestReconcile/SuccessfulApply
=== RUN   TestReconcile/NamespaceNotFound
=== RUN   TestReconcile/GetNamespaceError
=== RUN   TestReconcile/NamespaceDeleted
=== RUN   TestReconcile/ListClusterRolesError
=== RUN   TestReconcile/ApplyRoleError
=== RUN   TestReconcile/SuccessfulNoOp
--- PASS: TestReconcile (0.00s)
    --- PASS: TestReconcile/SuccessfulApply (0.00s)
    --- PASS: TestReconcile/NamespaceNotFound (0.00s)
    --- PASS: TestReconcile/GetNamespaceError (0.00s)
    --- PASS: TestReconcile/NamespaceDeleted (0.00s)
    --- PASS: TestReconcile/ListClusterRolesError (0.00s)
    --- PASS: TestReconcile/ApplyRoleError (0.00s)
    --- PASS: TestReconcile/SuccessfulNoOp (0.00s)
=== RUN   TestRolesDiffer
=== RUN   TestRolesDiffer/Equal
=== RUN   TestRolesDiffer/AnnotationsDiffer
=== RUN   TestRolesDiffer/RulesDiffer
--- PASS: TestRolesDiffer (0.00s)
    --- PASS: TestRolesDiffer/Equal (0.00s)
    --- PASS: TestRolesDiffer/AnnotationsDiffer (0.00s)
    --- PASS: TestRolesDiffer/RulesDiffer (0.00s)
=== RUN   TestCRSelector
=== RUN   TestCRSelector/IsBaseRole
=== RUN   TestCRSelector/IsAcceptedXRDRole
=== RUN   TestCRSelector/IsUnknownXRDRole
=== RUN   TestCRSelector/MissingAggregationLabel
=== RUN   TestCRSelector/OnlyAggregationLabel
--- PASS: TestCRSelector (0.00s)
    --- PASS: TestCRSelector/IsBaseRole (0.00s)
    --- PASS: TestCRSelector/IsAcceptedXRDRole (0.00s)
    --- PASS: TestCRSelector/IsUnknownXRDRole (0.00s)
    --- PASS: TestCRSelector/MissingAggregationLabel (0.00s)
    --- PASS: TestCRSelector/OnlyAggregationLabel (0.00s)
=== RUN   TestRenderClusterRoles
=== RUN   TestRenderClusterRoles/APlainOldNamespace
=== RUN   TestRenderClusterRoles/ANamespaceThatAcceptsClaims
--- PASS: TestRenderClusterRoles (0.00s)
    --- PASS: TestRenderClusterRoles/APlainOldNamespace (0.00s)
    --- PASS: TestRenderClusterRoles/ANamespaceThatAcceptsClaims (0.00s)
=== RUN   TestAdd
--- PASS: TestAdd (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/controller/rbac/namespace	0.013s
=== RUN   TestReconcile
=== RUN   TestReconcile/SuccessfulApply
=== RUN   TestReconcile/ProviderRevisionNotFound
=== RUN   TestReconcile/GetProviderRevisionError
=== RUN   TestReconcile/ProviderRevisionDeleted
=== RUN   TestReconcile/ListServiceAccountsError
=== RUN   TestReconcile/ApplyClusterRoleBindingError
--- PASS: TestReconcile (0.00s)
    --- PASS: TestReconcile/SuccessfulApply (0.00s)
    --- PASS: TestReconcile/ProviderRevisionNotFound (0.00s)
    --- PASS: TestReconcile/GetProviderRevisionError (0.00s)
    --- PASS: TestReconcile/ProviderRevisionDeleted (0.00s)
    --- PASS: TestReconcile/ListServiceAccountsError (0.00s)
    --- PASS: TestReconcile/ApplyClusterRoleBindingError (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/controller/rbac/provider/binding	0.012s
=== RUN   TestReconcile
=== RUN   TestReconcile/ProviderRevisionNotFound
=== RUN   TestReconcile/GetProviderRevisionError
=== RUN   TestReconcile/ProviderRevisionDeleted
=== RUN   TestReconcile/ValidatePermissionRequestsError
=== RUN   TestReconcile/SuccessfulNoOp
=== RUN   TestReconcile/SuccessfulApply
=== RUN   TestReconcile/ListCRDsError
=== RUN   TestReconcile/PermissionRequestRejected
=== RUN   TestReconcile/ApplyClusterRoleError
--- PASS: TestReconcile (0.00s)
    --- PASS: TestReconcile/ProviderRevisionNotFound (0.00s)
    --- PASS: TestReconcile/GetProviderRevisionError (0.00s)
    --- PASS: TestReconcile/ProviderRevisionDeleted (0.00s)
    --- PASS: TestReconcile/ValidatePermissionRequestsError (0.00s)
    --- PASS: TestReconcile/SuccessfulNoOp (0.00s)
    --- PASS: TestReconcile/SuccessfulApply (0.00s)
    --- PASS: TestReconcile/ListCRDsError (0.00s)
    --- PASS: TestReconcile/PermissionRequestRejected (0.00s)
    --- PASS: TestReconcile/ApplyClusterRoleError (0.00s)
=== RUN   TestClusterRolesDiffer
=== RUN   TestClusterRolesDiffer/Equal
=== RUN   TestClusterRolesDiffer/LabelsDiffer
=== RUN   TestClusterRolesDiffer/RulesDiffer
--- PASS: TestClusterRolesDiffer (0.00s)
    --- PASS: TestClusterRolesDiffer/Equal (0.00s)
    --- PASS: TestClusterRolesDiffer/LabelsDiffer (0.00s)
    --- PASS: TestClusterRolesDiffer/RulesDiffer (0.00s)
=== RUN   TestAllowed
=== RUN   TestAllowed/SimpleURL
=== RUN   TestAllowed/MissingVerb
=== RUN   TestAllowed/SimpleResource
=== RUN   TestAllowed/WildcardResource
--- PASS: TestAllowed (0.00s)
    --- PASS: TestAllowed/SimpleURL (0.00s)
    --- PASS: TestAllowed/MissingVerb (0.00s)
    --- PASS: TestAllowed/SimpleResource (0.00s)
    --- PASS: TestAllowed/WildcardResource (0.00s)
=== RUN   TestExpand
=== RUN   TestExpand/SimpleURL
=== RUN   TestExpand/SimpleResource
=== RUN   TestExpand/ComplexResource
=== RUN   TestExpand/Combo
--- PASS: TestExpand (0.00s)
    --- PASS: TestExpand/SimpleURL (0.00s)
    --- PASS: TestExpand/SimpleResource (0.00s)
    --- PASS: TestExpand/ComplexResource (0.00s)
    --- PASS: TestExpand/Combo (0.00s)
=== RUN   TestValidatePermissionRequests
=== RUN   TestValidatePermissionRequests/GetClusterRoleError
=== RUN   TestValidatePermissionRequests/SuccessfulReject
--- PASS: TestValidatePermissionRequests (0.00s)
    --- PASS: TestValidatePermissionRequests/GetClusterRoleError (0.00s)
    --- PASS: TestValidatePermissionRequests/SuccessfulReject (0.00s)
=== RUN   TestRenderClusterRoles
=== RUN   TestRenderClusterRoles/MergeGroups
--- PASS: TestRenderClusterRoles (0.00s)
    --- PASS: TestRenderClusterRoles/MergeGroups (0.00s)
=== RUN   TestAdd
--- PASS: TestAdd (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/controller/rbac/provider/roles	0.013s
=== RUN   TestSort
=== RUN   TestSort/Imply
=== RUN   TestSort/SimpleTree
=== RUN   TestSort/ComplexTree
=== RUN   TestSort/Cycle
--- PASS: TestSort (0.00s)
    --- PASS: TestSort/Imply (0.00s)
    --- PASS: TestSort/SimpleTree (0.00s)
    --- PASS: TestSort/ComplexTree (0.00s)
    --- PASS: TestSort/Cycle (0.00s)
=== RUN   TestDag
--- PASS: TestDag (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/dag	0.002s
?   	github.com/crossplane/crossplane/internal/dag/fake	[no test files]
?   	github.com/crossplane/crossplane/internal/features	[no test files]
=== RUN   TestCoreCRDs
=== RUN   TestCoreCRDs/CRDWithConversionWithoutTLSSecret
=== RUN   TestCoreCRDs/SuccessWithTLSSecret
=== RUN   TestCoreCRDs/TLSSecretGivenButNotFound
=== RUN   TestCoreCRDs/SuccessWithoutTLSSecret
--- PASS: TestCoreCRDs (0.00s)
    --- PASS: TestCoreCRDs/CRDWithConversionWithoutTLSSecret (0.00s)
    --- PASS: TestCoreCRDs/SuccessWithTLSSecret (0.00s)
    --- PASS: TestCoreCRDs/TLSSecretGivenButNotFound (0.00s)
    --- PASS: TestCoreCRDs/SuccessWithoutTLSSecret (0.00s)
=== RUN   TestInstaller
=== RUN   TestInstaller/SuccessAlreadyExistsSameVersion
=== RUN   TestInstaller/SuccessAlreadyExistsDifferentNameDifferentVersion
=== RUN   TestInstaller/SuccessCreateNoneExist
=== RUN   TestInstaller/SuccessCreateSomeExist
=== RUN   TestInstaller/SuccessOneConfiguration
=== RUN   TestInstaller/FailApply
--- PASS: TestInstaller (0.00s)
    --- PASS: TestInstaller/SuccessAlreadyExistsSameVersion (0.00s)
    --- PASS: TestInstaller/SuccessAlreadyExistsDifferentNameDifferentVersion (0.00s)
    --- PASS: TestInstaller/SuccessCreateNoneExist (0.00s)
    --- PASS: TestInstaller/SuccessCreateSomeExist (0.00s)
    --- PASS: TestInstaller/SuccessOneConfiguration (0.00s)
    --- PASS: TestInstaller/FailApply (0.00s)
=== RUN   TestLockObject
=== RUN   TestLockObject/FailApply
=== RUN   TestLockObject/SuccessAlreadyExists
--- PASS: TestLockObject (0.00s)
    --- PASS: TestLockObject/FailApply (0.00s)
    --- PASS: TestLockObject/SuccessAlreadyExists (0.00s)
=== RUN   TestStoreConfigObject
=== RUN   TestStoreConfigObject/FailedToCreate
=== RUN   TestStoreConfigObject/SuccessCreated
=== RUN   TestStoreConfigObject/SuccessAlreadyExists
--- PASS: TestStoreConfigObject (0.00s)
    --- PASS: TestStoreConfigObject/FailedToCreate (0.00s)
    --- PASS: TestStoreConfigObject/SuccessCreated (0.00s)
    --- PASS: TestStoreConfigObject/SuccessAlreadyExists (0.00s)
=== RUN   TestCRDWaiter
=== RUN   TestCRDWaiter/SuccessFirstRun
=== RUN   TestCRDWaiter/Timeout
=== RUN   TestCRDWaiter/FailGet
--- PASS: TestCRDWaiter (1.00s)
    --- PASS: TestCRDWaiter/SuccessFirstRun (1.00s)
    --- PASS: TestCRDWaiter/Timeout (0.00s)
    --- PASS: TestCRDWaiter/FailGet (0.00s)
=== RUN   TestWebhookConfigurations
=== RUN   TestWebhookConfigurations/Success
=== RUN   TestWebhookConfigurations/CertNotFound
=== RUN   TestWebhookConfigurations/CertKeyEmpty
=== RUN   TestWebhookConfigurations/ApplyFailed
=== RUN   TestWebhookConfigurations/NonWebhookType
--- PASS: TestWebhookConfigurations (0.00s)
    --- PASS: TestWebhookConfigurations/Success (0.00s)
    --- PASS: TestWebhookConfigurations/CertNotFound (0.00s)
    --- PASS: TestWebhookConfigurations/CertKeyEmpty (0.00s)
    --- PASS: TestWebhookConfigurations/ApplyFailed (0.00s)
    --- PASS: TestWebhookConfigurations/NonWebhookType (0.00s)
=== RUN   TestRun
=== RUN   TestRun/SecretNotFound
=== RUN   TestRun/CertificateCannotBeGenerated
=== RUN   TestRun/UpdateFailed
=== RUN   TestRun/Success
=== RUN   TestRun/SuccessSecretAlreadyFilled
--- PASS: TestRun (0.00s)
    --- PASS: TestRun/SecretNotFound (0.00s)
    --- PASS: TestRun/CertificateCannotBeGenerated (0.00s)
    --- PASS: TestRun/UpdateFailed (0.00s)
    --- PASS: TestRun/Success (0.00s)
    --- PASS: TestRun/SuccessSecretAlreadyFilled (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/initializer	1.023s
=== RUN   TestInRange
=== RUN   TestInRange/ValidInRange
=== RUN   TestInRange/ValidNotInRange
=== RUN   TestInRange/InvalidVersion
=== RUN   TestInRange/InvalidRange
--- PASS: TestInRange (0.00s)
    --- PASS: TestInRange/ValidInRange (0.00s)
    --- PASS: TestInRange/ValidNotInRange (0.00s)
    --- PASS: TestInRange/InvalidVersion (0.00s)
    --- PASS: TestInRange/InvalidRange (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/version	0.010s
?   	github.com/crossplane/crossplane/internal/version/fake	[no test files]
=== RUN   TestIsEstablished
=== RUN   TestIsEstablished/IsEstablished
=== RUN   TestIsEstablished/IsNotEstablished
--- PASS: TestIsEstablished (0.00s)
    --- PASS: TestIsEstablished/IsEstablished (0.00s)
    --- PASS: TestIsEstablished/IsNotEstablished (0.00s)
=== RUN   TestForCompositeResource
--- PASS: TestForCompositeResource (0.00s)
=== RUN   TestValidateClaimNames
=== RUN   TestValidateClaimNames/SingularConflict
=== RUN   TestValidateClaimNames/PluralConflict
=== RUN   TestValidateClaimNames/MissingClaimNames
=== RUN   TestValidateClaimNames/KindConflict
=== RUN   TestValidateClaimNames/ListKindConflict
--- PASS: TestValidateClaimNames (0.00s)
    --- PASS: TestValidateClaimNames/SingularConflict (0.00s)
    --- PASS: TestValidateClaimNames/PluralConflict (0.00s)
    --- PASS: TestValidateClaimNames/MissingClaimNames (0.00s)
    --- PASS: TestValidateClaimNames/KindConflict (0.00s)
    --- PASS: TestValidateClaimNames/ListKindConflict (0.00s)
=== RUN   TestForCompositeResourceClaim
--- PASS: TestForCompositeResourceClaim (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/xcrd	0.015s
=== RUN   TestBuild
=== RUN   TestBuild/ErrParse
=== RUN   TestBuild/ErrLint
=== RUN   TestBuild/Success
=== RUN   TestBuild/ErrInitBackend
--- PASS: TestBuild (0.00s)
    --- PASS: TestBuild/ErrParse (0.00s)
    --- PASS: TestBuild/ErrLint (0.00s)
    --- PASS: TestBuild/Success (0.00s)
    --- PASS: TestBuild/ErrInitBackend (0.00s)
=== RUN   TestHas
=== RUN   TestHas/Success
=== RUN   TestHas/ErrNotExist
=== RUN   TestHas/ErrIsDir
--- PASS: TestHas (0.00s)
    --- PASS: TestHas/Success (0.00s)
    --- PASS: TestHas/ErrNotExist (0.00s)
    --- PASS: TestHas/ErrIsDir (0.00s)
=== RUN   TestGet
=== RUN   TestGet/Success
=== RUN   TestGet/ErrNotGzip
=== RUN   TestGet/ErrNotExist
--- PASS: TestGet (0.00s)
    --- PASS: TestGet/Success (0.00s)
    --- PASS: TestGet/ErrNotGzip (0.00s)
    --- PASS: TestGet/ErrNotExist (0.00s)
=== RUN   TestStore
=== RUN   TestStore/Success
=== RUN   TestStore/ErrFailedCreate
--- PASS: TestStore (0.00s)
    --- PASS: TestStore/Success (0.00s)
    --- PASS: TestStore/ErrFailedCreate (0.00s)
=== RUN   TestDelete
=== RUN   TestDelete/Success
=== RUN   TestDelete/SuccessNotExist
=== RUN   TestDelete/ErrFailedDelete
--- PASS: TestDelete (0.00s)
    --- PASS: TestDelete/Success (0.00s)
    --- PASS: TestDelete/SuccessNotExist (0.00s)
    --- PASS: TestDelete/ErrFailedDelete (0.00s)
=== RUN   TestFindXpkgInDir
=== RUN   TestFindXpkgInDir/NoMatch
=== RUN   TestFindXpkgInDir/MultiMatch
=== RUN   TestFindXpkgInDir/NotExist
=== RUN   TestFindXpkgInDir/NotDir
=== RUN   TestFindXpkgInDir/Successful
--- PASS: TestFindXpkgInDir (0.00s)
    --- PASS: TestFindXpkgInDir/NoMatch (0.00s)
    --- PASS: TestFindXpkgInDir/MultiMatch (0.00s)
    --- PASS: TestFindXpkgInDir/NotExist (0.00s)
    --- PASS: TestFindXpkgInDir/NotDir (0.00s)
    --- PASS: TestFindXpkgInDir/Successful (0.00s)
=== RUN   TestOneMeta
=== RUN   TestOneMeta/ErrMultiMeta
=== RUN   TestOneMeta/Successful
=== RUN   TestOneMeta/ErrNoMeta
--- PASS: TestOneMeta (0.00s)
    --- PASS: TestOneMeta/ErrMultiMeta (0.00s)
    --- PASS: TestOneMeta/Successful (0.00s)
    --- PASS: TestOneMeta/ErrNoMeta (0.00s)
=== RUN   TestIsProvider
=== RUN   TestIsProvider/v1
=== RUN   TestIsProvider/ErrNotProvider
=== RUN   TestIsProvider/v1alpha1
--- PASS: TestIsProvider (0.00s)
    --- PASS: TestIsProvider/v1 (0.00s)
    --- PASS: TestIsProvider/ErrNotProvider (0.00s)
    --- PASS: TestIsProvider/v1alpha1 (0.00s)
=== RUN   TestIsConfiguration
=== RUN   TestIsConfiguration/v1
=== RUN   TestIsConfiguration/ErrNotConfiguration
=== RUN   TestIsConfiguration/v1alpha1
--- PASS: TestIsConfiguration (0.00s)
    --- PASS: TestIsConfiguration/v1 (0.00s)
    --- PASS: TestIsConfiguration/ErrNotConfiguration (0.00s)
    --- PASS: TestIsConfiguration/v1alpha1 (0.00s)
=== RUN   TestPackageCrossplaneCompatible
=== RUN   TestPackageCrossplaneCompatible/ErrOutsideConstraints
=== RUN   TestPackageCrossplaneCompatible/ErrNotMeta
=== RUN   TestPackageCrossplaneCompatible/Successful
=== RUN   TestPackageCrossplaneCompatible/SuccessfulNoConstraints
=== RUN   TestPackageCrossplaneCompatible/ErrInvalidConstraints
--- PASS: TestPackageCrossplaneCompatible (0.00s)
    --- PASS: TestPackageCrossplaneCompatible/ErrOutsideConstraints (0.00s)
    --- PASS: TestPackageCrossplaneCompatible/ErrNotMeta (0.00s)
    --- PASS: TestPackageCrossplaneCompatible/Successful (0.00s)
    --- PASS: TestPackageCrossplaneCompatible/SuccessfulNoConstraints (0.00s)
    --- PASS: TestPackageCrossplaneCompatible/ErrInvalidConstraints (0.00s)
=== RUN   TestPackageValidSemver
=== RUN   TestPackageValidSemver/Valid
=== RUN   TestPackageValidSemver/ErrInvalidConstraints
--- PASS: TestPackageValidSemver (0.00s)
    --- PASS: TestPackageValidSemver/Valid (0.00s)
    --- PASS: TestPackageValidSemver/ErrInvalidConstraints (0.00s)
=== RUN   TestIsCRD
=== RUN   TestIsCRD/v1beta1
=== RUN   TestIsCRD/v1
=== RUN   TestIsCRD/ErrNotCRD
--- PASS: TestIsCRD (0.00s)
    --- PASS: TestIsCRD/v1beta1 (0.00s)
    --- PASS: TestIsCRD/v1 (0.00s)
    --- PASS: TestIsCRD/ErrNotCRD (0.00s)
=== RUN   TestIsXRD
=== RUN   TestIsXRD/v1
=== RUN   TestIsXRD/ErrNotConfiguration
--- PASS: TestIsXRD (0.00s)
    --- PASS: TestIsXRD/v1 (0.00s)
    --- PASS: TestIsXRD/ErrNotConfiguration (0.00s)
=== RUN   TestIsComposition
=== RUN   TestIsComposition/v1
=== RUN   TestIsComposition/ErrNotComposition
--- PASS: TestIsComposition (0.00s)
    --- PASS: TestIsComposition/v1 (0.00s)
    --- PASS: TestIsComposition/ErrNotComposition (0.00s)
=== RUN   TestFriendlyID
=== RUN   TestFriendlyID/DigestIsName
=== RUN   TestFriendlyID/BothUnderLimit
=== RUN   TestFriendlyID/PackageOverLimit
=== RUN   TestFriendlyID/HashOverLimit
=== RUN   TestFriendlyID/BothOverLimit
=== RUN   TestFriendlyID/ReplacePeriod
--- PASS: TestFriendlyID (0.00s)
    --- PASS: TestFriendlyID/DigestIsName (0.00s)
    --- PASS: TestFriendlyID/BothUnderLimit (0.00s)
    --- PASS: TestFriendlyID/PackageOverLimit (0.00s)
    --- PASS: TestFriendlyID/HashOverLimit (0.00s)
    --- PASS: TestFriendlyID/BothOverLimit (0.00s)
    --- PASS: TestFriendlyID/ReplacePeriod (0.00s)
=== RUN   TestToDNSLabel
=== RUN   TestToDNSLabel/ReplaceAll
=== RUN   TestToDNSLabel/TrimTo63
=== RUN   TestToDNSLabel/TrimTo63MinusDashes
--- PASS: TestToDNSLabel (0.00s)
    --- PASS: TestToDNSLabel/ReplaceAll (0.00s)
    --- PASS: TestToDNSLabel/TrimTo63 (0.00s)
    --- PASS: TestToDNSLabel/TrimTo63MinusDashes (0.00s)
=== RUN   TestSourceFromReference
=== RUN   TestSourceFromReference/SuccessfulTagWithDocker
=== RUN   TestSourceFromReference/SuccessfulTagWithDockerIndex
=== RUN   TestSourceFromReference/SuccessfulTagWithRegistryDefaulting
=== RUN   TestSourceFromReference/SuccessfulDigestWithRegistryDefaulting
--- PASS: TestSourceFromReference (0.00s)
    --- PASS: TestSourceFromReference/SuccessfulTagWithDocker (0.00s)
    --- PASS: TestSourceFromReference/SuccessfulTagWithDockerIndex (0.00s)
    --- PASS: TestSourceFromReference/SuccessfulTagWithRegistryDefaulting (0.00s)
    --- PASS: TestSourceFromReference/SuccessfulDigestWithRegistryDefaulting (0.00s)
=== RUN   TestBuildPath
=== RUN   TestBuildPath/NoExtension
=== RUN   TestBuildPath/ReplaceExtensionName
=== RUN   TestBuildPath/ReplaceExtensionPath
--- PASS: TestBuildPath (0.00s)
    --- PASS: TestBuildPath/NoExtension (0.00s)
    --- PASS: TestBuildPath/ReplaceExtensionName (0.00s)
    --- PASS: TestBuildPath/ReplaceExtensionPath (0.00s)
=== RUN   TestTryConvert
=== RUN   TestTryConvert/NotConvertible
=== RUN   TestTryConvert/ErrNoConversion
=== RUN   TestTryConvert/SuccessfulConversion
--- PASS: TestTryConvert (0.00s)
    --- PASS: TestTryConvert/NotConvertible (0.00s)
    --- PASS: TestTryConvert/ErrNoConversion (0.00s)
    --- PASS: TestTryConvert/SuccessfulConversion (0.00s)
PASS
ok  	github.com/crossplane/crossplane/internal/xpkg	0.017s
?   	github.com/crossplane/crossplane/internal/xpkg/fake	[no test files]
