# TRUTH.md - halo-dev__halo-2226

## Defect

The milestone bundles 6 announced issue(s):
1. (#2226): [release-1.5] perf: accessing /install after initialization redirects to 404
2. (#2285): [release-1.5] fix: issue of post details page without meta_description variables
3. (#2332): [release-1.5] fix: fail to delete multiple files if the files are removed from upstream storage
4. (#2336): [release-1.5] fix: Qiniuoss cannot upload non image attachments
5. (#2407): [release-1.5] fix: getPostBy() does not return posts in subcategories
6. (#2541): release: 1.5.5

The reference change touches 10 file(s) in java. 5 target test(s) observe the result and 249 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `src/main/java/run/halo/app/service/impl/PostCategoryServiceImpl.java`
- `src/main/java/run/halo/app/controller/content/model/PostModel.java`
- `src/main/java/run/halo/app/handler/file/QiniuOssFileHandler.java`
- `src/main/java/run/halo/app/handler/file/UpOssFileHandler.java`
- `src/main/java/run/halo/app/controller/content/MainController.java`
- `src/main/resources/admin/index.html`
- `src/main/resources/admin/js/431.e78cbf9a.js`
- `src/main/resources/admin/js/918.d8b937ef.js`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (5) and confirm the preserve set (249) still passes.

## Root cause

The methods in the post/category service that resolve posts belonging to a category do so by querying only the *exact* category id supplied. They call the repository lookup that maps a single category id to its associated post ids, and stop there.

But categories in this system form a tree: a category can have child (sub) categories, and posts may be attached to those children rather than to the parent directly. Given a query for a parent category, the current logic returns only the posts directly bound to that parent, silently omitting every post that lives under a descendant category. From the caller's perspective, listing posts by a parent category (by id, by slug, filtered by one status, or by a set of statuses) under-reports — a parent that contains only sub-categorized posts appears empty.

The tests exercise exactly this: a category hierarchy where posts hang off child categories, then assert that querying the ancestor returns the union of all posts reachable through the subtree. Because the production code never expands the category into its descendants, those assertions fail.

## Solution shape

Every code path that turns a category (identified by id, or resolved from a slug) into a set of post ids must first expand that category into the full set of categories in its subtree — the category itself plus all transitive descendants — and then gather post ids across *all* of them, unioning the results.

Concretely, wherever the code currently does:

```
postIds = repository.postIdsFor(categoryId [, status...])
```

it must instead do:

```
categories = categoryService.subtreeOf(categoryId)   // self + all descendants
postIds = union over c in categories of repository.postIdsFor(c.id [, status...])
```

Properties any correct fix must have:
- The expansion uses whatever existing service capability enumerates a category and its descendants; it must include the root category itself, not only its children.
- Deduplication: a post reachable via multiple paths must appear once (use a set-valued accumulation).
- The status filter (single status, and the multi-status variant) must be preserved and applied to each per-category lookup, not dropped during the rewrite.
- This must be applied consistently to *all* affected overloads: the id-based lookup with no status, the id-based lookup with a status, the slug-resolved lookups, and the variants that return post entities from the collected ids. Fixing only one overload leaves the others reporting the bug.

## Ordered plan

1. Identify every method in the post-category service that produces post ids (or post entities) from a category identifier. There are several near-identical overloads (id vs. slug, no-status vs. single-status vs. status-set, id-set vs. entity result). List them first, because the fix is the same shape applied to each and missing one keeps a test red.

2. Confirm the tree-expansion capability that already exists on the category service — a method that yields a category and its descendants given an id. This is what you build the union on; verify it returns the root inclusively (if it returns only children, you must add the root yourself).

3. Rewrite each identified method so that instead of a single repository call it expands the category id into the subtree, maps each subtree category to its post ids via the existing repository lookup (passing through the status argument where the overload has one), and collects the flattened results into a deduplicated set. Do this uniformly; the entity-returning overloads then feed that set into the post-by-ids fetch unchanged.

4. Run the five named service tests. They cover id/slug × single-status/status-set/no-status, so a green run across all five is your signal that no overload was missed. If one fails, it points directly at the overload you skipped in step 1.

5. Run the remaining suite to confirm the broadened result set (now including subtree posts) doesn't violate any existing expectation elsewhere.

The dependency order matters: step 2 gates step 3 (you must know the expansion includes the root before you write the union), and step 1 gates step 4 (you can't trust a green subset until you know you enumerated all call sites).

## Pitfalls

- **Fixing only the id-based method.** The slug-resolved methods resolve to a category and then repeat the same flawed single-category lookup. `listPostBySlugIdAndStatusTest` and `listPostBySlugIdAndStatusesTest` will stay red if you only patch the id overloads.

- **Dropping the status argument during the rewrite.** When you introduce the map-over-subtree step, it's easy to call the no-status repository lookup for every overload. The single-status and status-set tests will then return posts of the wrong status and fail. Each overload must forward its own status parameter into the per-category lookup.

- **Expanding to children only, excluding the root.** If the subtree helper returns only descendant categories, posts attached directly to the queried category itself vanish from the result. The union must include the root category id.

- **Not deduplicating.** Accumulating into a list rather than a set can double-count posts if the data model ever allows a post to be reachable through more than one category in the subtree; use set semantics for the accumulation and for the final id collection.

- **Assuming a flat/one-level fix suffices.** The relationship is transitive — grandchildren must be reached too. A fix that manually looks up direct children only passes shallow fixtures but not a deeper hierarchy; rely on the existing full-subtree enumeration rather than a single level of children.

(The other files touched in the reference change — preview/description handling, OSS file handlers, the 404 controller path, and the bundled admin assets — are unrelated to these five failing tests and are not what makes them pass.)

## Provenance

```yaml
uuid: adc88585-1c5d-4a03-a88d-ca3e400d8d66
instance_id: halo-dev__halo-2226
fix_patch_sha256: e6d07a1fdf723fe12640e95a7ca8dc7eba87f26930fed2fa5360ab450bc34994
language: java
targets_total: 5
authored_by: generated
status: verified_reference
golden_score_measured: 1.0
golden_score_runs: 1
golden_score_verified_by: recorded_test_results
caveat: >
  Probes are literal substrings of the reference hunks, so the
  golden-patch probe gate passes by construction and is not
  evidence of probe quality for this bundle.
```
