# TRUTH.md - go-gorm__gorm-4888

## Defect

The milestone bundles 13 announced issue(s):
1. (#4888): fix type alias AutoMigrate bug（Add Test Case）
2. (#4896): Use Golangci configuration file
3. (#4897): fix: save not use soft_delete
4. (#4929): modify unscoped judge
5. (#4937): Fix: Where clauses with named arguments may cause generation of unintended queries
6. (#4964): improve the error handle in tests_test
7. (#4914): or condition in one condition  sql error
8. (#4973): ci: add gofumpt check in reviewdog
9. (#4351): Deterministic execution of AutoMigrate
10. (#4982): feat: add `Connection` to execute multiple commands in a single conn
11. (#60): Change Id to ID
12. (#59): Iteration doesn't support parsing raw data into struct?
13. (#4992): time.Time, []byte type add alias support. (rebase master)

The reference change touches 20 file(s) in go. 824 target test(s) observe the result and 172 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `finisher_api.go`
- `callbacks/update.go`
- `callbacks/delete.go`
- `migrator/migrator.go`
- `clause/where.go`
- `.golangci.yml`
- `schema/field.go`
- `schema/check.go`

What each file must end up doing is declared in `rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (824) and confirm the preserve set (172) still passes.

## Root cause

The failing tests span updates, deletes, associations, preloads, subqueries and joins — a very broad surface. The common thread is the SQL-building path that these operations share, specifically two related mechanisms.

First, the update and delete callbacks decide whether to inject the schema-defined clauses (the `UpdateClauses`/`DeleteClauses` a model can register, e.g. soft-delete conditions, default-value expressions, timestamp bumps) based on a condition that includes the `Unscoped` flag. Guarding clause injection with `!Unscoped` means that whenever a statement is unscoped, the schema clauses are skipped entirely. But those clauses carry more than soft-delete semantics; a model may register clauses that are always required for a correct statement. Skipping them corrupts the generated SQL for a wide range of operations that legitimately run unscoped or that rely on those clauses being present regardless. The correct gating is simply "does this schema define clauses," not "is this statement scoped."

Second, the emptiness check for the accumulated SQL uses string comparison against the empty string. The SQL is built into a byte/string builder, and comparing its rendered string to `""` re-materialises the buffer and can misjudge whether anything has been written, especially relative to when clauses are added. The reliable test is the builder's length being zero. Ordering matters here too: the schema clauses must be added *before* the code decides the SQL is still empty and proceeds to build the default statement, otherwise the injected clauses are never emitted.

Separately, the `where` clause builder collapses a single-expression group by returning that lone expression directly. When that single expression is itself an OR-condition, unwrapping it drops the parenthesisation that keeps its precedence correct, so a query like `A AND (B OR C)` degrades to `A AND B OR C`. This breaks subquery and conditional-preload tests where an OR group is the only expression at some nesting level.

## Solution shape

Three properties must hold after the fix:

- **Clause injection is gated on schema presence alone.** In both the update and delete callbacks, the schema's registered clauses must be appended whenever a schema exists, independent of whether the statement is unscoped. The unscoped flag must no longer suppress them.

- **Emptiness is decided by the builder's length, and injection happens first.** Replace the "rendered string equals empty" test with a length-is-zero test on the SQL builder. Ensure the schema clauses are added before this check gates the fallback statement construction, so their contribution is reflected. Pseudocode:

  ```
  if sqlBuilder.len == 0 { /* pre-injection point */ }
  if schema != nil { add schema clauses }
  if sqlBuilder.len == 0 { build default statement using primary keys }
  ```

- **A lone OR-group keeps its parentheses.** When a where group contains exactly one expression, return it unwrapped *only if* it is not an OR-conditions group. If it is, keep it wrapped so precedence is preserved. Named-expression fragments containing `and`/`or` should likewise be wrapped in parentheses.

The remaining edits (closing `rows`/`conn` via the DB's error accumulator rather than a bare deferred close, the connection helper, the migrator iteration over stable DB-name order, the embedded-field kind switch excluding time/bytes, and the linter/style cleanups) are supporting changes that keep the build clean and behaviour deterministic; they are not what the listed tests turn on, but the clause-gating and OR-wrapping fixes are.

## Ordered plan

1. **Confirm the breadth first.** The failing set is not one feature — it's updates, deletes, and every association/preload/join path. That tells you the defect is in shared SQL construction, not in any single feature, so start in the update and delete callbacks and the where builder rather than chasing individual tests.

2. **Fix the clause gating in update and delete.** Remove the unscoped condition from the guard that injects schema clauses; gate on schema existence only. This must come before you touch the emptiness check, because the check's correctness depends on the clauses already having been added.

3. **Reorder so injection precedes the emptiness decision, and switch to a length check.** Move the clause-addition ahead of the point where an empty SQL builder triggers default statement construction, and replace the string-equals-empty test with a builder-length-is-zero test. Do both callbacks identically; they mirror each other and both are exercised by the failing tests.

4. **Rerun the update/delete and association tests.** Most of the list should now pass. What remains — subquery, conditional preload — points you at the where builder.

5. **Fix the single-expression unwrap in the where builder.** Return the lone expression directly only when it is not an OR-group; otherwise keep it parenthesised. Add the named-expression parenthesisation for fragments containing and/or.

6. **Rerun the full suite** to confirm the 172 passing tests stay green — the clause-gating change is the one most likely to have collateral effects on statements that previously (accidentally) depended on clauses being skipped.

## Pitfalls

- **Fixing only update or only delete.** The two callbacks are near-identical and both appear in the failing set (`TestUpdate`, `TestUpdates`, and delete-driven association teardown). A fix applied to one path still leaves the other generating wrong SQL.

- **Keeping the string-equals-empty check while reordering.** If you move the clause injection but leave the emptiness test comparing the rendered string, you can still misjudge whether the builder is empty and either skip the default statement or double-build it. The length check and the reordering are one fix, not two optional ones.

- **Narrowing the OR-wrap fix to the exact failing query.** Special-casing only the specific subquery shape from `TestSubQuery` will pass that test but leave other single-OR-group nestings (the conditional-preload cases) broken. The rule must be general: any lone OR-group stays wrapped.

- **Treating the unscoped removal as a soft-delete regression.** It looks like removing `!Unscoped` would break unscoped-means-ignore-soft-delete. It does not: unscoped removal of the soft-delete *condition* is handled elsewhere in how those specific clauses render; the guard here was wrongly suppressing *all* schema clauses. Reintroducing the unscoped guard to "be safe" reinstates the bug.

- **Closing rows/conn with a bare deferred close that discards the error.** The reference routes these through the DB's error accumulator so a close failure surfaces. Silently swallowing it can mask corruption but won't itself fail the listed tests — don't let that lull you into leaving the real gating bug in place.

## Provenance

```yaml
uuid: 016372a9-f7b9-4e69-919c-15c286423dc9
instance_id: go-gorm__gorm-4888
fix_patch_sha256: ce7b4e8789c12576bf80e856fa0faca690df6f57669a31d3ff0ee9b6199cab21
language: go
targets_total: 824
authored_by: generated
status: verified_reference
golden_score_verified_by: recorded_test_results
golden_score_measured: 1.0
golden_score_runs: 1
caveat: >
  Probes are literal substrings of the reference hunks, so the
  golden-patch probe gate passes by construction and is not
  evidence of probe quality for this bundle.
```
