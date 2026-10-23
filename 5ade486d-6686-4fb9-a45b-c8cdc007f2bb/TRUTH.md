# TRUTH.md - juanfont__headscale-1681

## Defect

The milestone bundles 40 announced issue(s):
1. (#1681): MagicDNS no longer requires nameservers
2. (#1823): feat: derpmap field in config
3. (#2005): chore: configure some actions to be skipped for forks
4. (#1934): re-construct OIDC config and flatten keycloak groups
5. (#1990): [Feature] OIDC with permanent ID
6. (#2038): Add -race Flag to GitHub Action and Fix Data Race in CreateTailscaleNodesInUser
7. (#1953): [Feature] Support for derp's verify-client-url
8. (#2132): Add compatibility with only websocket-capable clients
9. (#2133): [Bug] Debian packages use incorrect shell
10. (#2143): Update flake.lock
11. (#2128): [Feature] Allow nodes to use SSH agent forwarding
12. (#2147): [Bug] Unable to delete node
13. (#2149): remove versions older than 1.56
14. (#2150): use tsaddr library and cleanups
15. (#2154): [docs] Add Ouroboros to community web ui list
16. (#1369): Tagged devices should not have access permissions of their owning user
17. (#2156): use gorm serialiser instead of custom hooks
18. (#2158): Update flake.lock
19. (#2161): Changed all the html into go using go-elem
20. (#2164): [Bug] Tailscale HEAD (1eaad7d3d) is broken in integration tests
...and 20 more.

The reference change touches 122 file(s) in go. 5 target test(s) observe the result and 4 preserve test(s) must keep passing.

## Load-bearing work

The reference change lands in 8 file(s):

- `hscontrol/oidc.go`
- `proto/headscale/v1/headscale.proto`
- `hscontrol/templates/apple.go`
- `integration/dsic/dsic.go`
- `hscontrol/app.go`
- `hscontrol/policy/acls.go`
- `hscontrol/types/config.go`
- `hscontrol/types/node.go`

What each file must end up doing is declared in `tests/rubrics.json`, which is what the deterministic channel reads. This section names the files so a reader knows the shape of the work, not the text to type.

## Verification

Run the target test(s) recorded in `tests/config.json` (5) and confirm the preserve set (4) still passes.

## Root cause

The OIDC authentication path, the user-facing HTML templates, the ACL policy engine, and the node/DNS data model in this codebase were all built around assumptions that no longer hold and are internally inconsistent with each other.

Concretely:

- OIDC provider setup lived as a method on the main server object, hanging its state (provider, oauth config, registration cache) directly off that object. There was no abstraction that let a web-only login flow and an OIDC login flow be treated uniformly, so the server had to branch on whether OIDC was configured at each call site, and the registration cache stored only a machine key with no place to carry PKCE verifier state. Because the cache and claims types were tied to this single concrete shape, no PKCE-capable or verifier-carrying flow could be expressed, and the ACL/policy code could not be handed a manager-style dependency.

- The policy engine compiled filter rules and SSH policies from peers alone, without being given the set of users. Group and user expansion therefore had to reach for user data that was not passed in, so user-scoped sources (`group:`, user logins) could not be resolved correctly. SSH principals were also emitted with agent forwarding disabled and wildcard handling that did not short-circuit.

- The DNS config carried a single field that conflated the headscale-internal DNS representation with the tailcfg representation sent to clients, plus a now-removed username-in-magic-DNS toggle. Code that read the tailcfg form and code that read the internal form both pointed at the same field, so one of the two consumers saw the wrong structure.

- The node model persisted keys and structured fields via hand-maintained shadow "database field" columns and manual marshal/unmarshal, rather than letting the ORM serialize the real typed fields. Any code reading the typed field before the shadow field was populated (or vice versa) saw a zero value.

The tests in `types`, `policy`, `mapper`, `util`, and the integration suite exercise these paths together, so they fail until the pieces agree on one shape.

## Solution shape

The code must end up with these properties:

1. **A pluggable auth provider.** Introduce an interface that both a web-login flow and an OIDC flow satisfy, so the server holds one provider value and never branches on "is OIDC configured" at each request site. The OIDC implementation is constructed via a constructor that takes a context, the server URL, the OIDC config, the database, the notifier, the IP allocator, and a policy manager, and returns an error if the provider cannot be created. Its registration cache must store a value that carries **both** the machine key **and** an optional verifier, not just the key — so PKCE state survives across the redirect round-trip.

2. **Policy compilation is user-aware.** The functions that compile filter rules and SSH policies, and the alias/source expansion helpers, must all accept the list of users as a parameter and thread it through. Group and user expansion resolves against that passed-in slice. SSH policy must allow agent forwarding and must short-circuit on a wildcard source rather than continuing to expand.

3. **Internet-range construction uses the canonical Tailscale address helpers** (all-IPv4, the Tailscale ULA range, the CGNAT range) instead of hand-typed prefixes.

4. **DNS config is split in two.** Keep one field holding the headscale-internal DNS representation and a separate field holding the tailcfg representation used when building netmaps. Every consumer that sends DNS to clients reads the tailcfg field; the username-in-magic-DNS toggle and its deprecation warnings are removed.

5. **Node fields serialize directly.** The real typed key/endpoint/hostinfo/IP/tag fields must be persisted by the ORM's serializer tags (text for keys and addrs, json for structured values), eliminating the shadow columns and manual conversion, so there is a single source of truth per field.

6. **Config gains PKCE and validation.** Add a PKCE sub-config (enabled flag plus method), constants for the two valid methods, and a validator that rejects any other method. Add validation that the server URL cannot be embedded in the base domain in a way that breaks DERP reachability.

7. **The proto surface and generated user RPCs move to id-based addressing** (rename/delete by id, list, etc.), and the HTML templates are produced by a Go element-builder rather than raw string literals.

## Ordered plan

1. **Fix the node model first**, because the mapper and policy tests read nodes and the persisted shape must be stable before anything else can be trusted. Replace the shadow-column-plus-manual-conversion scheme with serializer-tagged typed fields, and add the helper predicates the callers need (given-name-changed detection, hostinfo application, nodekey membership). Result: reading a node yields the typed value directly, which the mapper tests depend on.

2. **Split the DNS config field** and remove the username-in-magic-DNS path. This is a prerequisite for the app wiring, because the app reads the tailcfg DNS field when constructing MagicDNS routes. Until the split exists, that code cannot compile against a correct type.

3. **Make policy compilation user-aware.** Add the users parameter to the filter-rule and SSH-policy compilers and to every expansion helper, and thread it down. Switch the internet-range builder to the canonical address helpers, enable agent forwarding, and short-circuit wildcard SSH sources. The policy package tests pin these signatures and behaviours, so this is where they turn green.

4. **Introduce the auth-provider interface and the OIDC implementation** with its verifier-carrying cache value and its dependency-taking constructor. This depends on steps 1–3 because the constructor takes the database and policy manager, and the cache value references the node/key types finalized earlier.

5. **Rewire the server** to hold a single auth-provider value, construct the web provider by default and swap in the OIDC one (with a bounded context timeout) when configured, load the policy manager once, and rename the scheduled-task loop. This depends on step 4's constructor existing.

6. **Add PKCE config, its constants and validator, and the server-URL-in-base-domain validation.** The types tests assert the new config parses and that invalid PKCE methods are rejected.

7. **Regenerate the proto/gRPC user surface to id-based routes and rebuild the HTML templates with the element builder.** These are needed for the integration suite to drive the API and render pages, and depend on the config/auth work being in place.

## Pitfalls

- **Only converting the cache value at the OIDC construction site.** The verifier must be readable back on the callback request. If you keep the cache typed to a bare machine key anywhere it is written or read, the PKCE verifier is lost between the two halves of the flow and OIDC login silently fails validation while unit tests that don't exercise the round-trip still pass.

- **Threading users into only one of the two compilers.** Both filter-rule compilation and SSH-policy compilation, plus every alias/source expansion helper they call, need the users slice. Fixing filter rules but leaving SSH expansion resolving users the old way passes the filter-rule tests and fails SSH group/user resolution.

- **Leaving the wildcard SSH source without a short-circuit.** If a wildcard source keeps falling through into per-source expansion, you get extra principals or errors instead of a single any-principal rule; the behaviour looks plausible but diverges on wildcard-plus-other-sources policies.

- **Collapsing the two DNS fields back into one.** If any client-facing netmap code reads the internal DNS representation instead of the tailcfg one, MagicDNS routes are built from the wrong structure and the integration DNS assertions fail even though config parsing succeeds.

- **Keeping shadow columns "just for compatibility."** If both the typed field and a manual database field exist, whichever is populated later wins and the other silently reads zero. There must be exactly one source of truth per field, driven by the serializer tag.

- **Hand-typing the internet prefixes to match the old values.** Reproducing the literal CIDRs rather than using the canonical range helpers reintroduces the link-local/ULA/CGNAT boundary bugs the helpers exist to prevent, and drifts from upstream when those ranges change.

- **Enabling OIDC construction without a bounded context.** The provider discovery call reaches the network; without a timeout on the context passed to the constructor, a misconfigured issuer hangs server startup instead of failing fast.

## Provenance

```yaml
uuid: 5ade486d-6686-4fb9-a45b-c8cdc007f2bb
instance_id: juanfont__headscale-1681
fix_patch_sha256: 4242593042dcc78dde27a7f4a7a10c0f1fd1f3bf52f881d4b3724f841f325597
language: go
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
