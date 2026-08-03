patching file src/test/java/run/halo/app/service/impl/PostCategoryServiceImplTest.java
patching file gradle.properties
patching file src/main/java/run/halo/app/controller/content/MainController.java
patching file src/main/java/run/halo/app/controller/content/model/PostModel.java
patching file src/main/java/run/halo/app/handler/file/QiniuOssFileHandler.java
patching file src/main/java/run/halo/app/repository/PostCategoryRepository.java
patching file src/main/java/run/halo/app/service/impl/AttachmentServiceImpl.java
patching file src/main/java/run/halo/app/service/impl/PostCategoryServiceImpl.java
To honour the JVM settings for this build a single-use Daemon process will be forked. See https://docs.gradle.org/7.4/userguide/gradle_daemon.html#sec:disabling_the_daemon.
Daemon will be stopped at the end of the build 
> Task :clean

> Task :compileJava
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: /home/halo/src/main/java/run/halo/app/factory/StringToEnumConverterFactory.java uses unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.

> Task :processResources
> Task :classes
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.

> Task :compileTestJava

> Task :processTestResources
> Task :testClasses

> Task :test

DisableOnConditionAspectTest > blockAccessTest() PASSED

DisableOnConditionAspectTest > ableAccessTest() PASSED

SensitiveConcealAspectTest > testAdmin() SKIPPED

SensitiveConcealAspectTest > testGuest() SKIPPED

AttributeConverterApplyTest > shouldAutoAppliedForAttributeConverter() PASSED

CacheStoreTest > expirationTest() PASSED

CacheStoreTest > putNullKeyTest() PASSED

CacheStoreTest > getNullTest() PASSED

CacheStoreTest > getByNullKeyTest() PASSED

CacheStoreTest > deleteTest() PASSED

CacheStoreTest > putNullValueTest() PASSED

InMemoryCacheStoreTest > toMapTest() PASSED

InMemoryCacheStoreTest > expirationTest() PASSED

InMemoryCacheStoreTest > putNullKeyTest() PASSED

InMemoryCacheStoreTest > getNullTest() PASSED

InMemoryCacheStoreTest > getByNullKeyTest() PASSED

InMemoryCacheStoreTest > deleteTest() PASSED

InMemoryCacheStoreTest > putNullValueTest() PASSED

LevelCacheStoreTest > corruptCacheStructureTest() PASSED

RedisCacheStoreTest > toMapTest() FAILED
    java.lang.RuntimeException at RedisCacheStoreTest.java:45

RedisCacheStoreTest > expirationTest() FAILED
    java.lang.RuntimeException at RedisCacheStoreTest.java:45

RedisCacheStoreTest > putNullKeyTest() FAILED
    java.lang.RuntimeException at RedisCacheStoreTest.java:45

RedisCacheStoreTest > getNullTest() FAILED
    java.lang.RuntimeException at RedisCacheStoreTest.java:45

RedisCacheStoreTest > getByNullKeyTest() FAILED
    java.lang.RuntimeException at RedisCacheStoreTest.java:45

RedisCacheStoreTest > deleteTest() FAILED
    java.lang.RuntimeException at RedisCacheStoreTest.java:45

RedisCacheStoreTest > putNullValueTest() FAILED
    java.lang.RuntimeException at RedisCacheStoreTest.java:45

AntPathMatcherTest > matchTest() PASSED

AdminControllerTest > sendResetPasswordCodeShouldOk() PASSED

AdminControllerTest > sendResetPasswordCodeShould4xxError() PASSED

AdminControllerTest > resetPasswordShouldOk() PASSED

AdminControllerTest > sendResetPasswordCodeShould4xxErrorToo() PASSED

AdminControllerTest > resetPasswordAndCodeFieldAbsentShouldReturn4xxError() PASSED

AdminControllerTest > resetPasswordAndEmailFieldAbsentShouldReturn4xxError() PASSED

AdminControllerTest > resetPasswordAndInsufficientPasswordLengthShouldReturn4xxError() PASSED

CategoryAuthenticationTest > buildCacheKeyTest() PASSED

CategoryAuthenticationTest > getSessionIdTest() PASSED

CategoryAuthenticationTest > isAuthenticated() PASSED

ContentAuthenticationManagerTest > authenticateCategoryTest() PASSED

FreeMarkerTest > testBlockRender() PASSED

FilePathDescriptorTest > otherName() PASSED

FilePathDescriptorTest > autoRenameWithPredicate() PASSED

FilePathDescriptorTest > nameSuffix() PASSED

FilePathDescriptorTest > autoRename() PASSED

FilePathDescriptorTest > build() PASSED

FilePathDescriptorTest > windowsSystem() PASSED

FilePathDescriptorTest > withoutExtension() PASSED

FilePathDescriptorTest > separator() PASSED

HuaweiObsSdkTest > shouldSetUpConnectionCorrectly() PASSED

YamlThemePropertyResolverTest > directResolveTest() PASSED

IndexPageRequestTest > indexPage() FAILED
    org.jsoup.HttpStatusException at IndexPageRequestTest.java:24

PostCommentApiTest > testCommentWithNullEmail() PASSED

PostCommentApiTest > testCommentWithInvalidEmail() PASSED

PostCommentApiTest > testCommentWithValidEmail() PASSED

PostRefreshStatusListenerTest > clearCategoryPasswordOfTopLevelTest() PASSED

MediaTypeTest > parseTest() PASSED

MediaTypeTest > includesTest() PASSED

MediaTypeTest > toStringTest() PASSED

InputConverterTest > subConvertToTest() PASSED

InputConverterTest > updateTest() PASSED

InputConverterTest > convertToTest() PASSED

OutputConverterTest > convertFromSubTest() PASSED

OutputConverterTest > convertFromTest() PASSED

AttachmentTypeTest > conversionTest() PASSED

DataTypeTest > typeOf() PASSED

InstallParamTest > createCheckTest() PASSED

PostParamTest > shouldServerSideRender() PASSED

PostParamTest > validationTest() PASSED

PostParamTest > validatePassword() PASSED

PostParamTest > shouldNotServerSideRenderTest() PASSED

PostParamTest > convertToTest() PASSED

PostCommentParamValidationTest > invalidEmailValidationTest() PASSED

PostCommentParamValidationTest > nullEmailValidationTest() PASSED

PropertyEnumTest > getValuePropertyMapTest() PASSED

ContentPatchLogRepositoryTest > findByPostIdAndVersion() PASSED

ContentPatchLogRepositoryTest > findFirstByPostIdOrderByVersionDesc() PASSED

ContentPatchLogRepositoryTest > findAllByPostId() PASSED

ContentPatchLogRepositoryTest > findFirstByPostIdAndStatusOrderByVersionDesc() PASSED

SheetRepositoryTest > listAllTest() PASSED

ThemeRepositoryImplTest > getActivatedThemeBySingleThread() PASSED

ThemeRepositoryImplTest > getActivatedThemeByMultiThread() PASSED

OneTimeTokenTest > insertAnOneTimeTokenTest() PASSED

OneTimeTokenTest > provideNonExistOneTimeTokenTest() PASSED

RecoveryServiceTest > getMigrationFileContent() PASSED

RecoveryServiceTest > resolveMigrationContent() PASSED

AttachmentServiceImplTest > convertToDtoWithChinese() PASSED

AttachmentServiceImplTest > convertToDtoWithFormerVersionFile() PASSED

AttachmentServiceImplTest > convertToDtoNormal() PASSED

AttachmentServiceImplTest > convertToDtoWithSpecialChar() PASSED

CategoryIntegrationTest > authenticationAfterRemove() PASSED

CategoryServiceTest > listToTree() PASSED

ClientOptionServiceImplTest > getByKeyTest() PASSED

ClientOptionServiceImplTest > listOptionsKeyTest() PASSED

ClientOptionServiceImplTest > listOptionsTest() PASSED

ContentPatchLogServiceImplTest > getPatchedContentById() PASSED

ContentPatchLogServiceImplTest > applyPatch() PASSED

ContentPatchLogServiceImplTest > generateDiff() PASSED

ContentPatchLogServiceImplTest > createOrUpdate() PASSED

HTMLWordCountTest > titleTest() PASSED

HTMLWordCountTest > tableTest() PASSED

HTMLWordCountTest > nullTest() PASSED

HTMLWordCountTest > fontTypeTest() PASSED

HTMLWordCountTest > hybridCharacterTest() PASSED

HTMLWordCountTest > emptyTest() PASSED

HTMLWordCountTest > englishTest() PASSED

HTMLWordCountTest > plainTextTest() PASSED

HTMLWordCountTest > pictureTest() PASSED

HTMLWordCountTest > htmlTest() PASSED

HTMLWordCountTest > moreComplexTest() PASSED

HTMLWordCountTest > complexTextTest() PASSED

HTMLWordCountTest > linkTest() PASSED

HTMLWordCountTest > englishCharacterTest() PASSED

HTMLWordCountTest > codeTypeTest() PASSED

HTMLWordCountTest > hybridTest() PASSED

OptionFilterTest > shouldFilterForBothOfThem() PASSED

OptionFilterTest > shouldFilterNothing() PASSED

OptionFilterTest > shouldFilterForConfiguredPrivateOptions() PASSED

OptionFilterTest > shouldFilterForConfiguredPrivateOptionsWithSpace() PASSED

OptionFilterTest > shouldFilterForDefaultPrivateOptions() PASSED

OptionServiceImplTest > getQiniuZ0ZoneTest() PASSED

OptionServiceImplTest > getQiniuAutoZoneTest() PASSED

OptionServiceImplTest > getQiniuZ2ZoneTest() PASSED

OptionServiceImplTest > getQiniuAs0ZoneTest() PASSED

OptionServiceImplTest > getQiniuAutoZoneOfNullOptionTest() PASSED

OptionServiceImplTest > getQiniuZ1ZoneTest() PASSED

OptionServiceImplTest > getQiniuNa0ZoneTest() PASSED

PostCategoryServiceImplTest > listPostByCategoryIdTest() PASSED

PostCategoryServiceImplTest > listPostBySlugIdAndStatusTest() PASSED

PostCategoryServiceImplTest > listPostByCategoryIdAndStatusTest() PASSED

PostCategoryServiceImplTest > listPostByCategoryIdAndStatusesTest() PASSED

PostCategoryServiceImplTest > listPostBySlugIdAndStatusesTest() PASSED

PostCommentServiceImplTest > nullEmailConvertToTest() PASSED

PostCommentServiceImplTest > nullEmailWithoutAuditCreatedByTest() PASSED

PostCommentServiceImplTest > nullEmailWithAuditCreatedByTest() PASSED

PostServiceImplTest > markdownImportTest() SKIPPED

PostServiceImplTest > getContent() SKIPPED

HaloMediaTypeTest > gitUrlCheckTest() PASSED

GitThemeFetcherTest > fetchTest() SKIPPED

ZipThemeFetcherTest > fetch() SKIPPED

BcryptTest > hashpwFailsWhenSaltSpecifiesTooFewRounds() PASSED

BcryptTest > hashpwFailsWhenSaltIsTooShort() PASSED

BcryptTest > decodingMustRequestMoreThanZeroBytes() PASSED

BcryptTest > equalsOnStringsIsCorrect() PASSED

BcryptTest > hashpwWorksWithOldRevision() PASSED

BcryptTest > emptyByteArrayCannotBeEncoded() PASSED

BcryptTest > testGensaltInt() PASSED

BcryptTest > testCheckpw_success() PASSED

BcryptTest > saltLengthIsChecked() PASSED

BcryptTest > decodingCharsOutsideAsciiGivesNoResults() PASSED

BcryptTest > testCheckpw_failure() PASSED

BcryptTest > genSaltGeneratesCorrectSaltPrefix() PASSED

BcryptTest > testGensalt() PASSED

BcryptTest > hashpwFailsWhenSaltSpecifiesTooManyRounds() PASSED

BcryptTest > testInternationalChars() PASSED

BcryptTest > genSaltFailsWithTooManyRounds() PASSED

BcryptTest > testCheckpwByteArray_success() PASSED

BcryptTest > testBase64EncodeSimpleByteArrays() PASSED

BcryptTest > testHashpwByteArray() PASSED

BcryptTest > testBase64EncodeDecode() PASSED

BcryptTest > hashpwFailsWhenSaltIsNull() PASSED

BcryptTest > genSaltFailsWithTooFewRounds() PASSED

BcryptTest > moreBytesThanInTheArrayCannotBeEncoded() PASSED

BcryptTest > testCheckpwByteArray_failure() PASSED

BcryptTest > roundsForDoesNotOverflow() PASSED

BcryptTest > testHashpw() PASSED

BcryptTest > cryptTest() PASSED

BcryptTest > decodingOnlyProvidesAvailableBytes() PASSED

BcryptTest > decodingStopsWithFirstInvalidCharacter() PASSED

BeanUtilsTest > transformFrom() PASSED

BeanUtilsTest > transformFromInBatch() PASSED

BeanUtilsTest > updateProperties() PASSED

DateTimeUtilsTest > plusTest() PASSED

DateTimeUtilsTest > parseTest() PASSED

DateTimeUtilsTest > toLocalDateTime() PASSED

DateTimeUtilsTest > other() PASSED

DateTimeUtilsTest > formatTest() PASSED

DateTimeUtilsTest > minusTest() PASSED

DateTimeUtilsTest > toInstantTest() PASSED

DateTimeUtilsTest > nowTest() PASSED

DateUtilsTest > testDayOfMonth() PASSED

DateUtilsTest > testMonth() PASSED

DateUtilsTest > testYear() PASSED

DateUtilsTest > testDateParse() PASSED

DirectoryAttackTest > compareDirectorySuccessfullyTest() PASSED

DirectoryAttackTest > getRealPathTest() PASSED

DirectoryAttackTest > compareDirectorySuccessfullyTest2() PASSED

DirectoryAttackTest > traversalTestWhenSuccess() PASSED

DirectoryAttackTest > compareDirectoryFailureTest() PASSED

DirectoryAttackTest > traversalTestWhenFailure() PASSED

FileUtilsTest > copyHiddenFolder() PASSED

FileUtilsTest > testRenameFile() PASSED

FileUtilsTest > findRootPathIgnoreTest() PASSED

FileUtilsTest > deleteFolder() PASSED

FileUtilsTest > dbFileReadTest() SKIPPED

FileUtilsTest > shouldThrowErrorIfNewNameIsInvalidWhenRenaming() PASSED

FileUtilsTest > convertInputStreamToString() PASSED

FileUtilsTest > tempFolderTest() PASSED

FileUtilsTest > testRenameFolder() PASSED

FileUtilsTest > testRenameRepeat() PASSED

FileUtilsTest > zipFolderTest() PASSED

FileUtilsTest > findRootPathWithLowerMaxDepth() PASSED

FileUtilsTest > findRootPathTest() PASSED

FilenameUtilsTest > filenameWithDotsWillBeSanitized() PASSED

FilenameUtilsTest > getExtension() PASSED

FilenameUtilsTest > fileNameWithReversedNameWillBeReplaced() PASSED

FilenameUtilsTest > getBasename() PASSED

FilenameUtilsTest > filenameLengthLimit() PASSED

FilenameUtilsTest > fileNameExtremelyInvalid() PASSED

FilenameUtilsTest > filenameMixTest() PASSED

FilenameUtilsTest > fileNameWithReservedCharsWillBeReplaced() PASSED

FootnoteTest > unusedFootnotesTest() PASSED

FootnoteTest > circularTest() PASSED

FootnoteTest > undefinedFootnotesTest() PASSED

FootnoteTest > notFootnoteTest() PASSED

FootnoteTest > nestedTest() PASSED

FootnoteTest > footnoteNumbersOrderTest() PASSED

FootnoteTest > duplicatedTest() PASSED

FootnoteTest > containOtherReferencesTest() PASSED

FootnoteTest > compoundTest() PASSED

GitTest > getAllBranchesWithInvalidURL() SKIPPED

GitTest > getAllBranchesTest() PASSED

GitTest > findTags() SKIPPED

GitTest > remoteAddTest() PASSED

GitTest > cloneTest() SKIPPED

GitTest > openFailureTest() PASSED

GitTest > statusSuccessfulTest() PASSED

GitTest > initTest() PASSED

GitTest > getAllBranchesFromRemote() SKIPPED

GitTest > mergeTwoLocalRepo() PASSED

GitTest > pullTest() SKIPPED

GitTest > getBranchesFromRemote() SKIPPED

HaloUtilsTest > collectionIsNotEmpty() PASSED

HaloUtilsTest > timeFormatTest() PASSED

HaloUtilsTest > desensitizeFailureTest() PASSED

HaloUtilsTest > pluralizeTest() PASSED

HaloUtilsTest > compositeHttpUrl() PASSED

HaloUtilsTest > desensitizeSuccessTest() PASSED

HaloUtilsTest > normalizeUrl() PASSED

HaloUtilsTest > pluralizeLabelExceptionTest() PASSED

HttpClientUtilsTest > resolveHttpProxyTest() PASSED

InetAddressTest > getMachineAddressTest() PASSED

JsonUtilsTest > longConvertTest() PASSED

LocalDateTimeTest > dateTimeToStringTest() PASSED

MarkdownUtilsTest > footNotesTest() PASSED

MarkdownUtilsTest > getFrontMatterYaml() PASSED

MarkdownUtilsTest > removeFrontMatter() PASSED

PathTest > getPathOfJarFileFailure() PASSED

PathsTest > startWithTest() PASSED

PathsTest > getTest() SKIPPED

ReflectionUtilsTest > getBaseCommentParamParameterizedTypeTest() PASSED

SlugUtilsTest > nullSlugTest() PASSED

SlugUtilsTest > slugTest() PASSED

SlugUtilsTest > makeSlugTest() PASSED

TimeUnitTest > convertTest() PASSED

TwoFactorAuthUtilsTest > checkTFACodeTest() PASSED

URITest > createURITest() PASSED

ValidationUtilsTest > validateObjectTest() PASSED

ValidationUtilsTest > validateListTest() PASSED

ValidationUtilsTest > emailValidateTest() PASSED

VersionTest > preReleaseVersionResolve() PASSED

VersionTest > compatibleTest() PASSED

VersionTest > preReleaseTagCompare() PASSED

VersionTest > invalidVersionResolve() PASSED

VersionTest > releaseVersionResolve() PASSED

VersionTest > isPreRelease() PASSED

VersionTest > unknownVersionTest() PASSED

VersionUtilTest > hasSameMajorAndMinorVersionTest() PASSED

YamlTest > readYamlTest() PASSED

YamlTest > convertYamlTest() PASSED

YamlTest > readAnotherYamlTest() PASSED
[2m2026-07-25 09:07:25.396[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-169][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-07-25 09:07:25.397[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-173][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-07-25 09:07:25.397[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-159][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo10315979512723446766]
[2m2026-07-25 09:07:25.397[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-170][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-07-25 09:07:25.397[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-161][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo8124175404981497861]
[2m2026-07-25 09:07:25.397[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[      Thread-38][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo17488690771547205495]
[2m2026-07-25 09:07:25.397[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-164][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo7287435115075317503]
[2m2026-07-25 09:07:25.398[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-160][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo357064364170808884]
[2m2026-07-25 09:07:25.398[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-162][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo17091875755704534582]
[2m2026-07-25 09:07:25.398[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-158][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo9365234261776195497]
[2m2026-07-25 09:07:25.397[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-157][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo16980602377481029848]
[2m2026-07-25 09:07:25.398[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-172][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-07-25 09:07:25.399[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-154][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo4453419337559039365]
[2m2026-07-25 09:07:25.399[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-171][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-07-25 09:07:25.399[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-172][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test15069955985905911894]
[2m2026-07-25 09:07:25.399[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-166][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-07-25 09:07:25.399[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-170][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test9603098121089431813]
[2m2026-07-25 09:07:25.399[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-173][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test13191548650057744026]
[2m2026-07-25 09:07:25.399[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-160][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo357064364170808884] successfully
[2m2026-07-25 09:07:25.399[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-166][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test11476253476605261243]
[2m2026-07-25 09:07:25.399[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-158][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo9365234261776195497] successfully
[2m2026-07-25 09:07:25.399[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-155][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo9046812475184466408]
[2m2026-07-25 09:07:25.399[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-159][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo10315979512723446766] successfully
[2m2026-07-25 09:07:25.399[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-163][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo3244967331419704156]
[2m2026-07-25 09:07:25.399[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-161][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo8124175404981497861] successfully
[2m2026-07-25 09:07:25.400[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[      Thread-38][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo17488690771547205495] successfully
[2m2026-07-25 09:07:25.400[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-157][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo16980602377481029848] successfully
[2m2026-07-25 09:07:25.400[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-162][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo17091875755704534582] successfully
[2m2026-07-25 09:07:25.400[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-164][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo7287435115075317503] successfully
[2m2026-07-25 09:07:25.400[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-156][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo10046131362042088563]
[2m2026-07-25 09:07:25.400[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-169][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test6484054258235993086]
[2m2026-07-25 09:07:25.400[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-165][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo7549475532845539915]
[2m2026-07-25 09:07:25.400[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-171][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test15547922513446375731]
[2m2026-07-25 09:07:25.401[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-170][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test9603098121089431813] successfully
[2m2026-07-25 09:07:25.401[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-172][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test15069955985905911894] successfully
[2m2026-07-25 09:07:25.401[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-163][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo3244967331419704156] successfully
[2m2026-07-25 09:07:25.401[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-154][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo4453419337559039365] successfully
[2m2026-07-25 09:07:25.401[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-165][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo7549475532845539915] successfully
[2m2026-07-25 09:07:25.401[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-155][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo9046812475184466408] successfully
[2m2026-07-25 09:07:25.401[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-156][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo10046131362042088563] successfully
[2m2026-07-25 09:07:25.401[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-169][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test6484054258235993086] successfully
[2m2026-07-25 09:07:25.401[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-171][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test15547922513446375731] successfully
[2m2026-07-25 09:07:25.402[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-166][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test11476253476605261243] successfully
[2m2026-07-25 09:07:25.402[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.AbstractConnector      [0;39m [2m:[0;39m Stopped ServerConnector@3ff26c9{HTTP/1.1, (http/1.1)}{0.0.0.0:0}
[2m2026-07-25 09:07:25.402[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36morg.eclipse.jetty.server.session        [0;39m [2m:[0;39m node0 Stopped scavenging
[2m2026-07-25 09:07:25.403[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.j.s.h.ContextHandler.application    [0;39m [2m:[0;39m Destroying Spring FrameworkServlet 'dispatcherServlet'
[2m2026-07-25 09:07:25.403[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.handler.ContextHandler [0;39m [2m:[0;39m Stopped o.s.b.w.e.j.JettyEmbeddedWebAppContext@c8293cb{application,/,[file:///tmp/jetty-docbase.0.1023684602169433060/, jar:file:/root/.gradle/caches/modules-2/files-2.1/io.springfox/springfox-swagger-ui/3.0.0/1e665fbe22148f7c36fa8a08e515a0047cd4390b/springfox-swagger-ui-3.0.0.jar!/META-INF/resources],STOPPED}
[2m2026-07-25 09:07:25.404[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[     Thread-173][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test13191548650057744026] successfully
[2m2026-07-25 09:07:25.408[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-07-25 09:07:25.409[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-1 - Shutdown initiated...
[2m2026-07-25 09:07:25.415[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-1 - Shutdown completed.
[2m2026-07-25 09:07:25.421[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-07-25 09:07:25.426[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-07-25 09:07:25.427[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-2 - Shutdown initiated...
[2m2026-07-25 09:07:25.427[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-2 - Shutdown completed.
[2m2026-07-25 09:07:25.440[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-07-25 09:07:25.440[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36m.SchemaDropperImpl$DelayedDropActionImpl[0;39m [2m:[0;39m HHH000477: Starting delayed evictData of schema as part of SessionFactory shut-down'
Hibernate: drop table if exists attachments CASCADE 
Hibernate: drop table if exists categories CASCADE 
Hibernate: drop table if exists city CASCADE 
Hibernate: drop table if exists comment_black_list CASCADE 
Hibernate: drop table if exists comments CASCADE 
Hibernate: drop table if exists content_patch_logs CASCADE 
Hibernate: drop table if exists contents CASCADE 
Hibernate: drop table if exists journals CASCADE 
Hibernate: drop table if exists links CASCADE 
Hibernate: drop table if exists logs CASCADE 
Hibernate: drop table if exists menus CASCADE 
Hibernate: drop table if exists metas CASCADE 
Hibernate: drop table if exists options CASCADE 
Hibernate: drop table if exists photos CASCADE 
Hibernate: drop table if exists post_categories CASCADE 
Hibernate: drop table if exists post_tags CASCADE 
Hibernate: drop table if exists posts CASCADE 
Hibernate: drop table if exists tags CASCADE 
Hibernate: drop table if exists theme_settings CASCADE 
Hibernate: drop table if exists users CASCADE 
[2m2026-07-25 09:07:25.444[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-3 - Shutdown initiated...
[2m2026-07-25 09:07:25.444[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-3 - Shutdown completed.
[2m2026-07-25 09:07:25.447[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.AbstractConnector      [0;39m [2m:[0;39m Stopped ServerConnector@71d6402d{HTTP/1.1, (http/1.1)}{0.0.0.0:0}
[2m2026-07-25 09:07:25.447[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36morg.eclipse.jetty.server.session        [0;39m [2m:[0;39m node0 Stopped scavenging
[2m2026-07-25 09:07:25.447[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.j.s.h.ContextHandler.application    [0;39m [2m:[0;39m Destroying Spring FrameworkServlet 'dispatcherServlet'
[2m2026-07-25 09:07:25.447[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.handler.ContextHandler [0;39m [2m:[0;39m Stopped o.s.b.w.e.j.JettyEmbeddedWebAppContext@18335587{application,/,[file:///tmp/jetty-docbase.0.35405193736970991/, jar:file:/root/.gradle/caches/modules-2/files-2.1/io.springfox/springfox-swagger-ui/3.0.0/1e665fbe22148f7c36fa8a08e515a0047cd4390b/springfox-swagger-ui-3.0.0.jar!/META-INF/resources],STOPPED}
[2m2026-07-25 09:07:25.451[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-07-25 09:07:25.451[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36m.SchemaDropperImpl$DelayedDropActionImpl[0;39m [2m:[0;39m HHH000477: Starting delayed evictData of schema as part of SessionFactory shut-down'
Hibernate: drop table if exists attachments CASCADE 
Hibernate: drop table if exists categories CASCADE 
Hibernate: drop table if exists city CASCADE 
Hibernate: drop table if exists comment_black_list CASCADE 
Hibernate: drop table if exists comments CASCADE 
Hibernate: drop table if exists content_patch_logs CASCADE 
Hibernate: drop table if exists contents CASCADE 
Hibernate: drop table if exists journals CASCADE 
Hibernate: drop table if exists links CASCADE 
Hibernate: drop table if exists logs CASCADE 
Hibernate: drop table if exists menus CASCADE 
Hibernate: drop table if exists metas CASCADE 
Hibernate: drop table if exists options CASCADE 
Hibernate: drop table if exists photos CASCADE 
Hibernate: drop table if exists post_categories CASCADE 
Hibernate: drop table if exists post_tags CASCADE 
Hibernate: drop table if exists posts CASCADE 
Hibernate: drop table if exists tags CASCADE 
Hibernate: drop table if exists theme_settings CASCADE 
Hibernate: drop table if exists users CASCADE 
[2m2026-07-25 09:07:25.453[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-7 - Shutdown initiated...
[2m2026-07-25 09:07:25.455[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-7 - Shutdown completed.
[2m2026-07-25 09:07:25.461[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-07-25 09:07:25.463[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.AbstractConnector      [0;39m [2m:[0;39m Stopped ServerConnector@1d708956{HTTP/1.1, (http/1.1)}{0.0.0.0:0}
[2m2026-07-25 09:07:25.464[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36morg.eclipse.jetty.server.session        [0;39m [2m:[0;39m node0 Stopped scavenging
[2m2026-07-25 09:07:25.464[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.j.s.h.ContextHandler.application    [0;39m [2m:[0;39m Destroying Spring FrameworkServlet 'dispatcherServlet'
[2m2026-07-25 09:07:25.464[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.handler.ContextHandler [0;39m [2m:[0;39m Stopped o.s.b.w.e.j.JettyEmbeddedWebAppContext@6f2b623d{application,/,[file:///tmp/jetty-docbase.0.4481253875892882372/, jar:file:/root/.gradle/caches/modules-2/files-2.1/io.springfox/springfox-swagger-ui/3.0.0/1e665fbe22148f7c36fa8a08e515a0047cd4390b/springfox-swagger-ui-3.0.0.jar!/META-INF/resources],STOPPED}
[2m2026-07-25 09:07:25.468[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-07-25 09:07:25.468[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36m.SchemaDropperImpl$DelayedDropActionImpl[0;39m [2m:[0;39m HHH000477: Starting delayed evictData of schema as part of SessionFactory shut-down'
Hibernate: drop table if exists attachments CASCADE 
Hibernate: drop table if exists categories CASCADE 
Hibernate: drop table if exists city CASCADE 
Hibernate: drop table if exists comment_black_list CASCADE 
Hibernate: drop table if exists comments CASCADE 
Hibernate: drop table if exists content_patch_logs CASCADE 
Hibernate: drop table if exists contents CASCADE 
Hibernate: drop table if exists journals CASCADE 
Hibernate: drop table if exists links CASCADE 
Hibernate: drop table if exists logs CASCADE 
Hibernate: drop table if exists menus CASCADE 
Hibernate: drop table if exists metas CASCADE 
Hibernate: drop table if exists options CASCADE 
Hibernate: drop table if exists photos CASCADE 
Hibernate: drop table if exists post_categories CASCADE 
Hibernate: drop table if exists post_tags CASCADE 
Hibernate: drop table if exists posts CASCADE 
Hibernate: drop table if exists tags CASCADE 
Hibernate: drop table if exists theme_settings CASCADE 
Hibernate: drop table if exists users CASCADE 
[2m2026-07-25 09:07:25.477[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-8 - Shutdown initiated...
[2m2026-07-25 09:07:25.480[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-8 - Shutdown completed.
[2m2026-07-25 09:07:25.489[0;39m [32m INFO[0;39m [35m821[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'

269 tests completed, 8 failed, 14 skipped

> Task :test FAILED

FAILURE: Build failed with an exception.

* What went wrong:
Execution failed for task ':test'.
> There were failing tests. See the report at: file:///home/halo/build/reports/tests/test/index.html

* Try:
> Run with --stacktrace option to get the stack trace.
6 actionable tasks: 6 executed
> Run with --info or --debug option to get more log output.
> Run with --scan to get full insights.

* Get more help at https://help.gradle.org

BUILD FAILED in 1m 36s
