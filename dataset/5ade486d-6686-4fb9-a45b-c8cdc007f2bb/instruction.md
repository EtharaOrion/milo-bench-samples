I've uploaded a Go code repository in the directory /workspace/headscale. Consider the following issue description:

<issue_description>
# MagicDNS no longer requires nameservers

## Issue 1 (#1681): MagicDNS no longer requires nameservers

<!--
Headscale is "Open Source, acknowledged contribution", this means that any
contribution will have to be discussed with the Maintainers before being submitted.

This model has been chosen to reduce the risk of burnout by limiting the
maintenance overhead of reviewing and validating third-party code.

Headscale is open to code contributions for bug fixes without discussion.

If you find mistakes in the documentation, please submit a fix to the documentation.
-->

According to https://tailscale.com/kb/1081/magicdns#accessing-devices-over-magicdns,

> MagicDNS does not require a DNS nameserver if running Tailscale v1.20 or later.

<!-- Please tick if the following things apply. You… -->

- [x] read the [CONTRIBUTING guidelines](README.md#contributing)
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [x] updated documentation if needed
- [ ] updated CHANGELOG.md

<!-- If applicable, please reference the issue using `Fixes #XXX` and add tests to cover your new code. -->

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

- **Chores**
	- Updated the configuration example by removing an outdated comment regarding the `magic_dns` feature. The feature remains enabled.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 2 (#1823): feat: derpmap field in config

<!--
Headscale is "Open Source, acknowledged contribution", this means that any
contribution will have to be discussed with the Maintainers before being submitted.

This model has been chosen to reduce the risk of burnout by limiting the
maintenance overhead of reviewing and validating third-party code.

Headscale is open to code contributions for bug fixes without discussion.

If you find mistakes in the documentation, please submit a fix to the documentation.
-->

<!-- Please tick if the following things apply. You… -->

- [x] read the [CONTRIBUTING guidelines](README.md#contributing)
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [ ] updated documentation if needed
- [ ] updated CHANGELOG.md

Currently DERP map can be set only from URLs or local yaml config paths. This PR adds a simple and optional `DERPMap` config field which allows setting initial DERP map which is useful when using headscale programatically. 

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

- **New Features**
	- Enhanced configuration capabilities with the addition of a `DERPMap` field in the DERP configuration.
	- Improved logic in the DERP map retrieval process to prevent runtime errors by excluding nil values.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 3 (#2005): chore: configure some actions to be skipped for forks

This is just a simple change. 

This will configure some actions to be skipped for forks, as the actions that are changed here depend on the main repository or the configured secrets, so it makes no sense to run them for forks. This will also remove failed cron jobs from the forks, rest of the actions that don't depend on anything are left untouched.

## Issue 4 (#1934): re-construct OIDC config and flatten keycloak groups

<!--
Headscale is "Open Source, acknowledged contribution", this means that any
contribution will have to be discussed with the Maintainers before being submitted.

This model has been chosen to reduce the risk of burnout by limiting the
maintenance overhead of reviewing and validating third-party code.

Headscale is open to code contributions for bug fixes without discussion.

If you find mistakes in the documentation, please submit a fix to the documentation.
-->
* use the `claims_map` to extract the designed information by the name which was a fixed map.  the `username` needs to be careful because now OIDC uses `claim.username` as USERNAME, if you want to keep same as before (Email), please set  `username=email` .
* combine `allowed_domains`,`allowed_groups`,`allowed_userd` to `allowed`
* add `misc` to save the random thing. if you set `misc.flatten_groups=true`, it will try to flatten the groups. this is for keycloak which group format is "/group/subgroup". 
* The `misc.strip_email_domain` only works when the `username` is email format, e.g `claims_map.usename=email`

new OIDC config
```yaml
oidc:
  only_start_if_oidc_is_available: true
  issuer: "https://auth.example.com/auth/realms/master"
  client_id: "YOUR_CLIENT_ID"
  client_secret: "YOUR_SECRET"
  #   # Alternatively, set `client_secret_path` to read the secret from the file.
  #   # It resolves environment variables, making integration to systemd's
  #   # `LoadCredential` straightforward:
  #   client_secret_path: "${CREDENTIALS_DIRECTORY}/oidc_client_secret"
  #   # client_secret and client_secret_path are mutually exclusive.
  #
  #   # Customize the scopes used in the OIDC flow, defaults to "openid", "profile" and "email" and add custom query
  #   # parameters to the Authorize Endpoint request. Scopes default to "openid", "profile" and "email".
  # scope: ["openid", "profile", "email"]

  expiry:
    #
    #   # Use the expiry from the token received from OpenID when the user logged
    #   # in, this will typically lead to frequent need to reauthenticate and should
    #   # only been enabled if you know what you are doing.
    #   # Note: enabling this will cause `oidc.expiry.fixed_time` to be ignored.
    from_token: false
    #
    #   # The amount of time from a node is authenticated with OpenID until it
    #   # expires and needs to reauthenticate.
    #   # Setting the value to "0" will mean no expiry.
    fixed_time: 180d

  #   extra_params:
  #     domain_hint: example.com

  # allowd:
  #   domains:
  #     # List allowed principal domains and/or users. If an authenticated user's domain is not in this list, the
  #     # authentication request will be rejected.
  #     - example.com
  #   groups:
  #     # List allowed groups. 
  #     - admins
  #   users:
  #     - admin@example.com

  #  Map claims from the OIDC token to the user object
  claims_map:
    name: name
    username: preferred_username
    email: email
    groups: groups
    

  #  some random configuration
  misc:
    # if the username is set to `email` then `strip_email_domain` is valid
    # If `strip_email_domain` is set to `true`, the domain part of the username email address will be removed.
    # This will transform `first-name.last-name@example.com` to the user `first-name.last-name`
    # If `strip_email_domain` is set to `false` the domain part will NOT be removed resulting to the following
    # user: `first-name.last-name.example.com`
    strip_email_domain: true
    # If `flatten_groups` is set to `true`, the groups claim will be flattened to a single level.
    # this is used for keycloak where the groups are nested. the groups format from keycloak is `group1/subgroup1/subgroup2`
    flatten_groups: true
    # If `flatten_splitter` is set to a string, the groups claim will be split by the string and flattened to a single level.
    flatten_splitter: "/"
```

<!-- Please tick if the following things apply. You… -->

- [x] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [ ] updated documentation if needed
- [ ] updated CHANGELOG.md

<!-- If applicable, please reference the issue using `Fixes #XXX` and add tests to cover your new code. -->

## Issue 5 (#1990): [Feature] OIDC with permanent ID

### Use case

Currently, if user account in external system might have an email or username changed, OIDC authentication in Headscale won't match an existing user in DB, and another user will be created instead.

### Description

### Use OIDC `sub` claim as a permanent identifier for a user

If we use [`sub`](https://openid.net/specs/openid-connect-basic-1_0.html#StandardClaims) claim as a permanent unique ID for a user, we can match OIDC authenticated user with it instead of a username, and update a username (email) in DB if it differs. We should make updating optional as ACLs might stop applying to affected users.


### Use and save OIDC `email` claim regardless of email domain stripping

_A discussion is probably needed._
<img width="277" alt="Screenshot 2024-06-22 at 5 21 29 PM" src="https://github.com/juanfont/headscale/assets/80180243/56a8d96e-2c39-4be6-a16a-c5b63e76691e">
`email`, if available, could be used to display as `LoginName` in Tailscale clients. Or, it could be another way to identify users in ACLs if `strip_email_domain` is turned on, particularly, to avoid username collisions if multiple domains are allowed to login. 

But considering https://github.com/juanfont/headscale/pull/1987, we might not need to strip email domains anymore.

### Contribution

- [X] I can write the design doc for this feature
- [X] I can contribute this feature

## Issue 6 (#2038): Add -race Flag to GitHub Action and Fix Data Race in CreateTailscaleNodesInUser

<!--
Headscale is "Open Source, acknowledged contribution", this means that any
contribution will have to be discussed with the Maintainers before being submitted.

This model has been chosen to reduce the risk of burnout by limiting the
maintenance overhead of reviewing and validating third-party code.

Headscale is open to code contributions for bug fixes without discussion.

If you find mistakes in the documentation, please submit a fix to the documentation.
-->

<!-- Please tick if the following things apply. You… -->

- [x] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [ ] updated documentation if needed
- [ ] updated CHANGELOG.md

<!-- If applicable, please reference the issue using `Fixes #XXX` and add tests to cover your new code. -->

- This PR adds the -race flag to both unit and integration tests and addresses data race issues in the CreateTailscaleNodesInUser method.

The changes include:

- Added -race flag: Included the -race flag in both test and test_integration targets in the Makefile to enable race condition detection for unit and integration tests. Github action is also configured to detect data races.
- Fixed data race in CreateTailscaleNodesInUser: Updated the CreateTailscaleNodesInUser method to resolve data race issues related to concurrent access.

### Log
```
WARNING: DATA RACE
Read at 0x00c000356030 by goroutine 106:
  github.com/juanfont/headscale/integration.(*Scenario).CreateTailscaleNodesInUser.func1()
      /Users/dongjunna/br/headscale/integration/scenario.go:336 +0x84
  golang.org/x/sync/errgroup.(*Group).Go.func1()
      /go/pkg/mod/golang.org/x/sync@v0.7.0/errgroup/errgroup.go:78 +0x7c

Previous write at 0x00c000356030 by goroutine 8:
  github.com/juanfont/headscale/integration.(*Scenario).CreateTailscaleNodesInUser()
      /Users/dongjunna/br/headscale/integration/scenario.go:330 +0x574
  github.com/juanfont/headscale/integration.(*Scenario).CreateHeadscaleEnv()
      /Users/dongjunna/br/headscale/integration/scenario.go:481 +0x218
  github.com/juanfont/headscale/integration.TestACLHostsInNetMapTable.func1()
      /Users/dongjunna/br/headscale/integration/acl_test.go:274 +0x120
  testing.tRunner()
      /usr/local/go/src/testing/testing.go:1689 +0x180
  testing.(*T).Run.gowrap1()
      /usr/local/go/src/testing/testing.go:1742 +0x40

Goroutine 106 (running) created at:
  golang.org/x/sync/errgroup.(*Group).Go()
      /go/pkg/mod/golang.org/x/sync@v0.7.0/errgroup/errgroup.go:75 +0x10c
  github.com/juanfont/headscale/integration.(*Scenario).CreateTailscaleNodesInUser()
      /Users/dongjunna/br/headscale/integration/scenario.go:335 +0x19c
  github.com/juanfont/headscale/integration.(*Scenario).CreateHeadscaleEnv()
      /Users/dongjunna/br/headscale/integration/scenario.go:481 +0x218
  github.com/juanfont/headscale/integration.TestACLHostsInNetMapTable.func1()
      /Users/dongjunna/br/headscale/integration/acl_test.go:274 +0x120
  testing.tRunner()
      /usr/local/go/src/testing/testing.go:1689 +0x180
  testing.(*T).Run.gowrap1()
      /usr/local/go/src/testing/testing.go:1742 +0x40

Goroutine 8 (running) created at:
  testing.(*T).Run()
      /usr/local/go/src/testing/testing.go:1742 +0x5e4
  github.com/juanfont/headscale/integration.TestACLHostsInNetMapTable()
      /Users/dongjunna/br/headscale/integration/acl_test.go:268 +0x1f6c
  testing.tRunner()
      /usr/local/go/src/testing/testing.go:1689 +0x180
  testing.(*T).Run.gowrap1()
      /usr/local/go/src/testing/testing.go:1742 +0x40
==================
==================
WARNING: DATA RACE
Read at 0x00c0001961d0 by goroutine 106:
  github.com/juanfont/headscale/integration/tsic.New()
      /Users/dongjunna/br/headscale/integration/tsic/tsic.go:195 +0x38c
  github.com/juanfont/headscale/integration.(*Scenario).CreateTailscaleNodesInUser.func1()
      /Users/dongjunna/br/headscale/integration/scenario.go:336 +0xa8
  golang.org/x/sync/errgroup.(*Group).Go.func1()
      /go/pkg/mod/golang.org/x/sync@v0.7.0/errgroup/errgroup.go:78 +0x7c

Previous write at 0x00c0001961d0 by goroutine 8:
  github.com/juanfont/headscale/integration.(*Scenario).CreateTailscaleNodesInUser()
      /Users/dongjunna/br/headscale/integration/scenario.go:330 +0x4ec
  github.com/juanfont/headscale/integration.(*Scenario).CreateHeadscaleEnv()
      /Users/dongjunna/br/headscale/integration/scenario.go:481 +0x218
  github.com/juanfont/headscale/integration.TestACLHostsInNetMapTable.func1()
      /Users/dongjunna/br/headscale/integration/acl_test.go:274 +0x120
  testing.tRunner()
      /usr/local/go/src/testing/testing.go:1689 +0x180
  testing.(*T).Run.gowrap1()
      /usr/local/go/src/testing/testing.go:1742 +0x40

Goroutine 106 (running) created at:
  golang.org/x/sync/errgroup.(*Group).Go()
      /go/pkg/mod/golang.org/x/sync@v0.7.0/errgroup/errgroup.go:75 +0x10c
  github.com/juanfont/headscale/integration.(*Scenario).CreateTailscaleNodesInUser()
      /Users/dongjunna/br/headscale/integration/scenario.go:335 +0x19c
  github.com/juanfont/headscale/integration.(*Scenario).CreateHeadscaleEnv()
      /Users/dongjunna/br/headscale/integration/scenario.go:481 +0x218
  github.com/juanfont/headscale/integration.TestACLHostsInNetMapTable.func1()
      /Users/dongjunna/br/headscale/integration/acl_test.go:274 +0x120
  testing.tRunner()
      /usr/local/go/src/testing/testing.go:1689 +0x180
  testing.(*T).Run.gowrap1()
      /usr/local/go/src/testing/testing.go:1742 +0x40

Goroutine 8 (running) created at:
  testing.(*T).Run()
      /usr/local/go/src/testing/testing.go:1742 +0x5e4
  github.com/juanfont/headscale/integration.TestACLHostsInNetMapTable()
      /Users/dongjunna/br/headscale/integration/acl_test.go:268 +0x1f6c
  testing.tRunner()
      /usr/local/go/src/testing/testing.go:1689 +0x180
  testing.(*T).Run.gowrap1()
      /usr/local/go/src/testing/testing.go:1742 +0x40
==================
==================
WARNING: DATA RACE
Read at 0x00c0001961d8 by goroutine 106:
  github.com/juanfont/headscale/integration/tsic.New()
      /Users/dongjunna/br/headscale/integration/tsic/tsic.go:195 +0x38c
  github.com/juanfont/headscale/integration.(*Scenario).CreateTailscaleNodesInUser.func1()
      /Users/dongjunna/br/headscale/integration/scenario.go:336 +0xa8
  golang.org/x/sync/errgroup.(*Group).Go.func1()
      /go/pkg/mod/golang.org/x/sync@v0.7.0/errgroup/errgroup.go:78 +0x7c

Previous write at 0x00c0001961d8 by goroutine 8:
  github.com/juanfont/headscale/integration.(*Scenario).CreateTailscaleNodesInUser()
      /Users/dongjunna/br/headscale/integration/scenario.go:330 +0x530
  github.com/juanfont/headscale/integration.(*Scenario).CreateHeadscaleEnv()
      /Users/dongjunna/br/headscale/integration/scenario.go:481 +0x218
  github.com/juanfont/headscale/integration.TestACLHostsInNetMapTable.func1()
      /Users/dongjunna/br/headscale/integration/acl_test.go:274 +0x120
  testing.tRunner()
      /usr/local/go/src/testing/testing.go:1689 +0x180
  testing.(*T).Run.gowrap1()
      /usr/local/go/src/testing/testing.go:1742 +0x40

Goroutine 106 (running) created at:
  golang.org/x/sync/errgroup.(*Group).Go()
      /go/pkg/mod/golang.org/x/sync@v0.7.0/errgroup/errgroup.go:75 +0x10c
  github.com/juanfont/headscale/integration.(*Scenario).CreateTailscaleNodesInUser()
      /Users/dongjunna/br/headscale/integration/scenario.go:335 +0x19c
  github.com/juanfont/headscale/integration.(*Scenario).CreateHeadscaleEnv()
      /Users/dongjunna/br/headscale/integration/scenario.go:481 +0x218
  github.com/juanfont/headscale/integration.TestACLHostsInNetMapTable.func1()
      /Users/dongjunna/br/headscale/integration/acl_test.go:274 +0x120
  testing.tRunner()
      /usr/local/go/src/testing/testing.go:1689 +0x180
  testing.(*T).Run.gowrap1()
      /usr/local/go/src/testing/testing.go:1742 +0x40

Goroutine 8 (running) created at:
  testing.(*T).Run()
      /usr/local/go/src/testing/testing.go:1742 +0x5e4
  github.com/juanfont/headscale/integration.TestACLHostsInNetMapTable()
      /Users/dongjunna/br/headscale/integration/acl_test.go:268 +0x1f6c
  testing.tRunner()
      /usr/local/go/src/testing/testing.go:1689 +0x180
  testing.(*T).Run.gowrap1()
      /usr/local/go/src/testing/testing.go:1742 +0x40
```

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

- **New Features**
  - Enhanced testing process by adding race detection for both unit and integration tests.
  
- **Bug Fixes**
  - Improved concurrency control in command execution and Tailscale node creation to prevent race conditions, enhancing reliability. 

- **Style**
  - Cleaned up whitespace for better code formatting.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 7 (#1953): [Feature] Support for derp's verify-client-url

### Use case

When I deploy derp myself and don't want it to be used by other unauthorized clients, the traditional approach is to have derp access tailscaled to verify that the clientKey is in the list via derp's `verify-clients` parameter.

But I don't want to deploy tailscale on derp's nodes, and derp provides the `verify-client-url` parameter to determine if the clientKey is in the list via HTTP. I want Headscale to support this HTTP interface, so I can set derp's `verify-client-url` to the Headscale interface.

### Description

See <https://github.com/tailscale/tailscale/blob/964282d34f06ecc06ce644769c66b0b31d118340/derp/derp_server.go#L1159>.

Derp sent a POST request to `verifyClientsURL` with the following JSON

```json
{
  "NodePublic": "clientKey",
  "Source": "clientIP"
}
```

The expected return is

```json.
{
    "Allow": true
}
```

### Contribution

- [X] I can write the design doc for this feature
- [X] I can contribute this feature

### How can it be implemented?

In Headscale, it could be to provide an HTTP interface that receives an authentication request, checks if the clientKey is in the list of nodes, and returns Allow.

## Issue 8 (#2132): Add compatibility with only websocket-capable clients

<!--
Headscale is "Open Source, acknowledged contribution", this means that any
contribution will have to be discussed with the Maintainers before being submitted.

This model has been chosen to reduce the risk of burnout by limiting the
maintenance overhead of reviewing and validating third-party code.

Headscale is open to code contributions for bug fixes without discussion.

If you find mistakes in the documentation, please submit a fix to the documentation.
-->

<!-- Please tick if the following things apply. You… -->

- [x] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [x] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [x] added integration tests
- [ ] updated documentation if needed
- [x] updated CHANGELOG.md

<!-- If applicable, please reference the issue using `Fixes #XXX` and add tests to cover your new code. -->

I have not touched `CHANGELOG.md`, as I can see Headscale already entered a release candidate phase and I do not expect anything other than bugfixes would be accepted at this point. I'll do so if/when the changes are deemed acceptable and it is clear what version of Headscale they may become a part of.

This is not a new feature, nor does it change the configuration, the patches merely improve compatibility with existing Tailscale client code, hence no documentation changes (although I'm considering that maybe it could save someone a bunch of debugging if the docs mentioned that the Tailscale DERP-over-websocket code ignores the port number in the configured DERP map).

I'd refrain from calling these changes a *bugfix*, though, because not supporting a (currently entirely optional) client capability does not quite sound like a bug.

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

## Release Notes

- **New Features**
  - Enhanced WebSocket support for the DERP server, allowing better communication and flexibility.
  - Added new logging capabilities for Tailscale clients and containers, improving debugging and monitoring.
  - Introduced a configuration option to enable or disable WebSocket DERP connections.
  - New test scenarios for validating client configurations with WebSocket and plain connections.
  - Added a new test case specifically for WebSocket interactions with the DERP server.

- **Bug Fixes**
  - Improved error handling in integration tests to enhance robustness.

- **Tests**
  - Expanded testing coverage for WebSocket interactions and DERP server scenarios.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 9 (#2133): [Bug] Debian packages use incorrect shell

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

Currently, the .deb packages create the `headscale` user with `/bin/sh`: 

https://github.com/juanfont/headscale/blob/fe68f503289db6cb1c2a568b8ae02a45ac632dd6/docs/packaging/postinstall.sh#L32

However, the docs list using `/usr/sbin/nologin`: https://github.com/juanfont/headscale/blob/fe68f503289db6cb1c2a568b8ae02a45ac632dd6/docs/running-headscale-linux-manual.md?plain=1#L44



### Expected Behavior

Create the `headscale` user with a default shell of `/usr/sbin/nologin`. I believe this also generally aligns with standard best practices as well.

### Steps To Reproduce

1. Install `headscale` .deb
2. verify `headscale` shell

### Environment

```markdown
- OS:Ubuntu 22.04.4
- Headscale version: 0.23.0-rc.1
- Tailscale version: N/A
```


### Runtime environment

- [ ] Headscale is behind a (reverse) proxy
- [ ] Headscale runs in a container

### Anything else?

_No response_

## Issue 10 (#2143): Update flake.lock

Automated changes by the [update-flake-lock](https://github.com/DeterminateSystems/update-flake-lock) GitHub Action.

```
Flake lock file updates:

• Updated input 'flake-utils':
    'github:numtide/flake-utils/b1d9ab70662946ef0850d488da1c9019f3a9752a?narHash=sha256-SZ5L6eA7HJ/nmkzGG7/ISclqe6oZdOZTNoesiInkXPQ%3D' (2024-03-11)
  → 'github:numtide/flake-utils/c1dfcf08411b08f6b8615f7d8971a2bfa81d5e8a?narHash=sha256-X6rJYSESBVr3hBoH0WbKE5KvhPU5bloyZ2L4K60/fPQ%3D' (2024-09-17)
• Updated input 'nixpkgs':
    'github:NixOS/nixpkgs/01f064c99c792715054dc7a70e4c1626dbbec0c3?narHash=sha256-3//V84fYaGVncFImitM6lSAliRdrGayZLdxWlpcuGk0%3D' (2024-09-13)
  → 'github:NixOS/nixpkgs/a1d92660c6b3b7c26fb883500a80ea9d33321be2?narHash=sha256-V5LpfdHyQkUF7RfOaDPrZDP%2Boqz88lTJrMT1%2BstXNwo%3D' (2024-09-20)
```

### Running GitHub Actions on this PR

GitHub Actions will not run workflows on pull requests which are opened by a GitHub Action.

To run GitHub Actions workflows on this PR, run:

```sh
git branch -D update_flake_lock_action
git fetch origin
git checkout update_flake_lock_action
git commit --amend --no-edit
git push origin update_flake_lock_action --force
```

## Issue 11 (#2128): [Feature] Allow nodes to use SSH agent forwarding

### Use case

I use SSH keys for sudo on my servers, which requires agent forwarding.

### Description

Allow nodes to use SSH agent forwarding.

### Contribution

- [X] I can write the design doc for this feature
- [X] I can contribute this feature

### How can it be implemented?

Set `AllowAgentForwarding` to `true` on `Accept`ed `SSHAction`s

I am already using this change locally.

## Issue 12 (#2147): [Bug] Unable to delete node

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

On a new installation, it is not possible to remove a node.

### Expected Behavior

It should be possible to expire and delete a node.

### Steps To Reproduce

I've registered 5 hosts via login url method.
Afterwards I've sucessfully expired one node.
Lastly I'd like to delete that node, which is not possible using the following command:
``
root@vspasr1hscp01:~# docker exec headscale headscale nodes delete -i 5    
? Do you want to remove the node localhost? (y/N) root@vspasr1hscp01:~# ;236R;51R
-bash: syntax error near unexpected token `;'
``

It looks like there is garbage being sent to the terminal and it is not possible to confirm the node deletion.



### Environment

```markdown
- OS: Debian 12.7
- Headscale version: 0.23.0
- Tailscale version: iOS 1.74.0
```


### Runtime environment

- [X] Headscale is behind a (reverse) proxy
- [X] Headscale runs in a container

### Anything else?

_No response_

EDIT: The command used for node deletion was incorrect.
The following command works perfectly:
``
docker exec -it headscale headscale nodes delete -i 5
``

## Issue 13 (#2149): remove versions older than 1.56

From 0.23.0, headscale has a goal of supporting the 10 latest versions of tailscale, this PR removes versions older than 1.56.

This allows us to remove a bunch of code, some duplicate! 🎉 

Signed-off-by: Kristoffer Dalby <kristoffer@tailscale.com>

## Issue 14 (#2150): use tsaddr library and cleanups

This PR reuses upstream tailscale functions from their libraries, cleans up unused code and ensure we use proper types and not strings in route enablement.

depens on https://github.com/tailscale/tailscale/pull/13569

Signed-off-by: Kristoffer Dalby <kristoffer@tailscale.com>

## Issue 15 (#2154): [docs] Add Ouroboros to community web ui list

<!--
Headscale is "Open Source, acknowledged contribution", this means that any
contribution will have to be discussed with the Maintainers before being submitted.

This model has been chosen to reduce the risk of burnout by limiting the
maintenance overhead of reviewing and validating third-party code.

Headscale is open to code contributions for bug fixes without discussion.

If you find mistakes in the documentation, please submit a fix to the documentation.
-->

<!-- Please tick if the following things apply. You… -->

- [x] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [x] updated documentation if needed
- [ ] updated CHANGELOG.md

<!-- If applicable, please reference the issue using `Fixes #XXX` and add tests to cover your new code. -->

Hi! I have developed a UI for Headscale which I have running in production on my server currently.
It is designed for multi-user tailnets, to allow users to manage their nodes entirely on their own, without providing any sysadmin features.
It offers management (rename, delete, logout, exit node, routes) of nodes, and intercepts the /register endpoint (if using a correctly configured reverse proxy), to allow users to add their own nodes.

Users must authenticate through Github OAuth2 and the list of allowed users are predefined up-front by the admin.

![image](https://github.com/user-attachments/assets/b0455891-fedb-47e9-b096-f7d801331936)

![image](https://github.com/user-attachments/assets/c19efd93-e05b-4a81-af37-2afb6a1f29eb)

## Issue 16 (#1369): Tagged devices should not have access permissions of their owning user

**Bug description**

I want to allow my personal devices to ssh into my servers but not allow my servers to ssh between each other. All devices belong to the same headscale user. My servers are tagged `ssh`, my personal devices are untagged and my user is in the `sshuser` group.

The Tailscale documentation states (https://tailscale.com/kb/1068/acl-tags/#authentication-and-authorization):

> Once a device has been tagged, it loses the access permissions of the human user who tagged it, and acquires any access permissions granted to its tags. In other words, if you log into a device as dave@tailscale.com and then tag it with tag:server, the device no longer has any of the network permissions granted to dave@tailscale.com, and instead is subject to the access rules for tag:server. If the user who added the device is deleted, the device will remain.

According to the Tailscale documentation, I would expect a ACL allowing ssh from `group:sshuser` to `tag:ssh` to produce the described behaviour. All my untagged devices should be able to ssh into the tagged servers (which they do) but my servers are also able to ssh between each other.

**To Reproduce**

```json
{
    "groups":{
        "group:sshuser":[
            "me"
        ]
    },
    "tagOwners": {
        "tag:ssh": ["me"]
    },
    "ssh": [
        {
            "action": "accept",
            "src": ["group:sshuser"],
            "dst": ["tag:ssh"],
            "users": ["allowlisted-user"]
        }
    ]
}
```

**Context info**

* Headscale: v0.22.1

## Issue 17 (#2156): use gorm serialiser instead of custom hooks

This pr removes the custom types we have to wrap things to put them in the database, instead, we use gorm serialisers: https://gorm.io/docs/serializer.html.

We use the standard JSON serialiser and we introduce a Text serialiser that allows us to serialise types that implements: https://pkg.go.dev/encoding#TextMarshaler.

This allows us to remove even more custom code handling and a bunch of type casting/conversion.

## Issue 18 (#2158): Update flake.lock

Automated changes by the [update-flake-lock](https://github.com/DeterminateSystems/update-flake-lock) GitHub Action.

```
Flake lock file updates:

• Updated input 'nixpkgs':
    'github:NixOS/nixpkgs/a1d92660c6b3b7c26fb883500a80ea9d33321be2?narHash=sha256-V5LpfdHyQkUF7RfOaDPrZDP%2Boqz88lTJrMT1%2BstXNwo%3D' (2024-09-20)
  → 'github:NixOS/nixpkgs/b5b2fecd0cadd82ef107c9583018f381ae70f222?narHash=sha256-k6YxGj08voz9NvuKExojiGXAVd69M8COtqWSKr6sQS4%3D' (2024-09-28)
```

### Running GitHub Actions on this PR

GitHub Actions will not run workflows on pull requests which are opened by a GitHub Action.

To run GitHub Actions workflows on this PR, run:

```sh
git branch -D update_flake_lock_action
git fetch origin
git checkout update_flake_lock_action
git commit --amend --no-edit
git push origin update_flake_lock_action --force
```

## Issue 19 (#2161): Changed all the html into go using go-elem

Created templates package in ./hscontrol/templates. Moved the registerWebAPITemplate into the templates package as a function to be called.

Replaced the apple and windows html files with go-elem.

<!--
Headscale is "Open Source, acknowledged contribution", this means that any
contribution will have to be discussed with the Maintainers before being submitted.

This model has been chosen to reduce the risk of burnout by limiting the
maintenance overhead of reviewing and validating third-party code.

Headscale is open to code contributions for bug fixes without discussion.

If you find mistakes in the documentation, please submit a fix to the documentation.
-->

<!-- Please tick if the following things apply. You… -->

- [X] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [ ] updated documentation if needed
- [ ] updated CHANGELOG.md

<!-- If applicable, please reference the issue using `Fixes #XXX` and add tests to cover your new code. -->

## Issue 20 (#2164): [Bug] Tailscale HEAD (1eaad7d3d) is broken in integration tests

### Current Behavior

Reauthentication is broken in integration tests for Tailscale clients built from HEAD due to https://github.com/tailscale/tailscale/commit/1eaad7d3deb0815e8932e913ca1a862afa34db38.

It looks like the commit make fast reconnects force them to use 443, so it should not affect users as long as they use HTTPS.

The solution is likely to document that you _more or less_ need to run HTTPS and to make integration tests that reauth is served over 443.

## Issue 21 (#2165): set hostinfo,ipv* columns explicitly

GORM depends on PascalCasing, when we dropped the extra row, it got confused and new dbs end up with a broken column.

## Issue 22 (#2173): Update flake.lock

Automated changes by the [update-flake-lock](https://github.com/DeterminateSystems/update-flake-lock) GitHub Action.

```
Flake lock file updates:

• Updated input 'nixpkgs':
    'github:NixOS/nixpkgs/b5b2fecd0cadd82ef107c9583018f381ae70f222?narHash=sha256-k6YxGj08voz9NvuKExojiGXAVd69M8COtqWSKr6sQS4%3D' (2024-09-28)
  → 'github:NixOS/nixpkgs/e2f08f4d8b3ecb5cf5c9fd9cb2d53bb3c71807da?narHash=sha256-CAZF2NRuHmqTtRTNAruWpHA43Gg2UvuCNEIzabP0l6M%3D' (2024-10-05)
```

### Running GitHub Actions on this PR

GitHub Actions will not run workflows on pull requests which are opened by a GitHub Action.

To run GitHub Actions workflows on this PR, run:

```sh
git branch -D update_flake_lock_action
git fetch origin
git checkout update_flake_lock_action
git commit --amend --no-edit
git push origin update_flake_lock_action --force
```

## Issue 23 (#2178): [Bug] Does not receive ‘user’ field when changing node owner via API

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

The passed `user` field in the `v1.MoveNodeRequest` (API) request does not come in. Only nodeId is received, because it is passed in url query params

Request payload:
```json
{
"nodeId": 12,
"user": "test"
}
```

Request in v1.MoveNodeRequest:
```json
{
"nodeId": 12,
"user": ""
}
```

Current rpc method in `headscale.proto`
```proto
rpc MoveNode(MoveNodeRequest) returns (MoveNodeResponse) {
    option (google.api.http) = {
        post: "/api/v1/node/{node_id}/user"
    };
}
```

### Expected Behavior

The passed `user` field in the v1.MoveNodeRequest (API) request arrives correctly.

Request payload:
```json
{
"nodeId": 12,
"user": "test"
}
```

Request in v1.MoveNodeRequest:
```json
{
"nodeId": 12,
"user": "test"
}
```

Fixed rpc method in `headscale.proto`
```proto
rpc MoveNode(MoveNodeRequest) returns (MoveNodeResponse) {
    option (google.api.http) = {
        post: "/api/v1/node/{node_id}/user",
        body: "*"
    };
}
```

### Steps To Reproduce

1. Send POST request with valid data to `/api/v1/node/{nodeId}/user`
2. Get error `user not found`

### Environment

```markdown
- OS: MacOS 15
- Headscale version: 0.22.3
- Tailscale version: 1.74.0
```


### Runtime environment

- [ ] Headscale is behind a (reverse) proxy
- [ ] Headscale runs in a container

### Anything else?

_No response_

## Issue 24 (#2187): Fixed loginUrl with "WithTLS()" used. Added "WithTLS()" to scenario integration tests

Fixed integration tests with #2184

## Issue 25 (#2191): Add Headplane to web-ui docs

Add headplane to the list of UI's. It should be there, because it's a really good UI with advanced features like OIDC login, ACL editing and overall headscale config management in the UI.

<!--
Headscale is "Open Source, acknowledged contribution", this means that any
contribution will have to be discussed with the Maintainers before being submitted.

This model has been chosen to reduce the risk of burnout by limiting the
maintenance overhead of reviewing and validating third-party code.

Headscale is open to code contributions for bug fixes without discussion.

If you find mistakes in the documentation, please submit a fix to the documentation.
-->

<!-- Please tick if the following things apply. You… -->

- [x] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [x] updated documentation if needed
- [ ] updated CHANGELOG.md

<!-- If applicable, please reference the issue using `Fixes #XXX` and add tests to cover your new code. -->

## Issue 26 (#2195): Update flake.lock

Automated changes by the [update-flake-lock](https://github.com/DeterminateSystems/update-flake-lock) GitHub Action.

```
Flake lock file updates:

• Updated input 'nixpkgs':
    'github:NixOS/nixpkgs/e2f08f4d8b3ecb5cf5c9fd9cb2d53bb3c71807da?narHash=sha256-CAZF2NRuHmqTtRTNAruWpHA43Gg2UvuCNEIzabP0l6M%3D' (2024-10-05)
  → 'github:NixOS/nixpkgs/41dea55321e5a999b17033296ac05fe8a8b5a257?narHash=sha256-WvLXzNNnnw%2BqpFOmgaM3JUlNEH%2BT4s22b5i2oyyCpXE%3D' (2024-10-25)
```

### Running GitHub Actions on this PR

GitHub Actions will not run workflows on pull requests which are opened by a GitHub Action.

To run GitHub Actions workflows on this PR, run:

```sh
git branch -D update_flake_lock_action
git fetch origin
git checkout update_flake_lock_action
git commit --amend --no-edit
git push origin update_flake_lock_action --force
```

## Issue 27 (#2177): [Bug] Inconsistency ‘givenName’ in node

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

Host name where the error occurs - `MacBook-Pro`
**(This is the real hostname of my machine)**

When registering a node on the network, `hostname` as well as `givenName` is stored in its original form from `tailcfg.Hostname` - `MacBook-Pro`, without making it based on FQDN rules.
When renaming a node (changing the `givenName`), the logic checks the new name for FQDN compliance (`CheckForFQDNRules`) and does not allow the `MacBook-Pro` name to be saved, requiring lowercase i.e. `macbook-pro`.

### Expected Behavior

When a node is registered on the network, the givenName is stored subject to FQDN rules.

### Steps To Reproduce

1. Register node
2. Show givenName in DB
3. Try changing the node name to the same
4. Receive an FQDN error
5. Save the new node name taking into account the FQDN rules
6. It's OK, the new name is saved

### Environment

```markdown
- OS: MacOS 15
- Headscale version: 0.22.3
- Tailscale version: 1.74.0
```


### Runtime environment

- [ ] Headscale is behind a (reverse) proxy
- [ ] Headscale runs in a container

### Anything else?

_No response_

## Issue 28 (#2140): [Bug] Hostname changes are not reflected

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

Changing the hostname of a node is not reflected on headscale.

Using `tailscale set --hostname hello` still keeps the hostname that the node originally came with.

### Expected Behavior

Changing the hostname of a node on the node itself should reflect it on the node list in headscale.
This is the current behavior with 0.22.3.

### Steps To Reproduce

1. Start 0.23.0 (either upgraded from 0.22.3 or a fresh install)
2. Register a new node on the server
3. Note its hostname
4. Change the hostname. On desktop, `tailscale set --hostname something`. On mobile, it is located in the settings of the app.
5. Note that the hostname stayed the same

### Environment

```markdown
- OS: Docker 27.0.3 (Host: Debian 12.6)
- Headscale version: 0.23.0
- Tailscale version: 1.74.1 (ccd6bf2f4ee6421c23789b64e6e63c2ccbe87e08)
- Tailscale version (phone): iOS 18.0 // TS 1.74.0 (TestFlight beta 101.74.0)
```


### Runtime environment

- [X] Headscale is behind a (reverse) proxy
- [X] Headscale runs in a container

### Anything else?

_No response_

## Issue 29 (#2166): [Feature] Setting DisplayName and ProfilePicURL for headscale users

### Use case

Mostly for niceness and completeness. I would like Headscale to know users by name, so that `tailscale whois` (and related solutions such as `tailscale-nginx-auth`) can know the user's display name and profile picture.

The [OIDC rework document](https://docs.google.com/document/d/1X85PMxIaVWDF6T_UPji3OeeUqVBcGj_uHRM5CI-AwlY/edit) mentioned that CLI-based login should be able to populate these fields, so I hope the maintainers won't mind me filing this as an issue so it could be easily trackable (and to show that this is in fact desirable, and bikeshed over the minute details of the implementation).

Additionally, I may try my hand at implementing this. (I don't really know Go that well, but how hard could it be?)

### Description

One or two commands in the Headscale CLI to set the user's display name and the profile picture. Optionally a way to set these fields on user creation.

### Contribution

- [ ] I can write the design doc for this feature
- [X] I can contribute this feature

### How can it be implemented?

Exact subcommand/option names subject to bikeshedding.

```console
$ headscale users set -i 1 --display-name "Vika" --profile-pic-url "https://example.com/vika.png"
$ # Additionally, consider the following, to create a user and set their personal data in one step:
$ headscale users create vika --display-name "Vika" --profile-pic-url "https://example.com/vika.png"
```

Alternatively:
```console
$ headscale users set-display-name -i 1 Vika
$ headscale users set-profile-pic-url -i 1 https://example.com/vika.png
```

## Issue 30 (#2205): Resolve user to stable unique ID in policy

currently, the policy approach node to user matching with a quite naive approach looking at the username provided in the policy and matched it with the username on the nodes. This worked ok as long as usernames were unique and did not change.

As usernames are no longer guarenteed to be unique in an OIDC environment we cant rely on this.

This changes the mechanism that matches the user string (now user token) with nodes:

- first find all potential users by looking up:
  - database ID
  - provider ID (OIDC)
  - username/email

If more than one user is matching, then the query is rejected, and zero matching nodes are returned.

When a single user is found, the node is matched against the User database ID, which are also present on the actual node.

This means that from this commit, users can use the following to identify users in the policy:
- provider identity (iss + sub)
- username
- email
- database id

There are more changes coming to this, so it is not recommended to start using any of these new abilities, with the exception of email, which will not change since it includes an @.

## Issue 31 (#2206): cleanup linter warnings

## Issue 32 (#2207): add nblock to doc owners

@nblock has contributed a great rewrite of the docs, this will empower to review changes to it and move faster.

This is pending him being added to the repo as a maintainer, the commit shows this error.

## Issue 33 (#2212): more linter fixups

Fixes a good bunch, still some left.

Signed-off-by: Kristoffer Dalby <kristoffer@tailscale.com>

## Issue 34 (#2193): [Bug] Remote CLI Configuration Problem after Upgrading to Headscale 0.23.0

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

After upgrading from Headscale 0.23.0 beta 3 to 0.23.0, the remote CLI command headscale nodes list fails with the following error:

`github.com/juanfont/headscale@v0.23.0/cmd/headscale/cli/root.go:49 > Error loading config error="fatal error reading config file: Config File \"config\" Not Found in \"[/etc/headscale /Users/user/.headscale]\""`

This occurs even when `HEADSCALE_CLI_ADDRESS` and `HEADSCALE_CLI_API_KEY` environment variables are correctly set.


### Expected Behavior

The remote CLI should function properly when either of the following conditions are met:

* The `HEADSCALE_CLI_ADDRESS` and `HEADSCALE_CLI_API_KEY` environment variables are set correctly, without requiring an additional configuration file.
* A configuration file (`~/.headscale/config.yaml` or `/etc/headscale/config.yaml`) is present with the correct CLI settings.

The remote CLI should be able to connect to the Headscale server and execute commands (such as `headscale nodes list`) without encountering configuration-related errors, regardless of whether the configuration is provided via environment variables or a configuration file.

### Steps To Reproduce

* Upgrade Headscale from version 0.23.0 beta 3 to 0.23.0
* Set `HEADSCALE_CLI_ADDRESS` and `HEADSCALE_CLI_API_KEY` environment variables, without any additional configuration files.
* Run `headscale nodes list`
* Observe the error message

### Environment

```markdown
- OS: macOS 15.0
- Headscale version: 0.23.0
- Tailscale version: 1.74.0
```


### Runtime environment

- [ ] Headscale is behind a (reverse) proxy
- [ ] Headscale runs in a container

### Anything else?

### Workarounds

Two workarounds have been identified:

1. Keep the environment variables `HEADSCALE_CLI_ADDRESS` and `HEADSCALE_CLI_API_KEY` and create an empty file at `~/.headscale/config.yaml`
2. Remove the environment variables and create a `~/.headscale/config.yaml` file with the following content:

```yaml
cli:
  address: headscale.example.com
  api_key: MY_API_KEY
```

### Possible Cause

The issue may be related to commit [8a3a0fe](https://github.com/juanfont/headscale/commit/8a3a0fee3ccbca7dd67b0d2965b523c8b6cb5451#diff-077ec63c2c0a08956c63c365aa4953cf65d09cf7e62c74747336fca3c308f6d6L287-L290), which removed the `IsCLIConfigured` check in `hscontrol/types/config.go`. 

### Proposed Solutions

We have two potential solutions to address this issue:

1. Update the documentation in `docs/ref/remote-cli.md` to recommend using a configuration file instead of environment variables.
2. Revert to the previous behavior that allowed the use of environment variables without a configuration file.

### Questions

1. Which solution do you prefer: updating the documentation or reverting the behavior?
2. Would you like me to submit a PR to implement the chosen solution?

## Issue 35 (#2217): Add a page for third-party tools

As suggested [in the chat](https://discord.com/channels/896711691637780480/896711692120129540/1299825947142389780). Reword and simplify the web-ui page a bit.

- [x] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [x] updated documentation if needed
- [ ] updated CHANGELOG.md

## Issue 36 (#2222): Update flake.lock

Automated changes by the [update-flake-lock](https://github.com/DeterminateSystems/update-flake-lock) GitHub Action.

```
Flake lock file updates:

• Updated input 'nixpkgs':
    'github:NixOS/nixpkgs/41dea55321e5a999b17033296ac05fe8a8b5a257?narHash=sha256-WvLXzNNnnw%2BqpFOmgaM3JUlNEH%2BT4s22b5i2oyyCpXE%3D' (2024-10-25)
  → 'github:NixOS/nixpkgs/85f7e662eda4fa3a995556527c87b2524b691933?narHash=sha256-JwQZIGSYnRNOgDDoIgqKITrPVil%2BRMWHsZH1eE1VGN0%3D' (2024-11-07)
```

### Running GitHub Actions on this PR

GitHub Actions will not run workflows on pull requests which are opened by a GitHub Action.

To run GitHub Actions workflows on this PR, run:

```sh
git branch -D update_flake_lock_action
git fetch origin
git checkout update_flake_lock_action
git commit --amend --no-edit
git push origin update_flake_lock_action --force
```

## Issue 37 (#2220): Debug docker image size is ridiculous.

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

The new "unofficial" image is 2.5 gigabytes due to non-standard approaches in "Dockerfile.debug"

### Expected Behavior

Just do normal docker best-practices.

### Steps To Reproduce

Build your dockerfile, its huge.

### Environment

```markdown
Debian Bookworm,
.23
NA
```


### Runtime environment

- [ ] Headscale is behind a (reverse) proxy
- [ ] Headscale runs in a container

### Anything else?

_No response_

## Issue 38 (#2226): Feature tvos documentation

<!--
Headscale is "Open Source, acknowledged contribution", this means that any
contribution will have to be discussed with the Maintainers before being submitted.

This model has been chosen to reduce the risk of burnout by limiting the
maintenance overhead of reviewing and validating third-party code.

Headscale is open to code contributions for bug fixes without discussion.

If you find mistakes in the documentation, please submit a fix to the documentation.
-->

<!-- Please tick if the following things apply. You… -->

- [x] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [x] updated documentation if needed
- [ ] updated CHANGELOG.md

<!-- If applicable, please reference the issue using `Fixes #XXX` and add tests to cover your new code. -->

## Summary

- Documentation
  - Updated `docs/about/clients.md`, added `tvOS` as client.
  - Updated `docs/usage/connect/apple.md`, added Installation and configuration documentation for tvOS.
  - Updated `hscontrol/templates/apple.go` to also display the tvOS configuration at `/apple` on a deployed headscale instance.

## Issue 39 (#2211): [Bug] Exessive logging

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

Headscale successfully up and running behind Nginx Proxy Manager. Logs in NPM suggests a problem reaching DERP:

```
[24/Oct/2024:13:54:05 +0200] - 404 404 - GET https <URL> "/derp/latency-check" [Client 178.232.163.94] [Length 0] [Gzip -] [Sent-to unraid.home] "Go-http-client/1.1" "-"
[24/Oct/2024:13:54:05 +0200] - 404 404 - GET https <URL> "/derp/latency-check" [Client 178.232.163.94] [Length 0] [Gzip -] [Sent-to unraid.home] "Go-http-client/1.1" "-"
[24/Oct/2024:13:54:16 +0200] - 404 404 - GET https <URL> "/derp/latency-check" [Client 178.232.163.94] [Length 0] [Gzip -] [Sent-to unraid.home] "Go-http-client/1.1" "-"
[24/Oct/2024:13:54:16 +0200] - 404 404 - GET https <URL> "/derp/latency-check" [Client 178.232.163.94] [Length 0] [Gzip -] [Sent-to unraid.home] "Go-http-client/1.1" "-"
[24/Oct/2024:13:54:16 +0200] - 404 404 - GET https <URL> "/derp/latency-check" [Client 192.168.1.19] [Length 0] [Gzip -] [Sent-to unraid.home] "Go-http-client/1.1" "-"
[24/Oct/2024:13:54:16 +0200] - 404 404 - GET https <URL> "/derp/latency-check" [Client 192.168.1.19] [Length 0] [Gzip -] [Sent-to unraid.home] "Go-http-client/1.1" "-"
```

This is logged every other second.

### Expected Behavior

If this indicates a problem I don't know how to solve it. If not could this logging be disabled?

### Steps To Reproduce

Start headscale as normal.

### Environment

```markdown
- OS: Unraid
- Headscale version: 0.23.0
- Tailscale version: 1.76.1
```


### Runtime environment

- [X] Headscale is behind a (reverse) proxy
- [X] Headscale runs in a container

### Anything else?

_No response_

## Issue 40 (#2171): [Bug] container: missing `stable-debug` tag

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

There is no `:stable-debug` tag available on docker hub and ghcr.

### Expected Behavior

Having a `:stable-debug` tag

### Steps To Reproduce

Try pulling the `stable-debug` tag

### Environment

```markdown
Not relevant for the missing docker tag
```


### Runtime environment

- [ ] Headscale is behind a (reverse) proxy
- [ ] Headscale runs in a container

### Anything else?

Could it be that [here](https://github.com/juanfont/headscale/blob/24e7851a40873c9ec1e9c3879dcd002a2912ebb7/.goreleaser.yml#L180) and [here](https://github.com/juanfont/headscale/blob/24e7851a40873c9ec1e9c3879dcd002a2912ebb7/.goreleaser.yml#L157) the line should be
```- "{{ if not .Prerelease }}stable-debug{{ else }}unstable-debug{{ end }}"```
and not
```- "{{ if not .Prerelease }}stable{{ else }}unstable-debug{{ end }}"``` ?

## Issue 41 (#2235): Use discord server invite link

Replace channel links with links to discord invite link and remove channel list.

Fixes: #1521

Thx to @unusualevent for pointing this out!

---

- [x] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [x] updated documentation if needed
- [ ] updated CHANGELOG.md

## Issue 42 (#2239): Update flake.lock

Automated changes by the [update-flake-lock](https://github.com/DeterminateSystems/update-flake-lock) GitHub Action.

```
Flake lock file updates:

• Updated input 'flake-utils':
    'github:numtide/flake-utils/c1dfcf08411b08f6b8615f7d8971a2bfa81d5e8a?narHash=sha256-X6rJYSESBVr3hBoH0WbKE5KvhPU5bloyZ2L4K60/fPQ%3D' (2024-09-17)
  → 'github:numtide/flake-utils/11707dc2f618dd54ca8739b309ec4fc024de578b?narHash=sha256-l0KFg5HjrsfsO/JpG%2Br7fRrqm12kzFHyUHqHCVpMMbI%3D' (2024-11-13)
• Updated input 'nixpkgs':
    'github:NixOS/nixpkgs/85f7e662eda4fa3a995556527c87b2524b691933?narHash=sha256-JwQZIGSYnRNOgDDoIgqKITrPVil%2BRMWHsZH1eE1VGN0%3D' (2024-11-07)
  → 'github:NixOS/nixpkgs/c69a9bffbecde46b4b939465422ddc59493d3e4d?narHash=sha256-ddcX4lQL0X05AYkrkV2LMFgGdRvgap7Ho8kgon3iWZk%3D' (2024-11-16)
```

### Running GitHub Actions on this PR

GitHub Actions will not run workflows on pull requests which are opened by a GitHub Action.

To run GitHub Actions workflows on this PR, run:

```sh
git branch -D update_flake_lock_action
git fetch origin
git checkout update_flake_lock_action
git commit --amend --no-edit
git push origin update_flake_lock_action --force
```

## Issue 43 (#2238): [Bug] Unable to access Headscale http server after installation

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

I've completed the installation of Headscale on Ubuntu 24.04 LTS. Headscale is being run as a systemd service and the server address is the default one provided in config: 127.0.0.1:8080. I've ensured no other program is using that port. The logs also indicate there is no error. Trying to access the http server by curling on the local machine doesn't seem to be working.

```
2024-11-16T06:46:41Z WRN
WARN: The "dns.use_username_in_magic_dns" configuration key is deprecated and has been removed. Please see the changelog for more details.

2024-11-16T06:46:41Z INF Opening database database=sqlite3 path=/var/lib/headscale/db.sqlite
2024-11-16T06:46:41Z INF Setting up a DERPMap update worker frequency=86400000
2024-11-16T06:46:41Z INF listening and serving HTTP on: 127.0.0.1:8080
2024-11-16T06:46:41Z INF listening and serving debug and metrics on: 127.0.0.1:9090
```

### Expected Behavior

Should be able to access Headscale http server of machine

### Steps To Reproduce

1. In Ubunutu 24.04 LTS
2. Install Headscale server using official guide using .deb package
3. Curl 127.0.0.1:800 on the machine.

### Environment

```markdown
- OS: Ubuntu 24.04
- Headscale version: v0.23.0
- Tailscale version:
```


### Runtime environment

- [ ] Headscale is behind a (reverse) proxy
- [ ] Headscale runs in a container

### Anything else?

_No response_

## Issue 44 (#2204): [Bug] sqlite WAL never checkpointed, leading to constantly-increasing disk usage

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

I have a ~20 node tailnet running and my sqlite database is around 500KB. After running it for several months, I realized that it's almost occupying 1GB of disk space now. Upon inspection, I found that my `db.sqlite-wal` is growing at a steady 500KB/hour, which equals >4GB/year. Headscale never performs any checkpointing operation, and its `wal_autocheckpoint` was set to zero [here](https://github.com/juanfont/headscale/blob/028d9aab73206eadbccd600d63910e057de7feb8/hscontrol/db/db.go#L548). This lead to the ever-growing WAL file.

### Expected Behavior

There should be some periodic checkpointing of the sqlite database, either by time or by number of transactions.

### Steps To Reproduce

1. Set up a tailnet with sqlite
2. Add a bunch of nodes, keep them connected and let them ping each other periodically
3. Wait for months
4. See that `db.sqlite-wal` is huge

### Environment

```markdown
- OS: `Ubuntu 20.04.6 LTS`
- Headscale version: `v0.23.0`
- Tailscale version: `1.72.0`
```


### Runtime environment

- [X] Headscale is behind a (reverse) proxy
- [X] Headscale runs in a container

### Anything else?

_No response_

## Issue 45 (#2243): Update tls.md to mention using the full cert chain

- [X] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [X] updated documentation if needed
- [ ] updated CHANGELOG.md

The Tailscale Android client fails silently if the full certificate chain is not provided.

## Issue 46 (#2241): [Bug] TestDERPServerWebsocketScenario is broken

TestDERPServerWebsocketScenario is broken after websockets was removed from all clients but JS one: https://github.com/tailscale/tailscale/commit/020cacbe702463f14a5d2d5427819c491c7e6578

From #2046:

@enoperm:
> Okay... at glance I'm not sure how to fix it without either a custom client (compiled with `GOOS=js`) or custom client builds, both of which I believe we'd prefer to avoid, since the point is to ensure we are compatible with the official client, right?
> 

I agree that it is something to in general avoid, I am also not sure if you can run the JS client outside of a browser? Maybe it can be ran with NodeJS in a container? It looks like it can be forced into a Go client with a build flag?
I must admit I am not stoked about having to maintain that kind of container to test this, but maybe it can be done for only this test. I dont really want to remove the feature, but if it is untestable that might be a step to go for _if it breaks in the future_, it can be left until someone notices, but we are not maintaining features that cant be tested.

> On the other hand, I _specifically_ put work into being able to detect this exact scenario (behaviour of the client-under-test changing) in spite of the interface (env var). Seeing it turn red, it feels like it was worth the effort. :)

I agree, that is good, now we just need to make sure we continue to have tests.

## Issue 47 (#2210): [Bug] testing for server_url containing base_domain is too restrictive

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

I have `server_url: https://homer.example.com` and `dns.base_domain: h`. This does not work, headscale complains with `server_url cannot contain the base_domain [..]`.

@mtoohey31 recently noted the same issue in a [comment](https://github.com/juanfont/headscale/pull/2034#discussion_r1805755064) to https://github.com/juanfont/headscale/pull/2034:

> I could be wrong, but I wonder if the `string.Contains` check might be too strict of a test. I want to use (for example) `https://bar.foo.com` as my `server_url`, and just `foo` as my `dns.base_domain`, but this check rejects that. I've manually removed the check and this seems to work without issue.


### Expected Behavior

I don't want to be overly and unnecessarily restricted about the choice of `base_domain`.
I *think* that what should *not* be allowed are the following:
 
- `base_domain` that is a prefix of `server_url`'s hostname
- `base_domain` equal to `server_url`'s hostname
- maybe also `server_url`'s hostname that is a prefix of `base_domain`?

Possible plain prefix comparison is not suitable, but dot-separated parts needs to be taken into consideration separately? All this needs some more thinking through. Any ideas?

### Steps To Reproduce

I have `server_url: https://homer.example.com` and `dns.base_domain: h`. This does not work, headscale complains with `server_url cannot contain the base_domain [..]`.

### Environment

```markdown
- OS: Debian 12
- Headscale version: 0.23.0
- Tailscale version: 1.76.1
```


### Runtime environment

- [ ] Headscale is behind a (reverse) proxy
- [ ] Headscale runs in a container

### Anything else?

_No response_

## Issue 48 (#2252): Documentation dependencies

Simplifies/updates dependencies and fixes dependabot warnings.

- [ ] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [x] updated documentation if needed
- [ ] updated CHANGELOG.md

## Issue 49 (#2254): Update flake.lock

Automated changes by the [update-flake-lock](https://github.com/DeterminateSystems/update-flake-lock) GitHub Action.

```
Flake lock file updates:

• Updated input 'nixpkgs':
    'github:NixOS/nixpkgs/c69a9bffbecde46b4b939465422ddc59493d3e4d?narHash=sha256-ddcX4lQL0X05AYkrkV2LMFgGdRvgap7Ho8kgon3iWZk%3D' (2024-11-16)
  → 'github:NixOS/nixpkgs/5083ec887760adfe12af64830a66807423a859a7?narHash=sha256-D1FNZ70NmQEwNxpSSdTXCSklBH1z2isPR84J6DQrJGs%3D' (2024-11-18)
```

### Running GitHub Actions on this PR

GitHub Actions will not run workflows on pull requests which are opened by a GitHub Action.

To run GitHub Actions workflows on this PR, run:

```sh
git branch -D update_flake_lock_action
git fetch origin
git checkout update_flake_lock_action
git commit --amend --no-edit
git push origin update_flake_lock_action --force
```

## Issue 50 (#2255): wrap policy in policy manager interface

this PR "wraps" the policy in a manager interface, and implements it for the policy v1. 

This work has two goals,
- A stepping stone to change how often we recreate the policy when used in netmap creations
- An interface that can be implemented by a _new_ policy implementation to make it easier to run both or tests both. Making us able to introduce a new one, while having the old available while we work out bugs and so on.

## Issue 51 (#2258): Bump deprecated github actions

- [x] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [ ] updated documentation if needed
- [ ] updated CHANGELOG.md

## Issue 52 (#2246): [Bug] CLI should use Stable IDs instead of usernames

Currently a series of CLI commands are taking usernames as arguments for doing certain operations which is no longer stable as usernames will not be unique.

After https://github.com/juanfont/headscale/pull/2170, usernames that cannot be resolved to a single user will fail.

This works for now, but we need to make it possible to execute all of the commands for the specific ID being addressed.

## Issue 53 (#2265): Add versioned documentation

Setup mike to provide versioned builds of the documentation.

The goal is to have versioned docs for stable releases (0.23.0, 0.24.0) and development docs that can progress along with the code. This allows us to tailor docs to the next upcoming version as we no longer need to care about diversion between rendered docs and the latest release.

Versions:
* development (alias: unstable) on each push to the main branch
* MAJOR.MINOR.PATCH (alias: stable, latest for the newest version)
  * for each "final" release tag
  * for each push to doc maintenance branches: doc/MAJOR.MINOR.PATCH

The default version should the current stable version. The doc maintenance branches may be used to update the version specific documentation when issues arise after a release.

---

A preview with some fake commits is available: https://nblock.github.io/headscale

---

- [x] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [x] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [x] updated documentation if needed
- [ ] updated CHANGELOG.md

## Issue 54 (#2266): Update flake.lock

Automated changes by the [update-flake-lock](https://github.com/DeterminateSystems/update-flake-lock) GitHub Action.

```
Flake lock file updates:

• Updated input 'nixpkgs':
    'github:NixOS/nixpkgs/5083ec887760adfe12af64830a66807423a859a7?narHash=sha256-D1FNZ70NmQEwNxpSSdTXCSklBH1z2isPR84J6DQrJGs%3D' (2024-11-18)
  → 'github:NixOS/nixpkgs/929116e316068c7318c54eb4d827f7d9756d5e9c?narHash=sha256-aLJxoTDDSqB%2B/3orsulE6/qdlX6MzDLIITLZqdgMpqo%3D' (2024-12-05)
```

### Running GitHub Actions on this PR

GitHub Actions will not run workflows on pull requests which are opened by a GitHub Action.

To run GitHub Actions workflows on this PR, run:

```sh
git branch -D update_flake_lock_action
git fetch origin
git checkout update_flake_lock_action
git commit --amend --no-edit
git push origin update_flake_lock_action --force
```

## Issue 55 (#2257): Migration path from PostgreSQL to SQLite

### Use case

As of the 0.23.0 release, the default configuration for the database includes the following note:

```
# Please note that using Postgres is highly discouraged as it is only supported for legacy reasons.
# All new development, testing and optimisations are done with SQLite in mind.
```

With this in mind, what is the intended migration path from PostgreSQL to SQLite?

### Description

Currently, there doesn't seem to be a migration strategy in place to move users away from the "highly discouraged" Postgres. As the new config format allows configuring both sqlite and postgres options, is there any intention to have a migration tool to alleviate the process, or perhaps documentation covering the necessary steps for it?

### Contribution

- [ ] I can write the design doc for this feature
- [ ] I can contribute this feature

### How can it be implemented?

Possible solutions:

1. Migration tool
2. Documentation covering manually migrating the database from Postgres
3. An explicit note/documentation stating that migration between the database engines is not supported

## Issue 56 (#2188): [Bug] "Unexpected fault address" when opening SQLite db under armv7

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

I am running headscale on a armv7 SOC (Cubieboard2) in a docker container since quite a while now. After switching to version 0.23 I'm running in an error. 

When trying to start headscale using the official headscale/headscale docker image for armv7 the process fails with the following error after trying to open the SQLite db. 

> headscale  | 2024-10-11T08:13:30Z WRN 
headscale  | WARN: The "dns.use_username_in_magic_dns" configuration key is deprecated and has been removed. Please see the changelog for more details.
headscale  | 
headscale  | 2024-10-11T08:13:30Z INF No private key file at path, creating... path=/var/lib/headscale/noise_private.key
headscale  | 2024-10-11T08:13:30Z INF Opening database database=sqlite3 path=/etc/headscale/db.sqlite
headscale  | unexpected fault address 0x769affff
headscale  | fatal error: fault
headscale  | [signal SIGBUS: bus error code=0x2 addr=0x769affff pc=0x979e58]
headscale  | 
headscale  | goroutine 1 gp=0x3402128 m=4 mp=0x3461408 [running]:
headscale  | runtime.throw({0x175ca21, 0x5})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/panic.go:1067 +0x34 fp=0x34d4e1c sp=0x34d4e08 pc=0x9292c
headscale  | runtime.sigpanic()
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/signal_unix.go:897 +0x104 fp=0x34d4e4c sp=0x34d4e1c pc=0x94cd0
headscale  | modernc.org/libc.Xmemset(0x35ca360, 0x769a8088, 0x0, 0x7f78)
headscale  |    /home/runner/go/pkg/mod/modernc.org/libc@v1.60.1/ccgo_linux_arm.go:146120 +0x24 fp=0x34d4e50 sp=0x34d4e50 pc=0x979e58
headscale  | modernc.org/sqlite/lib._walIndexAppend(0x35ca360, 0x76600718, 0x1, 0x1)
headscale  |    /home/runner/go/pkg/mod/modernc.org/sqlite@v1.32.0/lib/sqlite_linux_arm.go:43350 +0xe4 fp=0x34d4e88 sp=0x34d4e50 pc=0x9caf58
headscale  | modernc.org/sqlite/lib._walFrames(0x35ca360, 0x76600718, 0x1000, 0x75b07038, 0x1, 0x1, 0xa)
headscale  |    /home/runner/go/pkg/mod/modernc.org/sqlite@v1.32.0/lib/sqlite_linux_arm.go:46136 +0xa48 fp=0x34d4f0c sp=0x34d4e88 pc=0x9d1404
headscale  | modernc.org/sqlite/lib._sqlite3WalFrames(0x35ca360, 0x76600718, 0x1000, 0x75b07038, 0x1, 0x1, 0xa)
headscale  |    /home/runner/go/pkg/mod/modernc.org/sqlite@v1.32.0/lib/sqlite_linux_arm.go:46177 +0x4c fp=0x34d4f30 sp=0x34d4f0c pc=0x9d1728
headscale  | modernc.org/sqlite/lib._pagerWalFrames(0x35ca360, 0x76000418, 0x75b07038, 0x1, 0x1)
headscale  |    /home/runner/go/pkg/mod/modernc.org/sqlite@v1.32.0/lib/sqlite_linux_arm.go:37777 +0x114 fp=0x34d4f70 sp=0x34d4f30 pc=0x9c1d88
headscale  | modernc.org/sqlite/lib._sqlite3PagerCommitPhaseOne(0x35ca360, 0x76000418, 0x0, 0x0)
headscale  |    /home/runner/go/pkg/mod/modernc.org/sqlite@v1.32.0/lib/sqlite_linux_arm.go:40996 +0x1b0 fp=0x34d4fa4 sp=0x34d4f70 pc=0x9c8510
headscale  | modernc.org/sqlite/lib._sqlite3BtreeCommitPhaseOne(0x35ca360, 0x75e00058, 0x0)
headscale  |    /home/runner/go/pkg/mod/modernc.org/sqlite@v1.32.0/lib/sqlite_linux_arm.go:51705 +0xbc fp=0x34d4fc4 sp=0x34d4fa4 pc=0x9db3a0
headscale  | modernc.org/sqlite/lib._vdbeCommit(0x35ca360, 0x76000018, 0x75a08808)
headscale  |    /home/runner/go/pkg/mod/modernc.org/sqlite@v1.32.0/lib/sqlite_linux_arm.go:64640 +0xdcc fp=0x34d508c sp=0x34d4fc4 pc=0x9fbc6c
headscale  | modernc.org/sqlite/lib._sqlite3VdbeHalt(0x35ca360, 0x75a08808)
headscale  |    /home/runner/go/pkg/mod/modernc.org/sqlite@v1.32.0/lib/sqlite_linux_arm.go:65053 +0x348 fp=0x34d50b4 sp=0x34d508c pc=0x9fc42c
headscale  | modernc.org/sqlite/lib._sqlite3VdbeExec(0x35ca360, 0x75a08808)
headscale  |    /home/runner/go/pkg/mod/modernc.org/sqlite@v1.32.0/lib/sqlite_linux_arm.go:71196 +0x4920 fp=0x34d5594 sp=0x34d50b4 pc=0xa0c450
headscale  | modernc.org/sqlite/lib._sqlite3Step(0x35ca360, 0x75a08808)
headscale  |    /home/runner/go/pkg/mod/modernc.org/sqlite@v1.32.0/lib/sqlite_linux_arm.go:67892 +0x8c fp=0x34d55b4 sp=0x34d5594 pc=0xa02ad0
headscale  | modernc.org/sqlite/lib.Xsqlite3_step(0x35ca360, 0x75a08808)
headscale  |    /home/runner/go/pkg/mod/modernc.org/sqlite@v1.32.0/lib/sqlite_linux_arm.go:67959 +0xdc fp=0x34d55e4 sp=0x34d55b4 pc=0xa02f2c
headscale  | github.com/glebarez/go-sqlite.(*conn).step(0x348b7e0, 0x75a08808)
headscale  |    /home/runner/go/pkg/mod/github.com/glebarez/go-sqlite@v1.22.0/sqlite.go:1002 +0x28 fp=0x34d55fc sp=0x34d55e4 pc=0xb68c90
headscale  | github.com/glebarez/go-sqlite.(*stmt).exec.func1(0x34fa6c8, 0x34d566c, {0x27acfa8, 0x0, 0x0})
headscale  |    /home/runner/go/pkg/mod/github.com/glebarez/go-sqlite@v1.22.0/sqlite.go:536 +0x128 fp=0x34d5648 sp=0x34d55fc pc=0xb66aac
headscale  | github.com/glebarez/go-sqlite.(*stmt).exec(0x34fa6c8, {0x1a6deb4, 0x27acfa8}, {0x27acfa8, 0x0, 0x0})
headscale  |    /home/runner/go/pkg/mod/github.com/glebarez/go-sqlite@v1.22.0/sqlite.go:549 +0x1a0 fp=0x34d5680 sp=0x34d5648 pc=0xb66820
headscale  | github.com/glebarez/go-sqlite.(*stmt).ExecContext(0x34fa6c8, {0x1a6deb4, 0x27acfa8}, {0x27acfa8, 0x0, 0x0})
headscale  |    /home/runner/go/pkg/mod/github.com/glebarez/go-sqlite@v1.22.0/sqlite_go18.go:43 +0x44 fp=0x34d56ac sp=0x34d5680 pc=0xb6ba98
headscale  | database/sql.ctxDriverStmtExec({0x1a6deb4, 0x27acfa8}, {0x1a6e584, 0x34fa6c8}, {0x27acfa8, 0x0, 0x0})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/database/sql/ctxutil.go:65 +0xb0 fp=0x34d56fc sp=0x34d56ac pc=0x730da0
headscale  | database/sql.resultFromStatement({0x1a6deb4, 0x27acfa8}, {0x1a6d0a0, 0x348b7e0}, 0x36e4800, {0x363a580, 0x0, 0x8})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/database/sql/sql.go:2672 +0xfc fp=0x34d5750 sp=0x34d56fc pc=0x73bce8
headscale  | database/sql.(*Stmt).ExecContext.func1(0x1)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/database/sql/sql.go:2646 +0xb8 fp=0x34d57a8 sp=0x34d5750 pc=0x73ba88
headscale  | database/sql.(*DB).retry(0x3508dc8, 0x34d57f0)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/database/sql/sql.go:1568 +0x78 fp=0x34d57d0 sp=0x34d57a8 pc=0x736d5c
headscale  | database/sql.(*Stmt).ExecContext(0x35d82a0, {0x1a6deb4, 0x27acfa8}, {0x363a580, 0x0, 0x8})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/database/sql/sql.go:2640 +0xe0 fp=0x34d5820 sp=0x34d57d0 pc=0x73b978
headscale  | gorm.io/gorm.(*PreparedStmtDB).ExecContext(0x36e4760, {0x1a6deb4, 0x27acfa8}, {0x3506780, 0x7e}, {0x363a580, 0x0, 0x8})
headscale  |    /home/runner/go/pkg/mod/gorm.io/gorm@v1.25.11/prepare_stmt.go:151 +0xfc fp=0x34d58a0 sp=0x34d5820 pc=0x7c234c
headscale  | gorm.io/gorm/callbacks.RawExec(0x36e47c0)
headscale  |    /home/runner/go/pkg/mod/gorm.io/gorm@v1.25.11/callbacks/raw.go:9 +0x90 fp=0x34d58d4 sp=0x34d58a0 pc=0x967b2c
headscale  | gorm.io/gorm.(*processor).Execute(0x3718330, 0x36e47c0)
headscale  |    /home/runner/go/pkg/mod/gorm.io/gorm@v1.25.11/callbacks.go:130 +0x3fc fp=0x34d5954 sp=0x34d58d4 pc=0x7b3194
headscale  | gorm.io/gorm.(*DB).Exec(0x348b680, {0x17dd172, 0x7e}, {0x0, 0x0, 0x0})
headscale  |    /home/runner/go/pkg/mod/gorm.io/gorm@v1.25.11/finisher_api.go:769 +0x188 fp=0x34d5994 sp=0x34d5954 pc=0x7be7ec
headscale  | github.com/juanfont/headscale/hscontrol/db.openDB({{0x1760531, 0x7}, 0x0, {0x0, 0x3b9aca00, 0x1, 0x1, 0x1}, {{0x34cb4e8, 0x18}, ...}, ...})
headscale  |    /home/runner/work/headscale/headscale/hscontrol/db/db.go:462 +0xc3c fp=0x34d5a84 sp=0x34d5994 pc=0xd182ec
headscale  | github.com/juanfont/headscale/hscontrol/db.NewHeadscaleDatabase({{0x1760531, 0x7}, 0x0, {0x0, 0x3b9aca00, 0x1, 0x1, 0x1}, {{0x34cb4e8, 0x18}, ...}, ...}, ...)
headscale  |    /home/runner/work/headscale/headscale/hscontrol/db/db.go:45 +0x38 fp=0x34d5b40 sp=0x34d5a84 pc=0xd14454
headscale  | github.com/juanfont/headscale/hscontrol.NewHeadscale(0x37386c8)
headscale  |    /home/runner/work/headscale/headscale/hscontrol/app.go:139 +0x188 fp=0x34d5cc8 sp=0x34d5b40 pc=0x13eb474
headscale  | github.com/juanfont/headscale/cmd/headscale/cli.newHeadscaleServerWithConfig()
headscale  |    /home/runner/work/headscale/headscale/cmd/headscale/cli/utils.go:35 +0x8c fp=0x34d5cf0 sp=0x34d5cc8 pc=0x141e14c
headscale  | github.com/juanfont/headscale/cmd/headscale/cli.init.func28(0x2795238, {0x27acfa8, 0x0, 0x0})
headscale  |    /home/runner/work/headscale/headscale/cmd/headscale/cli/serve.go:22 +0x14 fp=0x34d5d14 sp=0x34d5cf0 pc=0x14171bc
headscale  | github.com/spf13/cobra.(*Command).execute(0x2795238, {0x27acfa8, 0x0, 0x0})
headscale  |    /home/runner/go/pkg/mod/github.com/spf13/cobra@v1.8.1/command.go:989 +0x9b0 fp=0x34d5dd4 sp=0x34d5d14 pc=0x867fb8
headscale  | github.com/spf13/cobra.(*Command).ExecuteC(0x2794968)
headscale  |    /home/runner/go/pkg/mod/github.com/spf13/cobra@v1.8.1/command.go:1117 +0x44c fp=0x34d5e4c sp=0x34d5dd4 pc=0x868890
headscale  | github.com/spf13/cobra.(*Command).Execute(...)
headscale  |    /home/runner/go/pkg/mod/github.com/spf13/cobra@v1.8.1/command.go:1041
headscale  | github.com/juanfont/headscale/cmd/headscale/cli.Execute()
headscale  |    /home/runner/work/headscale/headscale/cmd/headscale/cli/root.go:97 +0x20 fp=0x34d5e78 sp=0x34d5e4c pc=0x141d438
headscale  | main.main()
headscale  |    /home/runner/work/headscale/headscale/cmd/headscale/headscale.go:42 +0x1a4 fp=0x34d5fa8 sp=0x34d5e78 pc=0x141f93c
headscale  | runtime.main()
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:272 +0x2ec fp=0x34d5fec sp=0x34d5fa8 pc=0x54fe4
headscale  | runtime.goexit({})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/asm_arm.s:884 +0x4 fp=0x34d5fec sp=0x34d5fec pc=0x9a508
headscale  | 
headscale  | goroutine 2 gp=0x3402488 m=nil [force gc (idle)]:
headscale  | runtime.gopark(0x183e348, 0x279d4e0, 0x11, 0xa, 0x1)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:424 +0x104 fp=0x345cfd4 sp=0x345cfc0 pc=0x92a6c
headscale  | runtime.goparkunlock(...)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:430
headscale  | runtime.forcegchelper()
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:337 +0xe4 fp=0x345cfec sp=0x345cfd4 pc=0x55450
headscale  | runtime.goexit({})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/asm_arm.s:884 +0x4 fp=0x345cfec sp=0x345cfec pc=0x9a508
headscale  | created by runtime.init.6 in goroutine 1
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:325 +0x1c
headscale  | 
headscale  | goroutine 3 gp=0x34027e8 m=nil [GC sweep wait]:
headscale  | runtime.gopark(0x183e348, 0x279e360, 0xc, 0x9, 0x1)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:424 +0x104 fp=0x345d7c4 sp=0x345d7b0 pc=0x92a6c
headscale  | runtime.goparkunlock(...)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:430
headscale  | runtime.bgsweep(0x347a000)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgcsweep.go:317 +0x11c fp=0x345d7e4 sp=0x345d7c4 pc=0x3af10
headscale  | runtime.gcenable.gowrap1()
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgc.go:203 +0x28 fp=0x345d7ec sp=0x345d7e4 pc=0x2ad90
headscale  | runtime.goexit({})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/asm_arm.s:884 +0x4 fp=0x345d7ec sp=0x345d7ec pc=0x9a508
headscale  | created by runtime.gcenable in goroutine 1
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgc.go:203 +0x74
headscale  | 
headscale  | goroutine 4 gp=0x3402908 m=nil [GC scavenge wait]:
headscale  | runtime.gopark(0x183e348, 0x27a03e8, 0xd, 0xa, 0x2)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:424 +0x104 fp=0x345dfb4 sp=0x345dfa0 pc=0x92a6c
headscale  | runtime.goparkunlock(...)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:430
headscale  | runtime.(*scavengerState).park(0x27a03e8)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgcscavenge.go:425 +0x68 fp=0x345dfc8 sp=0x345dfb4 pc=0x3827c
headscale  | runtime.bgscavenge(0x347a000)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgcscavenge.go:658 +0x60 fp=0x345dfe4 sp=0x345dfc8 pc=0x389a8
headscale  | runtime.gcenable.gowrap2()
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgc.go:204 +0x28 fp=0x345dfec sp=0x345dfe4 pc=0x2ad3c
headscale  | runtime.goexit({})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/asm_arm.s:884 +0x4 fp=0x345dfec sp=0x345dfec pc=0x9a508
headscale  | created by runtime.gcenable in goroutine 1
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgc.go:204 +0xbc
headscale  | 
headscale  | goroutine 17 gp=0x34bc008 m=nil [finalizer wait]:
headscale  | runtime.gopark(0x183e1f0, 0x27ad038, 0x10, 0xa, 0x1)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:424 +0x104 fp=0x345c78c sp=0x345c778 pc=0x92a6c
headscale  | runtime.runfinq()
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mfinal.go:193 +0x110 fp=0x345c7ec sp=0x345c78c pc=0x29bbc
headscale  | runtime.goexit({})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/asm_arm.s:884 +0x4 fp=0x345c7ec sp=0x345c7ec pc=0x9a508
headscale  | created by runtime.createfing in goroutine 1
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mfinal.go:163 +0x5c
headscale  | 
headscale  | goroutine 18 gp=0x34bca28 m=nil [chan receive]:
headscale  | runtime.gopark(0x183e1d0, 0x3489534, 0xe, 0x7, 0x2)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:424 +0x104 fp=0x345878c sp=0x3458778 pc=0x92a6c
headscale  | runtime.chanrecv(0x3489500, 0x0, 0x1)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/chan.go:639 +0x4e0 fp=0x34587c8 sp=0x345878c pc=0x18648
headscale  | runtime.chanrecv1(0x3489500, 0x0)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/chan.go:489 +0x20 fp=0x34587dc sp=0x34587c8 pc=0x18138
headscale  | runtime.unique_runtime_registerUniqueMapCleanup.func1(...)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgc.go:1732
headscale  | runtime.unique_runtime_registerUniqueMapCleanup.gowrap1()
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgc.go:1735 +0x40 fp=0x34587ec sp=0x34587dc pc=0x2edb4
headscale  | runtime.goexit({})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/asm_arm.s:884 +0x4 fp=0x34587ec sp=0x34587ec pc=0x9a508
headscale  | created by unique.runtime_registerUniqueMapCleanup in goroutine 1
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgc.go:1730 +0xa4
headscale  | 
headscale  | goroutine 51 gp=0x35977a8 m=nil [select]:
headscale  | runtime.gopark(0x183e378, 0x0, 0x9, 0x3, 0x1)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:424 +0x104 fp=0x34596f4 sp=0x34596e0 pc=0x92a6c
headscale  | runtime.selectgo(0x34597d0, 0x34597c4, 0x0, 0x0, 0x2, 0x1)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/select.go:335 +0xb68 fp=0x34597a0 sp=0x34596f4 pc=0x6a574
headscale  | github.com/patrickmn/go-cache.(*janitor).Run(0x38f5950, 0x37181b0)
headscale  |    /home/runner/go/pkg/mod/github.com/patrickmn/go-cache@v2.1.0+incompatible/cache.go:1079 +0x98 fp=0x34597e0 sp=0x34597a0 pc=0xcf9ee4
headscale  | github.com/patrickmn/go-cache.runJanitor.gowrap1()
headscale  |    /home/runner/go/pkg/mod/github.com/patrickmn/go-cache@v2.1.0+incompatible/cache.go:1099 +0x30 fp=0x34597ec sp=0x34597e0 pc=0xcfa0b8
headscale  | runtime.goexit({})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/asm_arm.s:884 +0x4 fp=0x34597ec sp=0x34597ec pc=0x9a508
headscale  | created by github.com/patrickmn/go-cache.runJanitor in goroutine 1
headscale  |    /home/runner/go/pkg/mod/github.com/patrickmn/go-cache@v2.1.0+incompatible/cache.go:1099 +0xfc
headscale  | 
headscale  | goroutine 52 gp=0x373afc8 m=nil [select]:
headscale  | runtime.gopark(0x183e378, 0x0, 0x9, 0x3, 0x1)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:424 +0x104 fp=0x3459f00 sp=0x3459eec pc=0x92a6c
headscale  | runtime.selectgo(0x3459fdc, 0x3459fd0, 0x0, 0x0, 0x2, 0x1)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/select.go:335 +0xb68 fp=0x3459fac sp=0x3459f00 pc=0x6a574
headscale  | github.com/juanfont/headscale/hscontrol/notifier.(*batcher).doWork(...)
headscale  |    /home/runner/work/headscale/headscale/hscontrol/notifier/notifier.go:419
headscale  | github.com/juanfont/headscale/hscontrol/notifier.NewNotifier.gowrap1()
headscale  |    /home/runner/work/headscale/headscale/hscontrol/notifier/notifier.go:52 +0x8c fp=0x3459fec sp=0x3459fac pc=0xe51360
headscale  | runtime.goexit({})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/asm_arm.s:884 +0x4 fp=0x3459fec sp=0x3459fec pc=0x9a508
headscale  | created by github.com/juanfont/headscale/hscontrol/notifier.NewNotifier in goroutine 1
headscale  |    /home/runner/work/headscale/headscale/hscontrol/notifier/notifier.go:52 +0x1b0
headscale  | 
headscale  | goroutine 15 gp=0x373b0e8 m=nil [GC worker (idle)]:
headscale  | runtime.gopark(0x183e200, 0x3442960, 0x1a, 0xa, 0x0)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:424 +0x104 fp=0x345ef88 sp=0x345ef74 pc=0x92a6c
headscale  | runtime.gcBgMarkWorker(0x37e4e40)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgc.go:1363 +0xf4 fp=0x345efe4 sp=0x345ef88 pc=0x2dbec
headscale  | runtime.gcBgMarkStartWorkers.gowrap1()
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgc.go:1279 +0x28 fp=0x345efec sp=0x345efe4 pc=0x2dacc
headscale  | runtime.goexit({})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/asm_arm.s:884 +0x4 fp=0x345efec sp=0x345efec pc=0x9a508
headscale  | created by runtime.gcBgMarkStartWorkers in goroutine 33
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgc.go:1279 +0x14c
headscale  | 
headscale  | goroutine 49 gp=0x373b208 m=nil [IO wait]:
headscale  | runtime.gopark(0x183e33c, 0x76c02e88, 0x2, 0x2, 0x5)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:424 +0x104 fp=0x36e3ae0 sp=0x36e3acc pc=0x92a6c
headscale  | runtime.netpollblock(0x76c02e78, 0x72, 0x0)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/netpoll.go:575 +0x100 fp=0x36e3af8 sp=0x36e3ae0 pc=0x4d420
headscale  | internal/poll.runtime_pollWait(0x76c02e78, 0x72)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/netpoll.go:351 +0x54 fp=0x36e3b0c sp=0x36e3af8 pc=0x91c04
headscale  | internal/poll.(*pollDesc).wait(0x36d01f8, 0x72, 0x0)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/internal/poll/fd_poll_runtime.go:84 +0x30 fp=0x36e3b20 sp=0x36e3b0c pc=0xe3c20
headscale  | internal/poll.(*pollDesc).waitRead(...)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/internal/poll/fd_poll_runtime.go:89
headscale  | internal/poll.(*FD).Read(0x36d01e0, {0x37e6000, 0x1000, 0x1000})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/internal/poll/fd_unix.go:165 +0x22c fp=0x36e3b68 sp=0x36e3b20 pc=0xe4d9c
headscale  | net.(*netFD).Read(0x36d01e0, {0x37e6000, 0x1000, 0x1000})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/net/fd_posix.go:55 +0x38 fp=0x36e3b94 sp=0x36e3b68 pc=0x360bec
headscale  | net.(*conn).Read(0x3798860, {0x37e6000, 0x1000, 0x1000})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/net/net.go:189 +0x48 fp=0x36e3bc0 sp=0x36e3b94 pc=0x373be8
headscale  | net.(*TCPConn).Read(0x3798860, {0x37e6000, 0x1000, 0x1000})
headscale  |    <autogenerated>:1 +0x44 fp=0x36e3be0 sp=0x36e3bc0 pc=0x388f94
headscale  | crypto/tls.(*atLeastReader).Read(0x38f5140, {0x37e6000, 0x1000, 0x1000})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/crypto/tls/conn.go:809 +0x78 fp=0x36e3c0c sp=0x36e3be0 pc=0x3d6208
headscale  | bytes.(*Buffer).ReadFrom(0x37395d4, {0x1a62418, 0x38f5140})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/bytes/buffer.go:211 +0xa4 fp=0x36e3c48 sp=0x36e3c0c pc=0x135a08
headscale  | crypto/tls.(*Conn).readFromUntil(0x3739448, {0x1a61db8, 0x3798860}, 0x5)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/crypto/tls/conn.go:831 +0xd4 fp=0x36e3c70 sp=0x36e3c48 pc=0x3d6464
headscale  | crypto/tls.(*Conn).readRecordOrCCS(0x3739448, 0x0)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/crypto/tls/conn.go:629 +0x134 fp=0x36e3dd0 sp=0x36e3c70 pc=0x3d3b68
headscale  | crypto/tls.(*Conn).readRecord(...)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/crypto/tls/conn.go:591
headscale  | crypto/tls.(*Conn).Read(0x3739448, {0x35a9000, 0x1000, 0x1000})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/crypto/tls/conn.go:1385 +0x148 fp=0x36e3e00 sp=0x36e3dd0 pc=0x3d9940
headscale  | bufio.(*Reader).Read(0x37fd440, {0x34da024, 0x9, 0x9})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/bufio/bufio.go:241 +0x214 fp=0x36e3e24 sp=0x36e3e00 pc=0x201338
headscale  | io.ReadAtLeast({0x1a61d78, 0x37fd440}, {0x34da024, 0x9, 0x9}, 0x9)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/io/io.go:335 +0x90 fp=0x36e3e50 sp=0x36e3e24 pc=0xd8560
headscale  | io.ReadFull(...)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/io/io.go:354
headscale  | net/http.http2readFrameHeader({0x34da024, 0x9, 0x9}, {0x1a61d78, 0x37fd440})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/net/http/h2_bundle.go:1642 +0x54 fp=0x36e3e78 sp=0x36e3e50 pc=0x455bb4
headscale  | net/http.(*http2Framer).ReadFrame(0x34da000)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/net/http/h2_bundle.go:1909 +0x88 fp=0x36e3ef4 sp=0x36e3e78 pc=0x45634c
headscale  | net/http.(*http2clientConnReadLoop).run(0x36e3fdc)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/net/http/h2_bundle.go:9496 +0x10c fp=0x36e3fa4 sp=0x36e3ef4 pc=0x47ae4c
headscale  | net/http.(*http2ClientConn).readLoop(0x3638008)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/net/http/h2_bundle.go:9392 +0x80 fp=0x36e3fe4 sp=0x36e3fa4 pc=0x47a3dc
headscale  | net/http.(*http2Transport).newClientConn.gowrap1()
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/net/http/h2_bundle.go:8006 +0x28 fp=0x36e3fec sp=0x36e3fe4 pc=0x47334c
headscale  | runtime.goexit({})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/asm_arm.s:884 +0x4 fp=0x36e3fec sp=0x36e3fec pc=0x9a508
headscale  | created by net/http.(*http2Transport).newClientConn in goroutine 16
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/net/http/h2_bundle.go:8006 +0xd3c
headscale  | 
headscale  | goroutine 35 gp=0x373b568 m=nil [GC worker (idle)]:
headscale  | runtime.gopark(0x183e200, 0x3442948, 0x1a, 0xa, 0x0)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:424 +0x104 fp=0x345e788 sp=0x345e774 pc=0x92a6c
headscale  | runtime.gcBgMarkWorker(0x37e4e40)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgc.go:1363 +0xf4 fp=0x345e7e4 sp=0x345e788 pc=0x2dbec
headscale  | runtime.gcBgMarkStartWorkers.gowrap1()
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgc.go:1279 +0x28 fp=0x345e7ec sp=0x345e7e4 pc=0x2dacc
headscale  | runtime.goexit({})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/asm_arm.s:884 +0x4 fp=0x345e7ec sp=0x345e7ec pc=0x9a508
headscale  | created by runtime.gcBgMarkStartWorkers in goroutine 33
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/mgc.go:1279 +0x14c
headscale  | 
headscale  | goroutine 53 gp=0x373bb08 m=nil [select]:
headscale  | runtime.gopark(0x183e378, 0x0, 0x9, 0x3, 0x1)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/proc.go:424 +0x104 fp=0x345a6f4 sp=0x345a6e0 pc=0x92a6c
headscale  | runtime.selectgo(0x345a7cc, 0x345a7c4, 0x0, 0x0, 0x2, 0x1)
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/select.go:335 +0xb68 fp=0x345a7a0 sp=0x345a6f4 pc=0x6a574
headscale  | database/sql.(*DB).connectionOpener(0x3508dc8, {0x1a6df98, 0x3718360})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/database/sql/sql.go:1253 +0x9c fp=0x345a7dc sp=0x345a7a0 pc=0x735300
headscale  | database/sql.OpenDB.gowrap1()
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/database/sql/sql.go:833 +0x38 fp=0x345a7ec sp=0x345a7dc pc=0x7335ac
headscale  | runtime.goexit({})
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/runtime/asm_arm.s:884 +0x4 fp=0x345a7ec sp=0x345a7ec pc=0x9a508
headscale  | created by database/sql.OpenDB in goroutine 1
headscale  |    /nix/store/mi0ybwsm6pmxzv9hsm6bcbqaq1pkf8wh-go-1.23.1/share/go/src/database/sql/sql.go:833 +0x13c
headscale exited with code 0

### Expected Behavior

Opening the SQLite db does not crash the startup process of headscale on armv7.

### Steps To Reproduce

1. Run headscale in docker container using the headscale/headscale image for linux/arm/v7 on an armv7 board
2. Start the container
3. headscale starts, tries to open the SQLite db and fails
4. See error

### Environment

```markdown
- OS: Alpine Linux 3.20
- Headscale version: 0.23
- Tailscale version: xx
```


### Runtime environment

- [X] Headscale is behind a (reverse) proxy
- [X] Headscale runs in a container

### Anything else?

I built the docker image using debian:slim as a base; it fails with the exact same error.

## Issue 57 (#2262): [Feature] make it possible to read extra_records from file

### Use case

When `use_username_in_magic_dns` is removed, there will be a gap where DNS entries might not be available for some configuration.

A possible workaround is to generate these entries and put them in `extra_records` and generate them based on your headscale. See https://github.com/juanfont/headscale/issues/1369#issuecomment-2339901185 for more information.

### Description

To facilitate this use case (and others where you want to inject dns entries programmatically, we should add the ability to consume extra_records from a JSON file. 

For example, this will allow administrators to use `headscale` commands as part of a script to generate a JSON file by looping over the entries in the host list and create entries containing the username.

### Contribution

- [X] I can write the design doc for this feature
- [X] I can contribute this feature

### How can it be implemented?

Let us create a new config option like `extra_records_path` or maybe paths, which sets up a file watcher reading the DNS entries on change. 
It should hash the file and check against the old hash to make sure we dont sent any updates if the file or content has not changed.

If the content has changed, propagate it to the nodes in the tailnet with our update mechanism, see if we can have a fastpath that only sends DNS updates.

## Issue 58 (#2273): fix docker network caps

Its December, all integration tests requiring networking seem to have broken...

Docker releases a patch release which changed the required permissions to be able to do tun devices in containers, this caused all containers to fail in tests causing us to fail all tests. This fixes it, and adds some tools for debugging in the future.

## Issue 59 (#2219): [Bug] Latest config example contains deprecated key

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

current conf example does not match latest spec

### Expected Behavior

match the latest spec

### Steps To Reproduce

use the example conf file. it has a deprecated key.

### Environment

```markdown
latest bookworm
```


### Runtime environment

- [ ] Headscale is behind a (reverse) proxy
- [ ] Headscale runs in a container

### Anything else?

_No response_

## Issue 60 (#2285): update oidc part of changelog for 0.24.0

Signed-off-by: Kristoffer Dalby <kristoffer@tailscale.com>

## Issue 61 (#2259): [Bug] Unable to delete a route that doesn’t belong to anyone

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior
```bash
➜  docker exec -it headscale headscale routes list
ID | Node      | Prefix           | Advertised | Enabled | Primary
55 |           | ::/0             | true       | true    | -
58 |           | 0.0.0.0/0        | true       | true    | -

➜  docker exec -it headscale headscale routes delete --force -r 55
Cannot delete route 55: WHERE conditions required
➜  docker exec -it headscale headscale routes delete --force -r 58
Cannot delete route 58: WHERE conditions required
```
### Expected Behavior

it should delete the route

### Steps To Reproduce

 I don't know how the route(without node) generates 

### Environment

```markdown
- OS:
- Headscale version: 0.23
- Tailscale version:
```


### Runtime environment

- [X] Headscale is behind a (reverse) proxy
- [X] Headscale runs in a container

### Anything else?

_No response_

## Issue 62 (#2284): [Feature] add note to docs about reloading ACLs with SIGHUP

### Use case

We support reloading ACL with SIGHUP, but its not mentioned anywhere except code or Changelog, we should probably mention in.

## Issue 63 (#2294): Update flake.lock

Automated changes by the [update-flake-lock](https://github.com/DeterminateSystems/update-flake-lock) GitHub Action.

```
Flake lock file updates:

• Updated input 'nixpkgs':
    'github:NixOS/nixpkgs/929116e316068c7318c54eb4d827f7d9756d5e9c?narHash=sha256-aLJxoTDDSqB%2B/3orsulE6/qdlX6MzDLIITLZqdgMpqo%3D' (2024-12-05)
  → 'github:NixOS/nixpkgs/5a48e3c2e435e95103d56590188cfed7b70e108c?narHash=sha256-xyiHLs6KJ1fxeGmcCxKjJE4yJknVJxbC8Y/ZRYyC8WE%3D' (2024-12-11)
```

### Running GitHub Actions on this PR

GitHub Actions will not run workflows on pull requests which are opened by a GitHub Action.

To run GitHub Actions workflows on this PR, run:

```sh
git branch -D update_flake_lock_action
git fetch origin
git checkout update_flake_lock_action
git commit --amend --no-edit
git push origin update_flake_lock_action --force
```

## Issue 64 (#2291): [Bug] SIGHUP complains about ACL errors when no ACL is configured

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

When no ACL is configured and headscale receives a SIGHUP it prints the following error message:

```
2024-12-14T19:42:19+01:00 INF Received SIGHUP, reloading ACL and Config signal=hangup
2024-12-14T19:42:19+01:00 ERR failed to set new policy error="parsing policy: parsing hujson, err: hujson: line 1, column 1: parsing value: unexpected EOF"
```

### Expected Behavior

Only process and print policy related errors on SIGHUP when a policy is configured.

### Steps To Reproduce

1. Use the following configuration (default):
```yaml
policy:
  # The mode can be "file" or "database" that defines
  # where the ACL policies are stored and read from.
  mode: file
  # If the mode is set to "file", the path to a
  # HuJSON file containing ACL policies.
  path: ""
```
2. Send SIGHUP: `kill -HUP $(pidof headscale_0.24.0-beta.1_linux_amd64)`
3. Headscale logs:
```
024-12-14T19:45:24+01:00 INF Received SIGHUP, reloading ACL and Config signal=hangup
2024-12-14T19:45:24+01:00 ERR failed to set new policy error="parsing policy: parsing hujson, err: hujson: line 1, column 1: parsing value: unexpected EOF"
```

---

This works fine on Headscale 0.23.0: `kill -HUP $(pidof headscale_0.23.0_linux_amd64)`:
```
2024-12-14T19:46:35+01:00 INF Received SIGHUP, reloading ACL and Config signal=hangup
```

### Environment

```markdown
- OS: Arch
- Headscale version: 0.24.0-beta.1
- Tailscale version: -
```


### Runtime environment

- [ ] Headscale is behind a (reverse) proxy
- [ ] Headscale runs in a container

### Anything else?

_No response_

## Issue 65 (#2293): [Bug] email_verified Field Returned as String Causes Unmarshal Error in v0.24.0-beta.1

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

When running v0.24.0-beta.1, my IdP (JumpCloud) returns the email_verified field as a string instead of a boolean. This results in a decoding error when attempting to log in.

**Error Message**
`failed to decode ID token claims: json: cannot unmarshal string into Go struct field OIDCClaims.email_verified of type bool`

### Expected Behavior

The application should handle email_verified as either a string ("true"/"false") or a boolean (true/false) to accommodate differences in IdP implementations.

### Steps To Reproduce

1. Configure JumpCloud as the IdP.
2. Attempt to log in using v0.24.0-beta.1.
3. Observe the error during the ID token decoding step.

### Environment

```markdown
- OS: Docker
- Headscale version: v0.24.0-beta.1
- Tailscale version: 1.78.1
```


### Runtime environment

- [X] Headscale is behind a (reverse) proxy
- [X] Headscale runs in a container

### Anything else?

JumpCloud JWT Decoded

```json
{
  "at_hash": "dHPX6DeNSz-JmC6BCKrN-w",
  "aud": [
    "887f0974-fa68-426a-a634-995f2e6f0e6a"
  ],
  "auth_time": 1734209441,
  "email": "mitchell@example.com",
  "email_verified": "true",
  "exp": 1734213044,
  "family_name": "K",
  "given_name": "Mitchell",
  "groups": [
    "Headscale-Users"
  ],
  "iat": 1734209444,
  "iss": "https://oauth.id.jumpcloud.com/",
  "jc_org": "z6l26ev8ckkf1bhj",
  "jti": "9c5ef43c-efde-4836-a6d1-17ca6aff98db",
  "middle_name": "",
  "name": "Mitchell",
  "preferred_username": "mitchell",
  "rat": 1734209416,
  "sid": "84db2a08-254b-42f7-a701-4ff73e6a1e6d",
  "sub": "at8zv29er4btuzih"
}
```

## Issue 66 (#2289): [Bug] Filewatcher stops watching dns.extra_records_path

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

A read-edit-write cycle (with vim) causes headscale to lose track of the path in `dns.extra_records_path`.

### Expected Behavior

Pickup changes made to the file. Headscale logs detected writes with `log.level: trace` when different versions of the config file are written. The sequence:

```bash
cp extra1.json .headscale-dns/extra.json
cp extra2.json .headscale-dns/extra.json
cp extra2.json .headscale-dns/extra.json    # no changes, OK
```

yields (fine)
```
2024-12-14T16:39:47+01:00 TRC ../runner/work/headscale/headscale/hscontrol/dns/extrarecords.go:87 > extra records received filewatch event op=WRITE path=.headscale-dns/extra.json
2024-12-14T16:39:47+01:00 TRC ../runner/work/headscale/headscale/hscontrol/dns/extrarecords.go:134 > extra records updated from path, count old: 1, new: 1 records=[{"Name":"grafana.myvpn.example.com","Type":"A","Value":"100.64.0.1"}]
2024-12-14T16:39:56+01:00 TRC ../runner/work/headscale/headscale/hscontrol/dns/extrarecords.go:87 > extra records received filewatch event op=WRITE path=.headscale-dns/extra.json
2024-12-14T16:39:56+01:00 TRC ../runner/work/headscale/headscale/hscontrol/dns/extrarecords.go:134 > extra records updated from path, count old: 1, new: 1 records=[{"Name":"grafana.myvpn.example.com","Type":"A","Value":"100.64.0.2"}]
2024-12-14T16:40:01+01:00 TRC ../runner/work/headscale/headscale/hscontrol/dns/extrarecords.go:87 > extra records received filewatch event op=WRITE path=.headscale-dns/extra.json
```


### Steps To Reproduce

The following causes headscale to loose track of the file:
```bash
vim .headscale-dns/extra.json    # make some valid changes and save
```

yields sometimes:
```
2024-12-14T16:50:21+01:00 TRC ../runner/work/headscale/headscale/hscontrol/dns/extrarecords.go:87 > extra records received filewatch event op=RENAME path=.headscale-dns/extra.json
2024-12-14T16:50:21+01:00 ERR ../runner/work/headscale/headscale/hscontrol/dns/extrarecords.go:115 > reading extra records from path: .headscale-dns/extra.json error="reading path: .headscale-dns/extra.json, err: open .headscale-dns/extra.json: no such file or directory"
```

and yield sometimes:
```
2024-12-14T16:51:45+01:00 TRC ../runner/work/headscale/headscale/hscontrol/dns/extrarecords.go:87 > extra records received filewatch event op=RENAME path=.headscale-dns/extra.json
2024-12-14T16:51:45+01:00 TRC ../runner/work/headscale/headscale/hscontrol/dns/extrarecords.go:134 > extra records updated from path, count old: 1, new: 1 records=[{"Name":"grafana.myvpn.example.com","Type":"A","Value":"100.64.0.7"}]
```

Result is always the same:

* Headscale no longer sends DNS updates to nodes - a query yields stale results
* Changes to the file are no longer picked up. Sometimes an error message is emitted and sometimes not
* Headscale needs to be restarted for the filewatcher to work again

---

This behavior can be triggered reliably with:

```bash
mv extra.json .headscale-dns/extra.json 
```

which yields:
```
2024-12-14T17:47:51+01:00 TRC ../runner/work/headscale/headscale/hscontrol/dns/extrarecords.go:87 > extra records received filewatch event op=CHMOD path=.headscale-dns/extra.json
2024-12-14T17:47:51+01:00 TRC ../runner/work/headscale/headscale/hscontrol/dns/extrarecords.go:134 > extra records updated from path, count old: 1, new: 1 records=[{"Name":"grafana.myvpn.example.com","Type":"A","Value":"100.64.0.1"}]
2024-12-14T17:47:51+01:00 TRC ../runner/work/headscale/headscale/hscontrol/dns/extrarecords.go:87 > extra records received filewatch event op=REMOVE path=.headscale-dns/extra.json
```

After that, changes to the file are no longer picked up.



### Environment

```markdown
- OS: Arch
- Headscale version: 0.24.0-beta.1
- Tailscale version: -
```


### Runtime environment

- [ ] Headscale is behind a (reverse) proxy
- [ ] Headscale runs in a container

### Anything else?

_No response_

## Issue 67 (#2306): Correct macOS GUI connect guide because there's no ALT key on a mac

<!--
Headscale is "Open Source, acknowledged contribution", this means that any
contribution will have to be discussed with the Maintainers before being submitted.

This model has been chosen to reduce the risk of burnout by limiting the
maintenance overhead of reviewing and validating third-party code.

Headscale is open to code contributions for bug fixes without discussion.

If you find mistakes in the documentation, please submit a fix to the documentation.
-->

<!-- Please tick if the following things apply. You… -->

- [ ] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [x] updated documentation if needed
- [ ] updated CHANGELOG.md

<!-- If applicable, please reference the issue using `Fixes #XXX` and add tests to cover your new code. -->

## Issue 68 (#2281): Bump golang.org/x/crypto from 0.26.0 to 0.31.0

Bumps [golang.org/x/crypto](https://github.com/golang/crypto) from 0.26.0 to 0.31.0.
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/golang/crypto/commit/b4f1988a35dee11ec3e05d6bf3e90b695fbd8909"><code>b4f1988</code></a> ssh: make the public key cache a 1-entry FIFO cache</li>
<li><a href="https://github.com/golang/crypto/commit/7042ebcbe097f305ba3a93f9a22b4befa4b83d29"><code>7042ebc</code></a> openpgp/clearsign: just use rand.Reader in tests</li>
<li><a href="https://github.com/golang/crypto/commit/3e90321ac7bcee3d924ed63ed3ad97be2079cb56"><code>3e90321</code></a> go.mod: update golang.org/x dependencies</li>
<li><a href="https://github.com/golang/crypto/commit/8c4e668694ccbaa1be4785da7e7a40f2ef93152b"><code>8c4e668</code></a> x509roots/fallback: update bundle</li>
<li><a href="https://github.com/golang/crypto/commit/6018723c74059e3b91c84268b212c2f6cdab1f64"><code>6018723</code></a> go.mod: update golang.org/x dependencies</li>
<li><a href="https://github.com/golang/crypto/commit/71ed71b4faf97caafd1863fed003e9ac311f10ee"><code>71ed71b</code></a> README: don't recommend go get</li>
<li><a href="https://github.com/golang/crypto/commit/750a45fe5e473d5afa193e9088f3d135e64eca26"><code>750a45f</code></a> sha3: add MarshalBinary, AppendBinary, and UnmarshalBinary</li>
<li><a href="https://github.com/golang/crypto/commit/36b172546bd03a74c79e109ec84c599b672ea9e4"><code>36b1725</code></a> sha3: avoid trailing permutation</li>
<li><a href="https://github.com/golang/crypto/commit/80ea76eb17c0c52f5d5d04e833d6aeb6b062d81d"><code>80ea76e</code></a> sha3: fix padding for long cSHAKE parameters</li>
<li><a href="https://github.com/golang/crypto/commit/c17aa50fbd32393e5d52fa65ca51cbfff0a75aea"><code>c17aa50</code></a> sha3: avoid buffer copy</li>
<li>Additional commits viewable in <a href="https://github.com/golang/crypto/compare/v0.26.0...v0.31.0">compare view</a></li>
</ul>
</details>
<br />


[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=golang.org/x/crypto&package-manager=go_modules&previous-version=0.26.0&new-version=0.31.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

Dependabot will resolve any conflicts with this PR as long as you don't alter it yourself. You can also trigger a rebase manually by commenting `@dependabot rebase`.

[//]: # (dependabot-automerge-start)
[//]: # (dependabot-automerge-end)

---

<details>
<summary>Dependabot commands and options</summary>
<br />

You can trigger Dependabot actions by commenting on this PR:
- `@dependabot rebase` will rebase this PR
- `@dependabot recreate` will recreate this PR, overwriting any edits that have been made to it
- `@dependabot merge` will merge this PR after your CI passes on it
- `@dependabot squash and merge` will squash and merge this PR after your CI passes on it
- `@dependabot cancel merge` will cancel a previously requested merge and block automerging
- `@dependabot reopen` will reopen this PR if it is closed
- `@dependabot close` will close this PR and stop Dependabot recreating it. You can achieve the same result by closing it manually
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/juanfont/headscale/network/alerts).

</details>

## Issue 69 (#2307): [Bug]  "headscale node ls --tags" does not list tags after v0.24.0-beta.1 upgrade

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

When running the command.
```
headscale node ls --tags
```

Shows
```
ID | Hostname        | Name               | MachineKey | NodeKey | User   | IP addresses                                             | Ephemeral | Last seen           | Expiration          | Connected | Expired | ForcedTags | InvalidTags | ValidTags
2  | app-srv-01      | syd-ts-rou         | [0DU0p]    | [hp9cC] | xxxxx  | 100.102.75.139, fd7a:115c:a1e0:623d:eb1a:ee76:1a5:2d2a   | false     | 2024-12-17 08:26:21 | 0001-01-01 00:00:00 | online    | no      |            |             | 
3  | server1         | ncl-ts-rou         | [q8PuG]    | [qZxRu] | xxxxx  | 100.98.33.13, fd7a:115c:a1e0:1364:5d:63fb:6e57:afb0      | false     | 2024-12-17 08:26:21 | 0001-01-01 00:00:00 | online    | no      |            |             | 
6  | localhost       | localhost          | [qR0EX]    | [/aHEX] | xxxxx  | 100.101.179.189, fd7a:115c:a1e0:fd45:1c94:4bee:9b90:496d | false     | 2024-12-17 08:08:03 | 2025-06-15 08:07:29 | offline   | no      |            |             | 

```

Nothing is listed in the `ValidTags`, `InvalidTags`, `ForcedTags` columns.


### Expected Behavior

When running the command.
```
headscale node ls --tags
```

I expect the nodes tags to be displayed in the `ValidTags`, `InvalidTags`, `ForcedTags` columns.
```
ID | Hostname        | Name               | MachineKey | NodeKey | User   | IP addresses                                             | Ephemeral | Last seen           | Expiration          | Connected | Expired | ForcedTags | InvalidTags | ValidTags
2  | app-srv-01      | syd-ts-rou         | [0DU0p]    | [hp9cC] | xxxxx  | 100.102.75.139, fd7a:115c:a1e0:623d:eb1a:ee76:1a5:2d2a   | false     | 2024-12-17 08:26:21 | 0001-01-01 00:00:00 | online    | no      |            |             | tag:prod-aus-rou
3  | server1         | ncl-ts-rou         | [q8PuG]    | [qZxRu] | xxxxx  | 100.98.33.13, fd7a:115c:a1e0:1364:5d:63fb:6e57:afb0      | false     | 2024-12-17 08:26:21 | 0001-01-01 00:00:00 | online    | no      |            |             | tag:prod-lan-sec-nvr
6  | localhost       | localhost          | [qR0EX]    | [/aHEX] | xxxxx  | 100.101.179.189, fd7a:115c:a1e0:fd45:1c94:4bee:9b90:496d | false     | 2024-12-17 08:08:03 | 2025-06-15 08:07:29 | offline   | no      |            |             |  

```


### Steps To Reproduce

1. Upgrade to v0.24.0-beta.
2. migrate all oidc users
3. restart tailscaled on nodes
4. run `headscale nodes ls --tags`

### Environment

```markdown
- OS: FreeBSD 14.1-RELEASE-p5
- Headscale version: v0.24.0-beta.1
- Tailscale version: 1.78.1 go version: go1.23.3
- Reverse Proxy: caddy
```


### Runtime environment

- [X] Headscale is behind a (reverse) proxy
- [ ] Headscale runs in a container

### Anything else?

Even tho nothing is displayed in the output, ACLs seems to be working as if the tags were set correctly.

When running the command  `tailscale debug netmap` I can see `RequestTags` being returned.

```
"RequestTags": [
        "tag:prod-aus-rou"
],
```

Running the following for a machine which I installed recently also does not return any tags.

```
curl -X 'GET'   'https://tailscale.sigaint.au/api/v1/node/20'   -H 'accept: application/json' -H 'Authorization: Bearer xxxxx'
```

Output:
```
{
  "node": {
    "id": "20",
    "machineKey": "mkey:xxx",
    "nodeKey": "nodekey:xxx",
    "discoKey": "discokey:xxx",
    "ipAddresses": [
      "100.87.117.196",
      "fd7a:115c:a1e0:ff4c:5f4f:a0a5:394d:b483"
    ],
    "name": "lan-mon-01",
    "user": {
      "id": "1",
      "name": "mhahl",
      "createdAt": "2024-11-04T21:33:47.127833898Z",
      "displayName": "Mark Hahl",
      "email": "mark.hahl@sigaint.au",
      "providerId": "https://auth.sigaint.au/realms/SIGAINT/4e754011-75e3-4c65-8c71-0265ff4c6e4c",
      "provider": "oidc",
      "profilePicUrl": ""
    },
    "lastSeen": "2024-12-17T08:26:21.434232205Z",
    "expiry": "2025-06-09T22:43:17.888225301Z",
    "preAuthKey": null,
    "createdAt": "2024-12-11T22:43:17.895004534Z",
    "registerMethod": "REGISTER_METHOD_OIDC",
    "forcedTags": [],
    "invalidTags": [],
    "validTags": [],
    "givenName": "lan-mon-01",
    "online": true
  }
}
```

## Issue 70 (#2313): Update flake.lock

Automated changes by the [update-flake-lock](https://github.com/DeterminateSystems/update-flake-lock) GitHub Action.

```
Flake lock file updates:

• Updated input 'nixpkgs':
    'github:NixOS/nixpkgs/71a6392e367b08525ee710a93af2e80083b5b3e2?narHash=sha256-0XovF7BYP50rTD2v4r55tR5MuBLet7q4xIz6Rgh3BBU%3D' (2024-12-13)
  → 'github:NixOS/nixpkgs/4989a246d7a390a859852baddb1013f825435cee?narHash=sha256-kMBQ5PRiFLagltK0sH%2B08aiNt3zGERC2297iB6vrvlU%3D' (2024-12-17)
```

### Running GitHub Actions on this PR

GitHub Actions will not run workflows on pull requests which are opened by a GitHub Action.

To run GitHub Actions workflows on this PR, run:

```sh
git branch -D update_flake_lock_action
git fetch origin
git checkout update_flake_lock_action
git commit --amend --no-edit
git push origin update_flake_lock_action --force
```

## Issue 71 (#2314): feat: Add PKCE Verifier for OIDC

From PR #1812 :

To fix the error "Could not exchange code for the token" when using the PKCE method, a verifier should be generated and used during the authentication process.

This change include change in configuration, oidc handling method and documents.

```yaml
oidc:
  # Optional: PKCE (Proof Key for Code Exchange) configuration
  # PKCE adds an additional layer of security to the OAuth 2.0 authorization code flow
  # by preventing authorization code interception attacks
  # See https://datatracker.ietf.org/doc/html/rfc7636
  pkce:
    # Enable or disable PKCE support (default: false)
    enabled: false
    # PKCE method to use:
    # - plain: Use plain code verifier
    # - S256: Use SHA256 hashed code verifier (default, recommended)
    method: S256
```

## Issue 72 (#2320): Update flake.lock

Automated changes by the [update-flake-lock](https://github.com/DeterminateSystems/update-flake-lock) GitHub Action.

```
Flake lock file updates:

• Updated input 'nixpkgs':
    'github:NixOS/nixpkgs/4989a246d7a390a859852baddb1013f825435cee?narHash=sha256-kMBQ5PRiFLagltK0sH%2B08aiNt3zGERC2297iB6vrvlU%3D' (2024-12-17)
  → 'github:NixOS/nixpkgs/7cc0bff31a3a705d3ac4fdceb030a17239412210?narHash=sha256-7QEFnKkzD13SPxs%2BUFR5bUFN2fRw%2BGlL0am72ZjNre4%3D' (2024-12-27)
```

### Running GitHub Actions on this PR

GitHub Actions will not run workflows on pull requests which are opened by a GitHub Action.

To run GitHub Actions workflows on this PR, run:

```sh
git branch -D update_flake_lock_action
git fetch origin
git checkout update_flake_lock_action
git commit --amend --no-edit
git push origin update_flake_lock_action --force
```

## Issue 73 (#2321): Update apple.md for latest version of iOS

The official iOS app now has a simpler login process for custom instances, directly within the app.

<!--
Headscale is "Open Source, acknowledged contribution", this means that any
contribution will have to be discussed with the Maintainers before being submitted.

This model has been chosen to reduce the risk of burnout by limiting the
maintenance overhead of reviewing and validating third-party code.

Headscale is open to code contributions for bug fixes without discussion.

If you find mistakes in the documentation, please submit a fix to the documentation.
-->

<!-- Please tick if the following things apply. You… -->

- [x] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [x] updated documentation if needed
- [ ] updated CHANGELOG.md

<!-- If applicable, please reference the issue using `Fixes #XXX` and add tests to cover your new code. -->

## Issue 74 (#2324): Update flake.lock

Automated changes by the [update-flake-lock](https://github.com/DeterminateSystems/update-flake-lock) GitHub Action.

```
Flake lock file updates:

• Updated input 'nixpkgs':
    'github:NixOS/nixpkgs/7cc0bff31a3a705d3ac4fdceb030a17239412210?narHash=sha256-7QEFnKkzD13SPxs%2BUFR5bUFN2fRw%2BGlL0am72ZjNre4%3D' (2024-12-27)
  → 'github:NixOS/nixpkgs/a27871180d30ebee8aa6b11bf7fef8a52f024733?narHash=sha256-Q4HuFAvoKAIiTRZTUxJ0ZXeTC7lLfC9/dggGHNXNlCw%3D' (2025-01-03)
```

### Running GitHub Actions on this PR

GitHub Actions will not run workflows on pull requests which are opened by a GitHub Action.

To run GitHub Actions workflows on this PR, run:

```sh
git branch -D update_flake_lock_action
git fetch origin
git checkout update_flake_lock_action
git commit --amend --no-edit
git push origin update_flake_lock_action --force
```

## Issue 75 (#2276): [Feature] Use the `nonce` parameter in OIDC authorization request to mitigate replay attacks

### Use case

The `nonce` parameter is used to mitigate replay attacks. It’s not required by the OpenID Connect Core specification, but it’s required by some OIDC/OAuth profiles, e.g. [Financial-grade API Security Profile 1.0](https://openid.net/specs/openid-financial-api-part-1-1_0.html) and [FAPI 2.0 Security Profile](https://openid.net/specs/fapi-2_0-security-profile-ID2.html).

### Description

[OpenID Connect Core 1.0 – 3.1.2.1 Authentication Request](https://openid.net/specs/openid-connect-core-1_0.html#AuthRequest):

> `nonce` String value used to associate a Client session with an ID Token, and **to mitigate replay attacks.** The value is passed through unmodified from the Authentication Request to the ID Token. Sufficient entropy MUST be present in the nonce values used to prevent attackers from guessing values. For implementation notes, see [Section 15.5.2](https://openid.net/specs/openid-connect-core-1_0.html#NonceNotes).

### Contribution

- [ ] I can write the design doc for this feature
- [ ] I can contribute this feature

### How can it be implemented?

_No response_

## Issue 76 (#2331): Fix typos

<!--
Headscale is "Open Source, acknowledged contribution", this means that any
contribution will have to be discussed with the Maintainers before being submitted.

This model has been chosen to reduce the risk of burnout by limiting the
maintenance overhead of reviewing and validating third-party code.

Headscale is open to code contributions for bug fixes without discussion.

If you find mistakes in the documentation, please submit a fix to the documentation.
-->

<!-- Please tick if the following things apply. You… -->

- [x] have read the [CONTRIBUTING.md](./CONTRIBUTING.md) file
- [ ] raised a GitHub issue or discussed it on the projects chat beforehand
- [ ] added unit tests
- [ ] added integration tests
- [ ] updated documentation if needed
- [ ] updated CHANGELOG.md

<!-- If applicable, please reference the issue using `Fixes #XXX` and add tests to cover your new code. -->

## Issue 77 (#2318): [Bug] headscale uses cfg.BaseDomain for building FQDNs

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

The config currently knows of:
* `cfg.BaseDomain`: not configurable through the config.yaml, set to `cfg.DNSConfig.BaseDomain`, used for `Domain` in `MapResponse`
* `cfg.DNSConfig.BaseDomain`: described as the magic DNS base domain.

`MapResponse.Domain` is used by GUIs to show the tailnet organization name (text below your username).
Currently, you can only configure the magic DNS base domain which will be used as the organization name. This is also used to build the FQDNs in host mappings.

### Expected Behavior

Be able to configure the organization name (organization domain) independently of the magic DNS base domain, as it is possible with tailscale.


### Steps To Reproduce

1. run tailscale with webclient=true and observe that the magic DNS (called suffix in `tailscale dns status`) base domain is used as the org name at the top.

### Environment

```markdown
- OS: n/a
- Headscale version: 0.23
- Tailscale version: 1.78.1 macos/windows
```


### Runtime environment

- [ ] Headscale is behind a (reverse) proxy
- [ ] Headscale runs in a container

### Anything else?

I have a PR ready to fix this.

## Issue 78 (#2336): "Domain" to display in GUI applications

<img width="297" alt="image" src="https://github.com/user-attachments/assets/ce24ecd9-9ee4-4a82-adbc-89a47a796a6d" />

At the moment, the `base_domain` (`fap` in the example above) is used in the GUI application to describe which server the account belongs to, I think this should be changed to the domain part of the `server_url` as it is more descriptive to which server you are logging into, e.g.:

```
server_url: https://headscale.example.no
```

should result in the screenshot saying: 
kristoffer@myemail.com
headscale.example.no

## Issue 79 (#2332): [Bug] OIDC nil deref when visiting invalid/old callback urls

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

nil deref when visiting invalid/old callback urls

### Expected Behavior

no nil deref and just an access denied error page, could mention: possibly expired link/session expired.

### Steps To Reproduce

1. log in and keep the callback url
2. restart the headscale server
3. visit the callback url again

### Environment

```markdown
- OS: Debian 12
- Headscale version: ghcr.io/juanfont/headscale:0.24.0-beta.2-debug
- Tailscale version: 1.78.1
```


### Runtime environment

- [X] Headscale is behind a (reverse) proxy
- [X] Headscale runs in a container

### Anything else?

```
headscale     | 2025/01/08 12:37:09 http: panic serving 172.18.0.16:56944: runtime error: invalid memory address or nil pointer dereference
headscale     | goroutine 306 [running]:
headscale     | net/http.(*conn).serve.func1()
headscale     | 	/nix/store/zhq8dnjbhwspzdglyq28j74axvqyk86q-go-1.23.3/share/go/src/net/http/server.go:1947 +0xbe
headscale     | panic({0x1e5d320?, 0x3654b60?})
headscale     | 	/nix/store/zhq8dnjbhwspzdglyq28j74axvqyk86q-go-1.23.3/share/go/src/runtime/panic.go:785 +0x132
headscale     | github.com/juanfont/headscale/hscontrol.(*AuthProviderOIDC).OIDCCallbackHandler(0xc0005d6ae0, {0x2541680, 0xc0006c1ce0}, 0xc0003f6640)
headscale     | 	/home/runner/work/headscale/headscale/hscontrol/oidc.go:299 +0x566
headscale     | net/http.HandlerFunc.ServeHTTP(0xb1b9e8?, {0x2541680?, 0xc0006c1ce0?}, 0xc0006c1c80?)
headscale     | 	/nix/store/zhq8dnjbhwspzdglyq28j74axvqyk86q-go-1.23.3/share/go/src/net/http/server.go:2220 +0x29
headscale     | github.com/juanfont/headscale/hscontrol.prometheusMiddleware.func1({0x2541520, 0xc0005de1c0}, 0xc0003f6640)
headscale     | 	/home/runner/work/headscale/headscale/hscontrol/metrics.go:89 +0x293
headscale     | net/http.HandlerFunc.ServeHTTP(0xc0003f6500?, {0x2541520?, 0xc0005de1c0?}, 0x4c04e9?)
headscale     | 	/nix/store/zhq8dnjbhwspzdglyq28j74axvqyk86q-go-1.23.3/share/go/src/net/http/server.go:2220 +0x29
headscale     | github.com/gorilla/mux.(*Router).ServeHTTP(0xc000176d80, {0x2541520, 0xc0005de1c0}, 0xc0003f6280)
headscale     | 	/home/runner/go/pkg/mod/github.com/gorilla/mux@v1.8.1/mux.go:212 +0x1e2
headscale     | net/http.serverHandler.ServeHTTP({0xc0006c0960?}, {0x2541520?, 0xc0005de1c0?}, 0x6?)
headscale     | 	/nix/store/zhq8dnjbhwspzdglyq28j74axvqyk86q-go-1.23.3/share/go/src/net/http/server.go:3210 +0x8e
headscale     | net/http.(*conn).serve(0xc000698000, {0x2545798, 0xc0000a9d10})
headscale     | 	/nix/store/zhq8dnjbhwspzdglyq28j74axvqyk86q-go-1.23.3/share/go/src/net/http/server.go:2092 +0x5d0
headscale     | created by net/http.(*Server).Serve in goroutine 77
headscale     | 	/nix/store/zhq8dnjbhwspzdglyq28j74axvqyk86q-go-1.23.3/share/go/src/net/http/server.go:3360 +0x485
```

## Issue 80 (#2333): [Bug] OIDC users don't always get a username

### Is this a support request?

- [X] This is not a support request

### Is there an existing issue for this?

- [X] I have searched the existing issues

### Current Behavior

When logging in for the first time with oidc I only got a display_name and no username/name set in headscale.

This can be worked around currently by `docker exec headscale headscale users rename --identifier 1 -r merlijn` 
But that'd be inconvenient for future users so it should probably get resolved.

### Expected Behavior

All the required user fields get set when logging in with oidc,
 - either by requiring certain claims are present in the idToken.
 - or by making the cli commands more flexible: by accepting user ids as an alternative.

### Steps To Reproduce

1. Setup OIDC (can see my config below)
2. Authenticate new user (My oidc resource server is ran on Kanidm, returned claims are also below)
3. List the user's fields (also below)

### Environment

```markdown
- OS: Debian 12
- Headscale version: ghcr.io/juanfont/headscale:0.24.0-beta.2-debug
- Tailscale version: 1.78.1
```


### Runtime environment

- [X] Headscale is behind a (reverse) proxy
- [X] Headscale runs in a container

### Anything else?

`root@zungenbrecher:/opt/vpn_exit_node# docker exec headscale headscale users list -o json`
```json
[
    {
        "id": 1,
        "created_at": {
            "seconds": 1735582411,
            "nanos": 102993003
        },
        "display_name": "Merlijn",
        "provider_id": "oauth2urlthing",
        "provider": "oidc"
    }
]
```

<details>
  <summary>oidc claims for my user with "profile", "email", "groups" scopes</summary>

```json
claims: {
    "sub": "2fa57e05-fcc9-43db-8ca6-a98602346aa5",
    "exp": 1736341021,
    "name": "Merlijn",
    "preferred_username": "merlijn@idm.melijn.com",
    "groups": [
        "idm_all_persons@idm.melijn.com",
        "00000000-0000-0000-0000-000000000035",
        "idm_all_accounts@idm.melijn.com",
        "00000000-0000-0000-0000-000000000036",
        "poweruser@idm.melijn.com",
        "91f2f258-3122-4644-a860-cbfe2cce5b73",
        "seafile_users@idm.melijn.com",
        "1163f5cc-6dee-46c8-85db-fd635247c9bd",
        "friends@idm.melijn.com",
        "553b933b-0f01-432d-88a8-d69b182c4cf6",
        "xmpp_users@idm.melijn.com",
        "77b999f8-cd55-4a71-8133-ee9ec674e02f",
        "jellyfin_users@idm.melijn.com",
        "ef5a6995-759f-48fa-a4cf-262506f7712e",
        "melijn_admin@idm.melijn.com",
        "f5c60e0c-0562-438e-908b-f6182a9e1651",
        "jellyfin_admin@idm.melijn.com",
        "844abd6f-f2d9-4b61-9bec-6625e6cb3501",
        "mastodon_admin@idm.melijn.com",
        "4bc73263-b472-4fa8-87fe-ba3c5ffe2841",
        "mastodon_users@idm.melijn.com",
        "432f03b2-260a-4c16-8588-5fdabf805c01",
        "webdav_users@idm.melijn.com",
        "8141a6e0-0f66-4a3d-b287-550b5e4477dd",
        "git_users@idm.melijn.com",
        "d827b7e0-2a54-41a8-bb30-4fada22b9c4d",
        "immich_users@idm.melijn.com",
        "185f75f5-6527-47be-8058-9cf0978aa63f",
        "family@idm.melijn.com",
        "dbcb4f90-5451-4967-86f6-5faa2f94670b",
        "mealie_users@idm.melijn.com",
        "cbcb7793-f25b-48a1-93e2-d9593b70a151",
        "komga_users@idm.melijn.com",
        "292b042d-84db-4541-8f3c-465394efaae7",
        "mealie_admins@idm.melijn.com",
        "89239a93-efc6-4cca-bbfe-f1ba1bdf547f",
        "idm_people_self_name_write@idm.melijn.com",
        "00000000-0000-0000-0000-000000000048",
        "headscale_users@idm.melijn.com",
        "b0b1647e-a4d5-4e25-a211-3824e06fae8b",
        "headscale_admins@idm.melijn.com",
        "b367fe8e-2041-47ee-abec-af5a2fb230fb"
    ],
    "email": "redacted against spam bots",
    "email_verified": true
}
```

</details>

<details>
  <summary>config.yaml</summary>

```yaml
---
# headscale will look for a configuration file named `config.yaml` (or `config.json`) in the following order:
#
# - `/etc/headscale`
# - `~/.headscale`
# - current working directory

# The url clients will connect to.
# Typically this will be a domain like:
#
# https://myheadscale.example.com:443
#
server_url: https://headscale.example.com

# Address to listen to / bind to on the server
#
# For production:
# listen_addr: 0.0.0.0:8080
listen_addr: 0.0.0.0:8080

# Address to listen to /metrics, you may want
# to keep this endpoint private to your internal
# network
#
metrics_listen_addr: 127.0.0.1:9090

# Address to listen for gRPC.
# gRPC is used for controlling a headscale server
# remotely with the CLI
# Note: Remote access _only_ works if you have
# valid certificates.
#
# For production:
# grpc_listen_addr: 0.0.0.0:50443
grpc_listen_addr: 127.0.0.1:50443

# Allow the gRPC admin interface to run in INSECURE
# mode. This is not recommended as the traffic will
# be unencrypted. Only enable if you know what you
# are doing.
grpc_allow_insecure: false

# The Noise section includes specific configuration for the
# TS2021 Noise protocol
noise:
  # The Noise private key is used to encrypt the
  # traffic between headscale and Tailscale clients when
  # using the new Noise-based protocol.
  private_key_path: /var/lib/headscale/noise_private.key

# List of IP prefixes to allocate tailaddresses from.
# Each prefix consists of either an IPv4 or IPv6 address,
# and the associated prefix length, delimited by a slash.
# It must be within IP ranges supported by the Tailscale
# client - i.e., subnets of 100.64.0.0/10 and fd7a:115c:a1e0::/48.
# See below:
# IPv6: https://github.com/tailscale/tailscale/blob/22ebb25e833264f58d7c3f534a8b166894a89536/net/tsaddr/tsaddr.go#LL81C52-L81C71
# IPv4: https://github.com/tailscale/tailscale/blob/22ebb25e833264f58d7c3f534a8b166894a89536/net/tsaddr/tsaddr.go#L33
# Any other range is NOT supported, and it will cause unexpected issues.
prefixes:
  v4: 100.64.0.0/10
  v6: fd7a:115c:a1e0::/48

  # Strategy used for allocation of IPs to nodes, available options:
  # - sequential (default): assigns the next free IP from the previous given IP.
  # - random: assigns the next free IP from a pseudo-random IP generator (crypto/rand).
  allocation: sequential

# DERP is a relay system that Tailscale uses when a direct
# connection cannot be established.
# https://tailscale.com/blog/how-tailscale-works/#encrypted-tcp-relays-derp
#
# headscale needs a list of DERP servers that can be presented
# to the clients.
derp:
  server:
    # If enabled, runs the embedded DERP server and merges it into the rest of the DERP config
    # The Headscale server_url defined above MUST be using https, DERP requires TLS to be in place
    enabled: false

    # Region ID to use for the embedded DERP server.
    # The local DERP prevails if the region ID collides with other region ID coming from
    # the regular DERP config.
    region_id: 999

    # Region code and name are displayed in the Tailscale UI to identify a DERP region
    region_code: "headscale"
    region_name: "Headscale Embedded DERP"

    # Listens over UDP at the configured address for STUN connections - to help with NAT traversal.
    # When the embedded DERP server is enabled stun_listen_addr MUST be defined.
    #
    # For more details on how this works, check this great article: https://tailscale.com/blog/how-tailscale-works/
    stun_listen_addr: "0.0.0.0:3478"

    # Private key used to encrypt the traffic between headscale DERP
    # and Tailscale clients.
    # The private key file will be autogenerated if it's missing.
    #
    private_key_path: /var/lib/headscale/derp_server_private.key

    # This flag can be used, so the DERP map entry for the embedded DERP server is not written automatically,
    # it enables the creation of your very own DERP map entry using a locally available file with the parameter DERP.paths
    # If you enable the DERP server and set this to false, it is required to add the DERP server to the DERP map using DERP.paths
    automatically_add_embedded_derp_region: true

    # For better connection stability (especially when using an Exit-Node and DNS is not working),
    # it is possible to optionally add the public IPv4 and IPv6 address to the Derp-Map using:
    ipv4: 1.2.3.4
    ipv6: 2001:db8::1

  # List of externally available DERP maps encoded in JSON
  urls:
    - https://controlplane.tailscale.com/derpmap/default

  # Locally available DERP map files encoded in YAML
  #
  # This option is mostly interesting for people hosting
  # their own DERP servers:
  # https://tailscale.com/kb/1118/custom-derp-servers/
  #
  # paths:
  #   - /etc/headscale/derp-example.yaml
  paths: []

  # If enabled, a worker will be set up to periodically
  # refresh the given sources and update the derpmap
  # will be set up.
  auto_update_enabled: true

  # How often should we check for DERP updates?
  update_frequency: 24h

# Disables the automatic check for headscale updates on startup
disable_check_updates: false

# Time before an inactive ephemeral node is deleted?
ephemeral_node_inactivity_timeout: 30m

database:
  # Database type. Available options: sqlite, postgres
  # Please note that using Postgres is highly discouraged as it is only supported for legacy reasons.
  # All new development, testing and optimisations are done with SQLite in mind.
  type: sqlite

  # Enable debug mode. This setting requires the log.level to be set to "debug" or "trace".
  debug: false

  # GORM configuration settings.
  gorm:
    # Enable prepared statements.
    prepare_stmt: true

    # Enable parameterized queries.
    parameterized_queries: true

    # Skip logging "record not found" errors.
    skip_err_record_not_found: true

    # Threshold for slow queries in milliseconds.
    slow_threshold: 1000

  # SQLite config
  sqlite:
    path: /var/lib/headscale/db.sqlite

    # Enable WAL mode for SQLite. This is recommended for production environments.
    # https://www.sqlite.org/wal.html
    write_ahead_log: true

    # Maximum number of WAL file frames before the WAL file is automatically checkpointed.
    # https://www.sqlite.org/c3ref/wal_autocheckpoint.html
    # Set to 0 to disable automatic checkpointing.
    wal_autocheckpoint: 1000

  # # Postgres config
  # Please note that using Postgres is highly discouraged as it is only supported for legacy reasons.
  # See database.type for more information.
  # postgres:
  #   # If using a Unix socket to connect to Postgres, set the socket path in the 'host' field and leave 'port' blank.
  #   host: localhost
  #   port: 5432
  #   name: headscale
  #   user: foo
  #   pass: bar
  #   max_open_conns: 10
  #   max_idle_conns: 10
  #   conn_max_idle_time_secs: 3600

  #   # If other 'sslmode' is required instead of 'require(true)' and 'disabled(false)', set the 'sslmode' you need
  #   # in the 'ssl' field. Refers to https://www.postgresql.org/docs/current/libpq-ssl.html Table 34.1.
  #   ssl: false

### TLS configuration
#
## Let's encrypt / ACME
#
# headscale supports automatically requesting and setting up
# TLS for a domain with Let's Encrypt.
#
# URL to ACME directory
acme_url: https://acme-v02.api.letsencrypt.org/directory

# Email to register with ACME provider
acme_email: ""

# Domain name to request a TLS certificate for:
tls_letsencrypt_hostname: ""

# Path to store certificates and metadata needed by
# letsencrypt
# For production:
tls_letsencrypt_cache_dir: /var/lib/headscale/cache

# Type of ACME challenge to use, currently supported types:
# HTTP-01 or TLS-ALPN-01
# See: docs/ref/tls.md for more information
tls_letsencrypt_challenge_type: HTTP-01
# When HTTP-01 challenge is chosen, letsencrypt must set up a
# verification endpoint, and it will be listening on:
# :http = port 80
tls_letsencrypt_listen: ":http"

## Use already defined certificates:
tls_cert_path: ""
tls_key_path: ""

log:
  # Output formatting for logs: text or json
  format: text
  level: info

## Policy
# headscale supports Tailscale's ACL policies.
# Please have a look to their KB to better
# understand the concepts: https://tailscale.com/kb/1018/acls/
policy:
  # The mode can be "file" or "database" that defines
  # where the ACL policies are stored and read from.
  mode: file
  # If the mode is set to "file", the path to a
  # HuJSON file containing ACL policies.
  path: ""

## DNS
#
# headscale supports Tailscale's DNS configuration and MagicDNS.
# Please have a look to their KB to better understand the concepts:
#
# - https://tailscale.com/kb/1054/dns/
# - https://tailscale.com/kb/1081/magicdns/
# - https://tailscale.com/blog/2021-09-private-dns-with-magicdns/
#
# Please note that for the DNS configuration to have any effect,
# clients must have the `--accept-dns=true` option enabled. This is the
# default for the Tailscale client. This option is enabled by default
# in the Tailscale client.
#
# Setting _any_ of the configuration and `--accept-dns=true` on the
# clients will integrate with the DNS manager on the client or
# overwrite /etc/resolv.conf.
# https://tailscale.com/kb/1235/resolv-conf
#
# If you want stop Headscale from managing the DNS configuration
# all the fields under `dns` should be set to empty values.
dns:
  # Whether to use [MagicDNS](https://tailscale.com/kb/1081/magicdns/).
  magic_dns: true

  # Defines the base domain to create the hostnames for MagicDNS.
  # This domain _must_ be different from the server_url domain.
  # `base_domain` must be a FQDN, without the trailing dot.
  # The FQDN of the hosts will be
  # `hostname.base_domain` (e.g., _myhost.example.com_).
  base_domain: kliek

  # List of DNS servers to expose to clients.
  nameservers:
    global:
      # NextDNS (see https://tailscale.com/kb/1218/nextdns/).
      # "abc123" is example NextDNS ID, replace with yours.
      # - https://dns.nextdns.io/abc123

    # Split DNS (see https://tailscale.com/kb/1054/dns/),
    # a map of domains and which DNS server to use for each.
    split:
      {}
      # foo.bar.com:
      #   - 1.1.1.1
      # darp.headscale.net:
      #   - 1.1.1.1
      #   - 8.8.8.8

  # Set custom DNS search domains. With MagicDNS enabled,
  # your tailnet base_domain is always the first search domain.
  search_domains: []

  # Extra DNS records
  # so far only A and AAAA records are supported (on the tailscale side)
  # See: docs/ref/dns.md
  extra_records: []
  #   - name: "grafana.myvpn.example.com"
  #     type: "A"
  #     value: "100.64.0.3"
  #
  #   # you can also put it in one line
  #   - { name: "prometheus.myvpn.example.com", type: "A", value: "100.64.0.3" }
  #
  # Alternatively, extra DNS records can be loaded from a JSON file.
  # Headscale processes this file on each change.
  # extra_records_path: /var/lib/headscale/extra-records.json

# Unix socket used for the CLI to connect without authentication
# Note: for production you will want to set this to something like:
unix_socket: /var/run/headscale/headscale.sock
unix_socket_permission: "0770"
#
# headscale supports experimental OpenID connect support,
# it is still being tested and might have some bugs, please
# help us test it.
# OpenID Connect
oidc:
  only_start_if_oidc_is_available: true
  issuer: "https://idm.example.com/oauth2/openid/headscale"
  client_id: "headscale"
  client_secret: ""
  # Alternatively, set `client_secret_path` to read the secret from the file.
  # It resolves environment variables, making integration to systemd's
  # `LoadCredential` straightforward:
  # client_secret_path: "${CREDENTIALS_DIRECTORY}/oidc_client_secret"
  # client_secret and client_secret_path are mutually exclusive.

  # The amount of time from a node is authenticated with OpenID until it
  # expires and needs to reauthenticate.
  # Setting the value to "0" will mean no expiry.
  expiry: 180d

  # Use the expiry from the token received from OpenID when the user logged
  # in, this will typically lead to frequent need to reauthenticate and should
  # only been enabled if you know what you are doing.
  # Note: enabling this will cause `oidc.expiry` to be ignored.
  use_expiry_from_token: false
  # Customize the scopes used in the OIDC flow, defaults to "openid", "profile" and "email" and add custom query
  # parameters to the Authorize Endpoint request. Scopes default to "openid", "profile" and "email".

  scope: ["openid", "profile", "groups"]
  #  extra_params:
  #    domain_hint: example.com

#   # List allowed principal domains and/or users. If an authenticated user's domain is not in this list, the
#   # authentication request will be rejected.
#   allowed_domains:
#     - example.com
#   # Note: Groups from keycloak have a leading '/'
  allowed_groups:
    - headscale_users
    - headscale_users@idm.melijn.com
    - headscale_admins
#   allowed_users:
#     - alice@example.com
#
#   # Optional: PKCE (Proof Key for Code Exchange) configuration
#   # PKCE adds an additional layer of security to the OAuth 2.0 authorization code flow
#   # by preventing authorization code interception attacks
#   # See https://datatracker.ietf.org/doc/html/rfc7636
  pkce:
#     # Enable or disable PKCE support (default: false)
    enabled: false
#     # PKCE method to use:
#     # - plain: Use plain code verifier
#     # - S256: Use SHA256 hashed code verifier (default, recommended)
    method: S256
#
#   # Map legacy users from pre-0.24.0 versions of headscale to the new OIDC users
#   # by taking the username from the legacy user and matching it with the username
#   # provided by the OIDC. This is useful when migrating from legacy users to OIDC
#   # to force them using the unique identifier from the OIDC and to give them a
#   # proper display name and picture if available.
#   # Note that this will only work if the username from the legacy user is the same
#   # and there is a possibility for account takeover should a username have changed
#   # with the provider.
#   # Disabling this feature will cause all new logins to be created as new users.
#   # Note this option will be removed in the future and should be set to false
#   # on all new installations, or when all users have logged in with OIDC once.
#   map_legacy_users: true

# Logtail configuration
# Logtail is Tailscales logging and auditing infrastructure, it allows the control panel
# to instruct tailscale nodes to log their activity to a remote server.
logtail:
  # Enable logtail for this headscales clients.
  # As there is currently no support for overriding the log server in headscale, this is
  # disabled by default. Enabling this will make your clients send logs to Tailscale Inc.
  enabled: false

# Enabling this option makes devices prefer a random port for WireGuard traffic over the
# default static port 41641. This option is intended as a workaround for some buggy
# firewall devices. See https://tailscale.com/kb/1181/firewalls/ for more information.
randomize_client_port: false
```

</details>

## Issue 81 (#2342): Update flake.lock

Automated changes by the [update-flake-lock](https://github.com/DeterminateSystems/update-flake-lock) GitHub Action.

```
Flake lock file updates:

• Updated input 'nixpkgs':
    'github:NixOS/nixpkgs/a27871180d30ebee8aa6b11bf7fef8a52f024733?narHash=sha256-Q4HuFAvoKAIiTRZTUxJ0ZXeTC7lLfC9/dggGHNXNlCw%3D' (2025-01-03)
  → 'github:NixOS/nixpkgs/32af3611f6f05655ca166a0b1f47b57c762b5192?narHash=sha256-dMGNa5UwdtowEqQac%2BDr0d2tFO/60ckVgdhZU9q2E2o%3D' (2025-01-09)
```

### Running GitHub Actions on this PR

GitHub Actions will not run workflows on pull requests which are opened by a GitHub Action.

To run GitHub Actions workflows on this PR, run:

```sh
git branch -D update_flake_lock_action
git fetch origin
git checkout update_flake_lock_action
git commit --amend --no-edit
git push origin update_flake_lock_action --force
```

## Issue 82 (#2347): set changelog date for 0.24

## Repository Information
- **Repository**: juanfont/headscale
- **Pull Request**: #1681
- **Base Commit**: `10a72e8d542af68c0c280f2a6ccc84849719b24c`

## Related Issues
- https://github.com/juanfont/headscale/issues/1681
- https://github.com/juanfont/headscale/issues/1823
- https://github.com/juanfont/headscale/issues/2005
- https://github.com/juanfont/headscale/issues/1934
- https://github.com/juanfont/headscale/issues/1990
- https://github.com/juanfont/headscale/issues/2038
- https://github.com/juanfont/headscale/issues/1953
- https://github.com/juanfont/headscale/issues/2132
- https://github.com/juanfont/headscale/issues/2133
- https://github.com/juanfont/headscale/issues/2143
- https://github.com/juanfont/headscale/issues/2128
- https://github.com/juanfont/headscale/issues/2147
- https://github.com/juanfont/headscale/issues/2149
- https://github.com/juanfont/headscale/issues/2150
- https://github.com/juanfont/headscale/issues/2154
- https://github.com/juanfont/headscale/issues/1369
- https://github.com/juanfont/headscale/issues/2156
- https://github.com/juanfont/headscale/issues/2158
- https://github.com/juanfont/headscale/issues/2161
- https://github.com/juanfont/headscale/issues/2164
- https://github.com/juanfont/headscale/issues/2165
- https://github.com/juanfont/headscale/issues/2173
- https://github.com/juanfont/headscale/issues/2178
- https://github.com/juanfont/headscale/issues/2187
- https://github.com/juanfont/headscale/issues/2191
- https://github.com/juanfont/headscale/issues/2195
- https://github.com/juanfont/headscale/issues/2177
- https://github.com/juanfont/headscale/issues/2140
- https://github.com/juanfont/headscale/issues/2166
- https://github.com/juanfont/headscale/issues/2205
- https://github.com/juanfont/headscale/issues/2206
- https://github.com/juanfont/headscale/issues/2207
- https://github.com/juanfont/headscale/issues/2212
- https://github.com/juanfont/headscale/issues/2193
- https://github.com/juanfont/headscale/issues/2217
- https://github.com/juanfont/headscale/issues/2222
- https://github.com/juanfont/headscale/issues/2220
- https://github.com/juanfont/headscale/issues/2226
- https://github.com/juanfont/headscale/issues/2211
- https://github.com/juanfont/headscale/issues/2171
- https://github.com/juanfont/headscale/issues/2235
- https://github.com/juanfont/headscale/issues/2239
- https://github.com/juanfont/headscale/issues/2238
- https://github.com/juanfont/headscale/issues/2204
- https://github.com/juanfont/headscale/issues/2243
- https://github.com/juanfont/headscale/issues/2241
- https://github.com/juanfont/headscale/issues/2210
- https://github.com/juanfont/headscale/issues/2252
- https://github.com/juanfont/headscale/issues/2254
- https://github.com/juanfont/headscale/issues/2255
- https://github.com/juanfont/headscale/issues/2258
- https://github.com/juanfont/headscale/issues/2246
- https://github.com/juanfont/headscale/issues/2265
- https://github.com/juanfont/headscale/issues/2266
- https://github.com/juanfont/headscale/issues/2257
- https://github.com/juanfont/headscale/issues/2188
- https://github.com/juanfont/headscale/issues/2262
- https://github.com/juanfont/headscale/issues/2273
- https://github.com/juanfont/headscale/issues/2219
- https://github.com/juanfont/headscale/issues/2285
- https://github.com/juanfont/headscale/issues/2259
- https://github.com/juanfont/headscale/issues/2284
- https://github.com/juanfont/headscale/issues/2294
- https://github.com/juanfont/headscale/issues/2291
- https://github.com/juanfont/headscale/issues/2293
- https://github.com/juanfont/headscale/issues/2289
- https://github.com/juanfont/headscale/issues/2306
- https://github.com/juanfont/headscale/issues/2281
- https://github.com/juanfont/headscale/issues/2307
- https://github.com/juanfont/headscale/issues/2313
- https://github.com/juanfont/headscale/issues/2314
- https://github.com/juanfont/headscale/issues/2320
- https://github.com/juanfont/headscale/issues/2321
- https://github.com/juanfont/headscale/issues/2324
- https://github.com/juanfont/headscale/issues/2276
- https://github.com/juanfont/headscale/issues/2331
- https://github.com/juanfont/headscale/issues/2318
- https://github.com/juanfont/headscale/issues/2336
- https://github.com/juanfont/headscale/issues/2332
- https://github.com/juanfont/headscale/issues/2333
- https://github.com/juanfont/headscale/issues/2342
- https://github.com/juanfont/headscale/issues/2347
</issue_description>

Can you help me implement the necessary changes to the repository so that the requirements specified in the <issue_description> are met?
I've already taken care of all changes to any of the test files described in the <issue_description>. This means you MUST NOT modify the testing logic or any of the tests in any way!
Also the development Go environment is already set up for you (i.e., all dependencies already installed), so you don't need to install other packages.
Your task is to make the minimal changes to non-test files in the /workspace/headscale directory to ensure the <issue_description> is satisfied.

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

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit 10a72e8d542af68c0c280f2a6ccc84849719b24c.
   8.1 Ensure you've fully addressed all requirements.
   8.2 Run any tests in the repository related to:
      8.2.1 The issue you are fixing
      8.2.2 The files you modified
      8.2.3 The functions you changed
   8.3 If any tests fail, revise your implementation until all tests pass.

Be thorough in your exploration, testing, and reasoning. It's fine if your thinking process is lengthy - quality and completeness are more important than brevity.

IMPORTANT CONSTRAINTS:
- ONLY modify files within the /workspace/headscale directory
- DO NOT navigate outside this directory (no `cd ..` or absolute paths to other locations)
- DO NOT create, modify, or delete any files outside the repository
- All your changes must be trackable by `git diff` within the repository
- If you need to create test files, create them inside the repository directory