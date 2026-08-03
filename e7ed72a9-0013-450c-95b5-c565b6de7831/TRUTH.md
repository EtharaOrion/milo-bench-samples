# TRUTH.md - langchain-ai__langchain-845

## Defect

The milestone bundles 11 announced issue(s):
1. (#845): Harrison/image
2. (#8586): Airbyte based loaders
3. (#8879): scheduled tests GHA
4. (#8895): Add base storage interface, 2 implementations and utility encoder
5. (#8938): add instructions on integrating Log10
6. (#8939): Weaviate: adding auth example + fixing spelling in ReadME
7. (#8940): Integrate Rockset as a chat history store
8. (#8941): parent document retriever
9. (#8942): document lcel fallbacks
10. (#8944): Add id in error in tracer
11. (#8951): bump 259

The reference change touches 37 file(s) in python. 9 target test(s) observe the result and 949 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `libs/langchain/langchain/memory/chat_message_histories/rocksetdb.py`
- `libs/langchain/langchain/document_loaders/airbyte.py`
- `libs/langchain/langchain/retrievers/parent_document_retriever.py`
- `libs/langchain/langchain/storage/file_system.py`
- `libs/langchain/langchain/storage/encoder_backed.py`
- `libs/langchain/langchain/storage/in_memory.py`
- `libs/langchain/langchain/utilities/dalle_image_generator.py`
- `libs/langchain/langchain/schema/storage.py`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (9) and confirm the preserve set (949) still passes.

## Root cause

The failing tests exercise a key-value storage abstraction that does not yet exist in the library. The tests import a storage type and instantiate two concrete implementations — one backed by an in-memory dictionary and one backed by the local file system — and then call a small set of methods on them: bulk get, bulk set, bulk delete, and an iterator over stored keys (optionally filtered by a prefix). Because neither the abstract interface nor either concrete implementation is present, the imports at the top of the test modules fail to resolve, and every test in those modules errors out before any assertion runs.

The file-system tests additionally expect that keys are validated: a key containing characters that would be unsafe or ambiguous when mapped onto a filesystem path must be rejected with a dedicated exception rather than being silently written to disk or triggering a raw OS error. Without a validation step and a purpose-built exception type, the "invalid key" test cannot observe the specific failure it asserts.

## Solution shape

There must be an abstract key-value store contract, generic over a key type and a value type, that declares four operations: fetch many (returning, per requested key, either the stored value or a null placeholder preserving order), store many (accepting key/value pairs), delete many, and yield the stored keys with an optional prefix filter. All four are abstract; the contract itself stores nothing.

Two concrete implementations must satisfy that contract:

- A dictionary-backed store. `mget` returns each key's value or None in request order; `mset` inserts pairs; `mdelete` removes keys; the key-yielding method returns every stored key, or only those starting with a given prefix when one is supplied.
- A filesystem-backed store rooted at a directory. Each key maps deterministically to a file under the root; `mset` writes bytes, `mget` reads them back (missing files yield None), `mdelete` removes the files, and the key-yielding method walks the tree reconstructing keys, honoring a prefix filter. Before a key is used to form a path it must be validated against an allowed character set; a key that fails validation raises a distinct, catchable exception (not a generic `ValueError` or an OS-level error).

```
store.mset([(k1, v1), (k2, v2)])
store.mget([k1, missing, k2]) -> [v1, None, v2]
store.mdelete([k1]); store.mget([k1]) -> [None]
list(keys(prefix="k")) -> keys beginning with "k"
filesystem_store.mset([(unsafe_key, b"...")]) -> raises the invalid-key exception
```

The abstract contract and both implementations must be importable from the storage package the tests import from.

## Ordered plan

1. Read the two test modules first. They pin down the exact method names, their signatures, the ordering guarantee of the bulk-get, the prefix behavior of the key iterator, and — for the filesystem case — which keys count as invalid and what exception is expected. Everything else follows from these expectations, so establish them before writing code.

2. Define the abstract contract, because both implementations depend on it and the tests import the interface type directly. Make it generic and declare the four operations as abstract so the concrete classes are forced to provide all of them.

3. Build the dictionary-backed implementation, since it is the simplest and lets you confirm the interface shape and the ordering/None semantics of bulk-get without any I/O in the way. Passing its tests validates the contract itself.

4. Introduce the dedicated invalid-key exception before the filesystem store, because the store's write path must raise it and the test asserts on that specific type.

5. Build the filesystem-backed implementation. Decide the key-to-path mapping and the reverse walk together so that yielded keys round-trip with written keys. Wire the key validation into every method that turns a key into a path, then confirm round-trip read/write, deletion, prefix-filtered enumeration, and the invalid-key rejection.

6. Make all three types importable from the storage package the tests reference, so the module-level imports resolve.

## Pitfalls

- Validating keys in only one place. The invalid-key test may only exercise the write path, but any method that constructs a path from a key (read, delete, and the key iterator's reverse mapping) must apply the same validation or the same allowed-character discipline; a narrow fix that guards only `mset` passes the named test yet leaves the other entry points able to escape the root or produce inconsistent keys.

- Breaking the ordering/None contract of bulk-get. Returning a dict, skipping missing keys, or reordering results will pass a happy-path test but fail the case that interleaves a missing key between present ones. The return must be a list aligned positionally with the requested keys, with None for absent ones.

- Making the key iterator return all keys when a prefix is given, or returning the raw file paths instead of reconstructed keys. The prefix test expects filtering, and the filesystem walk must invert the key-to-path mapping so yielded values equal the original keys, not path fragments.

- Raising a generic error for invalid keys. The test asserts on a specific exception type; letting the underlying filesystem raise its own error, or raising a plain `ValueError`, makes the assertion pass by accident or not at all depending on the platform.

- Assuming the file store's directory structure is flat. If keys can nest (via prefix or path-like content), the enumeration must recurse; a single-level directory listing will silently omit keys and fail the yield test.

## Provenance

```yaml
uuid: e7ed72a9-0013-450c-95b5-c565b6de7831
instance_id: langchain-ai__langchain-845
fix_patch_sha256: 9eb9cb9d1b3163f2ed10254071da8142d03790b5f4181a5f1e3b14def8cf9020
language: python
targets_total: 9
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
