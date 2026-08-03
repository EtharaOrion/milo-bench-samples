patching file src/test/java/run/halo/app/service/impl/PostCategoryServiceImplTest.java
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

> Task :compileTestJava
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.

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
[2m2026-06-25 09:56:20.238[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-161][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo6886910897937638322]
[2m2026-06-25 09:56:20.238[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-160][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo372004634943497987]
[2m2026-06-25 09:56:20.238[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-172][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-06-25 09:56:20.239[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-157][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo12664794083998383894]
[2m2026-06-25 09:56:20.239[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-171][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-06-25 09:56:20.239[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-155][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo8860984406480974730]
[2m2026-06-25 09:56:20.239[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-158][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo10175250693563206187]
[2m2026-06-25 09:56:20.239[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-165][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo1595996083665073180]
[2m2026-06-25 09:56:20.239[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[      Thread-38][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo10600980010773761174]
[2m2026-06-25 09:56:20.239[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-156][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo16589368599113597206]
[2m2026-06-25 09:56:20.239[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-154][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo8323859058867304119]
[2m2026-06-25 09:56:20.240[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-166][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-06-25 09:56:20.240[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-164][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo3013984960178347222]
[2m2026-06-25 09:56:20.240[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-163][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo7749044655736914620]
[2m2026-06-25 09:56:20.240[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-162][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo17363944376936827488]
[2m2026-06-25 09:56:20.240[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-173][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-06-25 09:56:20.241[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-169][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-06-25 09:56:20.241[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-159][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo5906414995355181079]
[2m2026-06-25 09:56:20.242[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-170][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-06-25 09:56:20.242[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-166][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test12714086489869681626]
[2m2026-06-25 09:56:20.242[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-170][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test8984619351519446125]
[2m2026-06-25 09:56:20.242[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-171][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test10823384055021813264]
[2m2026-06-25 09:56:20.242[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-172][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test6839607327958898158]
[2m2026-06-25 09:56:20.242[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-163][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo7749044655736914620] successfully
[2m2026-06-25 09:56:20.242[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-158][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo10175250693563206187] successfully
[2m2026-06-25 09:56:20.242[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-170][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test8984619351519446125] successfully
[2m2026-06-25 09:56:20.242[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-173][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test5676674992931673872]
[2m2026-06-25 09:56:20.242[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-160][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo372004634943497987] successfully
[2m2026-06-25 09:56:20.242[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-162][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo17363944376936827488] successfully
[2m2026-06-25 09:56:20.242[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-169][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test222672613368544768]
[2m2026-06-25 09:56:20.245[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-157][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo12664794083998383894] successfully
[2m2026-06-25 09:56:20.242[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[      Thread-38][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo10600980010773761174] successfully
[2m2026-06-25 09:56:20.245[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-161][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo6886910897937638322] successfully
[2m2026-06-25 09:56:20.245[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-164][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo3013984960178347222] successfully
[2m2026-06-25 09:56:20.245[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-159][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo5906414995355181079] successfully
[2m2026-06-25 09:56:20.245[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-171][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test10823384055021813264] successfully
[2m2026-06-25 09:56:20.245[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-165][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo1595996083665073180] successfully
[2m2026-06-25 09:56:20.245[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-156][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo16589368599113597206] successfully
[2m2026-06-25 09:56:20.245[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-154][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo8323859058867304119] successfully
[2m2026-06-25 09:56:20.245[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-155][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo8860984406480974730] successfully
[2m2026-06-25 09:56:20.246[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-169][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test222672613368544768] successfully
[2m2026-06-25 09:56:20.246[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-172][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test6839607327958898158] successfully
[2m2026-06-25 09:56:20.246[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-166][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test12714086489869681626] successfully
[2m2026-06-25 09:56:20.247[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.AbstractConnector      [0;39m [2m:[0;39m Stopped ServerConnector@3f80d8c{HTTP/1.1, (http/1.1)}{0.0.0.0:0}
[2m2026-06-25 09:56:20.247[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36morg.eclipse.jetty.server.session        [0;39m [2m:[0;39m node0 Stopped scavenging
[2m2026-06-25 09:56:20.248[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.j.s.h.ContextHandler.application    [0;39m [2m:[0;39m Destroying Spring FrameworkServlet 'dispatcherServlet'
[2m2026-06-25 09:56:20.248[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.handler.ContextHandler [0;39m [2m:[0;39m Stopped o.s.b.w.e.j.JettyEmbeddedWebAppContext@15364d8b{application,/,[file:///tmp/jetty-docbase.0.8616204252412575783/, jar:file:/root/.gradle/caches/modules-2/files-2.1/io.springfox/springfox-swagger-ui/3.0.0/1e665fbe22148f7c36fa8a08e515a0047cd4390b/springfox-swagger-ui-3.0.0.jar!/META-INF/resources],STOPPED}
[2m2026-06-25 09:56:20.248[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[     Thread-173][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test5676674992931673872] successfully
[2m2026-06-25 09:56:20.253[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-06-25 09:56:20.254[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-1 - Shutdown initiated...
[2m2026-06-25 09:56:20.264[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-1 - Shutdown completed.
[2m2026-06-25 09:56:20.271[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-06-25 09:56:20.277[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-06-25 09:56:20.278[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-2 - Shutdown initiated...
[2m2026-06-25 09:56:20.279[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-2 - Shutdown completed.
[2m2026-06-25 09:56:20.294[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-06-25 09:56:20.294[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36m.SchemaDropperImpl$DelayedDropActionImpl[0;39m [2m:[0;39m HHH000477: Starting delayed evictData of schema as part of SessionFactory shut-down'
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
[2m2026-06-25 09:56:20.299[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-3 - Shutdown initiated...
[2m2026-06-25 09:56:20.299[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-3 - Shutdown completed.
[2m2026-06-25 09:56:20.302[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.AbstractConnector      [0;39m [2m:[0;39m Stopped ServerConnector@7c5dfc66{HTTP/1.1, (http/1.1)}{0.0.0.0:0}
[2m2026-06-25 09:56:20.302[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36morg.eclipse.jetty.server.session        [0;39m [2m:[0;39m node0 Stopped scavenging
[2m2026-06-25 09:56:20.302[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.j.s.h.ContextHandler.application    [0;39m [2m:[0;39m Destroying Spring FrameworkServlet 'dispatcherServlet'
[2m2026-06-25 09:56:20.302[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.handler.ContextHandler [0;39m [2m:[0;39m Stopped o.s.b.w.e.j.JettyEmbeddedWebAppContext@58e280bc{application,/,[file:///tmp/jetty-docbase.0.18401303163483424224/, jar:file:/root/.gradle/caches/modules-2/files-2.1/io.springfox/springfox-swagger-ui/3.0.0/1e665fbe22148f7c36fa8a08e515a0047cd4390b/springfox-swagger-ui-3.0.0.jar!/META-INF/resources],STOPPED}
[2m2026-06-25 09:56:20.307[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-06-25 09:56:20.307[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36m.SchemaDropperImpl$DelayedDropActionImpl[0;39m [2m:[0;39m HHH000477: Starting delayed evictData of schema as part of SessionFactory shut-down'
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
[2m2026-06-25 09:56:20.308[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-7 - Shutdown initiated...
[2m2026-06-25 09:56:20.319[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-7 - Shutdown completed.
[2m2026-06-25 09:56:20.332[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-06-25 09:56:20.335[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.AbstractConnector      [0;39m [2m:[0;39m Stopped ServerConnector@4dda7b02{HTTP/1.1, (http/1.1)}{0.0.0.0:0}
[2m2026-06-25 09:56:20.335[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36morg.eclipse.jetty.server.session        [0;39m [2m:[0;39m node0 Stopped scavenging
[2m2026-06-25 09:56:20.336[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.j.s.h.ContextHandler.application    [0;39m [2m:[0;39m Destroying Spring FrameworkServlet 'dispatcherServlet'
[2m2026-06-25 09:56:20.336[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.handler.ContextHandler [0;39m [2m:[0;39m Stopped o.s.b.w.e.j.JettyEmbeddedWebAppContext@63afe444{application,/,[file:///tmp/jetty-docbase.0.8674680844155607253/, jar:file:/root/.gradle/caches/modules-2/files-2.1/io.springfox/springfox-swagger-ui/3.0.0/1e665fbe22148f7c36fa8a08e515a0047cd4390b/springfox-swagger-ui-3.0.0.jar!/META-INF/resources],STOPPED}
[2m2026-06-25 09:56:20.340[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-06-25 09:56:20.340[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36m.SchemaDropperImpl$DelayedDropActionImpl[0;39m [2m:[0;39m HHH000477: Starting delayed evictData of schema as part of SessionFactory shut-down'
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
[2m2026-06-25 09:56:20.341[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-8 - Shutdown initiated...
[2m2026-06-25 09:56:20.344[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-8 - Shutdown completed.
[2m2026-06-25 09:56:20.354[0;39m [32m INFO[0;39m [35m825[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'

269 tests completed, 8 failed, 14 skipped

> Task :test FAILED

FAILURE: Build failed with an exception.

* What went wrong:
Execution failed for task ':test'.
> There were failing tests. See the report at: file:///home/halo/build/reports/tests/test/index.html

* Try:
> Run with --stacktrace option to get the stack trace.
> Run with --info or --debug option to get more log output.
6 actionable tasks: 6 executed
> Run with --scan to get full insights.

* Get more help at https://help.gradle.org

BUILD FAILED in 1m 41s
