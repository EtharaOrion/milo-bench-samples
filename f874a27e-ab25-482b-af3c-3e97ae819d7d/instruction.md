I've uploaded a Go code repository in the directory /workspace/seaweedfs. Consider the following issue description:

<issue_description>
# Fix implementation of `master_pb.CollectionList` RPC call

## Issue 1 (#6715): Fix implementation of `master_pb.CollectionList` RPC call

# What problem are we solving?

Currently, `CollectionListRequest.include_normal_volumes` is ignored; the call always returns regular volumes regardless of value.

# How are we solving the problem?

Modified `weed.topology.ListCollections()` so `includeNormalVolumes` is properly evaluated.

# How is the PR tested?

Added unit tests for `ListCollections()` verifying parameter behavior.

# Checks
- [x] I have added unit tests if possible.
- [x] I will add related wiki document changes and link to this PR after merging.

## Issue 2 (#6713): [s3] payload checksum does not match on put file via aws s3

https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-streaming.html

```
weed version
version 8000GB 3.85 c6f2cb07 linux amd64
```

```
aws s3 --version
aws-cli/2.23.10 Python/3.12.8 Darwin/24.1.0 source/arm64
```

```
E0416 10:29:11.214603 s3api_object_handlers_put.go:145 post to filer: Put "http://192.168.197.1:8889/buckets/test/text.txt": payload checksum does not match
```

weed debug:
```
I0416 23:05:36.737036 auth_signature_v4.go:808 Canonical Request:
PUT
/test/test.txt

content-encoding:aws-chunked
content-type:text/plain
host:filer01.dev:8443
x-amz-content-sha256:STREAMING-UNSIGNED-PAYLOAD-TRAILER
x-amz-date:20250416T180536Z
x-amz-decoded-content-length:685312
x-amz-sdk-checksum-algorithm:CRC64NVME
x-amz-trailer:x-amz-checksum-crc64nvme

content-encoding;content-type;host;x-amz-content-sha256;x-amz-date;x-amz-decoded-content-length;x-amz-sdk-checksum-algorithm;x-amz-trailer
STREAMING-UNSIGNED-PAYLOAD-TRAILER
I0416 23:05:36.744742 chunked_reader_v4.go:390 payload checksum '64vnl1f41Lo=' does not match provided checksum 'GVRWIx8IAyQ='
```

aws debug log
```
2025-04-16 16:04:29,129 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event request-created.s3.PutObject: calling handler <function signal_not_transferring at 0x102d407c0>
2025-04-16 16:04:29,129 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event request-created.s3.PutObject: calling handler <bound method RequestSigner.handler of <botocore.signers.RequestSigner object at 0x1040c99a0>>
2025-04-16 16:04:29,129 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event choose-signer.s3.PutObject: calling handler <function set_operation_specific_signer at 0x101cdbd80>
2025-04-16 16:04:29,129 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event before-sign.s3.PutObject: calling handler <function remove_arn_from_signing_path at 0x101cfe3e0>
2025-04-16 16:04:29,129 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event before-sign.s3.PutObject: calling handler <function _set_extra_headers_for_unsigned_request at 0x101cfea20>
2025-04-16 16:04:29,129 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event before-sign.s3.PutObject: calling handler <bound method S3ExpressIdentityResolver.resolve_s3express_identity of <botocore.utils.S3ExpressIdentityResolver object at 0x104111490>>
2025-04-16 16:04:29,130 - ThreadPoolExecutor-0_0 - botocore.auth - DEBUG - Calculating signature using v4 auth.
2025-04-16 16:04:29,130 - ThreadPoolExecutor-0_0 - botocore.auth - DEBUG - CanonicalRequest:
PUT
/hls/test.txt

content-encoding:aws-chunked
host:staging.storage.test.tech:8443
x-amz-content-sha256:STREAMING-UNSIGNED-PAYLOAD-TRAILER
x-amz-date:20250416T110429Z
x-amz-decoded-content-length:685312
x-amz-sdk-checksum-algorithm:CRC64NVME
x-amz-trailer:x-amz-checksum-crc64nvme

content-encoding;host;x-amz-content-sha256;x-amz-date;x-amz-decoded-content-length;x-amz-sdk-checksum-algorithm;x-amz-trailer
STREAMING-UNSIGNED-PAYLOAD-TRAILER
2025-04-16 16:04:29,130 - ThreadPoolExecutor-0_0 - botocore.auth - DEBUG - StringToSign:
AWS4-HMAC-SHA256
20250416T110429Z
20250416/us-east-1/s3/aws4_request
ce4494eff4da76d048bc590a27d9179425c3ba7177940f64570ee78d2b960caa
2025-04-16 16:04:29,130 - ThreadPoolExecutor-0_0 - botocore.auth - DEBUG - Signature:
ba8d4a84c7dc3f99b685aa18bcdd9ab6a752bcc6c24ab61b3b80c6c4746069d1
2025-04-16 16:04:29,130 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event request-created.s3.PutObject: calling handler <function signal_transferring at 0x102d40860>
2025-04-16 16:04:29,131 - ThreadPoolExecutor-0_0 - botocore.endpoint - DEBUG - Sending http request: <AWSPreparedRequest stream_output=False, method=PUT, url=https://staging.storage.test.tech:8443/hls/test.txt, headers={'x-amz-sdk-checksum-algorithm': b'CRC64NVME', 'User-Agent': b'aws-cli/2.23.10 md/awscrt#0.23.4 ua/2.0 os/macos#24.1.0 md/arch#arm64 lang/python#3.12.8 md/pyimpl#CPython cfg/retry-mode#standard md/installer#source md/prompt#off md/command#s3.cp', 'Expect': b'100-continue', 'Transfer-Encoding': b'chunked', 'Content-Encoding': b'aws-chunked', 'X-Amz-Trailer': b'x-amz-checksum-crc64nvme', 'X-Amz-Decoded-Content-Length': b'685312', 'X-Amz-Date': b'20250416T110429Z', 'X-Amz-Content-SHA256': b'STREAMING-UNSIGNED-PAYLOAD-TRAILER', 'Authorization': b'AWS4-HMAC-SHA256 Credential=OM1EU6EUOI7AEPHI/20250416/us-east-1/s3/aws4_request, SignedHeaders=content-encoding;host;x-amz-content-sha256;x-amz-date;x-amz-decoded-content-length;x-amz-sdk-checksum-algorithm;x-amz-trailer, Signature=ba8d4a84c7dc3f99b685aa18bcdd9ab6a752bcc6c24ab61b3b80c6c4746069d1'}>
2025-04-16 16:04:29,131 - ThreadPoolExecutor-0_0 - botocore.httpsession - DEBUG - Certificate path: /opt/homebrew/Cellar/awscli/2.23.10/libexec/lib/python3.12/site-packages/awscli/botocore/cacert.pem
2025-04-16 16:04:29,131 - ThreadPoolExecutor-0_0 - urllib3.connectionpool - DEBUG - Resetting dropped connection: staging.storage.test.tech
2025-04-16 16:04:29,939 - ThreadPoolExecutor-0_0 - urllib3.connectionpool - DEBUG - https://staging.storage.test.tech:8443 "PUT /hls/test.txt HTTP/1.1" 500 273
2025-04-16 16:04:29,940 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event before-parse.s3.PutObject: calling handler <function _handle_200_error at 0x101cfe700>
2025-04-16 16:04:29,940 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event before-parse.s3.PutObject: calling handler <function handle_expires_header at 0x101cfe520>
2025-04-16 16:04:29,941 - ThreadPoolExecutor-0_0 - botocore.parsers - DEBUG - Response headers: {'Accept-Ranges': 'bytes', 'Content-Length': '273', 'Content-Type': 'application/xml', 'Server': 'SeaweedFS 30GB 3.85', 'X-Amz-Request-Id': '1744801470114502664', 'Date': 'Wed, 16 Apr 2025 11:04:30 GMT', 'Connection': 'close'}
2025-04-16 16:04:29,941 - ThreadPoolExecutor-0_0 - botocore.parsers - DEBUG - Response body:
b'<?xml version="1.0" encoding="UTF-8"?>\n<Error><Code>InternalError</Code><Message>We encountered an internal error, please try again.</Message><Resource>/hls/test.txt</Resource><RequestId>1744801470114464307</RequestId><Key>test.txt</Key><BucketName>hls</BucketName></Error>'
2025-04-16 16:04:29,941 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event needs-retry.s3.PutObject: calling handler <function _update_status_code at 0x101cfe840>
2025-04-16 16:04:29,941 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event needs-retry.s3.PutObject: calling handler <bound method RetryHandler.needs_retry of <botocore.retries.standard.RetryHandler object at 0x104111460>>
2025-04-16 16:04:29,941 - ThreadPoolExecutor-0_0 - botocore.retries.standard - DEBUG - Max attempts of 3 reached.
2025-04-16 16:04:29,941 - ThreadPoolExecutor-0_0 - botocore.retries.standard - DEBUG - Not retrying request.
2025-04-16 16:04:29,942 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event needs-retry.s3.PutObject: calling handler <bound method S3RegionRedirectorv2.redirect_from_error of <botocore.utils.S3RegionRedirectorv2 object at 0x1041111f0>>
2025-04-16 16:04:29,942 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event after-call.s3.PutObject: calling handler <function enhance_error_msg at 0x10353e3e0>
2025-04-16 16:04:29,942 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event after-call.s3.PutObject: calling handler <bound method RetryQuotaChecker.release_retry_quota of <botocore.retries.standard.RetryQuotaChecker object at 0x1041111c0>>
2025-04-16 16:04:29,942 - ThreadPoolExecutor-0_0 - s3transfer.tasks - DEBUG - Exception raised.
```


localy works
```
make server
aws s3 --endpoint-url http://127.0.0.1:8000/ cp /tmp/test.txt s3://test/test.txt                             
upload: ../../../../tmp/test.txt to s3://test/test.txt
```

logs
```
2025-04-16 20:00:37,697 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event before-sign.s3.PutObject: calling handler <bound method S3ExpressIdentityResolver.resolve_s3express_identity of <botocore.utils.S3ExpressIdentityResolver object at 0x108a39370>>
2025-04-16 20:00:37,697 - ThreadPoolExecutor-0_0 - botocore.auth - DEBUG - Calculating signature using v4 auth.
2025-04-16 20:00:37,697 - ThreadPoolExecutor-0_0 - botocore.auth - DEBUG - CanonicalRequest:
PUT
/test/test.txt

content-type:text/plain
host:127.0.0.1:8000
x-amz-checksum-crc64nvme:GVRWIx8IAyQ=
x-amz-content-sha256:4aa8f4d71ad0e8a46d93142b125319705e0bf156fb8d7b49a068b830d8cbfb14
x-amz-date:20250416T150037Z
x-amz-sdk-checksum-algorithm:CRC64NVME

content-type;host;x-amz-checksum-crc64nvme;x-amz-content-sha256;x-amz-date;x-amz-sdk-checksum-algorithm
4aa8f4d71ad0e8a46d93142b125319705e0bf156fb8d7b49a068b830d8cbfb14
2025-04-16 20:00:37,698 - ThreadPoolExecutor-0_0 - botocore.auth - DEBUG - StringToSign:
AWS4-HMAC-SHA256
20250416T150037Z
20250416/us-east-1/s3/aws4_request
bb230c8e2e03f024c6254eddefaf7ed8f5f0712ed26b7e0fca31c15bed922060
2025-04-16 20:00:37,698 - ThreadPoolExecutor-0_0 - botocore.auth - DEBUG - Signature:
3cd5860b8fe48ddcd3cd2649bcd38343186aef1e5d12d9797087c080bc8a1386
2025-04-16 20:00:37,698 - ThreadPoolExecutor-0_0 - botocore.hooks - DEBUG - Event request-created.s3.PutObject: calling handler <function signal_transferring at 0x107668860>
```

## Issue 3 (#6724): golang up version to 1.24

# What problem are we solving?

fix build https://github.com/seaweedfs/seaweedfs/actions/runs/14620792259/job/41019999808
```
0.061 go: ../go.mod requires go >= 1.24 (running go 1.23.8; GOTOOLCHAIN=local)

```

# How are we solving the problem?

up golang version to 1.24

# How is the PR tested?



# Checks
- [ ] I have added unit tests if possible.
- [ ] I will add related wiki document changes and link to this PR after merging.

## Issue 4 (#6703): Corrupted multipart upload to filer s3 over HTTPS using aws-cli

This seems like a regression from #6526,
or perhaps `Content-Encoding: aws-chunked` has never been properly handled,
because I found that aws-chunked only appears in test files when looking through the source code.

When uploading files with aws-cli, the uploaded file includes unexpected chunked transfer encoding markers at the start and end of the file:

```
100000\r\n

......

0\r\n
x-amz-checksum-crc64nvme:sAyTmcBbD2s=\r\n\r\n
```

### Environment
- weed: version 30GB 3.85 7d7e06681 linux amd64
- aws-cli/2.26.1 Python/3.13.2 Linux/5.15.0-130-generic exe/x86_64.ubuntu.22

Please let me know if you need any further details or logs.

## Issue 5 (#6526): allow verifying trailing checksums

There are multiple values allowed for the `x-amz-content-sha256` header as defined below:

 https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-auth-using-authorization-header.html#sigv4-auth-header-overview
![Image](https://github.com/user-attachments/assets/22cf1a62-940a-412d-b529-1e92a48f6e4a)


It seems like payload trailer types are only [mainly over HTTPS](https://github.com/aws/aws-sdk-go-v2/issues/1667), which is why they don't appear locally on my end, but in my prod setup they do.



The payload trailer types that add a checksum are
- STREAMING-AWS4-HMAC-SHA256-PAYLOAD-TRAILER
- STREAMING-UNSIGNED-PAYLOAD-TRAILER
- STREAMING-AWS4-ECDSA-P256-SHA256-PAYLOAD-TRAILER


Currently, we support None of them.
The first two would be a good first step, the later would need the new signature SigV4A to be implemented.

https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html



Example HTTP Request
```
PUT /Key+ HTTP/1.1
Host: amzn-s3-demo-bucket
Content-Encoding: aws-chunked
x-amz-decoded-content-length: 17408
x-amz-content-sha256: STREAMING-UNSIGNED-PAYLOAD-TRAILER
x-amz-trailer: x-amz-checksum-crc32

2000\r\n                                   // Object body chunk 1 (8192 bytes)
object-bytes\r\n
2000\r\n                                   // Object body chunk 2 (8192 bytes)
object-bytes\r\n
400\r\n                                    // Object body chunk 3 (1024 bytes)
object-bytes\r\n
0\r\n                                      // Completion chunk
x-amz-checksum-crc32:YABb/g==\n\r\n\r\n    // Trailer chunk (note optional \n character)
\r\n                                         // CRLF
```



The current code is able to read streaming HTTP requests like the following, but it it is currently hardcoded that they need a chunk-signature, which `STREAMING-UNSIGNED-PAYLOAD-TRAILER` does not.


https://github.com/seaweedfs/seaweedfs/blob/9ebc132ffc1a4c6a07864a8cec05cc380a8f00e0/weed/s3api/chunked_reader_v4.go#L172

of

https://github.com/seaweedfs/seaweedfs/blob/9ebc132ffc1a4c6a07864a8cec05cc380a8f00e0/weed/s3api/chunked_reader_v4.go#L228-L229



I believe a simple switch case depending on the `x-amz-content-sha256` would suffice in either verifying the signature, or computing the checksum; the later could then be verified at the end.

## Issue 6 (#6732): bump depdency-review-action 4.3.0 -> 4.3.2

# What problem are we solving?

attempt to fix failing dependency-review workflow due to the below error.

Error: Invalid purl: version must be percent-encoded

# How are we solving the problem?

# How is the PR tested?



# Checks
- [ ] I have added unit tests if possible.
- [ ] I will add related wiki document changes and link to this PR after merging.

## Issue 7 (#6737): fix: volume.list volume info output not in order

# What problem are we solving?

For a long time, the `volume.list` output is not ordered.

# How are we solving the problem?

It's because integer overflow in the compare func of `slices.SortFunc`. The `a.Id` & `b.Id` are uint32, which will give a large number when a < b due to integer underflow. The correct writing should be `int(a.Id) - int(b.Id)`

# How is the PR tested?

Tested by hand


# Checks
- [x] I have added unit tests if possible. (not needed)
- [x] I will add related wiki document changes and link to this PR after merging. (not need)

## Issue 8 (#6738): feat(redis): add mTLS support for Redis connection initialization

- Enhanced the Redis2Store initialization to support mutual TLS (mTLS) by adding configuration options for CA certificate, client certificate, and client key paths.
- Updated the Redis client setup to use TLS configuration when mTLS is enabled, ensuring secure connections to the Redis server.

# What problem are we solving?



# How are we solving the problem?



# How is the PR tested?



# Checks
- [ ] I have added unit tests if possible.
- [ ] I will add related wiki document changes and link to this PR after merging.

## Issue 9 (#6733): S3 Feature: please add s3.ip.bind command line parameter

In our application, it is necessary to set the s3 bind ip to a value different from the ip specified by the parameter "ip.bind (localhost)". 
Starting weed.exe multiple times would be impractical in our case. To address this, we propose adding a command line parameter "s3.ip.bind", similar to the existing "s3.port".

## Issue 10 (#3113): Storing files across many collections causes high memory usage

**Describe the bug**
Storing files across many collections uses many times more memory (in my testing, ~400x more) than storing files in one volume.

**System Setup**
I used these commands to insert 1MB files into new collections using the attached scripts:
`weed master -volume.max=50000 -dir=./data -ip=127.0.0.1`
`curl http://127.0.0.1:9333/dir/assign?collection=<collection name>`
`curl -F file=test.blob http://127.0.0.1:8080/<volume id>`

[weedtest.py.txt](https://github.com/chrislusf/seaweedfs/files/8797736/weedtest.py.txt)
[weedtest_collections.py.txt](https://github.com/chrislusf/seaweedfs/files/8797737/weedtest_collections.py.txt)
[graph.py.txt](https://github.com/chrislusf/seaweedfs/files/8797735/graph.py.txt)

The memory usage is graphed below (using the attached graph.py). In both cases, 1MB files are inserted into Seaweed at a rate of 1/s, so the time in seconds is roughly equal to the size of data stored on disk, in MB.
![collections](https://user-images.githubusercontent.com/106516469/170976016-8d8b2ebf-4045-4f12-a51e-b3c4ac125875.png)
![single](https://user-images.githubusercontent.com/106516469/170976019-1690a682-0e9f-4510-af98-0d8ef847779d.png)

OS version:
win10 v10.0.19041.1566

Weed version: 
`version 30GB 3.06 2f846777bbceea307771e79d4452e071b0bd5a51 windows amd64`

**Expected behavior**
The wiki page says that the in-memory file index uses ~20 bytes per file, but storing each file in its own collection uses ~20MB per file. I would expect slightly more memory usage from having to index the collections and associated volumes, but not 10^6 times more. 

**Additional context**
Our use-case for Seaweed is to store items in timestamped collections, so by making this sufficiently fine-grained (e.g. minutes or seconds) we end up with high memory usage while using our software. 

The python test scripts are just to create a minimum working example of the problem we are seeing, which is high memory usage of weed.exe over time, which persists when the .exe is restarted.


We have seen memory usage as high as 5.8GB in the wild, but from this testing it seems the memory usage of weed.exe becomes arbitrarily large as more collections are added.

## Issue 11 (#3115): volume.vacuum -volumeId doesnt trigger GC of the volumeId

**Describe the bug**
vacuum.volume -volumeId 3798 doesnt seem to trigger GC, nothing in logs
Other vacuums are ran by logs automatically

```
> lock
> volume.vacuum -volumeId 3798
> volume.vacuum -volumeId 3798 -garbageThreshold 0.001
```

**System Setup**
- List the command line to start "weed master", "weed volume", "weed filer", "weed s3", "weed mount".
```
weed -logtostderr -v=1 master -mdir=/mnt/data-small/meta -ip=10.2.14.15 -defaultReplication=010 -volumePreallocate -volumeSizeLimitMB 30000 -garbageThreshold 0.1 -peers=10.2.14.15:9333,10.2.14.16:9333,10.2.14.17:9333,10.2.14.18:9333,10.2.14.19:9333
weed -logtostderr -v=1 volume -pprof -minFreeSpacePercent 0 -compactionMBps=500 -port=8080 -mserver=10.2.14.15:9333,10.2.14.16:9333,10.2.14.17:9333,10.2.14.18:9333,10.2.14.19:9333 -dir=/mnt/data-small/data -index leveldb -max 7364 -ip 10.2.14.15 -rack dn-392 -dataCenter sw-archive-005
```
- OS version: ```Ubuntu 20.04```
- output of `weed version` :```version 30GB 3.06  linux amd64```
- if using filer, show the content of `filer.toml`: Not in use

**Expected behavior**
Expect to see logs with vacuuming of volumeId.
Only other volumes are GC'ed:
```
May 30 15:23:14 dn-393 weed[3179135]: I0530 15:23:14 79135 volume_vacuum.go:95] Committing volume 5585 vacuuming...
May 30 15:23:16 dn-393 weed[3179135]: I0530 15:23:16 79135 volume_grpc_vacuum.go:68] commit volume 5585
May 30 15:32:42 dn-393 weed[3179135]: I0530 15:32:42 79135 volume_vacuum.go:95] Committing volume 18364 vacuuming...
May 30 15:32:44 dn-393 weed[3179135]: I0530 15:32:44 79135 volume_grpc_vacuum.go:68] commit volume 18364
```

**Additional context**

The actual volume is "overwritten" by race of the master which is why we try to force GC since there are deleted files in the volume:
```
May 30 15:34:33 dn-392 weed[20628]: I0530 15:34:33 20628 common.go:70] response method:DELETE URL:/3798,13d9cf236711c177 with httpStatus:500 and JSON:{"error":"Deletion Failed: Volume Size 34361388248 Exeededs 34359738368"}
May 30 15:34:47 dn-392 weed[20628]: I0530 15:34:47 20628 common.go:70] response method:DELETE URL:/3798,13d7a105e4abb65a?type=replicate with httpStatus:500 and JSON:{"error":"Deletion Failed: Volume Size 34361388248 Exeededs 34359738368"}
```

The strange thing is also that this 010 volume has not been overwritten in size on one of the other volume servers containing the same volume:
```
$ echo -e "lock\nvolume.list \nunlock" | weed shell | egrep '(Rack|id:3798)'
    Rack dn-392 hdd(volume:7325/7364 active:7323 free:39 remote:0)
          volume id:3798  size:34361388248  collection:"sw-archive-005"  file_count:58921  delete_count:1879  deleted_byte_count:214618030  replica_placement:10  version:3  compact_revision:1  modified_at_second:1653917922 
    Rack dn-392 total size:226224682721120 file_count:318191722 deleted_file:6209954 deleted_bytes:1879784337390 
    Rack dn-393 hdd(volume:7326/7364 active:7326 free:38 remote:0)
    Rack dn-393 total size:226386703299200 file_count:318789285 deleted_file:6272871 deleted_bytes:1904922984384 
    Rack dn-394 hdd(volume:7326/7364 active:7326 free:38 remote:0)
          volume id:3798  size:22888687544  collection:"sw-archive-005"  file_count:36037  delete_count:641  deleted_byte_count:776517756  replica_placement:10  version:3  compact_revision:4  modified_at_second:1653917910 
    Rack dn-394 total size:226420066390296 file_count:318008148 deleted_file:6368768 deleted_bytes:1907616369978 
    Rack dn-395 hdd(volume:7325/7364 active:7325 free:39 remote:0)
    Rack dn-395 total size:226412673558856 file_count:318588160 deleted_file:6297764 deleted_bytes:1906539728210 
    Rack dn-396 hdd(volume:7326/7364 active:7324 free:38 remote:0)
    Rack dn-396 total size:230027049465456 file_count:325319208 deleted_file:8118336 deleted_bytes:2142015624121 
```

## Issue 12 (#3084): Security issue: sometimes any s3 users have access to any buckets

**Describe the bug**
Any s3 user has access to any buckets regardless of restrictions

**System Setup**
- List the command line to start "weed master", "weed volume", "weed filer", "weed s3", "weed mount".
```/opt/weed filer -s3```
- output of `weed version`
```version 8000GB 3.04 9ff0d9900288a2dc92d3a82256fb3f359be20d3b linux amd64```
- if using filer, show the content of `filer.toml`
```
[cassandra]
enabled = true
keyspace = "seaweedfs"
hosts = [
    "localhost:9042",
]
username = ""
password = ""
superLargeDirectories = []
localDC = ""
connection_timeout_millisecond = 600
```

How to reproduce:
```s3.configure -access_key=123 -secret_key=123 -buckets=test_bucket1 -user=123 -actions=Read,Write,List,Tagging -apply```
s3.configure output:
```    {
      "name": "123",
      "credentials": [
        {
          "accessKey": "123",
          "secretKey": "123"
        }
      ],
      "actions": [
        "Read:test_bucket1",
        "Write:test_bucket1",
        "List:test_bucket1",
        "Tagging:test_bucket1"
      ]
    }
```
Now we use /usr/local/bin/aws configure with this credentials
Then
```
/usr/local/bin/aws --endpoint-url http://localhost:8333 s3 cp /tmp/2 s3://test_bucket1/2
upload: ../../tmp/2 to s3://test_bucket1/2
``` 
- that's ok
```
/usr/local/bin/aws --endpoint-url http://localhost:8333 s3 cp /tmp/2 s3://test_bucket2/test2
upload: ../../tmp/2 to s3://test_bucket2/test2

In shell:
> fs.ls /buckets/test_bucket2
test2
```  
- thats **not ok** (Before this, such a bucket did not exist, and there are no permissions to access this bucket)

**Expected behavior**
upload failed: ../../tmp/2 to s3://test_bucket2/2 An error occurred (AccessDenied) when calling the PutObject operation: Access Denied.


**Additional context**
At the moment, I don't know how to reliably reproduce the problem: this is the second time in a week that policies spontaneously stop working and all users have access to everything. Restarting filer temporarily solves this problem.  Also, I don't see any errors regarding iam in the filer output.

## Issue 13 (#3086): [s3] put fakedir/ key object

required for integration with [NextCloud](https://docs.nextcloud.com/server/latest/admin_manual/configuration_files/primary_storage.html)
cmd put key

```
aws --debug --endpoint-url http://127.0.0.1:8333 s3api put-object --bucket test --key fakedir/
2022-05-21 13:01:18,267 - MainThread - botocore.endpoint - DEBUG - Sending http request: <AWSPreparedRequest stream_output=False, method=PUT, url=http://127.0.0.1:8333/test/fakedir/, headers={'User-Agent': b'aws-cli/2.5.1 Python/3.9.12 Darwin/20.6.0 source/x86_64 prompt/off command/s3api.put-object', 'Content-MD5': b'1B2M2Y8AsgTpgAmY7PhCfg==', 'X-Amz-Date': b'20220521T080118Z', 'X-Amz-Content-SHA256': b'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'Authorization': b'AWS4-HMAC-SHA256 Credential=some_access_key1/20220521/us-west-2/s3/aws4_request, SignedHeaders=content-md5;host;x-amz-content-sha256;x-amz-date, Signature=0e8e0ad443c9fad591a885de961a475f2fb6979bd22500e3e40940b7dedf5dfc', 'Content-Length': '0'}>
2022-05-21 13:01:18,268 - MainThread - urllib3.connectionpool - DEBUG - Starting new HTTP connection (1): 127.0.0.1:8333
2022-05-21 13:01:18,274 - MainThread - urllib3.connectionpool - DEBUG - http://127.0.0.1:8333 "PUT /test/fakedir/ HTTP/1.1" 200 0
2022-05-21 13:01:18,274 - MainThread - botocore.parsers - DEBUG - Response headers: {'Accept-Ranges': 'bytes', 'Content-Length': '0', 'Server': 'SeaweedFS S3', 'X-Amz-Request-Id': '1653120078293682028', 'Date': 'Sat, 21 May 2022 08:01:18 GMT'}
2022-05-21 13:01:18,274 - MainThread - botocore.parsers - DEBUG - Response body:
b''
2022-05-21 13:01:18,275 - MainThread - botocore.hooks - DEBUG - Event needs-retry.s3.PutObject: calling handler <bound method RetryHandler.needs_retry of <botocore.retries.standard.RetryHandler object at 0x10816ba00>>
2022-05-21 13:01:18,275 - MainThread - botocore.retries.standard - DEBUG - Not retrying request.
2022-05-21 13:01:18,275 - MainThread - botocore.hooks - DEBUG - Event needs-retry.s3.PutObject: calling handler <bound method S3RegionRedirector.redirect_from_error of <botocore.utils.S3RegionRedirector object at 0x10816ba90>>
2022-05-21 13:01:18,275 - MainThread - botocore.hooks - DEBUG - Event after-call.s3.PutObject: calling handler <function enhance_error_msg at 0x103971280>
2022-05-21 13:01:18,275 - MainThread - botocore.hooks - DEBUG - Event after-call.s3.PutObject: calling handler <bound method RetryQuotaChecker.release_retry_quota of <botocore.retries.standard.RetryQuotaChecker object at 0x10816b5b0>>
2022-05-21 13:01:18,275 - MainThread - awscli.formatter - DEBUG - RequestId: 1653120078293682028
```

logs put key

```
s3_1      | I0521 07:58:13     1 s3api_object_handlers.go:49] PutObjectHandler test /fakedir/
s3_1      | I0521 07:58:13     1 filer_client.go:234] mkdir: directory:"/buckets" entry:{name:"test/fakedir/" is_directory:true attributes:{mtime:1653119893 file_mode:2147484159 crtime:1653119893}}
filer_1   | I0521 07:58:13     1 filer_grpc_server.go:138] CreateEntry /buckets/test/fakedir/
filer_1   | I0521 07:58:13     1 filer.go:190] UpdateEntry /buckets/test/fakedir/: old entry: 
filer_1   | I0521 07:58:13     1 filer.go:202] CreateEntry /buckets/test/fakedir/: created
```

cmd get key
```
aws --debug --endpoint-url http://127.0.0.1:8333 s3api get-object --bucket test --key fakedir/ /tmp/fackedir
```

logs get key with /

```
s3_1      | I0521 08:05:50     1 s3api_object_handlers.go:136] GetObjectHandler test /fakedir/
s3_1      | I0521 08:05:50     1 error_handler.go:85] status 501 application/xml: <?xml version="1.0" encoding="UTF-8"?>
s3_1      | <Error><Code>NotImplemented</Code><Message>A header you provided implies functionality that is not implemented</Message><Resource>/test/fakedir/</Resource><RequestId>1653120350340582368</RequestId><Key>fakedir/</Key><BucketName>test</BucketName></Error>
```


fs.meta.cat

```
> fs.meta.cat buckets/test/fakedir
{
  "name": "fakedir",
  "isDirectory": true,
  "chunks": [
  ],
  "attributes": {
    "fileSize": "0",
    "mtime": "1653119827",
    "fileMode": 2147484159,
    "uid": 0,
    "gid": 0,
    "crtime": "1653119827",
    "mime": "",
    "replication": "",
    "collection": "",
    "ttlSec": 0,
    "userName": "",
    "groupName": [
    ],
    "symlinkTarget": "",
    "md5": null,
    "diskType": "",
    "rdev": 0,
    "inode": "0"
  },
  "extended": {
  },
  "hardLinkId": null,
  "hardLinkCounter": 0,
  "content": null,
  "remoteEntry": null,
  "quota": "0"
}
chunks 0 meta size: 31 gzip:59
```


```
aws --debug --endpoint-url http://127.0.0.1:8333 s3api put-object --bucket test --key "fakedir/."
s3_1      | I0521 08:40:03     1 s3api_object_handlers.go:49] PutObjectHandler test /fakedir/.
s3_1      | I0521 08:40:03     1 s3api_object_handlers.go:100] putToFiler uploadUrl: http://filer:8888/buckets/test/fakedir/.
filer_1   | I0521 08:40:03     1 filer_server_handlers_read_dir.go:55] listDirectory /buckets/test/fakedir, last file fakedir, limit 100: 1 items
s3_1      | E0521 08:40:03     1 s3api_object_handlers.go:414] failing to read upload to http://filer:8888/buckets/test/fakedir/. : <!DOCTYPE html>
s3_1      | I0521 08:40:03     1 error_handler.go:85] status 500 application/xml: <?xml version="1.0" encoding="UTF-8"?>
s3_1      | <Error><Code>InternalError</Code><Message>We encountered an internal error, please try again.</Message><Resource>/test/fakedir/.</Resource><RequestId>1653122403355812077</RequestId><Key>fakedir/.</Key><BucketName>test</BucketName></Error>
```

https://docs.nextcloud.com/server/latest/admin_manual/configuration_files/external_storage_configuration_gui.html
```
s3_1         | I0525 07:54:09     1 s3api_object_handlers.go:49] PutObjectHandler test /nextcloud_external_dir/
s3_1         | I0525 07:54:09     1 filer_server_handlers_read.go:98] Not found /buckets/test/nextcloud_external_dir: filer: no entry is found in filer store
s3_1         | E0525 07:54:09     1 s3api_object_handlers.go:416] failing to read upload to http://172.18.0.4:8888/buckets/test/nextcloud_external_dir/. : 
s3_1         | I0525 07:54:09     1 error_handler.go:85] status 500 application/xml: <?xml version="1.0" encoding="UTF-8"?>
s3_1         | <Error><Code>InternalError</Code><Message>We encountered an internal error, please try again.</Message><Resource>/test/nextcloud_external_dir/</Resource><RequestId>1653465249823314600</RequestId><Key>nextcloud_external_dir/</Key><BucketName>test</BucketName></Error>
```

minio work:
```
minio:9000 [REQUEST s3.ListObjectsV2] [2022-05-25T16:36:32:000] [Client IP: 172.18.0.6]
minio:9000 GET /nextcloud?list-type=2&prefix=folder%2F&max-keys=1
minio:9000 Proto: HTTP/1.1
minio:9000 Host: minio:9000
minio:9000 Aws-Sdk-Retry: 0/0
minio:9000 Content-Length: 0
minio:9000 X-Amz-Content-Sha256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
minio:9000 Authorization: AWS4-HMAC-SHA256 Credential=some_access_key1/20220525/eu-west-1/s3/aws4_request, SignedHeaders=host;x-amz-content-sha256;x-amz-date;x-amz-user-agent, Signature=b9b57b5dbee317c10d38e3d6fbed47a5e50e8de58a0722d1aefce620f60e5043
minio:9000 Aws-Sdk-Invocation-Id: 553ad64750d8847d39090f67e71231a5
minio:9000 User-Agent: aws-sdk-php/3.212.2 OS/Linux/5.10.25-linuxkit lang/php/8.0.18 GuzzleHttp/7
minio:9000 X-Amz-Date: 20220525T113632Z
minio:9000 X-Amz-User-Agent: aws-sdk-php/3.212.2
minio:9000
minio:9000 [RESPONSE] [2022-05-25T16:36:32:000] [ Duration 684µs  ↑ 130 B  ↓ 901 B ]
minio:9000 200 OK
minio:9000 Accept-Ranges: bytes
minio:9000 X-Amz-Request-Id: 16F25604EA79315C
minio:9000 X-Xss-Protection: 1; mode=block
minio:9000 Content-Length: 585
minio:9000 Content-Security-Policy: block-all-mixed-content
minio:9000 Content-Type: application/xml
minio:9000 Server: MinIO
minio:9000 Strict-Transport-Security: max-age=31536000; includeSubDomains
minio:9000 Vary: Origin,Accept-Encoding
minio:9000 X-Content-Type-Options: nosniff
minio:9000 <?xml version="1.0" encoding="UTF-8"?>
<ListBucketResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/"><Name>nextcloud</Name><Prefix>folder/</Prefix><KeyCount>1</KeyCount><MaxKeys>1</MaxKeys><Delimiter></Delimiter><IsTruncated>false</IsTruncated><Contents><Key>folder/</Key><LastModified>2022-05-25T11:36:32.178Z</LastModified><ETag>&#34;d41d8cd98f00b204e9800998ecf8427e&#34;</ETag><Size>0</Size><Owner><ID>02d6176db174dc93cb1b899f7c6078f08654445fe8cf1b6ce98d8855f66bdbf4</ID><DisplayName>minio</DisplayName></Owner><StorageClass>STANDARD</StorageClass></Contents></ListBucketResult>
minio:9000
```

## Issue 14 (#3087): go: github.com/seaweedfs/goexif@v2.0.0+incompatible: reading github.com/seaweedfs/goexif/go.mod at revision v2.0.0: unknown revision v2.0.0

seaweedfs-3.05 / Mac OS

% make all
cd weed; go install
go: github.com/seaweedfs/goexif@v2.0.0+incompatible: reading github.com/seaweedfs/goexif/go.mod at revision v2.0.0: unknown revision v2.0.0
make: *** [install] Error 1

## Issue 15 (#3089): New filer only syncs a subset of files

Sponsors SeaweedFS via Patreon https://www.patreon.com/seaweedfs
Report issues here. Ask questions here https://stackoverflow.com/questions/tagged/seaweedfs
Please ask questions in https://github.com/chrislusf/seaweedfs/discussions

example of a good issue report:
https://github.com/chrislusf/seaweedfs/issues/1005
example of a bad issue report:
https://github.com/chrislusf/seaweedfs/issues/1008

**Describe the bug**

I have created 2 filers using filer.toml of 

```
[filer.options]
recursive_delete = false

[leveldb2]
enabled = true
dir = "./filerldb2"
```

I've created around 20,000 files over 4,000 directories. Both filers show the correct list of files as expected, checked via the web interface on the filers.

I create a 3rd filer with the same filer.toml, when it starts it pulls data from the other filers as expected, however it completes with only a partial tree. Again checked by the web interface of the filer and by weed mount.

If I have a mount point already open I can issue `touch <file>` and the files I touch will appear in the new filer.

Restarting the new filer doesn't pull in any additional file meta data. There's no errors shown.

A second issue is starting with 2 filers, stopping one, writing additional files then restarting the stopped filer can cause a mismatch in the file tree, i.e some of the new files written are not pulled into the restarted filer.

**System Setup**

OS: Ubuntu 20.04
SeaweedFS: 3.06 also fails in 3.02

I have 1 master:

```
weed master -ip=1.2.3.4 -ip.bind=0.0.0.0 -mdir=./master -defaultReplication=001 -volumeSizeLimitMB=30000
```

3 volume servers

```
weed volume -dir=/srv/seaweedfs -mserver=1.2.3.4:9333 -max=0 -ip=192.168.8.50 -ip.bind=0.0.0.0
weed volume -dir=/srv/seaweedfs -mserver=1.2.3.4:9333 -max=0 -ip=192.168.8.51 -ip.bind=0.0.0.0
weed volume -dir=/srv/seaweedfs -mserver=1.2.3.4:9333 -max=0 -ip=192.168.8.52 -ip.bind=0.0.0.0
```

2 then 3 filers

```
weed filer -master=1.2.3.4:9333 -defaultReplicaPlacement=001
weed filer -master=1.2.3.4:9333 -defaultReplicaPlacement=001
weed filer -master=1.2.3.4:9333 -defaultReplicaPlacement=001
```

There's 3 VMs running this, 1 has master + volume + filer, the other 2 are volume + filer.

All VMs are on the same network, there's no firewalls etc.

**Expected behavior**

As per the documentation I'd expect the 3rd filer to start and load the entire file meta data from the other filers.

## Issue 16 (#3097): seaweedfs randomly loses files

Setup:

- Kubernetes on Ubuntu 22.04 (containerd)
- Version: 3.0.4
- 3x Master
- 3x Filer (storage: `mysql` [also tried `redis3_cluster`])
- 3x Volume (index: `leveldb`)
- FUSE Mount (via CSI) in a Pod (with 3x Filers)

Helm for seaweedfs:

```
global:
  enableReplication: true
  replicationPlacment: "001"

filer:
  replicas: 3
  dirListLimit: "100000000"
  extraEnvironmentVars:
    WEED_MYSQL_ENABLED: "true"
    WEED_MYSQL_HOSTNAME: "galera-active.default.svc.cluster.local"
    WEED_MYSQL_PORT: "3306"
    WEED_MYSQL_DATABASE: "seaweedfs"
    WEED_MYSQL_USERNAME: "seaweedfs"
    WEED_MYSQL_CONNECTION_MAX_IDLE: "5"
    WEED_MYSQL_CONNECTION_MAX_OPEN: "75"
  nodeSelector: |
    seaweedfs-filer: "true"

master:
  replicas: 3
  nodeSelector: |
    seaweedfs-master: "true"

volume:
  replicas: 3
  nodeSelector: |
    seaweedfs-volume: "true"
  compactionMBps: "1000"
  index: leveldb
```

Helm for seaweedfs-csi-driver:

```
imagePullPolicy: Always
seaweedfsFiler: 'seaweedfs-filer-0.seaweedfs-filer:8888,seaweedfs-filer-1.seaweedfs-filer:8888,seaweedfs-filer-2.seaweedfs-filer:8888'
storageClassName: seaweedfs
```

A directory listing with metadata in a large tree returns a seemingly random subset of files. Every time executed, it returns a different sub-set. Restarting Masters/Filers/Volumes has no effect.

This is more specifically a Docker Registry.
Example workload is: `registry garbage-collect -m /etc/docker/registry/config.yml -d` (dry run)

Executing this multiple times (in the same Pod) returns any random number of files to prune, even though the directory is not changing (no writes):

```
1002 blobs marked, 2146 blobs and 718 manifests eligible for deletion
...
996 blobs marked, 2152 blobs and 717 manifests eligible for deletion
...
1022 blobs marked, 2125 blobs and 718 manifests eligible for deletion
```

The issue also seems to get worse over time. More and more files are lost, even though there are no writes.

## Issue 17 (#3099): 服务器意外断电，加载volume报错，有什么好的办法避免吗？

**Describe the bug**
服务器意外断电，加载volume报错，volume server重启，导致服务不可用

可以通过weed fix 命令，将volume修复。希望有好的方式可以避免


A clear and concise description of what you expected to happen.

**Screenshots**
![image](https://user-images.githubusercontent.com/13499653/169982872-0c433e6e-08bb-4249-b222-629e723b8a6f.png)


**Additional context**
version 2.93 arm64
![image](https://user-images.githubusercontent.com/13499653/169982968-93338551-cf90-427e-b0c2-7818fcd348f6.png)

## Issue 18 (#3107): ipv6

Sponsors SeaweedFS via Patreon https://www.patreon.com/seaweedfs
Report issues here. Ask questions here https://stackoverflow.com/questions/tagged/seaweedfs
Please ask questions in https://github.com/chrislusf/seaweedfs/discussions

example of a good issue report:
https://github.com/chrislusf/seaweedfs/issues/1005
example of a bad issue report:
https://github.com/chrislusf/seaweedfs/issues/1008

**Describe the bug**
A clear and concise description of what the bug is.

**System Setup**
- List the command line to start "weed master", "weed volume", "weed filer", "weed s3", "weed mount".
- OS version
- output of `weed version`
- if using filer, show the content of `filer.toml`

**Expected behavior**
A clear and concise description of what you expected to happen.

**Screenshots**
If applicable, add screenshots to help explain your problem.

**Additional context**
Add any other context about the problem here.

## Issue 19 (#1343): No control of free space on disk.

Sponsors SeaweedFS via Patreon https://www.patreon.com/seaweedfs
Report issues here. Ask questions here https://stackoverflow.com/questions/tagged/seaweedfs

example of a good issue report:
https://github.com/chrislusf/seaweedfs/issues/1005
example of a bad issue report:
https://github.com/chrislusf/seaweedfs/issues/1008

**Describe the bug**
I have one master and two volumes. Volumes placed on two different machines with different disk capacity. Master assign new files to both volume machines, even when disk have low space. And we have errors
`I0603 10:41:32  5792 store_replicate.go:46] failed to write to local disk: write data1/290.dat: There is not enough space on the disk`. But other volume server have enough disk space.

**Expected behavior**
It would be nice if master not assign new files to volumes with free space lower then some parametrize watermark( for example 5% or 1 GB). Volume server can periodicaly check free space and mark unwritable volumes using watermark condition.

## Issue 20 (#1366): seaweedfs 1.82: weed volume fails with -dir volume,volume2,[...]

Seaweedfs version 8000GB 1.82 c48b407 linux amd64

Since around version 1.80 or 1,81, I had trouble starting volumes this way due to an index out of range error:
```
> weed volume -max=8,8,16,8,8,8 -rack=test -ip=192.168.1.3 -mserver=192.168.1.4:9333 -port=8995 -dir=/mnt/data01/SEAWEEDFS-DATA/,/mnt/data02/SEAWEEDFS-DATA/,/mnt/data03/SEAWEEDFS-DATA/,/mnt/data04/SEAWEEDFS-DATA/,/mnt/data05/SEAWEEDFS-DATA/,/mnt/data06/SEAWEEDFS-DATA/

I0621 04:56:05 11928 file_util.go:20] Folder /mnt/data01/SEAWEEDFS-DATA/ Permission: -rwxr-xr-x
I0621 04:56:05 11928 file_util.go:20] Folder /mnt/data02/SEAWEEDFS-DATA/ Permission: -rwxr-xr-x
I0621 04:56:05 11928 file_util.go:20] Folder /mnt/data03/SEAWEEDFS-DATA/ Permission: -rwxr-xr-x
I0621 04:56:05 11928 file_util.go:20] Folder /mnt/data04/SEAWEEDFS-DATA/ Permission: -rwxr-xr-x
I0621 04:56:05 11928 file_util.go:20] Folder /mnt/data05/SEAWEEDFS-DATA/ Permission: -rwxr-xr-x
I0621 04:56:05 11928 file_util.go:20] Folder /mnt/data06/SEAWEEDFS-DATA/ Permission: -rwxr-xr-x
I0621 04:56:05 11928 volume_loading.go:104] loading index /mnt/data01/SEAWEEDFS-DATA/15.idx to memory
I0621 04:56:05 11928 volume_loading.go:104] loading index /mnt/data01/SEAWEEDFS-DATA/16.idx to memory
I0621 04:56:05 11928 volume_loading.go:104] loading index /mnt/data01/SEAWEEDFS-DATA/2.idx to memory
I0621 04:56:05 11928 disk_location.go:86] data file /mnt/data01/SEAWEEDFS-DATA//15.idx, replicaPlacement=010 v=3 size=57926200 ttl=
I0621 04:56:05 11928 volume_loading.go:104] loading index /mnt/data01/SEAWEEDFS-DATA/3.idx to memory
I0621 04:56:05 11928 disk_location.go:86] data file /mnt/data01/SEAWEEDFS-DATA//16.idx, replicaPlacement=010 v=3 size=53525640 ttl=
I0621 04:56:05 11928 disk_location.go:86] data file /mnt/data01/SEAWEEDFS-DATA//2.idx, replicaPlacement=010 v=3 size=31458116640 ttl=
I0621 04:56:05 11928 disk_location.go:86] data file /mnt/data01/SEAWEEDFS-DATA//3.idx, replicaPlacement=010 v=3 size=31457995600 ttl=
I0621 04:56:05 11928 disk_location.go:122] Store started on dir: /mnt/data01/SEAWEEDFS-DATA/ with 4 volumes max 8
I0621 04:56:05 11928 disk_location.go:125] Store started on dir: /mnt/data01/SEAWEEDFS-DATA/ with 0 ec shards
panic: runtime error: index out of range [1] with length 1

goroutine 1 [running]:
github.com/chrislusf/seaweedfs/weed/storage.NewStore(0x20399c0, 0xc0001822f8, 0x2323, 0x7ffe864c85fc, 0xd, 0xc000575b80, 0x12, 0xc00028d5c0, 0x6, 0x6, ...)
        /home/travis/gopath/src/github.com/chrislusf/seaweedfs/weed/storage/store.go:55 +0x4a1
github.com/chrislusf/seaweedfs/weed/server.NewVolumeServer(0xc000468ac0, 0xc000468ac0, 0x7ffe864c85fc, 0xd, 0x2323, 0xc000575b80, 0x12, 0xc00028d5c0, 0x6, 0x6, ...)
        /home/travis/gopath/src/github.com/chrislusf/seaweedfs/weed/server/volume_server.go:71 +0x730
github.com/chrislusf/seaweedfs/weed/command.VolumeServerOptions.startVolumeServer(0xc0000ce968, 0xc0000ce978, 0xc00028d5c0, 0x6, 0x6, 0xc00020a280, 0x6, 0x8, 0xc00045ed10, 0xc00045ed20, ...)
        /home/travis/gopath/src/github.com/chrislusf/seaweedfs/weed/command/volume.go:189 +0x6df
github.com/chrislusf/seaweedfs/weed/command.runVolume(0x2ef84a0, 0xc00018c070, 0x0, 0x0, 0x0)``
        /home/travis/gopath/src/github.com/chrislusf/seaweedfs/weed/command/volume.go:110 +0x117
main.main()
        /home/travis/gopath/src/github.com/chrislusf/seaweedfs/weed/weed.go:66 +0x2f9

```

Individually starting the volumes on different ports seems to work fine. With the following I get no errors and all volumes show up in weed shell's "volume.list":
```
> weed volume -max=8 -rack=test -ip=192.168.1.3 -mserver=192.168.1.4:9333 -port=8995 -dir=/mnt/data01/SEAWEEDFS-DATA/ &
> weed volume -max=8 -rack=test -ip=192.168.1.3 -mserver=192.168.1.4:9333 -port=8996 -dir=/mnt/data02/SEAWEEDFS-DATA/ &
> weed volume -max=16 -rack=test -ip=192.168.1.3 -mserver=192.168.1.4:9333 -port=8997 -dir=/mnt/data03/SEAWEEDFS-DATA/ &
> weed volume -max=8 -rack=test -ip=192.168.1.3 -mserver=192.168.1.4:9333 -port=8998 -dir=/mnt/data04/SEAWEEDFS-DATA/ &
> weed volume -max=8 -rack=test -ip=192.168.1.3 -mserver=192.168.1.4:9333 -port=8999 -dir=/mnt/data05/SEAWEEDFS-DATA/ &
> weed volume -max=8 -rack=test -ip=192.168.1.3 -mserver=192.168.1.4:9333 -port=9900 -dir=/mnt/data06/SEAWEEDFS-DATA/ &
```
But that occupies more ports and of course doesn't allow balancing with volume.balance between racks anymore (modeled by only running one volume server each). Because instead of one volume server with 56 volumes max encompassing the whole rack, the max has 16 now.

## Issue 21 (#1361): Volume not found, but actutally present in filesystem

Sponsors SeaweedFS via Patreon https://www.patreon.com/seaweedfs
Report issues here. Ask questions here https://stackoverflow.com/questions/tagged/seaweedfs

example of a good issue report:
https://github.com/chrislusf/seaweedfs/issues/1005
example of a bad issue report:
https://github.com/chrislusf/seaweedfs/issues/1008

**Describe the bug**
EC encoder can not mark volume as readonly because of SeaweedFS thinks that volume does not exist.
```
> ec.encode -fullPercent=95 -quietFor=1h
ec encode volumes quiet for: 3600 seconds
ec encode volumes: [133 131 439 446 440 437 444 443 436 449 435 447 441 140 448 445 451 118 180 434 450 442]
error: mark volume 133 as readonly on example.com:8083: rpc error: code = Unknown desc = volume 133 not found
```
But volume is actually present in filesystem.

```
$ ls /data/volume/ | grep 133
  133.dat
  133.ec03
  133.ec11
  133.ecj
  133.ecx
  133.idx
  133.sdx
  133.vif
```

Also, we have constant `404 Not Found` errors for files, that used to be present.

**System Setup**
- System has 5 volume servers, 1 master server and 1 filer.
- ` Linux seaweed.volume1 4.15.0-58-generic #64-Ubuntu SMP Tue Aug 6 11:12:41 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux`
- `Ubuntu 18.04.3 LTS`
- `version 30GB 1.78 linux amd64`
- Filer uses postgresql 12.

**Expected behavior**
Encoding process has to mark volume as readonly.

**Screenshots**
![image](https://user-images.githubusercontent.com/9038018/84881671-de564480-b096-11ea-9122-a1b36b48be8f.png)

**Additional context**
We had several issues with our volume server one month ago (downtime for almost 6 hours), and after that, we started to face constant 404 errors and encoding errors.

## Issue 22 (#1353): Volume server hangs

**Describe the bug**
The volume server http interface is unresponsive. The process is not dead as it is still logging lines like this:
```
Jun 07 12:08:13 dn-379 weed[38923]: I0607 12:08:13 38923 disk.go:11] read disk size: dir:"/mnt/data-small/data" all:100000802516992 used:2829158424576 free:97171644092416 percent_free:97.17087 percent_used:2.8291357
Jun 07 12:08:34 dn-379 weed[38923]: I0607 12:08:34 38923 disk.go:11] read disk size: dir:"/mnt/data-small/data" all:100000802516992 used:2829158424576 free:97171644092416 percent_free:97.17087 percent_used:2.8291357
```
**System Setup**
Same setup as : https://github.com/chrislusf/seaweedfs/issues/1346
5x masters and 5x volume servers:
```
root     38923 31.5  0.8 11695928 578576 ?     Ssl  Jun05 770:25 /usr/local/bin/weed -logtostderr -v=1 volume -compactionMBps=50 -port=8080 -mserver=10.1.14.110:9333,10.1.14.111:9333,10.1.14.112:9333,10.1.14.113:9333,10.1.14.114:9333 -dir=/mnt/data-small/data -index leveldb -max 0 -ip 10.1.14.112 -rack dn-379
root     39048  0.4  0.0 5329596 19068 ?       Ssl  Jun05  11:41 /usr/local/bin/weed -logtostderr master -mdir=/mnt/data-small/meta -ip=10.1.14.112 -defaultReplication=010 -volumePreallocate -volumeSizeLimitMB 30000 -garbageThreshold 0.3 -pulseSeconds 5 -peers=10.1.14.110:9333,10.1.14.111:9333,10.1.14.112:9333,10.1.14.113:9333,10.1.14.114:9333
```

**Expected behavior**
Normal operation

**Additional context**
The only thing we changed was pulseSeconds from 10 to 5, but now I'm constantly restarting volume servers that hangs. Could it be that the volume server is waiting for replication to go through? I've seen some log lines related to replication failing. This is roughly 30 mins prior to all transfers stopping to the cluster:
```
Jun 05 21:01:14 dn-379 weed[38923]: I0605 21:01:14 38923 upload_content.go:214] failing to upload to http://10.1.14.110:8080/5172,0e86755ae4c78708?ts=1591383674&ttl=&type=replicate Post http://10.1.14.110:8080/5172,0e86755ae4c78708?ts=1591383674&ttl=&type=replicate: read tcp 10.1.14.112:38402->10.1.14.110:8080: read: connection reset by peer
Jun 05 21:01:14 dn-379 weed[38923]: I0605 21:01:14 38923 store_replicate.go:87] failed to write to replicas for volume 5172: [10.1.14.110:8080]: Post http://10.1.14.110:8080/5172,0e86755ae4c78708?ts=1591383674&ttl=&type=replicate: read tcp 10.1.14.112:38402->10.1.14.110:8080: read: connection reset by peer
Jun 05 21:01:14 dn-379 weed[38923]: I0605 21:01:14 38923 upload_content.go:214] failing to upload to http://10.1.14.110:8080/5172,0e867549195ab81e?ts=1591383674&ttl=&type=replicate Post http://10.1.14.110:8080/5172,0e867549195ab81e?ts=1591383674&ttl=&type=replicate: read tcp 10.1.14.112:38396->10.1.14.110:8080: read: connection reset by peer
Jun 05 21:01:14 dn-379 weed[38923]: I0605 21:01:14 38923 store_replicate.go:87] failed to write to replicas for volume 5172: [10.1.14.110:8080]: Post http://10.1.14.110:8080/5172,0e867549195ab81e?ts=1591383674&ttl=&type=replicate: read tcp 10.1.14.112:38396->10.1.14.110:8080: read: connection reset by peer
```

## Issue 23 (#6746): S3 Feature: please add s3.idleTimeout command line parameter

Some clients connect to our S3 server with periodic checks (list bucket requests) every 10 seconds. If the S3 server also uses an idle timeout of 10 seconds (as it is currently hardcoded), unwanted connection losses or unnecessary reconnections occur. Therefore, we would like to make the S3 server's idle timeout configurable (similar to the volume timeout) by adding a new parameter: s3.idleTimeout.

## Issue 24 (#167): Support for logging to Graylog

I have started using WeedFS recently and really love it. It solved the problem I am trying to solve for quite some time with extremely easy setup.

We use graylog for all kinds of application and server logging. One thing I'd like to see in WeedFS is support for graylog. 

Unfortunately my skills in Go are next to none. Good news is there is already a Go client available for Graylog if someone wants to take a stab at it:

https://github.com/Graylog2/go-gelf

thanks.

## Issue 25 (#161): Filer doesn't list directories correctly

dc1-r1/weed volume -max=20 -dataCenter="DC1" -rack="Rack 1" -dir=./dc1-r1/ -port=8081 &
dc1-r2/weed volume -max=20 -dataCenter="DC1" -rack="Rack 2" -dir=./dc1-r2/ -port=8082 &
dc1-r3/weed volume -max=20 -dataCenter="DC1" -rack="Rack 3" -dir=./dc1-r3/ -port=8083 &
dc1-r12/weed volume -max=20 -dataCenter="DC1" -rack="Rack1.2" -dir=./dc1-r12/ -port=8084 &
dc2-r1/weed volume -max=20 -dataCenter="DC2" -rack="Rack 2.1" -dir=./dc2-r1/ -port=8085 & 
master2/weed master -mdir=./master2 -peers=localhost:9334 &
master/weed master -mdir=./master -port=9334 &
filer/weed filer -mdir=. 

These are my commands to run a cluster of servers .
Topology :
DC1 - Rack 1 + Rack 2 + Rack 3 + Rack 1 + Filer
DC2 - Rack 2.1
Each DC1 is set on different servers
On Windows Server 2008, this is the output when I tried to upload file 
{"Directory":"/","Files":[{"name":"test","fid":"33,9e6009c49e"}],"Subdirectories":null}
*\* To a not exist directory :
{"Directory":"/test/","Files":[{"name":"test","fid":"33,9e6009c49e"}],"Subdirectories":null}

Everything seems work fine on Ubuntu 14.04, since it doesn't show the file that doesn't exist in the current directory
{"Directory":"/","Files":null,"Subdirectories":[{"Name":"test","Id":1}]}

{"Directory":"/test/","Files":[{"name":"examples.desktop","fid":"12,100190d200a658"}],"Subdirectories":null}

## Issue 26 (#160): current glog module in seaweedfs can not work correctly if -log-dir is a relative directory

When I started weed with `-log_dir=master1/`, weed created logs as follows:

```
lrwxrwxrwx 1 root root        63 Jul  2 09:33 weed.INFO -> master1/weed.ubuntu-blade7.root.log.INFO.20150702-093324.112469
-rw-r--r-- 1 root root      2146 Jul  2 09:34 weed.ubuntu-blade7.root.log.INFO.20150702-093324.112469
```

Symbol-link `weed.INFO` should not use `master1/` in its destination.

I use `github.com/golang/glog`, which works correctly:

```
# mkdir master1
# ./test_glog -log_dir=master1/
# ll master1
total 32
drwxr-xr-x  2 root root 4096 Jul  2 14:11 ./
drwxr-xr-x 18 root root 4096 Jul  2 14:11 ../
lrwxrwxrwx  1 root root   61 Jul  2 14:11 test_glog.ERROR -> test_glog.ubuntu-blade8.root.log.ERROR.20150702-141130.180932
lrwxrwxrwx  1 root root   60 Jul  2 14:11 test_glog.INFO -> test_glog.ubuntu-blade8.root.log.INFO.20150702-141130.180932
-rw-r--r--  1 root root  302 Jul  2 14:11 test_glog.ubuntu-blade8.root.log.ERROR.20150702-141130.180932
-rw-r--r--  1 root root  593 Jul  2 14:11 test_glog.ubuntu-blade8.root.log.INFO.20150702-141130.180932
-rw-r--r--  1 root root  419 Jul  2 14:11 test_glog.ubuntu-blade8.root.log.WARNING.20150702-141130.180932
lrwxrwxrwx  1 root root   63 Jul  2 14:11 test_glog.WARNING -> test_glog.ubuntu-blade8.root.log.WARNING.20150702-141130.180932

```

## Issue 27 (#158): How to make file server secure?

Hi,
I am writing a mobile application, I allow my application write/read file to/from server. But I don't know how to make write operation secure. I want that logged use can do write operation. How can I do that?

Thank you.

## Issue 28 (#157): build failed on 32 bit system due to fuse upstream error

# bazil.org/fuse

src/bazil.org/fuse/fuse.go:1122: constant 4294967296 overflows int

See:
https://github.com/bazil/fuse/issues/98

## Issue 29 (#156): Volume server can't find leader sometime when master failed over

I started 3 masters(ports are 19333, 19334, 19335) and 3 volume servers(ports are 18080, 18081, 18082):

```
#!/bin/sh
./weed master -ip=192.168.23.70 -port=19333 -mdir=master1/ -defaultReplication=010 -whiteList=192.168.23.70,221.226.48.130 1>>master1/master.log 2>>master1/master.log &
sleep 2
./weed master -ip=192.168.23.70 -port=19334 -mdir=master2/ -defaultReplication=010 -whiteList=192.168.23.70,221.226.48.130 -peers=192.168.23.70:19333 1>>master2/master.log 2>>master2/master.log &
sleep 2
./weed master -ip=192.168.23.70 -port=19335 -mdir=master3/ -defaultReplication=010 -whiteList=192.168.23.70,221.226.48.130 -peers=192.168.23.70:19333 1>>master3/master.log 2>>master3/master.log &

./weed -v=4 volume -ip=192.168.23.70 -port=18080 -mserver=192.168.23.70:19333 -idleTimeout=1800 -dir=volume1/ -dataCenter=dc1 -rack=rack1 1>>volume1/volume.log 2>>volume1/volume.log &
./weed -v=4 volume -ip=192.168.23.70 -port=18081 -mserver=192.168.23.70:19333 -idleTimeout=1800 -dir=volume2/ -dataCenter=dc1 -rack=rack2 1>>volume2/volume.log 2>>volume2/volume.log &
./weed -v=4 volume -ip=192.168.23.70 -port=18082 -mserver=192.168.23.70:19333 -idleTimeout=1800 -dir=volume3/ -dataCenter=dc1 -rack=rack2 1>>volume3/volume.log 2>>volume3/volume.log &
```

And I killed master1(port 19333), volume server 1 and 2 change leader to master 2(port is 19334), but volume server 3(18082) can not change leader.

This is debug log of volume server 3.

```
glog.init()
I0623 20:21:23 18429 file_util.go:20] Folder volume3/ Permission: -rwxr-xr-x
I0623 20:21:23 18429 store.go:225] Store started on dir: volume3/ with 0 volumes max 7
I0623 20:21:23 18429 volume.go:136] Start Seaweed volume server 0.70 beta at 0.0.0.0:18082
I0623 20:21:23 18429 volume_server.go:70] Volume server bootstraps with master 192.168.23.70:19333
I0623 20:21:23 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:21:23 18429 store.go:58] Listing masters on 192.168.23.70:19333
I0623 20:21:23 18429 list_masters.go:18] list masters result :{"IsLeader":true,"Leader":"192.168.23.70:19333","Peers":["192.168.23.70:19334"]}
I0623 20:21:23 18429 store.go:65] current master nodes is nodes:[192.168.23.70:19334 192.168.23.70:19333 192.168.23.70:19333], lastNode:1
I0623 20:21:23 18429 store.go:316] Connecting to http://192.168.23.70:19333/dir/join ...
I0623 20:21:33 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:21:33 18429 store.go:316] Connecting to http://192.168.23.70:19333/dir/join ...
I0623 20:21:39 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:21:39 18429 store.go:316] Connecting to http://192.168.23.70:19333/dir/join ...
I0623 20:21:47 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:21:47 18429 store.go:316] Connecting to http://192.168.23.70:19333/dir/join ...
I0623 20:21:52 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:21:52 18429 store.go:316] Connecting to http://192.168.23.70:19333/dir/join ...
I0623 20:21:59 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:21:59 18429 store.go:316] Connecting to http://192.168.23.70:19333/dir/join ...
I0623 20:21:59 18429 store.go:46] Resetting master nodes: nodes:[192.168.23.70:19334 192.168.23.70:19333 192.168.23.70:19333], lastNode:1
I0623 20:21:59 18429 store.go:48] Reset master 192.168.23.70:19333 from: [192.168.23.70:19334 192.168.23.70:19333 192.168.23.70:19333]
I0623 20:21:59 18429 volume_server.go:85] Volume Server Failed to talk with master 192.168.23.70:19333: Post to http://192.168.23.70:19333/dir/join: Post http://192.168.23.70:19333/dir/join: dial tcp 192.168.23.70:19333: connection refused
I0623 20:22:00 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:22:00 18429 store.go:58] Listing masters on 192.168.23.70:19334
I0623 20:22:00 18429 list_masters.go:18] list masters result :{"Leader":"192.168.23.70:19333","Peers":["192.168.23.70:19333","192.168.23.70:19335"]}
I0623 20:22:00 18429 store.go:65] current master nodes is nodes:[192.168.23.70:19333 192.168.23.70:19335 192.168.23.70:19334], lastNode:2
I0623 20:22:00 18429 store.go:316] Connecting to http://192.168.23.70:19334/dir/join ...
I0623 20:22:00 18429 store.go:325] Failed to join http://192.168.23.70:19334/dir/join with response: 
I0623 20:22:00 18429 store.go:46] Resetting master nodes: nodes:[192.168.23.70:19333 192.168.23.70:19335 192.168.23.70:19334], lastNode:2
I0623 20:22:00 18429 store.go:48] Reset master 192.168.23.70:19334 from: [192.168.23.70:19333 192.168.23.70:19335 192.168.23.70:19334]
I0623 20:22:00 18429 volume_server.go:85] Volume Server Failed to talk with master 192.168.23.70:19333: unexpected end of JSON input
I0623 20:22:02 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:22:02 18429 store.go:58] Listing masters on 192.168.23.70:19333
I0623 20:22:02 18429 list_masters.go:18] list masters result :
I0623 20:22:02 18429 store.go:68] Failed listing masters on 192.168.23.70:19333: Get http://192.168.23.70:19333/cluster/status: dial tcp 192.168.23.70:19333: connection refused
I0623 20:22:02 18429 store.go:58] Listing masters on 192.168.23.70:19335
I0623 20:22:02 18429 list_masters.go:18] list masters result :{"Leader":"192.168.23.70:19333","Peers":["192.168.23.70:19333","192.168.23.70:19334"]}
I0623 20:22:02 18429 store.go:65] current master nodes is nodes:[192.168.23.70:19333 192.168.23.70:19334 192.168.23.70:19335], lastNode:2
I0623 20:22:02 18429 store.go:316] Connecting to http://192.168.23.70:19335/dir/join ...
I0623 20:22:02 18429 store.go:325] Failed to join http://192.168.23.70:19335/dir/join with response: 
I0623 20:22:02 18429 store.go:46] Resetting master nodes: nodes:[192.168.23.70:19333 192.168.23.70:19334 192.168.23.70:19335], lastNode:2
I0623 20:22:02 18429 store.go:48] Reset master 192.168.23.70:19335 from: [192.168.23.70:19333 192.168.23.70:19334 192.168.23.70:19335]
I0623 20:22:02 18429 volume_server.go:85] Volume Server Failed to talk with master 192.168.23.70:19333: unexpected end of JSON input
I0623 20:22:03 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:22:03 18429 store.go:58] Listing masters on 192.168.23.70:19333
I0623 20:22:03 18429 list_masters.go:18] list masters result :
I0623 20:22:03 18429 store.go:68] Failed listing masters on 192.168.23.70:19333: Get http://192.168.23.70:19333/cluster/status: dial tcp 192.168.23.70:19333: connection refused
I0623 20:22:03 18429 store.go:58] Listing masters on 192.168.23.70:19334
I0623 20:22:03 18429 list_masters.go:18] list masters result :{"Leader":"192.168.23.70:19333","Peers":["192.168.23.70:19333","192.168.23.70:19335"]}
I0623 20:22:03 18429 store.go:65] current master nodes is nodes:[192.168.23.70:19333 192.168.23.70:19335 192.168.23.70:19334], lastNode:2
I0623 20:22:03 18429 store.go:316] Connecting to http://192.168.23.70:19334/dir/join ...
I0623 20:22:03 18429 store.go:325] Failed to join http://192.168.23.70:19334/dir/join with response: 
I0623 20:22:03 18429 store.go:46] Resetting master nodes: nodes:[192.168.23.70:19333 192.168.23.70:19335 192.168.23.70:19334], lastNode:2
I0623 20:22:03 18429 store.go:48] Reset master 192.168.23.70:19334 from: [192.168.23.70:19333 192.168.23.70:19335 192.168.23.70:19334]
I0623 20:22:03 18429 volume_server.go:85] Volume Server Failed to talk with master 192.168.23.70:19333: unexpected end of JSON input
I0623 20:22:04 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:22:04 18429 store.go:58] Listing masters on 192.168.23.70:19333
I0623 20:22:04 18429 list_masters.go:18] list masters result :
I0623 20:22:04 18429 store.go:68] Failed listing masters on 192.168.23.70:19333: Get http://192.168.23.70:19333/cluster/status: dial tcp 192.168.23.70:19333: connection refused
I0623 20:22:04 18429 store.go:58] Listing masters on 192.168.23.70:19335
I0623 20:22:04 18429 list_masters.go:18] list masters result :{"Leader":"192.168.23.70:19333","Peers":["192.168.23.70:19333","192.168.23.70:19334"]}
I0623 20:22:04 18429 store.go:65] current master nodes is nodes:[192.168.23.70:19333 192.168.23.70:19334 192.168.23.70:19335], lastNode:0
I0623 20:22:04 18429 store.go:316] Connecting to http://192.168.23.70:19333/dir/join ...
I0623 20:22:04 18429 store.go:46] Resetting master nodes: nodes:[192.168.23.70:19333 192.168.23.70:19334 192.168.23.70:19335], lastNode:0
I0623 20:22:04 18429 volume_server.go:85] Volume Server Failed to talk with master 192.168.23.70:19333: Post to http://192.168.23.70:19333/dir/join: Post http://192.168.23.70:19333/dir/join: dial tcp 192.168.23.70:19333: connection refused
I0623 20:22:05 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:22:05 18429 store.go:316] Connecting to http://192.168.23.70:19333/dir/join ...
I0623 20:22:05 18429 store.go:46] Resetting master nodes: nodes:[192.168.23.70:19333 192.168.23.70:19334 192.168.23.70:19335], lastNode:0
I0623 20:22:05 18429 volume_server.go:85] Volume Server Failed to talk with master 192.168.23.70:19333: Post to http://192.168.23.70:19333/dir/join: Post http://192.168.23.70:19333/dir/join: dial tcp 192.168.23.70:19333: connection refused
I0623 20:22:07 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:22:07 18429 store.go:316] Connecting to http://192.168.23.70:19333/dir/join ...
I0623 20:22:07 18429 store.go:46] Resetting master nodes: nodes:[192.168.23.70:19333 192.168.23.70:19334 192.168.23.70:19335], lastNode:0
I0623 20:22:07 18429 volume_server.go:85] Volume Server Failed to talk with master 192.168.23.70:19333: Post to http://192.168.23.70:19333/dir/join: Post http://192.168.23.70:19333/dir/join: dial tcp 192.168.23.70:19333: connection refused
I0623 20:22:08 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:22:08 18429 store.go:316] Connecting to http://192.168.23.70:19333/dir/join ...
I0623 20:22:08 18429 store.go:46] Resetting master nodes: nodes:[192.168.23.70:19333 192.168.23.70:19334 192.168.23.70:19335], lastNode:0
I0623 20:22:08 18429 volume_server.go:85] Volume Server Failed to talk with master 192.168.23.70:19333: Post to http://192.168.23.70:19333/dir/join: Post http://192.168.23.70:19333/dir/join: dial tcp 192.168.23.70:19333: connection refused
I0623 20:22:09 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:22:09 18429 store.go:316] Connecting to http://192.168.23.70:19333/dir/join ...
I0623 20:22:09 18429 store.go:46] Resetting master nodes: nodes:[192.168.23.70:19333 192.168.23.70:19334 192.168.23.70:19335], lastNode:0
I0623 20:22:09 18429 volume_server.go:85] Volume Server Failed to talk with master 192.168.23.70:19333: Post to http://192.168.23.70:19333/dir/join: Post http://192.168.23.70:19333/dir/join: dial tcp 192.168.23.70:19333: connection refused
I0623 20:22:10 18429 volume_server.go:75] Volume server sending to master 192.168.23.70:19333
I0623 20:22:10 18429 store.go:316] Connecting to http://192.168.23.70:19333/dir/join ...
I0623 20:22:10 18429 store.go:46] Resetting master nodes: nodes:[192.168.23.70:19333 192.168.23.70:19334 192.168.23.70:19335], lastNode:0
```

In Store.SendHeartbeatToMaster(), because lastNode is 0, `s.masterNodes.findMaster()` and `s.masterNodes.reset()` didn't make any change to s.masterNodes, and select master1(port is 19333) every time.

## Issue 30 (#146): weed export -dir='/srv/weed-volume' -o='/srv/backup/backup.tar' -collection='collection-name' -volumeId=123 throws "slice bounds out of range"

Weed version: `0.65`
We are trying to backup data by export command. Some volumes throw an exception:

```
panic: runtime error: slice bounds out of range

goroutine 16 [running]:
runtime.panic(0x9ca580, 0xd7d1af)
    /home/chris/apps/go/src/pkg/runtime/panic.c:279 +0xf5
github.com/chrislusf/weed-fs/go/storage.(*Needle).readNeedleDataVersion2(0xc208044140, 0xc20842b800, 0x17de, 0x17e8)
    /home/chris/dev/workspace/home/gopath/src/github.com/chrislusf/weed-fs/go/storage/needle_read_write.go:188 +0x44e
github.com/chrislusf/weed-fs/go/storage.(*Needle).ReadNeedleBody(0xc208044140, 0xc208038028, 0x1802, 0x1810, 0x17e8, 0x0, 0x0)
    /home/chris/dev/workspace/home/gopath/src/github.com/chrislusf/weed-fs/go/storage/needle_read_write.go:250 +0x275
github.com/chrislusf/weed-fs/go/storage.ScanVolumeFile(0x7fffde364786, 0x10, 0x7fffde3647da, 0x12, 0xc20000003a, 0xc2080c5c98, 0x1, 0xc2080c5d20, 0x0, 0x0)
    /home/chris/dev/workspace/home/gopath/src/github.com/chrislusf/weed-fs/go/storage/volume.go:302 +0x4a0
main.runExport(0xd7a920, 0xc2080040c0, 0x0, 0x0, 0x0)
    /home/chris/dev/workspace/home/gopath/src/github.com/chrislusf/weed-fs/go/weed/export.go:119 +0x9a4
main.main()
    /home/chris/dev/workspace/home/gopath/src/github.com/chrislusf/weed-fs/go/weed/weed.go:77 +0x612

goroutine 19 [finalizer wait]:
runtime.park(0x428bd0, 0xd81240, 0xd7f449)
    /home/chris/apps/go/src/pkg/runtime/proc.c:1369 +0x89
runtime.parkunlock(0xd81240, 0xd7f449)
    /home/chris/apps/go/src/pkg/runtime/proc.c:1385 +0x3b
runfinq()
    /home/chris/apps/go/src/pkg/runtime/mgc0.c:2644 +0xcf
runtime.goexit()
    /home/chris/apps/go/src/pkg/runtime/proc.c:1445

goroutine 20 [syscall]:
os/signal.loop()
    /home/chris/apps/go/src/pkg/os/signal/signal_unix.go:21 +0x1e
created by os/signal.init·1
    /home/chris/apps/go/src/pkg/os/signal/signal_unix.go:27 +0x32

goroutine 21 [chan receive]:
github.com/chrislusf/weed-fs/go/glog.(*loggingT).flushDaemon(0xd84140)
    /home/chris/dev/workspace/home/gopath/src/github.com/chrislusf/weed-fs/go/glog/glog.go:833 +0x75
created by github.com/chrislusf/weed-fs/go/glog.init·1
    /home/chris/dev/workspace/home/gopath/src/github.com/chrislusf/weed-fs/go/glog/glog.go:402 +0x2b2

goroutine 17 [syscall]:
runtime.goexit()
    /home/chris/apps/go/src/pkg/runtime/proc.c:1445

goroutine 23 [select]:
github.com/chrislusf/weed-fs/go/stats.(*ServerStats).Start(0xc208049140)
    /home/chris/dev/workspace/home/gopath/src/github.com/chrislusf/weed-fs/go/stats/stats.go:92 +0x385
created by github.com/chrislusf/weed-fs/go/weed/weed_server.init·1
    /home/chris/dev/workspace/home/gopath/src/github.com/chrislusf/weed-fs/go/weed/weed_server/common.go:24 +0x43

```

## Issue 31 (#141): weed-fs on Linode

Hi, Im having issues with the master server system on my server in Linode. I have posted a detailed question on StackOverflow(http://stackoverflow.com/questions/30185696/weed-fs-in-linode-running-master).
Perhaps, somebody can help me out and look into it.

## Repository Information
- **Repository**: seaweedfs/seaweedfs
- **Pull Request**: #6715
- **Base Commit**: `df6f23068101f6fe817f93a128c688069ea279e5`

## Related Issues
- https://github.com/seaweedfs/seaweedfs/issues/6715
- https://github.com/seaweedfs/seaweedfs/issues/6713
- https://github.com/seaweedfs/seaweedfs/issues/6724
- https://github.com/seaweedfs/seaweedfs/issues/6703
- https://github.com/seaweedfs/seaweedfs/issues/6526
- https://github.com/seaweedfs/seaweedfs/issues/6732
- https://github.com/seaweedfs/seaweedfs/issues/6737
- https://github.com/seaweedfs/seaweedfs/issues/6738
- https://github.com/seaweedfs/seaweedfs/issues/6733
- https://github.com/seaweedfs/seaweedfs/issues/3113
- https://github.com/seaweedfs/seaweedfs/issues/3115
- https://github.com/seaweedfs/seaweedfs/issues/3084
- https://github.com/seaweedfs/seaweedfs/issues/3086
- https://github.com/seaweedfs/seaweedfs/issues/3087
- https://github.com/seaweedfs/seaweedfs/issues/3089
- https://github.com/seaweedfs/seaweedfs/issues/3097
- https://github.com/seaweedfs/seaweedfs/issues/3099
- https://github.com/seaweedfs/seaweedfs/issues/3107
- https://github.com/seaweedfs/seaweedfs/issues/1343
- https://github.com/seaweedfs/seaweedfs/issues/1366
- https://github.com/seaweedfs/seaweedfs/issues/1361
- https://github.com/seaweedfs/seaweedfs/issues/1353
- https://github.com/seaweedfs/seaweedfs/issues/6746
- https://github.com/seaweedfs/seaweedfs/issues/167
- https://github.com/seaweedfs/seaweedfs/issues/161
- https://github.com/seaweedfs/seaweedfs/issues/160
- https://github.com/seaweedfs/seaweedfs/issues/158
- https://github.com/seaweedfs/seaweedfs/issues/157
- https://github.com/seaweedfs/seaweedfs/issues/156
- https://github.com/seaweedfs/seaweedfs/issues/146
- https://github.com/seaweedfs/seaweedfs/issues/141
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

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit df6f23068101f6fe817f93a128c688069ea279e5.
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