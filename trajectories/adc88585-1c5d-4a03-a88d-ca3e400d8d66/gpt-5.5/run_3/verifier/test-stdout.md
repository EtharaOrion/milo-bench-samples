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
[2m2026-06-25 04:07:41.713[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-165][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo14986803786959567933]
[2m2026-06-25 04:07:41.713[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-160][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo3826191389709116295]
[2m2026-06-25 04:07:41.713[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[      Thread-38][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo16990409264928461517]
[2m2026-06-25 04:07:41.713[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-164][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo4307804380910420540]
[2m2026-06-25 04:07:41.713[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-163][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo8229856721426319736]
[2m2026-06-25 04:07:41.713[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-173][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-06-25 04:07:41.713[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-172][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-06-25 04:07:41.714[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-171][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-06-25 04:07:41.714[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-170][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-06-25 04:07:41.713[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-159][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo16957681459039466477]
[2m2026-06-25 04:07:41.714[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-156][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo11953476391057164614]
[2m2026-06-25 04:07:41.715[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-158][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo5566334720868815784]
[2m2026-06-25 04:07:41.715[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-154][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo16448343044443107411]
[2m2026-06-25 04:07:41.715[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-155][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo13524302294202156451]
[2m2026-06-25 04:07:41.715[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-157][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo16620542689984170716]
[2m2026-06-25 04:07:41.716[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-169][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-06-25 04:07:41.716[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-166][0;39m [36mrun.halo.app.utils.GitTest              [0;39m [2m:[0;39m Clear temporary folder.
[2m2026-06-25 04:07:41.716[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-162][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo7054206315364218669]
[2m2026-06-25 04:07:41.716[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-161][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/halo1718604737402862400]
[2m2026-06-25 04:07:41.716[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-165][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo14986803786959567933] successfully
[2m2026-06-25 04:07:41.716[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-171][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test9138626763847232614]
[2m2026-06-25 04:07:41.717[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-170][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test3647614074221835255]
[2m2026-06-25 04:07:41.717[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-172][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test18214907875722146470]
[2m2026-06-25 04:07:41.717[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-160][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo3826191389709116295] successfully
[2m2026-06-25 04:07:41.717[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-158][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo5566334720868815784] successfully
[2m2026-06-25 04:07:41.717[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-173][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test1421429286014836369]
[2m2026-06-25 04:07:41.717[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-159][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo16957681459039466477] successfully
[2m2026-06-25 04:07:41.717[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-155][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo13524302294202156451] successfully
[2m2026-06-25 04:07:41.718[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-154][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo16448343044443107411] successfully
[2m2026-06-25 04:07:41.718[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-157][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo16620542689984170716] successfully
[2m2026-06-25 04:07:41.718[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-166][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test6094808266455869535]
[2m2026-06-25 04:07:41.718[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-170][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test3647614074221835255] successfully
[2m2026-06-25 04:07:41.718[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-169][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleting [/tmp/git-test16189147121128072533]
[2m2026-06-25 04:07:41.718[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[      Thread-38][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo16990409264928461517] successfully
[2m2026-06-25 04:07:41.718[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-163][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo8229856721426319736] successfully
[2m2026-06-25 04:07:41.718[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-156][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo11953476391057164614] successfully
[2m2026-06-25 04:07:41.718[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-164][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo4307804380910420540] successfully
[2m2026-06-25 04:07:41.718[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-161][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo1718604737402862400] successfully
[2m2026-06-25 04:07:41.718[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-162][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/halo7054206315364218669] successfully
[2m2026-06-25 04:07:41.719[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-171][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test9138626763847232614] successfully
[2m2026-06-25 04:07:41.719[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-172][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test18214907875722146470] successfully
[2m2026-06-25 04:07:41.719[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-169][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test16189147121128072533] successfully
[2m2026-06-25 04:07:41.719[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-166][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test6094808266455869535] successfully
[2m2026-06-25 04:07:41.720[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.AbstractConnector      [0;39m [2m:[0;39m Stopped ServerConnector@c82ad22{HTTP/1.1, (http/1.1)}{0.0.0.0:0}
[2m2026-06-25 04:07:41.720[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36morg.eclipse.jetty.server.session        [0;39m [2m:[0;39m node0 Stopped scavenging
[2m2026-06-25 04:07:41.721[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.j.s.h.ContextHandler.application    [0;39m [2m:[0;39m Destroying Spring FrameworkServlet 'dispatcherServlet'
[2m2026-06-25 04:07:41.721[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.handler.ContextHandler [0;39m [2m:[0;39m Stopped o.s.b.w.e.j.JettyEmbeddedWebAppContext@1aaab222{application,/,[file:///tmp/jetty-docbase.0.3263342700859556529/, jar:file:/root/.gradle/caches/modules-2/files-2.1/io.springfox/springfox-swagger-ui/3.0.0/1e665fbe22148f7c36fa8a08e515a0047cd4390b/springfox-swagger-ui-3.0.0.jar!/META-INF/resources],STOPPED}
[2m2026-06-25 04:07:41.722[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[     Thread-173][0;39m [36mrun.halo.app.utils.FileUtils            [0;39m [2m:[0;39m Deleted [/tmp/git-test1421429286014836369] successfully
[2m2026-06-25 04:07:41.725[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-06-25 04:07:41.726[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-1 - Shutdown initiated...
[2m2026-06-25 04:07:41.727[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-1 - Shutdown completed.
[2m2026-06-25 04:07:41.732[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-06-25 04:07:41.738[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-06-25 04:07:41.738[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-2 - Shutdown initiated...
[2m2026-06-25 04:07:41.810[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-2 - Shutdown completed.
[2m2026-06-25 04:07:41.823[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-06-25 04:07:41.823[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36m.SchemaDropperImpl$DelayedDropActionImpl[0;39m [2m:[0;39m HHH000477: Starting delayed evictData of schema as part of SessionFactory shut-down'
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
[2m2026-06-25 04:07:41.828[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-3 - Shutdown initiated...
[2m2026-06-25 04:07:41.831[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-3 - Shutdown completed.
[2m2026-06-25 04:07:41.833[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.AbstractConnector      [0;39m [2m:[0;39m Stopped ServerConnector@43124a7e{HTTP/1.1, (http/1.1)}{0.0.0.0:0}
[2m2026-06-25 04:07:41.833[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36morg.eclipse.jetty.server.session        [0;39m [2m:[0;39m node0 Stopped scavenging
[2m2026-06-25 04:07:41.834[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.j.s.h.ContextHandler.application    [0;39m [2m:[0;39m Destroying Spring FrameworkServlet 'dispatcherServlet'
[2m2026-06-25 04:07:41.834[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.handler.ContextHandler [0;39m [2m:[0;39m Stopped o.s.b.w.e.j.JettyEmbeddedWebAppContext@476098b{application,/,[file:///tmp/jetty-docbase.0.14011922479351695691/, jar:file:/root/.gradle/caches/modules-2/files-2.1/io.springfox/springfox-swagger-ui/3.0.0/1e665fbe22148f7c36fa8a08e515a0047cd4390b/springfox-swagger-ui-3.0.0.jar!/META-INF/resources],STOPPED}
[2m2026-06-25 04:07:41.838[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-06-25 04:07:41.838[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36m.SchemaDropperImpl$DelayedDropActionImpl[0;39m [2m:[0;39m HHH000477: Starting delayed evictData of schema as part of SessionFactory shut-down'
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
[2m2026-06-25 04:07:41.842[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-7 - Shutdown initiated...
[2m2026-06-25 04:07:41.845[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-7 - Shutdown completed.
[2m2026-06-25 04:07:41.851[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-06-25 04:07:41.853[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.AbstractConnector      [0;39m [2m:[0;39m Stopped ServerConnector@6565e9cd{HTTP/1.1, (http/1.1)}{0.0.0.0:0}
[2m2026-06-25 04:07:41.853[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36morg.eclipse.jetty.server.session        [0;39m [2m:[0;39m node0 Stopped scavenging
[2m2026-06-25 04:07:41.854[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.j.s.h.ContextHandler.application    [0;39m [2m:[0;39m Destroying Spring FrameworkServlet 'dispatcherServlet'
[2m2026-06-25 04:07:41.854[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mo.e.jetty.server.handler.ContextHandler [0;39m [2m:[0;39m Stopped o.s.b.w.e.j.JettyEmbeddedWebAppContext@5f3945b7{application,/,[file:///tmp/jetty-docbase.0.8477240044554774316/, jar:file:/root/.gradle/caches/modules-2/files-2.1/io.springfox/springfox-swagger-ui/3.0.0/1e665fbe22148f7c36fa8a08e515a0047cd4390b/springfox-swagger-ui-3.0.0.jar!/META-INF/resources],STOPPED}
[2m2026-06-25 04:07:41.858[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'
[2m2026-06-25 04:07:41.858[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36m.SchemaDropperImpl$DelayedDropActionImpl[0;39m [2m:[0;39m HHH000477: Starting delayed evictData of schema as part of SessionFactory shut-down'
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
[2m2026-06-25 04:07:41.868[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-8 - Shutdown initiated...
[2m2026-06-25 04:07:41.869[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mcom.zaxxer.hikari.HikariDataSource      [0;39m [2m:[0;39m HikariPool-8 - Shutdown completed.
[2m2026-06-25 04:07:41.878[0;39m [32m INFO[0;39m [35m851[0;39m [2m---[0;39m [2m[ionShutdownHook][0;39m [36mj.LocalContainerEntityManagerFactoryBean[0;39m [2m:[0;39m Closing JPA EntityManagerFactory for persistence unit 'default'

269 tests completed, 8 failed, 14 skipped

> Task :test FAILED

FAILURE: Build failed with an exception.

* What went wrong:
Execution failed for task ':test'.
> There were failing tests. See the report at: file:///home/halo/build/reports/tests/test/index.html

* Try:
> Run with --stacktrace option to get the stack trace.
> Run with --info or --debug option to get more log output.
> Run with --scan to get full insights.

* Get more help at https://help.gradle.org

6 actionable tasks: 6 executed
BUILD FAILED in 1m 43s
