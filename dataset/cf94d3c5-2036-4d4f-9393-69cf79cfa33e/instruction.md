I've uploaded a Go code repository in the directory /workspace/seaweedfs. Consider the following issue description:

<issue_description>
# s3: fix if-match error

## Issue 1 (#7274): [s3proxy] If-Match fails against ETag returned by HeadObject

### Summary

On SeaweedFS 3.97, `GetObject` with `If-Match` fails with 412 PreconditionFailed even when the `If-Match` value exactly equals the `ETag` previously returned by `HeadObject`.
This worked on 3.96 (and earlier 3.85 when the object was created), and still fails on 3.97 even if I switch the `If-Match` value to the `ETag` shown as “expected” in s3proxy logs.

### Tested versions

Fails: 3.97
Passes: 3.96 (same object and client flow)
Object originally stored on: 3.85

### Test Step

```
# aws --endpoint-url http://localhost:8333 s3api head-object --bucket xxx --key xxx
{ ..., "ETag": "\"663726330ac254635581be07a2a1def6\"", ... }

# aws --endpoint-url http://localhost:8333 s3api get-object --bucket xxx --key xxx --if-match 663726330ac254635581be07a2a1def6 out
An error occurred (PreconditionFailed) when calling the GetObject operation: At least one of the pre-conditions you specified did not hold

# aws --endpoint-url http://localhost:8333 s3api get-object --bucket xxx --key xxx --if-match 123294de680f28bde364b81477549f7d-2 out
An error occurred (PreconditionFailed) when calling the GetObject operation: At least one of the pre-conditions you specified did not hold
```

### Logs from s3 proxy

```
I0924 15:06:34.773621 s3api_object_handlers_put.go:1243 checkConditionalHeadersForReads: If-Match failed for object xxx//xxx - expected ETag 663726330ac254635581be07a2a1def6, got "123294de680f28bde364b81477549f7d-2"
...
I0924 15:09:20.560937 s3api_object_handlers_put.go:1247 checkConditionalHeadersForReads: If-Match passed for object xxx//xxx
I0924 15:09:20.560949 s3api_object_handlers.go:278 GetObject: bucket xxx, object xxx, versioningConfigured=false, versionId=
I0924 15:09:20.560958 s3api_object_handlers.go:499 s3 proxying GET to http://10.1.203.61:8888/buckets/xxx/xxx
I0924 15:09:20.561412 error_handler.go:121 status 412 application/xml: <?xml version="1.0" encoding="UTF-8"?>
<Error><Code>PreconditionFailed</Code><Message>At least one of the pre-conditions you specified did not hold</Message><Resource>/xxx/xxx</Resource><RequestId>1758728420561391187</RequestId><Key>xxx</Key><BucketName>xxx</BucketName></Error>
```
Notably, on the second attempt the proxy says “If-Match passed”, but the final response is still 412.

### Object metadata from filer

```
  "Md5": "ZjcmMwrCVGNVgb4HoqHe9g==",   # base64 of 663726330ac254635581be07a2a1def6
  "FileSize": 5597744,
  "chunks": [
    {
      "size": 4194304,
      "e_tag": "9+yCD2DGwMG5uKwAd+y04Q==",
    },{
      "size": 1403440,
      "e_tag": "cs6SVSTgZ8W3IbIrAKmklg==",
    }
  ]
```

## Issue 2 (#7312): [master] vaccum fix warn

# What problem are we solving?

```
volume 5211 content size: 524297509793 less deleted size: 524297509793, new size: 8
```

# How are we solving the problem?

void print log if content size eq deleted size

# How is the PR tested?



# Checks
- [ ] I have added unit tests if possible.
- [ ] I will add related wiki document changes and link to this PR after merging.


<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

* **Bug Fixes**
  * Added warning detection for storage inconsistencies when deleted data size exceeds content size, improving system diagnostics during data reconciliation operations.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 3 (#7313): flag provided but not defined: -iam.config

using the below compose (have tried both latest and dev tag) i get the error `flag provided but not defined: -iam.config` i am using the json file from https://github.com/seaweedfs/seaweedfs/wiki/Keycloak-Integration as a test file

```yaml
version: '3.8'

services:
  seaweedfs-s3:
    image: chrislusf/seaweedfs:dev
    container_name: seaweedfs-s3
    ports:
      - "8333:8333"
    volumes:
      - ./config.json:/etc/seaweedfs/config.json:ro
      - ./data:/data
      - ./iam.json:/etc/seaweedfs/iam.json:ro
    command: server -s3 -s3.config /etc/seaweedfs/config.json -iam.config=/etc/seaweedfs/iam.json
```

## Issue 4 (#7396): Erasure Coding: Ec refactoring

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **New Features**
  * Volumes now persist per-volume erasure-coding shard configuration (data/parity counts) and expose it to EC operations.

* **Refactor**
  * EC workflows, file naming and admin/CLI shard handling now honor per-volume EC settings and a global 32-shard cap.
  * Context-driven EC handling added across generation, rebuild and volume loading paths.

* **Tests**
  * Tests updated to exercise context-driven EC behavior.

* **Bug Fixes**
  * Stronger validation prevents corrupted EC configs and ensures required data shards exist before creating volume files.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 5 (#6649): S3  auth failed with X-Forwarded-Host and X-Forwarded-Port

The issue is introduced by #6514, some proxy(traefik, HAProxy) set X-Forwarded-Host with port, such as "127.0.0.1:8433".
And deal with ipv6

## Issue 6 (#7397): Suggestion: Run containers as non-root user for improved security

Hi 👋

I noticed that the official Docker image currently runs as the `root` user inside the container by default.
From a security and compliance perspective (e.g. [OWASP Docker Security Guidelines](https://cheatsheetseries.owasp.org/cheatsheets/Docker_Security_Cheat_Sheet.html#rule-2-set-a-user)), it’s generally recommended that containers **run as a non-root user** unless privileged access is absolutely required.

Therefore, I wanted to ask: is there a technical reason why the container needs to run as root?

Example modification (for reference):
```dockerfile
RUN useradd -m seaweed
USER seaweed
```

Thanks for your time and for all your work on this project!

Best regards,
Lukas

## Issue 7 (#7400): S3: adjust for loading credentials

# What problem are we solving?

When S3 server starts, load credentials from env if not configured.

Maybe related to https://github.com/seaweedfs/seaweedfs/issues/7311

# How are we solving the problem?

Loading credentials from env if there are no credentials configured in the s3 config file.

# How is the PR tested?



# Checks
- [ ] I have added unit tests if possible.
- [ ] I will add related wiki document changes and link to this PR after merging.


<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Bug Fixes**
  * Credential loading now treats config as loaded only when identities are actually present; environment-variable credentials correctly fallback when a config file exists but contains no identities.

* **Tests**
  * Added a test confirming environment-variable-based credentials are applied when a config file contains no identity entries.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 8 (#5044): reduce binary size

Some not so important libraries are taking a rather large size.
Here are a list of the large ones.

* avoid "github.com/hashicorp/raft", which depends on go-msgpack
* `storj.io/common/pb` which seems coming from rclone
* `henrybear327` which seems coming from rclone

```
> goweight
   31 MB github.com/hashicorp/go-msgpack/codec
   23 MB github.com/go-redis/redis/v8
   16 MB github.com/aws/aws-sdk-go/service/s3
   15 MB github.com/aws/aws-sdk-go/service/iam
   14 MB github.com/Azure/azure-storage-blob-go/azblob
   12 MB runtime
   11 MB storj.io/common/pb
   11 MB github.com/Shopify/sarama
   11 MB github.com/colinmarc/hdfs/v2/internal/protocol/hadoop_hdfs
   10 MB github.com/henrybear327/go-proton-api
  9.8 MB go.etcd.io/etcd/api/v3/etcdserverpb
  8.4 MB net/http
  7.2 MB github.com/aws/aws-sdk-go/aws/endpoints
  7.1 MB go/types
  6.8 MB github.com/tsuna/gohbase/pb
```

## Issue 9 (#7258): Orphan files created during normal file read/write/delete operations

### Description
When using `weed mount` (FUSE) to perform normal file operations (read, write, delete), **an unusually high number of orphan entries are generated.** This happens consistently during simple file tests, not just under crash or abnormal termination conditions.

* Is it normal for orphans to appear even during typical read/write/delete operations?
* If orphans are being generated under normal circumstances, shouldn’t a `weed worker` handle orphan cleanup automatically, similar to how it handles vacuuming?

### Steps to Reproduce:
1. Mount SeaweedFS using `weed mount`.
2. Perform repeated file operations with a single thread for 3 days (e.g., copy files, modify files, delete files).
3. Run `volume.fsck` to inspect the volume state.
4. Observe a very high orphan ratio.

Running `volume.fsck` shows most entries marked as orphans, even after simple read/write/delete tests.

```
> lock
> volume.fsck
total 109 directories, 345 files
dataNode:pgspr5x2098.nfra.io:8080       volume:1        entries:1474    orphan:1356     91.99%  1175267623B
dataNode:pgspr5x2094.nfra.io:8080       volume:2        entries:1405    orphan:1283     91.32%  1106842618B
dataNode:pgspr5x2059.nfra.io:8080       volume:1        entries:1474    orphan:1356     91.99%  1175267623B
dataNode:pgspr5x2080.nfra.io:8080       volume:3        entries:1390    orphan:1286     92.52%  1113938740B
dataNode:pgspr5x2106.nfra.io:8080       volume:3        entries:1390    orphan:1286     92.52%  1113938740B
dataNode:pgspr5x2076.nfra.io:8080       volume:2        entries:1405    orphan:1283     91.32%  1106842618B
dataNode:pgspr5x2103.nfra.io:8080       volume:1        entries:1474    orphan:1356     91.99%  1175267623B
dataNode:pgspr5x2070.nfra.io:8080       volume:2        entries:1405    orphan:1283     91.32%  1106842618B
dataNode:pgspr5x2070.nfra.io:8080       volume:3        entries:1390    orphan:1286     92.52%  1113938740B

Total           entries:12807   orphan:11775    91.94%  10188146943B
This could be normal if multiple filers or no filers are used.
```

### Environment

* SeaweedFS version: 3.97
* Deployment type: docker swarm
* Number of filer servers: 3 (with postgres2)

## Issue 10 (#7403): * Fix s3 auth with proxy request

# What problem are we solving?

Fix s3 auth with proxy request

# How are we solving the problem?

support proxy request's header X-Forwarded-Host with port 

# How is the PR tested?

unit test

# Checks
- [ ] I have added unit tests if possible.
- [ ] I will add related wiki document changes and link to this PR after merging.


<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Bug Fixes**
  * Authentication now correctly handles X-Forwarded-Proto, X-Forwarded-Port and X-Forwarded-Host (including comma-separated lists), preserves non-default ports, strips default ports for the scheme, and consistently formats IPv4/IPv6 hosts (proper bracket handling).

* **Tests**
  * Added and expanded tests for proxy header combinations, IPv6 literals/brackets, default vs non-default port behavior, and a new no-proxy signature verification scenario.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 11 (#1271): adding header 'Access-Control-Allow-Origin'

Could you please include the feature adding individual headers like 'Access-Control-Allow-Origin' for responses? Otherwise, like many users (sea Google search) we have to use nginx or apache in front of seaweedfs. That slows the great speed of seaweedfs down and eats unnecessary resources .

In the meantime, where do we find this "response part" in the source code, so we would manually add this part and rebuild everything?

Thanks

## Issue 12 (#7408): [Helm Chart] add missing apiVersion and kind in PVC templates for better compatibility with GitOps tools

Suggestion: add apiVersion and kind fields in volumeClaimTemplates to improve diff consistency with GitOps tools (ArgoCD, Flux, etc.)

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Chores**
  * Updated Kubernetes manifests to explicitly declare PersistentVolumeClaim objects with API version and kind for SeaweedFS storage entries.
  * Ensures PVCs for filer and master components are correctly wrapped and preserved, improving manifest compliance and storage reliability.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 13 (#7252): S3 Bucket Policy validation fails with illogical error: "resource X does not match bucket X"

Hello SeaweedFS team,

I am encountering a persistent and illogical validation error when trying to apply a simple public-read S3 bucket policy to a bucket. The server consistently fails with the error message: Bucket policy validation failed: statement 0: resource X does not match bucket X, even when the resource string X is identical to the bucket name.

Environment:

I am interacting with an S3-compatible endpoint that appears to be running SeaweedFS.

Tool: aws-cli

Bucket Name: main-bucket

Problem Details:

The error message seems to indicate a bug in the policy validation logic within the S3 API handler. The server fails to match a resource string with the bucket name, even when the strings are identical.

Attempted Policies and Errors:

I have tried multiple Resource formats in my policy, and each one has failed with a similar illogical error.

1. Standard ARN with wildcard:

Policy: `{ "Version": "2012-10-17", "Statement": [{ "Effect": "Allow", "Principal": "*", "Action": "s3:GetObject", "Resource": "arn:aws:s3:::main-bucket/*" }]}`

Error: resource arn:aws:s3:::main-bucket/* does not match bucket main-bucket

2. Simplified resource with wildcard:

Policy: `{ "Version": "2012-10-17", "Statement": [{ "Effect": "Allow", "Principal": "*", "Action": "s3:GetObject", "Resource": "main-bucket/*" }]}`

Error: resource main-bucket/* does not match bucket main-bucket

3. Resource as exact bucket name:

Policy: `{ "Version": "2012-10-17", "Statement": [{ "Effect": "Allow", "Principal": "*", "Action": "s3:GetObject", "Resource": "main-bucket" }]}`

Error: resource main-bucket does not match bucket main-bucket

The final error is the most confusing, as it claims the string "main-bucket" does not match the string "main-bucket". This suggests a potential issue with string comparison, hidden characters, or a flawed validation rule in the Go handler (s3api_bucket_policy_handlers.go:80).

We have also attempted using a more complex Principal ({"AWS": "*"}) and splitting the policy into multiple statements, all without success.

Could you please look into this validation logic? It seems to be preventing any bucket policy from being applied successfully.

Thank you!

## Issue 14 (#7410): network: Adaptive timeout

# What problem are we solving?

If a http client is slow to consume data, it can be timed out after 10 seconds.

# How are we solving the problem?

Tracks lastWrite time to detect gaps between writes
Detects server-side delays when fetching chunks from storage
Adds grace time dynamically when gaps are detected
Caps grace time at 3x base timeout to prevent slow clients from staying connected forever

# How is the PR tested?



# Checks
- [ ] I have added unit tests if possible.
- [ ] I will add related wiki document changes and link to this PR after merging.


<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Bug Fixes**
  * Improved network write timeouts with throughput-aware scaling and an adaptive grace period to reduce premature write failures.
  * Read timeouts now scale with observed throughput, cutting spurious read timeouts under varying speeds.
  * Better idle-write handling and deadline adjustments for more stable connections and fewer interruptions.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 15 (#7411): Filer: fallback to check master

# What problem are we solving?

https://github.com/seaweedfs/seaweedfs/discussions/7359

Filer has two different lookup paths: http path and grpc path. The later does not have fallback on cache misses.

# How are we solving the problem?

Fallback to master.

# How is the PR tested?



# Checks
- [ ] I have added unit tests if possible.
- [ ] I will add related wiki document changes and link to this PR after merging.


<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **New Features**
  * Batched volume lookup with cache population and deduplication of concurrent requests.
  * Returns available locations immediately while surfacing errors for failed entries (partial-result semantics).

* **Performance Improvements**
  * Faster lookups via batching and local cache use, reducing redundant master queries.

* **Reliability Improvements**
  * Better URL selection for file access, preferring same-data-center locations when possible.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 16 (#7412): Fix masterclient vidmap race condition

# What problem are we solving?

masterclient vidmap has race condition

# How are we solving the problem?

Added safe accessor methods to protect critical section


# How is the PR tested?



# Checks
- [ ] I have added unit tests if possible.
- [ ] I will add related wiki document changes and link to this PR after merging.


<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Refactor**
  * Improved thread-safety and locking around volume location data, with atomic snapshot swaps for more consistent routing and fewer lookup interruptions.
* **New Features**
  * Added batched multi-volume lookup and safer accessor methods for more reliable and faster lookups.
* **Bug Fixes**
  * Made data-center retrieval consistent to prevent incorrect same-datacenter routing.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 17 (#7407): SeaweedFS behind nginx as reverse proxy

Hi, 

I am trying to put seaweedfs behind the nginx, some how with nginx on my client side I started to get below error:

` raise EndpointConnectionError(endpoint_url=request.url, error=e)
botocore.exceptions.EndpointConnectionError: Could not connect to the endpoint URL: "https://IP_ADDRESS/bucket_name"
`

Below is the nginx conf file that I am using 

```
log_format mtls '$remote_addr - $remote_user [$time_local] '
                '"$request" $status $body_bytes_sent '
                '"$http_referer" "$http_user_agent" '
                'verify=$ssl_client_verify dn="$ssl_client_s_dn" '
                'issuer="$ssl_client_i_dn" serial="$ssl_client_serial" '
                'cert="$ssl_client_cert"';

log_format full '$remote_addr - $remote_user [$time_local] '
                '"$request" $status $body_bytes_sent '
                '"$http_referer" "$http_user_agent" '
                'req_host="$host" upstream_addr="$upstream_addr" '
                'req_length=$request_length resp_length=$bytes_sent '
                'req_time=$request_time upstream_time=$upstream_response_time '
                'upstream_status=$upstream_status '
                'ua="$http_user_agent" auth="$http_authorization" '
                'content_type="$http_content_type" accept="$http_accept" '
                'resp_type="$sent_http_content_type"';

error_log /var/log/nginx/error_debug.log debug;

upstream seaweedfs {
    server s3:8333;
    keepalive 20;
}

server {
    listen 443 ssl;
    server_name _;

    ssl_certificate     /etc/nginx/certs/server.crt;
    ssl_certificate_key /etc/nginx/certs/server.key;
    ssl_client_certificate /etc/nginx/certs/ca.crt;
    ssl_verify_client optional;
    ssl_verify_depth 2;

    access_log /var/log/nginx/mtls-access.log mtls;
    access_log /var/log/nginx/full_access.log full;

    ignore_invalid_headers off;
    client_max_body_size 0;
    proxy_buffering off;
    proxy_request_buffering off;
    chunked_transfer_encoding off;

    proxy_http_version 1.1;
    proxy_connect_timeout 300;
    proxy_send_timeout 300;
    proxy_read_timeout 300;

    # Pass through all AWS headers untouched
    proxy_pass_request_headers on;

    # No path rewriting – preserve full URI for signature validity
    location / {
        proxy_pass http://s3:8333;

        # Preserve original Host and headers
        proxy_set_header Host $http_host;
        proxy_set_header Authorization $http_authorization;
        proxy_set_header X-Amz-Date $http_x_amz_date;
        proxy_set_header X-Amz-Content-Sha256 $http_x_amz_content_sha256;
        proxy_set_header X-Amz-Checksum-Crc32 $http_x_amz_checksum_crc32;
        proxy_set_header X-Amz-Sdk-Checksum-Algorithm $http_x_amz_sdk_checksum_algorithm;
        proxy_set_header X-Amz-Trailer $http_x_amz_trailer;

        # Forward IP metadata
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;

        # Do NOT modify the request URI
        proxy_pass_request_body on;

        # Disable Nginx expectation rewriting
        proxy_hide_header Expect;
    }

    location /health {
        return 200 "OK\n";
    }
}

```
Seaweeds Logs 

```
I1030 07:28:16.686840 error_handler.go:121 status 200 :
I1030 07:28:16.932580 s3api_object_handlers_put.go:68 PutObjectHandler iot-config-bucket2 /config.tar.gz
I1030 07:28:16.932609 chunked_reader_v4.go:147 creating a new newSignV4ChunkedReader
I1030 07:28:16.932614 chunked_reader_v4.go:166 streaming unsigned payload
I1030 07:28:16.932624 chunked_reader_v4.go:70 streaming unsigned payload
I1030 07:28:16.932632 auth_credentials.go:368 could not find accessKey test1
I1030 07:28:16.932667 error_handler.go:121 status 403 application/xml: <?xml version="1.0" encoding="UTF-8"?>
<Error><Code>InvalidAccessKeyId</Code><Message>The access key ID you provided does not exist in our records.</Message><Resource>/iot-config-bucket2/config.tar.gz</Resource><RequestId>1761809296932637479</RequestId><Key>config.tar.gz</Key><BucketName>iot-config-bucket2</BucketName></Error>
[raft]07:28:20.070838 [10.89.0.160:9333 Term:0] check.quorum.active with quorum size:  1  member count:  1
```


As I use seaweedfs directly, it is working fine for me, but as soon as I use the nginx IP, it started give me this error, seems like issue is in nginx conf. 

Please help.

Thanks

## Issue 18 (#7418): Adjust cli option

# What problem are we solving?

## Adjust weed benchmark cli option
change from
```
weed benchmark -write=false
```

to 
```
weed benchmark -readOnly
```

## Consistently use `-master` options

There were inconsistency with using "-masters" "-mserver" "-server" when specifying master addresses.
This PR add alias to use "-master" for consistency.
This change is backward compatible.


<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

* **Chores**
  * Standardized primary flag naming across multiple commands to use `-master` consistently.
  * Maintained backward compatibility with deprecated flag aliases to ensure existing scripts continue to work.

* **New Features**
  * Added `-readOnly` and `-writeOnly` operation modes to the benchmark command for improved flexibility.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 19 (#6542): Fast single node startup for development

I'm trying to use SeaweedFS for development using a single node. I use seewead with docker compose as followed: 

``` yaml
  seaweedfs:
    image: chrislusf/seaweedfs
    volumes:
      - ./data/seaweedfs:/data
    command:
      - "server"
      - "-s3"
    healthcheck:
      test: ["CMD", "wget", "--spider", "-q", "http://localhost:9333/cluster/status"]
      interval: 1s
      timeout: 5s
      retries: 5
      start_period: 0s
    restart: unless-stopped
```

This takes a long time to start and get healthy, impeding development speed. Here is the output:

```
Attaching to seaweedfs-1
seaweedfs-1  | I0211 16:46:51.720521 master.go:282 current: 192.168.192.2:9333 peers:
seaweedfs-1  | I0211 16:46:51.720546 file_util.go:27 Folder /data Permission: -rwxr-xr-x
seaweedfs-1  | I0211 16:46:51.720615 master.go:282 current: 192.168.192.2:9333 peers:192.168.192.2:9333
seaweedfs-1  | I0211 16:46:51.720691 master_server.go:132 Volume Size Limit is 1024 MB
seaweedfs-1  | I0211 16:46:51.720670 file_util.go:27 Folder /data Permission: -rwxr-xr-x
seaweedfs-1  | I0211 16:46:51.720840 master.go:163 Start Seaweed Master 30GB 3.84 5e4696065 at 192.168.192.2:9333
seaweedfs-1  | I0211 16:46:51.721141 raft_server.go:119 Starting RaftServer with 192.168.192.2:9333
seaweedfs-1  | I0211 16:46:51.721287 volume_grpc_client_to_master.go:43 checkWithMaster 192.168.192.2:9333: get master 192.168.192.2:9333 configuration: rpc error: code = Unavailable desc = connection error: desc = "transport: Error while dialing: dial tcp 192.168.192.2:19333: connect: connection refused"
seaweedfs-1  | I0211 16:46:51.724413 raft_server.go:168 current cluster leader:
seaweedfs-1  | I0211 16:46:53.513276 volume_grpc_client_to_master.go:43 checkWithMaster 192.168.192.2:9333: get master 192.168.192.2:9333 configuration: rpc error: code = Unavailable desc = connection error: desc = "transport: Error while dialing: dial tcp 192.168.192.2:19333: connect: connection refused"
seaweedfs-1  | I0211 16:46:53.722359 s3.go:217 wait to connect to filer 192.168.192.2:8888 grpc address 192.168.192.2:18888
seaweedfs-1  | I0211 16:46:54.723896 s3.go:217 wait to connect to filer 192.168.192.2:8888 grpc address 192.168.192.2:18888
seaweedfs-1  | I0211 16:46:55.305116 volume_grpc_client_to_master.go:43 checkWithMaster 192.168.192.2:9333: get master 192.168.192.2:9333 configuration: rpc error: code = Unavailable desc = connection error: desc = "transport: Error while dialing: dial tcp 192.168.192.2:19333: connect: connection refused"
seaweedfs-1  | I0211 16:46:55.724987 s3.go:217 wait to connect to filer 192.168.192.2:8888 grpc address 192.168.192.2:18888
seaweedfs-1  | I0211 16:46:56.726306 s3.go:217 wait to connect to filer 192.168.192.2:8888 grpc address 192.168.192.2:18888
seaweedfs-1  | I0211 16:46:57.096353 volume_grpc_client_to_master.go:43 checkWithMaster 192.168.192.2:9333: get master 192.168.192.2:9333 configuration: rpc error: code = Unavailable desc = connection error: desc = "transport: Error while dialing: dial tcp 192.168.192.2:19333: connect: connection refused"
seaweedfs-1  | I0211 16:46:57.727870 s3.go:217 wait to connect to filer 192.168.192.2:8888 grpc address 192.168.192.2:18888
seaweedfs-1  | I0211 16:46:58.729055 s3.go:217 wait to connect to filer 192.168.192.2:8888 grpc address 192.168.192.2:18888
seaweedfs-1  | I0211 16:46:58.886896 volume_grpc_client_to_master.go:43 checkWithMaster 192.168.192.2:9333: get master 192.168.192.2:9333 configuration: rpc error: code = Unavailable desc = connection error: desc = "transport: Error while dialing: dial tcp 192.168.192.2:19333: connect: connection refused"
seaweedfs-1  | I0211 16:46:59.730042 s3.go:217 wait to connect to filer 192.168.192.2:8888 grpc address 192.168.192.2:18888
seaweedfs-1  | I0211 16:47:00.678703 volume_grpc_client_to_master.go:43 checkWithMaster 192.168.192.2:9333: get master 192.168.192.2:9333 configuration: rpc error: code = Unavailable desc = connection error: desc = "transport: Error while dialing: dial tcp 192.168.192.2:19333: connect: connection refused"
seaweedfs-1  | I0211 16:47:00.731636 s3.go:217 wait to connect to filer 192.168.192.2:8888 grpc address 192.168.192.2:18888
seaweedfs-1  | I0211 16:47:01.733325 s3.go:217 wait to connect to filer 192.168.192.2:8888 grpc address 192.168.192.2:18888
...
```

I'm sure Seaweed should be able to boot super fast! How can I tweak the parameters for a fast boot time?

## Issue 20 (#7416): Parallelize `ec.rebuild`

Currently `ec.rebuild` locks and processes one EC shard at a time, in a loop, until all shards are rebuilt, which makes EC recovery inherently very slow for large topologies.

Just like https://github.com/seaweedfs/seaweedfs/issues/6779, there's nothing preventing us from converting multiple shards at the same time, so this operation can be parallelized.

## Issue 21 (#7421): S3: fix TestSignedStreamingUploadInvalidSignature test

# What problem are we solving?
```
=== RUN   TestSignedStreamingUploadInvalidSignature
    chunked_reader_v4_test.go:314: 
        	Error Trace:	/home/runner/work/seaweedfs/seaweedfs/weed/s3api/chunked_reader_v4_test.go:314
        	Error:      	An error is expected but got nil.
        	Test:       	TestSignedStreamingUploadInvalidSignature
        	Messages:   	Expected error when reading chunk with invalid signature
--- FAIL: TestSignedStreamingUploadInvalidSignature (0.00s)
panic: runtime error: invalid memory address or nil pointer dereference [recovered, repanicked]
[signal SIGSEGV: segmentation violation code=0x1 addr=0x18 pc=0x3aa0079]

goroutine 106 [running]:
testing.tRunner.func1.2({0x412d840, 0x7cdee30})
	/opt/hostedtoolcache/go/1.25.3/x64/src/testing/testing.go:1872 +0x237
testing.tRunner.func1()
	/opt/hostedtoolcache/go/1.25.3/x64/src/testing/testing.go:1875 +0x35b
panic({0x412d840?, 0x7cdee30?})
	/opt/hostedtoolcache/go/1.25.3/x64/src/runtime/panic.go:783 +0x132
github.com/seaweedfs/seaweedfs/weed/s3api.TestSignedStreamingUploadInvalidSignature(0xc0001036c0)
	/home/runner/work/seaweedfs/seaweedfs/weed/s3api/chunked_reader_v4_test.go:315 +0x1399
testing.tRunner(0xc0001036c0, 0x4cb3620)
	/opt/hostedtoolcache/go/1.25.3/x64/src/testing/testing.go:1934 +0xea
created by testing.(*T).Run in goroutine 1
	/opt/hostedtoolcache/go/1.25.3/x64/src/testing/testing.go:1997 +0x465
FAIL	github.com/seaweedfs/seaweedfs/weed/s3api	1.142s
```

The chunked reader's state machine had missing continue statements after state transitions. This caused the signature verification step (verifyChunk state) to be delayed until the next Read() call, rather than being executed immediately after reading a chunk within the same call. This created a timing issue where:
Data was successfully read from a chunk
The state was set to verifyChunk but the loop didn't immediately continue
The Read() function returned the data without verifying the signature
On the next Read() call (which never happened in the test), the signature would have been verified

# How are we solving the problem?

Added continue statements after all state transitions in the state machine to ensure immediate state processing:
readChunkHeader case (line 259): Added continue after setting state to readChunk
readChunkTrailer case (lines 286, 289, 292): Added continue after setting state to verifyChunk, readTrailerChunk, or readChunkHeader
readTrailerChunk case (line 337): Added continue after setting state to eofChunk
verifyChunk case (lines 410, 413): Added continue after setting state to eofChunk or readChunkHeader
This ensures that signature verification happens immediately after reading chunk data, properly detecting and rejecting chunks with invalid signatures.

# How is the PR tested?

All other s3api tests - no regressions

# Checks
- [ ] I have added unit tests if possible.
- [ ] I will add related wiki document changes and link to this PR after merging.


<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Bug Fixes**
  * Fixed chunked streaming reader control flow so end-of-chunk transitions no longer risk returning premature errors, improving reliability of chunked uploads/downloads.
* **Tests**
  * Hardened the invalid-chunk-signature test to more robustly simulate corrupted signatures and ensure error detection remains reliable.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 22 (#7422): S3: load bucket object locking configuration if not found in cache

# What problem are we solving?

bucket configuration for object versioning needs to wait for the events to populate its value in bucket cache

# How are we solving the problem?

if not found, load it directly from filer

# How is the PR tested?

integration tests

# Checks
- [ ] I have added unit tests if possible.
- [ ] I will add related wiki document changes and link to this PR after merging.


<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Bug Fixes**
  * Improved Object Lock retrieval: better cache coherence and authoritative reloads ensure GetObjectLockConfiguration returns accurate configuration or proper errors instead of stale/fallback responses.

* **Chores**
  * Enhanced logging and observability across bucket config and Object Lock flows to aid debugging and monitoring.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Issue 23 (#7395): read chunk: context canceled when downloading large file via HTTP filer API

I'm trying to upload and download a large file from seaweedfs using the HTTP filer API. Uploading works well but downloading seems to crash about 75% of the time. I see a `read chunk: context cancelled' error in the logs. Seems like doing the same (upload + download) using the S3 API with boto3 as the client works 100% of the time.

Here's a snapshot of the logs with the issue
```bash
filer       | E1027 18:22:36.737834 filer_server_handlers_read.go:295 request_id:c0e97f26-ab09-44ce-a6fd-7071822a801b failed to stream content /file-upload-three/garbage.bin: read chunk: context canceled
filer       | E1027 18:22:36.737867 common.go:319 ProcessRangeRequest: read chunk: context canceled
filer       | 2025/10/27 18:22:36 http: superfluous response.WriteHeader call from github.com/seaweedfs/seaweedfs/weed/stats.(*StatusRecorder).WriteHeader (http_status_recorder.go:16)
```

I've found a way to reproduce it with a single docker container so I'll post that to keep things simple.

Steps to reproduce

1. Run `mkdir reproduce && cd reproduce`
2. Create a large file for testing: `base64 /dev/urandom | head -c $((5*1024*1024*1024)) > garbage.txt`
3. Create a file to run seaweedfs in docker. [Example](https://github.com/user-attachments/files/23172735/service.sh)
4. Create a script to upload and download the file with [these contents](https://github.com/user-attachments/files/23172776/upload_download.sh).
5. Make both scripts executable.
6. Start the seaweedfs container and wait 15 - 20 seconds for everything to start.
7. Run the script from step 4. Uploading the file will work without issues. Downloading will fail most of the time at around 30 - 60 percent.

Some extra info:
- Curl version: 8.5.0
- The example uses 1 container but I'm running this using docker compose with 1 master, 1 filer, 1 volume, 1 s3 and postgres (filer storage). I can post that config as well if necessary.
- The script I posted will sometimes succeed. Try running it again if it succeeds.
- [Related thread in Seaweedfs slack](https://seaweedfs.slack.com/archives/C9MGUC1UG/p1761591821636879)

## Issue 24 (#7424): Cannot build from source

```
❯ go install github.com/seaweedfs/seaweedfs/weed@master
go: github.com/seaweedfs/seaweedfs/weed@master (in github.com/seaweedfs/seaweedfs@v0.0.0-20251102062556-f234455b7653):
        The go.mod file for the module providing named packages contains one or
        more replace directives. It must not contain directives that would cause
        it to be interpreted differently than if it were the main module.
```

## Issue 25 (#150): build failed

```
# github.com/chrislusf/weed-fs/go/weed
src/github.com/chrislusf/weed-fs/go/weed/mount_std.go:75: cannot use File literal (type File) as type fs.Node in return argument:
        File does not implement fs.Node (wrong type for Attr method)
                have Attr(*fuse.Attr)
                want Attr("golang.org/x/net/context".Context, *fuse.Attr) error
src/github.com/chrislusf/weed-fs/go/weed/mount_std.go:83: cannot use Dir literal (type Dir) as type fs.Node in return argument:
        Dir does not implement fs.Node (wrong type for Attr method)
                have Attr(*fuse.Attr)
                want Attr("golang.org/x/net/context".Context, *fuse.Attr) error
# github.com/chrislusf/weed-fs/go/weed
./mount_std.go:75: cannot use File literal (type File) as type fs.Node in return argument:
        File does not implement fs.Node (wrong type for Attr method)
                have Attr(*fuse.Attr)
                want Attr("golang.org/x/net/context".Context, *fuse.Attr) error
./mount_std.go:83: cannot use Dir literal (type Dir) as type fs.Node in return argument:
        Dir does not implement fs.Node (wrong type for Attr method)
                have Attr(*fuse.Attr)
                want Attr("golang.org/x/net/context".Context, *fuse.Attr) error
```

## Issue 26 (#147): Resumable upload/download

Is it possible to add resumable file uploads/downloads?
http://www.grid.net.ru/nginx/resumable_uploads.en.html

Or partial file updates/reads so you can read/update part of file:
start=244345&length=34356

It would help alot with big files so it will be possible to store files directly to seaweedfs without first writing file to filesystem and adds resumable upload/download feature..

## Issue 27 (#144): Raft leader election bug？

I have 3 master(m0,m1,m2) and 2 volume(v0,v1) in 2 machines(d0,d1).
- d0: m0, m2, v0
- d1: m1, v1

When I start m0 and m2 in d0,  if I start them both in one second(m0 first),  sometimes m2 would crash and log error as following:  

```
I0519 15:24:12 12345 master_server.go:93] [ ds0.xxbtest.com:9335 ] I am the leader!
panic: assertion failed: leader.elected.at.same.term.28


goroutine 15 [running]:
github.com/goraft/raft._assert(0xbec200, 0xca22f0, 0x1f, 0xc2081b1c98, 0x1, 0x1)
        /home/yanyiwu/golang/src/github.com/goraft/raft/util.go:60 +0xcf
github.com/goraft/raft.(*server).processAppendEntriesRequest(0xc208116b40, 0xc20813e050, 0xc20813e050, 0xc20813e050)
        /home/yanyiwu/golang/src/github.com/goraft/raft/server.go:948 +0x413
github.com/goraft/raft.(*server).leaderLoop(0xc208116b40)
        /home/yanyiwu/golang/src/github.com/goraft/raft/server.go:849 +0x769
github.com/goraft/raft.(*server).loop(0xc208116b40)
        /home/yanyiwu/golang/src/github.com/goraft/raft/server.go:609 +0x458
github.com/goraft/raft.func·007()
        /home/yanyiwu/golang/src/github.com/goraft/raft/server.go:470 +0x6a
created by github.com/goraft/raft.(*server).Start
        /home/yanyiwu/golang/src/github.com/goraft/raft/server.go:471 +0x4a8

goroutine 1 [IO wait]:
net.runtime_pollWait(0x7fc39bdd8400, 0x72, 0x8)
        /home/yanyiwu/local/go/src/runtime/netpoll.go:149 +0x63
......
```

I use the weed which is built from commit 5c760523be1b48af4f831db8cfc969e937591a6a

## Issue 28 (#133): -publicurl

i just want to know, sir.. where could i place my image folder, so that when i upload image using curl -X PUT -F file=@/IT/SLR.jpg http://127.0.0.1:8081/image the image that i'm going to upload will be viewed in the browser.. like this http://<ipaddress>:<port>/<folder>/<volumeId> but, when i try to specify the publicurl, it is not working or the image is not there, still the image uploaded to /tmp/data1/22.dat but not in image folder specified in publicurl..

## Issue 29 (#134): [in-progress] Export data changed since X

Hello. Can you add param `-changed-since` which will export all files changed since some value? We need it for implementing incremental backups - exporting whole data every day is too expensive 

Technically we can `diff` two tar files but even exporting single volume will generate too many wasteful disk load

## Issue 30 (#7431): chore(deps): bump cloud.google.com/go/storage from 1.57.0 to 1.57.1

Bumps [cloud.google.com/go/storage](https://github.com/googleapis/google-cloud-go) from 1.57.0 to 1.57.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/googleapis/google-cloud-go/releases">cloud.google.com/go/storage's releases</a>.</em></p>
<blockquote>
<h2>storage: v1.57.1</h2>
<h2><a href="https://github.com/googleapis/google-cloud-go/compare/storage/v1.57.0...storage/v1.57.1">1.57.1</a> (2025-10-28)</h2>
<h3>Bug Fixes</h3>
<ul>
<li><strong>storage:</strong> Takeover idempotence. (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/13230">#13230</a>) (<a href="https://github.com/googleapis/google-cloud-go/commit/cc5d2a12293a509a14da9bea8a86c8655eaf4a71">cc5d2a1</a>)</li>
<li><strong>storage:</strong> Copy metadata when using Copier with grpc (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/12919">#12919</a>) (<a href="https://github.com/googleapis/google-cloud-go/commit/57a2e804f690ec8d4c55fd1c73b0dafd5cff46e5">57a2e80</a>)</li>
<li><strong>storage:</strong> Fix takeover response handling. (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/13239">#13239</a>) (<a href="https://github.com/googleapis/google-cloud-go/commit/26d75bc08e242348d26691877aba7fa68cf30f7f">26d75bc</a>)</li>
<li><strong>storage:</strong> Remove default timeout for gRPC operations (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/13022">#13022</a>) (<a href="https://github.com/googleapis/google-cloud-go/commit/b94c3ba69994d9c56ae8f302449dd8df6f287296">b94c3ba</a>)</li>
<li><strong>storage:</strong> Skip download of file outside of target dir (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/12945">#12945</a>) (<a href="https://github.com/googleapis/google-cloud-go/commit/6259aeec393d0d996961cac38396daa57ad1a290">6259aee</a>)</li>
<li><strong>storage:</strong> Upgrade gRPC service registration func (<a href="https://github.com/googleapis/google-cloud-go/commit/8fffca2819fa3dc858c213aa0c503e0df331b084">8fffca2</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href="https://github.com/googleapis/google-cloud-go/commit/a9fcbeee8bc06480eda9fde24dcf26c2cf9505ba"><code>a9fcbee</code></a> chore(main): release storage 1.57.1 (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/13061">#13061</a>)</li>
<li><a href="https://github.com/googleapis/google-cloud-go/commit/b8e70aa0056a3e126bc36cb7bf242d987f32c0bd"><code>b8e70aa</code></a> chore(errorreporting): migrate to Librarian (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/13250">#13250</a>)</li>
<li><a href="https://github.com/googleapis/google-cloud-go/commit/e2eb708a7a2a303b74ac1e298b0919cc0143683b"><code>e2eb708</code></a> chore(main): release bigquery 1.72.0 (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/13058">#13058</a>)</li>
<li><a href="https://github.com/googleapis/google-cloud-go/commit/50789153a4c0bd6a4c1f87d58107bfeea9acacde"><code>5078915</code></a> chore(main): release logging 1.13.1 (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/11841">#11841</a>)</li>
<li><a href="https://github.com/googleapis/google-cloud-go/commit/604d6dd5de20320e93307c2e9fa5a5edc548f52a"><code>604d6dd</code></a> fix(internal/librariangen): modify logging levels (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/13242">#13242</a>)</li>
<li><a href="https://github.com/googleapis/google-cloud-go/commit/89b5ea2fff81893da7181da4e1bab8e4815d326c"><code>89b5ea2</code></a> chore: librarian generate pull request: 20251028T070629Z (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/13244">#13244</a>)</li>
<li><a href="https://github.com/googleapis/google-cloud-go/commit/050f4005ab3ead37e60f1b4cfd1b1493b5fcd02f"><code>050f400</code></a> fix(internal/librariangen): run goimports on the output root (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/13248">#13248</a>)</li>
<li><a href="https://github.com/googleapis/google-cloud-go/commit/fe50105a32a28e8b43f4d51390bdcdab6d0540f5"><code>fe50105</code></a> fix(internal/librariangen): remove rogue source path in configure (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/13249">#13249</a>)</li>
<li><a href="https://github.com/googleapis/google-cloud-go/commit/45f20a1a27533212b3784c81f25c5a900bda0651"><code>45f20a1</code></a> chore(.librarian): fix state file for gkerecommender (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/13246">#13246</a>)</li>
<li><a href="https://github.com/googleapis/google-cloud-go/commit/26d75bc08e242348d26691877aba7fa68cf30f7f"><code>26d75bc</code></a> fix(storage): Fix takeover response handling. (<a href="https://redirect.github.com/googleapis/google-cloud-go/issues/13239">#13239</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/googleapis/google-cloud-go/compare/spanner/v1.57.0...storage/v1.57.1">compare view</a></li>
</ul>
</details>
<br />


[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=cloud.google.com/go/storage&package-manager=go_modules&previous-version=1.57.0&new-version=1.57.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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


</details>

## Issue 31 (#3221): [bug:filer] failed to load the volume information.

Sponsors SeaweedFS via Patreon https://www.patreon.com/seaweedfs

**Describe the bug**
related to [3220](https://github.com/chrislusf/seaweedfs/issues/3220)

I have 6 `filer` servers. Just one `filer` server can't get volume information until restart the server.

**the master server's log**

`
weed.szth-24-10-131.root.log.INFO.20220622-100458.8:I0623 08:39:16     8 volume_layout.go:222] volume 4558 does not have enough copies

weed.szth-24-10-131.root.log.INFO.20220622-100458.8:I0623 08:39:16     8 volume_layout.go:227] volume 4558 remove from writable

weed.szth-24-10-131.root.log.INFO.20220622-100458.8:I0623 08:39:16     8 volume_layout.go:222] volume 4558 does not have enough copies

weed.szth-24-10-131.root.log.INFO.20220622-100458.8:I0623 08:39:16     8 volume_layout.go:227] volume 4558 remove from writable

weed.szth-24-10-131.root.log.INFO.20220622-100458.8:I0623 08:39:16     8 volume_growth.go:235] Created Volume 4558 on topo:idc1:rack2:172.24.66.21:32576

weed.szth-24-10-131.root.log.INFO.20220622-100458.8:I0623 08:39:16     8 volume_layout.go:391] Volume 4558 becomes writable

weed.szth-24-10-131.root.log.INFO.20220622-100458.8:I0623 08:39:16     8 volume_growth.go:235] Created Volume 4558 on topo:idc1:rack1:172.24.66.5:32590
`

**the filer server's log**

`E0623 08:50:37     8 common.go:287] processRangeRequest headers: map[Accept-Ranges:[bytes] Access-Control-Expose-Headers:[Content-Disposition] Content-Disposition:[inline; filename="172.24.17.109-1MB-f9v3ng00r3-1474196"] Content-Length:[1048576] Content-Type:[video/avi] Etag:["72f4fdcbd826b1e7b2869eaae94f9095"] Last-Modified:[Thu, 23 Jun 2022 00:50:37 GMT] Server:[SeaweedFS Filer 30GB 3.12]] err: volume 4548 not found

E0623 08:50:38     8 filer_server_handlers_read.go:244] failed to stream content /osss3/tests3/172.24.16.137-1MB-nwv4nvxd4n-1502833: volume 4561 not found

E0623 08:50:38     8 common.go:287] processRangeRequest headers: map[Accept-Ranges:[bytes] Access-Control-Expose-Headers:[Content-Disposition] Content-Disposition:[inline; filename="172.24.16.137-1MB-nwv4nvxd4n-1502833"] Content-Length:[1048576] Content-Type:[video/avi] Etag:["72f4fdcbd826b1e7b2869eaae94f9095"] Last-Modified:[Thu, 23 Jun 2022 00:50:37 GMT] Server:[SeaweedFS Filer 30GB 3.12]] err: volume 4561 not found

E0623 08:50:38     8 filer_server_handlers_read.go:244] failed to stream content /osss3/tests3/172.25.82.26-1MB-zjsske4ofw-1536932: volume 4558 not found

E0623 08:50:38     8 common.go:287] processRangeRequest headers: map[Accept-Ranges:[bytes] Access-Control-Expose-Headers:[Content-Disposition] Content-Disposition:[inline; filename="172.25.82.26-1MB-zjsske4ofw-1536932"] Content-Length:[1048576] Content-Type:[video/avi] Etag:["72f4fdcbd826b1e7b2869eaae94f9095"] Last-Modified:[Thu, 23 Jun 2022 00:50:37 GMT] Server:[SeaweedFS Filer 30GB 3.12]] err: volume 4558 not found

E0623 08:50:38     8 filer_server_handlers_read.go:244] failed to stream content /osss3/tests3/172.25.82.18-1MB-fxhxg5ew0w-1530727: volume 4569 not found

E0623 08:50:38     8 common.go:287] processRangeRequest headers: map[Accept-Ranges:[bytes] Access-Control-Expose-Headers:[Content-Disposition] Content-Disposition:[inline; filename="172.25.82.18-1MB-fxhxg5ew0w-1530727"] Content-Length:[1048576] Content-Type:[video/avi] Etag:["72f4fdcbd826b1e7b2869eaae94f9095"] Last-Modified:[Thu, 23 Jun 2022 00:50:38 GMT] Server:[SeaweedFS Filer 30GB 3.12]] err: volume 4569 not found

E0623 08:50:38     8 filer_server_handlers_read.go:244] failed to stream content /osss3/tests3/172.25.82.23-1MB-sr4f4ijkk9-1516170: volume 4552 not found`

weed version: 3.12

## Repository Information
- **Repository**: seaweedfs/seaweedfs
- **Pull Request**: #7277
- **Base Commit**: `a80b5eea5e210e6b7996e55460b4c5ea3d2b02cd`

## Related Issues
- https://github.com/seaweedfs/seaweedfs/issues/7274
- https://github.com/seaweedfs/seaweedfs/issues/7312
- https://github.com/seaweedfs/seaweedfs/issues/7313
- https://github.com/seaweedfs/seaweedfs/issues/7396
- https://github.com/seaweedfs/seaweedfs/issues/6649
- https://github.com/seaweedfs/seaweedfs/issues/7397
- https://github.com/seaweedfs/seaweedfs/issues/7400
- https://github.com/seaweedfs/seaweedfs/issues/5044
- https://github.com/seaweedfs/seaweedfs/issues/7258
- https://github.com/seaweedfs/seaweedfs/issues/7403
- https://github.com/seaweedfs/seaweedfs/issues/1271
- https://github.com/seaweedfs/seaweedfs/issues/7408
- https://github.com/seaweedfs/seaweedfs/issues/7252
- https://github.com/seaweedfs/seaweedfs/issues/7410
- https://github.com/seaweedfs/seaweedfs/issues/7411
- https://github.com/seaweedfs/seaweedfs/issues/7412
- https://github.com/seaweedfs/seaweedfs/issues/7407
- https://github.com/seaweedfs/seaweedfs/issues/7418
- https://github.com/seaweedfs/seaweedfs/issues/6542
- https://github.com/seaweedfs/seaweedfs/issues/7416
- https://github.com/seaweedfs/seaweedfs/issues/7421
- https://github.com/seaweedfs/seaweedfs/issues/7422
- https://github.com/seaweedfs/seaweedfs/issues/7395
- https://github.com/seaweedfs/seaweedfs/issues/7424
- https://github.com/seaweedfs/seaweedfs/issues/150
- https://github.com/seaweedfs/seaweedfs/issues/147
- https://github.com/seaweedfs/seaweedfs/issues/144
- https://github.com/seaweedfs/seaweedfs/issues/133
- https://github.com/seaweedfs/seaweedfs/issues/134
- https://github.com/seaweedfs/seaweedfs/issues/7431
- https://github.com/seaweedfs/seaweedfs/issues/3221
</issue_description>

Can you help me implement the necessary changes to the repository so that the requirements specified in the <issue_description> are met?
I've already taken care of all changes to any of the test files described in the <issue_description>. This means you MUST NOT modify the testing logic or any of the tests in any way!
Also the development Go environment is already set up for you (i.e., all dependencies already installed), so you don't need to install other packages.
Your task is to make the minimal changes to non-test files in the /workspace/seaweedfs directory to ensure the <issue_description> is satisfied.

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

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit a80b5eea5e210e6b7996e55460b4c5ea3d2b02cd.
   8.1 Ensure you've fully addressed all requirements.
   8.2 Run any tests in the repository related to:
      8.2.1 The issue you are fixing
      8.2.2 The files you modified
      8.2.3 The functions you changed
   8.3 If any tests fail, revise your implementation until all tests pass.

Be thorough in your exploration, testing, and reasoning. It's fine if your thinking process is lengthy - quality and completeness are more important than brevity.

IMPORTANT CONSTRAINTS:
- ONLY modify files within the /workspace/seaweedfs directory
- DO NOT navigate outside this directory (no `cd ..` or absolute paths to other locations)
- DO NOT create, modify, or delete any files outside the repository
- All your changes must be trackable by `git diff` within the repository
- If you need to create test files, create them inside the repository directory