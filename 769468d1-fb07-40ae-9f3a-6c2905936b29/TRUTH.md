# TRUTH.md - 99designs__gqlgen-179

## Defect

The milestone bundles 2 announced issue(s):
1. (#170): panics if run in package main
2. (#180): Fix a bug custom scalar marshallers in external packages

The reference change touches 12 file(s) in go. 3 target test(s) observe the result and 17 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 7 file(s):

- `codegen/config.go`
- `codegen/codegen.go`
- `codegen/import.go`
- `codegen/type.go`
- `codegen/build.go`
- `codegen/import_build.go`
- `codegen/util.go`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (3) and confirm the preserve set (17) still passes.

## Root cause

The routine that computes a package's import path (relative to `$GOPATH/src`) is fed the wrong input. It takes an output directory and a package name, then joins the *parent* of that directory with the package name before stripping the GOPATH prefix. This construction is broken in two ways.

First, it assumes the leaf segment of the import path always equals the Go package name — but the on-disk directory name and the declared `package` clause frequently differ, and the output filename is not itself a path component. Splicing `filepath.Dir(dir)` with `pkgName` therefore fabricates a path that need not correspond to any real directory, so the GOPATH-prefix search operates on a mangled string.

Second, because the package name is derived by simply taking the base name of the output directory, a directory whose folder name differs from its `package` declaration gets the wrong package name entirely, and generated code then references a package that doesn't exist.

The GOPATH-stripping loop itself is sound, but it must be applied to the real output directory, not to a `dir(parent)+pkgName` composite. The failing tests exercise the prefix-stripping logic directly (GOPATH longer than the path, stopping at the first matching GOPATH entry), and they can only pass if that logic runs against a clean absolute directory path.

## Solution shape

The import-path computation must become a method on the package-config value that operates purely on that config's own output directory:

```
importPath(cfg):
    dir = cfg.outputDir()          # absolute dir of the output file
    for gopath in split(GOPATH):
        srcRoot = join(gopath, "src") + sep
        if len(srcRoot) > len(dir): continue
        if equalFold(srcRoot, dir[:len(srcRoot)]):
            dir = dir[len(srcRoot):]
            break
    return toSlash(dir)
```

No parent-directory manipulation, no splicing of the package name. The package name should instead be resolved by *asking the build system* what package lives at that import path (import the package at the computed path); only if that yields nothing should it fall back to the directory's base name.

A validation step must exist for the package config: reject a package value that contains path separators or dots (it should be a bare package name, not a path or filename), and reject a filename that isn't a `.go` file. This validation, plus the equivalent checks for each configured package (models, exec, model), should run and have their errors wrapped with context identifying which config section failed.

Separately, the cast-type on a field must carry both the Go type name and its import so the correct alias can be emitted, rather than being a pre-rendered string built from an alias that may not yet be finalized. Concretely, an import's alias must not be readable until imports are collected and deduplicated; reading it early is a programming error. So:

- The cast-type field becomes a reference holding a type name plus an optional import, and template rendering asks that reference for its fully-qualified name.
- The import's alias becomes accessible only through an accessor that fails loudly if consulted before finalization; all producers set the backing field, all consumers go through the accessor.

## Ordered plan

1. **Move the import-path computation onto the package config and feed it the real output directory.** This is the change the named tests observe. Do it first because everything downstream (package-name resolution, validation) depends on having a correct import path available per config. Verify the three prefix-stripping cases pass.

2. **Resolve the package name by importing the package at that path**, with a base-name fallback. This depends on step 1 because it consumes the corrected import path. Its result: config whose folder name differs from its `package` clause now generates references to the right package.

3. **Add per-config validation** (bare package name, `.go` filename) and wire it into config load, wrapping each section's error with which section it came from. This is independent of steps 1–2 in mechanism but belongs after them because the checks assume the config already carries the fields being validated.

4. **Convert the cast type from a rendered string to a type+import reference**, and change the field-building code to populate that reference instead of concatenating an alias-qualified string. This is prompted by the alias-finalization problem and must precede step 5's guard, because the old concatenation reads the alias eagerly.

5. **Make the import alias unreadable until finalized:** change producers to set the backing field, add an accessor that panics if the alias is empty, and route all readers (type qualifier rendering, collision reporting) through it. Do this last because it's the guard that catches any remaining eager readers introduced by earlier steps.

6. Update the synthetic `Type` constructions and the schema-raw/package-name plumbing to match the new field types (reference instead of string, nil instead of empty string), so the package still compiles.

## Pitfalls

- **Fixing only the prefix loop to satisfy the three tests, while leaving the parent+pkgName splice in place.** The tests can pass against a helper that still receives a mangled path if you happen to test it with a path whose leaf already equals the package. The general defect is the *input* to the loop, not the loop; the fix must remove the `filepath.Dir(dir)`/package-name composition entirely and operate on the actual directory.

- **Keeping the base-name-of-directory package derivation.** That is the second half of the bug: a directory named differently from its `package` clause still produces wrong output. The name must come from importing the package, with base-name only as a fallback.

- **Reading an import's alias before dedup runs.** After you turn the cast type into a reference that later renders a qualified name, any code path that materializes the alias during field construction (rather than at template time) will observe an empty or non-final alias. The whole point of the panicking accessor is to surface exactly this; if you leave a producer setting `alias` and a consumer reading it directly, you'll get silently wrong aliases instead of a loud failure.

- **Forgetting the other config sections.** Adding validation to only one package config (e.g. models) leaves exec and model unvalidated; all configured packages need the same check, each with its own wrapped error context.

- **Comparing GOPATH-src prefix without the trailing separator or case-fold.** Dropping the appended separator makes `/x/srcfoo` match `/x/src`, and dropping case-insensitivity breaks case-preserving filesystems; both are already handled and must be preserved when the loop is relocated.

## Provenance

```yaml
uuid: 769468d1-fb07-40ae-9f3a-6c2905936b29
instance_id: 99designs__gqlgen-179
fix_patch_sha256: dfa467c1263e01dbae03a598e6c8cf1f47f3d4f164ea942afa36c6e50a5ce349
language: go
targets_total: 3
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
