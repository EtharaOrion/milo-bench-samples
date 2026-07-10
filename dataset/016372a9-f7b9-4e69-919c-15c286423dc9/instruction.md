I've uploaded a Go code repository in the directory /workspace/gorm. Consider the following issue description:

<issue_description>
# fix type alias AutoMigrate bug（Add Test Case）

## Issue 1 (#4888): fix type alias AutoMigrate bug（Add Test Case）

<!--
Make sure these boxes checked before submitting your pull request.

For significant changes, please open an issue to make an agreement on an implementation design/plan first before starting it.
-->

- [x] Do only one thing
- [x] Non breaking API changes
- [x] Tested

### What did this pull request do?

At some times, we need to define alias types for native data types, such as easy reuse for some common interfaces.
but, when you denfine alias types, the AutoMigrate will crash!

<!--
provide a general description of the code changes in your pull request
-->

### User Case Description

<!-- Your use case -->
eg: 
1. defing `IDer` interface.
2. define `int64` alias type as `ID`.
3. define a `Test` struct contian column `ID`.
4. call `AutoMigrate`, and gorm return error `invalid embedded struct for Test's field ID, should be struct, but got main.ID`

bellow is the full demo code.

```go
package main

import (
	"log"

	"gorm.io/driver/postgres"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

type IDer interface{ GetID() int64 }

// ID will add some method to implement some interface eg: GetID
type ID int64

func (z ID) GetID() int64 { return int64(z) }

type Test struct {
	ID
	Code string `gorm:"size:50"`
	Name string `gorm:"size:50"`
}

func main() {
	db, err := gorm.Open(postgres.New(postgres.Config{
		DSN:                  `dsn`,
		PreferSimpleProtocol: false,
	}), &gorm.Config{
		Logger:                 logger.Default.LogMode(logger.Info),
		SkipDefaultTransaction: true,
	})
	if err != nil {
		log.Fatal(err)
	}

	if err = db.AutoMigrate(&Test{}); err != nil {
		// invalid embedded struct for Test's field ID, should be struct, but got main.ID
		log.Fatal(err)
	}
}
```

## Issue 2 (#4896): Use Golangci configuration file

<!--
Make sure these boxes checked before submitting your pull request.

For significant changes, please open an issue to make an agreement on an implementation design/plan first before starting it.
-->

- [X] Do only one thing
- [X] Non breaking API changes
- [X] Tested

### What did this pull request do?

Reviewdog is able to handle golangci configuration file. 
This replace inlined parameters with the golangci configuration file.

### User Case Description

<!-- Your use case -->

## Issue 3 (#4897): fix: save not use soft_delete

<!--
Make sure these boxes checked before submitting your pull request.

For significant changes, please open an issue to make an agreement on an implementation design/plan first before starting it.
-->

- [] Do only one thing
- [] Non breaking API changes
- [] Tested

### What did this pull request do?

<!--
provide a general description of the code changes in your pull request
-->

### User Case Description

<!-- Your use case -->

## Issue 4 (#4929): modify unscoped judge

<!--
Make sure these boxes checked before submitting your pull request.

For significant changes, please open an issue to make an agreement on an implementation design/plan first before starting it.
-->

- [] Do only one thing
- [] Non breaking API changes
- [] Tested

### What did this pull request do?

<!--
provide a general description of the code changes in your pull request
-->

### User Case Description

<!-- Your use case -->

## Issue 5 (#4937): Fix: Where clauses with named arguments may cause generation of unintended queries

* [x]  Do only one thing
* [x]  Non breaking API changes
* [x]  Tested


### What did this pull request do?

During the building of Where clauses, the NamedExpr type is omitted while determining whether the expression should be wrapped in parentheses. Therefore, although it is required, Where clauses containing both named arguments and OR conditions are not wrapped, and this causes the generation of different queries than desired. This pull request tries to fix this issue.
### User Case Description

eg:

For the gorm statement below,

```go
db.Model(&User{}).Where("role = @role1 OR role = @role2",
map[string]interface{}{"role1": "admin", "role2": "super_admin"}).Find(&results)
```

the following query is generated.

~~~~sql
SELECT * FROM users WHERE role = 'admin' or role = 'super_admin' AND users.deleted_at IS NULL
~~~~

Due to the precedence of `AND` over `OR`, the query will be interpreted like
~~~~sql
`WHERE role = 'admin' or (role = 'super_admin' AND users.deleted_at IS NULL)` 
~~~~

instead of

~~~~sql
`WHERE (role = 'admin' or role = 'super_admin') AND users.deleted_at IS NULL` 
~~~~

which is actually intended, and it leads to getting softly deleted admin users without being aware, which may also be dangerous.

## Issue 6 (#4964): improve the error handle in tests_test

<!--
Make sure these boxes checked before submitting your pull request.

For significant changes, please open an issue to make an agreement on an implementation design/plan first before starting it.
-->

- [] Do only one thing
- [] Non breaking API changes
- [] Tested

### What did this pull request do?

<!--
provide a general description of the code changes in your pull request
-->

### User Case Description

<!-- Your use case -->

## Issue 7 (#4914): or condition in one condition  sql error

## GORM Playground Link

<!--
To ensure your issue be handled, the issue *MUST* include a GORM Playground Pull Request Link that can reproduce the bug, which is important to help others understand your issue effectively and make sure the issue hasn't been fixed, refer: https://github.com/go-gorm/playground

Without the link, your issue most likely will be IGNORED

CHANGE FOLLOWING URL TO YOUR PLAYGROUND LINK
-->

https://github.com/go-gorm/playground/pull/411

## Description

or condition在只有一个条件的情况下，生成SQL存在问题。

```
func TestGORMorCondition(t *testing.T) {
	user := User{Name: "jinzhu"}
	DB.Create(&user)

	ret := make([]*User, 0)
	id := []uint32{1}
	db := DB
	for _, id := range id {
		db = db.Or("id = ?", id)
	}
	db.Find(&ret)
}
```


生成的执行SQL如下:
![image](https://user-images.githubusercontent.com/14146197/145511291-d8d60757-44e8-41b2-96ed-34f887058113.png)

 
这段代码在判断or条件时，是否存在问题
![image](https://user-images.githubusercontent.com/14146197/145511090-6412950c-393b-4e03-9272-4c06d42dc2c7.png)

## Issue 8 (#4973): ci: add gofumpt check in reviewdog

<!--
Make sure these boxes checked before submitting your pull request.

For significant changes, please open an issue to make an agreement on an implementation design/plan first before starting it.
-->

- [] Do only one thing
- [] Non breaking API changes
- [] Tested

### What did this pull request do?

- use a stricter format tool in review dog.
- use `gofumpt -e -d -w .` to format code 
<!--
provide a general description of the code changes in your pull request
-->

### User Case Description

<!-- Your use case -->

## Issue 9 (#4351): Deterministic execution of AutoMigrate

<!-- DON'T CHANGE THE TEMPLATE -->

## Describe the feature

At the moment, the order of which columns are migrated during `AutoMigrate` is non-deterministic. 

I'm using [copyist](https://github.com/cockroachdb/copyist) to test our migrations, which when run in "recording" mode, intercepts all SQL operations and saves them to a file. Then you can run the tests in "playback" mode and if the queries run do not match those which were recorded, then the test fails. This is great when you want to run a full test suite and you don't want to have a database running locally.

I'm creating a feature request, rather than a bug, since I don't think this would have been an intended feature unless someone else has specifically requested it.

<!-- Describe the requested Feature -->

## Motivation

Tests are good, tests without having to stand up a full database instance are even better.

Essentially, this for loop on line 99 iterates in a non-deterministic way, meaning sometimes my migrations migrate columns in one order, then in another run in another order: https://github.com/go-gorm/gorm/blob/2aca96d1474967da11bac81a58db9c97bd7bdcac/migrator/migrator.go#L96-L102

My request is to build a slice of column names, sort them, and then iterate over that slice instead.

## Related Issues

Couldn't find any related issues.

## Issue 10 (#4982): feat: add `Connection` to execute multiple commands in a single conn

<!--
Make sure these boxes checked before submitting your pull request.

For significant changes, please open an issue to make an agreement on an implementation design/plan first before starting it.
-->

- [×] Do only one thing
- [×] Non breaking API changes
- [×] Tested

### What did this pull request do?

- en : feat: add `Connection` to execute multiple commands in a single conn
- zh : 支持一个 conn 内可以执行多个命令
<!--
provide a general description of the code changes in your pull request
-->

### User Case Description
```
func TestWithSingleConnection(t *testing.T) {

	var expectedName = "test"
	var actualName string

	setSQL, getSQL := getSetSQL(DB.Dialector.Name())
	if len(setSQL) == 0 || len(getSQL) == 0 {
		return
	}

	err := DB.Connection(func(tx *gorm.DB) error {
		if err := tx.Exec(setSQL, expectedName).Error; err != nil {
			return err
		}

		if err := tx.Raw(getSQL).Scan(&actualName).Error; err != nil {
			return err
		}
		return nil
	})

	if err != nil {
		t.Errorf(fmt.Sprintf("Connection should work, but got err %v", err))
	}

	if actualName != expectedName {
		t.Errorf("Connection() method should get correct value, expect: %v, got %v", expectedName, actualName)
	}

}

```
<!-- Your use case -->

## Issue 11 (#60): Change Id to ID

Seems like the default primary key is hardcoded to be "Id", while golint suggest "ID" as the id field of a struct. Not that this is of any importance, but would be nice to be compliant with the coding standards.

"dao.go:16:2: struct field Id should be ID"

## Issue 12 (#59): Iteration doesn't support parsing raw data into struct?

I may be missing something, but the docs aren't really clear on this. They mention the `Rows()` function can be used to iterate over table but since this returns `*sql.Row`, I'm not sure how to scan this into the struct for this row. The great thing about gorm is that it handles parsing the sql data into a struct, but this seems to be missing for iteration.

The example shows this, which really isn't great given how easy all of the other functions are to use.

```
rows.Scan(&name, &age, &email)
```

## Issue 13 (#4992): time.Time, []byte type add alias support. (rebase master)

<!--
Make sure these boxes checked before submitting your pull request.

For significant changes, please open an issue to make an agreement on an implementation design/plan first before starting it.
-->

- [x] Do only one thing
- [x] Non breaking API changes
- [x] Tested

### What did this pull request do?

<!--
provide a general description of the code changes in your pull request
-->

1, time.Time, []byte type add alias support.
2, []byte alias type, fixed statement bind var parameter.

### User Case Description

<!-- Your use case -->
```go
func main() {        
        type ID int64
	type TIME time.Time
	type BYTES []byte
	type TypeAlias struct {
		ID
		TIME  `gorm:"column:ftime;type:timestamptz"`
		BYTES `gorm:"column:fbytes;type:bytea"`
	}

	db, err := gorm.Open(postgres.New(postgres.Config{
		DSN: `dsn`,
		PreferSimpleProtocol: false,
	}), &gorm.Config{
		Logger:                 logger.Default.LogMode(logger.Info),
		SkipDefaultTransaction: true,
	})
	if err != nil {
		log.Fatal(err)
	}

	al := &TypeAlias{
		ID:    2,
		TIME:  TIME(time.Now()),
		BYTES: []byte{1, 2, 3},
	}

	if err := db.AutoMigrate(al); err != nil {
		t.Fatal(err)
	}

	if err := db.Create(al).Error; err != nil {
		t.Fatal(err)
	}

	al1 := &TypeAlias{}
	if err := db.First(al1).Error; err != nil {
		t.Fatal(err)
	}
}
```

## Repository Information
- **Repository**: go-gorm/gorm
- **Pull Request**: #4888
- **Base Commit**: `3a3b82263a2e6a3d19c2d669ce9d299b76c47f65`

## Related Issues
- https://github.com/go-gorm/gorm/issues/4888
- https://github.com/go-gorm/gorm/issues/4896
- https://github.com/go-gorm/gorm/issues/4897
- https://github.com/go-gorm/gorm/issues/4929
- https://github.com/go-gorm/gorm/issues/4937
- https://github.com/go-gorm/gorm/issues/4964
- https://github.com/go-gorm/gorm/issues/4914
- https://github.com/go-gorm/gorm/issues/4973
- https://github.com/go-gorm/gorm/issues/4351
- https://github.com/go-gorm/gorm/issues/4982
- https://github.com/go-gorm/gorm/issues/60
- https://github.com/go-gorm/gorm/issues/59
- https://github.com/go-gorm/gorm/issues/4992
</issue_description>

Can you help me implement the necessary changes to the repository so that the requirements specified in the <issue_description> are met?
I've already taken care of all changes to any of the test files described in the <issue_description>. This means you MUST NOT modify the testing logic or any of the tests in any way!
Also the development Go environment is already set up for you (i.e., all dependencies already installed), so you don't need to install other packages.
Your task is to make the minimal changes to non-test files in the /workspace/gorm directory to ensure the <issue_description> is satisfied.

Follow these phases to resolve the issue:

Phase 1. READING: read the problem and reword it in clearer terms
   1.1 If there are code or config snippets. Express in words any best practices or conventions in them.
   1.2 Highlight message errors, method names, variables, file names, stack traces, and technical details.
   1.3 Explain the problem in clear terms.
   1.4 Enumerate the steps to reproduce the problem.
   1.5 Highlight any best practices to take into account when testing and fixing the issue.

Phase 2. RUNNING: install and run the tests on the repository
   2.1 Follow the readme.
   2.2 Install the environment and anything needed.
   2.3 Iterate and figure out how to run the tests.

Phase 3. EXPLORATION: find the files that are related to the problem and possible solutions
   3.1 Use `grep` to search for relevant methods, classes, keywords and error messages.
   3.2 Identify all files related to the problem statement.
   3.3 Propose the methods and files to fix the issue and explain why.
   3.4 From the possible file locations, select the most likely location to fix the issue.

Phase 4. TEST CREATION: before implementing any fix, create a script to reproduce and verify the issue
   4.1 Look at existing test files in the repository to understand the test format/structure.
   4.2 Create a minimal reproduction script that reproduces the located issue.
   4.3 Run the reproduction script with `go run <filename.go>` to confirm you are reproducing the issue.
   4.4 Adjust the reproduction script as necessary.

Phase 5. FIX ANALYSIS: state clearly the problem and how to fix it
   5.1 State clearly what the problem is.
   5.2 State clearly where the problem is located.
   5.3 State clearly how the test reproduces the issue.
   5.4 State clearly the best practices to take into account in the fix.
   5.5 State clearly how to fix the problem.

Phase 6. FIX IMPLEMENTATION: Edit the source code to implement your chosen solution.
   6.1 Make minimal, focused changes to fix the issue.

Phase 7. VERIFICATION: Test your implementation thoroughly.
   7.1 Run your reproduction script to verify the fix works.
   7.2 Add edge cases to your test script to ensure comprehensive coverage.
   7.3 Run existing tests related to the modified code with `go test ./...` to ensure you haven't broken anything.

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit 3a3b82263a2e6a3d19c2d669ce9d299b76c47f65.
   8.1 Ensure you've fully addressed all requirements.
   8.2 Run any tests in the repository related to:
      8.2.1 The issue you are fixing
      8.2.2 The files you modified
      8.2.3 The functions you changed
   8.3 If any tests fail, revise your implementation until all tests pass.

Be thorough in your exploration, testing, and reasoning. It's fine if your thinking process is lengthy - quality and completeness are more important than brevity.

IMPORTANT CONSTRAINTS:
- ONLY modify files within the /workspace/gorm directory
- DO NOT navigate outside this directory (no `cd ..` or absolute paths to other locations)
- DO NOT create, modify, or delete any files outside the repository
- All your changes must be trackable by `git diff` within the repository
- If you need to create test files, create them inside the repository directory