?   	github.com/seaweedfs/seaweedfs/docker/admin_integration	[no test files]
?   	github.com/seaweedfs/seaweedfs/other/mq_client_example/agent_pub_record	[no test files]
?   	github.com/seaweedfs/seaweedfs/other/mq_client_example/agent_sub_record	[no test files]
?   	github.com/seaweedfs/seaweedfs/other/mq_client_example/example	[no test files]
?   	github.com/seaweedfs/seaweedfs/telemetry/proto	[no test files]
?   	github.com/seaweedfs/seaweedfs/telemetry/test	[no test files]
# github.com/seaweedfs/seaweedfs/test/postgres
test/postgres/producer.go:66:6: main redeclared in this block
	test/postgres/client.go:14:6: other declaration of main
test/postgres/producer.go:325:11: no new variables on left side of :=
test/postgres/producer.go:529:6: getEnv redeclared in this block
	test/postgres/client.go:501:6: other declaration of getEnv
=== RUN   TestECEncodingVolumeLocationTimingBug
    ec_integration_test.go:41: 
        	Error Trace:	/home/seaweedfs/test/erasure_coding/ec_integration_test.go:41
        	Error:      	Received unexpected error:
        	            	weed binary not found
        	Test:       	TestECEncodingVolumeLocationTimingBug
--- FAIL: TestECEncodingVolumeLocationTimingBug (0.00s)
=== RUN   TestECEncodingMasterTimingRaceCondition
    ec_integration_test.go:244: 
        	Error Trace:	/home/seaweedfs/test/erasure_coding/ec_integration_test.go:244
        	Error:      	Received unexpected error:
        	            	weed binary not found
        	Test:       	TestECEncodingMasterTimingRaceCondition
--- FAIL: TestECEncodingMasterTimingRaceCondition (0.00s)
=== RUN   TestECEncodingRegressionPrevention
=== RUN   TestECEncodingRegressionPrevention/function_signature_regression
    ec_integration_test.go:628: Function signature regression test passed
=== RUN   TestECEncodingRegressionPrevention/timing_pattern_regression
    ec_integration_test.go:645: Timing pattern regression test passed
--- PASS: TestECEncodingRegressionPrevention (0.00s)
    --- PASS: TestECEncodingRegressionPrevention/function_signature_regression (0.00s)
    --- PASS: TestECEncodingRegressionPrevention/timing_pattern_regression (0.00s)
FAIL
FAIL	github.com/seaweedfs/seaweedfs/test/erasure_coding	0.011s
=== RUN   TestOpenBaoKMSProvider_Integration
    openbao_integration_test.go:97: OpenBao not running and bao binary not found. Run 'cd test/kms && make dev-openbao' first
--- SKIP: TestOpenBaoKMSProvider_Integration (0.00s)
=== RUN   TestOpenBaoKMSProvider_ErrorHandling
    openbao_integration_test.go:97: OpenBao not running and bao binary not found. Run 'cd test/kms && make dev-openbao' first
--- SKIP: TestOpenBaoKMSProvider_ErrorHandling (0.00s)
=== RUN   TestKMSManager_WithOpenBao
    openbao_integration_test.go:97: OpenBao not running and bao binary not found. Run 'cd test/kms && make dev-openbao' first
--- SKIP: TestKMSManager_WithOpenBao (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/test/kms	0.006s
?   	github.com/seaweedfs/seaweedfs/test/mq/consumer	[no test files]
?   	github.com/seaweedfs/seaweedfs/test/mq/producer	[no test files]
FAIL	github.com/seaweedfs/seaweedfs/test/postgres [build failed]
=== RUN   TestCreateBucket
RequestError: send request failed
caused by: Put "http://localhost:8333/theBucket": dial tcp [::1]:8333: connect: connection refused
--- PASS: TestCreateBucket (0.27s)
=== RUN   TestPutObject
RequestError: send request failed
caused by: Put "http://localhost:8333/theBucket/exampleobject": dial tcp [::1]:8333: connect: connection refused
--- PASS: TestPutObject (0.27s)
=== RUN   TestListBucket
Unable to list buckets, RequestError: send request failed
caused by: Get "http://localhost:8333/": dial tcp [::1]:8333: connect: connection refused
FAIL	github.com/seaweedfs/seaweedfs/test/s3/basic	0.889s
=== RUN   TestBasicPutGet
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611042230220217-57505: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611042230220217-57505?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611042230220217-57505: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611042230220217-57505": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:125: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:125
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:262
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611042230220217-57505": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestBasicPutGet
--- FAIL: TestBasicPutGet (9.47s)
=== RUN   TestBasicBucketOperations
=== RUN   TestBasicBucketOperations/Create_bucket
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611051695410899-33647: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611051695410899-33647?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611051695410899-33647: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611051695410899-33647": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:125: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:125
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:339
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611051695410899-33647": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestBasicBucketOperations/Create_bucket
=== RUN   TestBasicBucketOperations/List_objects
    s3_copying_test.go:196: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:196
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:360
        	Error:      	Received unexpected error:
        	            	operation error S3: PutObject, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611051695410899-33647/test1.txt?x-id=PutObject": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestBasicBucketOperations/List_objects
=== RUN   TestBasicBucketOperations/Delete_bucket
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611051695410899-33647: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611051695410899-33647?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611051695410899-33647: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611051695410899-33647": dial tcp 127.0.0.1:8000: connect: connection refused
--- FAIL: TestBasicBucketOperations (17.68s)
    --- FAIL: TestBasicBucketOperations/Create_bucket (4.69s)
    --- FAIL: TestBasicBucketOperations/List_objects (1.47s)
    --- PASS: TestBasicBucketOperations/Delete_bucket (11.52s)
=== RUN   TestBasicLargeObject
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611069375491860-83044: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611069375491860-83044?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611069375491860-83044: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611069375491860-83044": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:125: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:125
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:401
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611069375491860-83044": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestBasicLargeObject
--- FAIL: TestBasicLargeObject (8.37s)
=== RUN   TestObjectCopySameBucket
    s3_copying_test.go:84: Waiting for S3 service to be ready... (error: operation error S3: ListBuckets, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/?x-id=ListBuckets": dial tcp 127.0.0.1:8000: connect: connection refused)
    s3_copying_test.go:84: Waiting for S3 service to be ready... (error: operation error S3: ListBuckets, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/?x-id=ListBuckets": dial tcp 127.0.0.1:8000: connect: connection refused)
    s3_copying_test.go:84: Waiting for S3 service to be ready... (error: operation error S3: ListBuckets, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/?x-id=ListBuckets": dial tcp 127.0.0.1:8000: connect: connection refused)
    s3_copying_test.go:84: Waiting for S3 service to be ready... (error: operation error S3: ListBuckets, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/?x-id=ListBuckets": dial tcp 127.0.0.1:8000: connect: connection refused)
    s3_copying_test.go:84: Waiting for S3 service to be ready... (error: operation error S3: ListBuckets, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/?x-id=ListBuckets": dial tcp 127.0.0.1:8000: connect: connection refused)
    s3_copying_test.go:84: Waiting for S3 service to be ready... (error: operation error S3: ListBuckets, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/?x-id=ListBuckets": dial tcp 127.0.0.1:8000: connect: connection refused)
    s3_copying_test.go:84: Waiting for S3 service to be ready... (error: operation error S3: ListBuckets, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/?x-id=ListBuckets": dial tcp 127.0.0.1:8000: connect: connection refused)
    s3_copying_test.go:84: Waiting for S3 service to be ready... (error: operation error S3: ListBuckets, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/?x-id=ListBuckets": dial tcp 127.0.0.1:8000: connect: connection refused)
    s3_copying_test.go:87: S3 service not ready after 30s
--- FAIL: TestObjectCopySameBucket (31.10s)
=== RUN   TestObjectCopyDiffBucket
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611108850665655-25714: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611108850665655-25714?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611108850665655-25714: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611108850665655-25714": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:125: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:125
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:472
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611108850665655-25714": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestObjectCopyDiffBucket
--- FAIL: TestObjectCopyDiffBucket (8.33s)
=== RUN   TestObjectCopyCannedAcl
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611117185115866-25518: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611117185115866-25518?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611117185115866-25518: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611117185115866-25518": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:125: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:125
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:504
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611117185115866-25518": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestObjectCopyCannedAcl
--- FAIL: TestObjectCopyCannedAcl (7.55s)
=== RUN   TestObjectCopyRetainingMetadata
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611124731967412-98777: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611124731967412-98777?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611124731967412-98777: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611124731967412-98777": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:125: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:125
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:555
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611124731967412-98777": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestObjectCopyRetainingMetadata
--- FAIL: TestObjectCopyRetainingMetadata (8.51s)
=== RUN   TestMultipartCopySmall
    s3_copying_test.go:102: Warning: failed to list buckets for cleanup: operation error S3: ListBuckets, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/?x-id=ListBuckets": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611134633006554-71833: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611134633006554-71833?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611134633006554-71833: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611134633006554-71833": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:125: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:125
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:603
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611134633006554-71833": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestMultipartCopySmall
--- FAIL: TestMultipartCopySmall (15.76s)
=== RUN   TestMultipartCopyWithoutRange
    s3_copying_test.go:102: Warning: failed to list buckets for cleanup: operation error S3: ListBuckets, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/?x-id=ListBuckets": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611151945381162-98804: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611151945381162-98804?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611151945381162-98804: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611151945381162-98804": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:125: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:125
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:669
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611151945381162-98804": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestMultipartCopyWithoutRange
--- FAIL: TestMultipartCopyWithoutRange (10.39s)
=== RUN   TestMultipartCopySpecialNames
    s3_copying_test.go:102: Warning: failed to list buckets for cleanup: operation error S3: ListBuckets, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/?x-id=ListBuckets": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611161482093129-57452: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611161482093129-57452?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611161482093129-57452: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611161482093129-57452": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:125: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:125
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:734
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611161482093129-57452": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestMultipartCopySpecialNames
--- FAIL: TestMultipartCopySpecialNames (4.91s)
=== RUN   TestMultipartCopyMultipleSizes
    s3_copying_test.go:102: Warning: failed to list buckets for cleanup: operation error S3: ListBuckets, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/?x-id=ListBuckets": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611166987269227-25960: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611166987269227-25960?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611166987269227-25960: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611166987269227-25960": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:125: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:125
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:806
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611166987269227-25960": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestMultipartCopyMultipleSizes
--- FAIL: TestMultipartCopyMultipleSizes (10.70s)
=== RUN   TestCopyObjectIfMatchGood
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611175000558999-36850: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611175000558999-36850?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611175000558999-36850: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611175000558999-36850": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:125: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:125
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:903
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611175000558999-36850": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestCopyObjectIfMatchGood
--- FAIL: TestCopyObjectIfMatchGood (11.61s)
=== RUN   TestCopyObjectIfNoneMatchFailed
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611186612296588-45702: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611186612296588-45702?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611186612296588-45702: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611186612296588-45702": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:125: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:125
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:934
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611186612296588-45702": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestCopyObjectIfNoneMatchFailed
--- FAIL: TestCopyObjectIfNoneMatchFailed (12.00s)
=== RUN   TestCopyObjectIfMatchFailed
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611198608894450-38805: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611198608894450-38805?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611198608894450-38805: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611198608894450-38805": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:125: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:125
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:965
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611198608894450-38805": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestCopyObjectIfMatchFailed
--- FAIL: TestCopyObjectIfMatchFailed (10.22s)
=== RUN   TestCopyObjectIfNoneMatchGood
    s3_copying_test.go:157: Warning: failed to list objects in bucket test-copying-1781611208824032813-57904: operation error S3: ListObjectsV2, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8000/test-copying-1781611208824032813-57904?list-type=2": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:140: Warning: failed to delete bucket test-copying-1781611208824032813-57904: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://127.0.0.1:8000/test-copying-1781611208824032813-57904": dial tcp 127.0.0.1:8000: connect: connection refused
    s3_copying_test.go:125: 
        	Error Trace:	/home/seaweedfs/test/s3/copying/s3_copying_test.go:125
        	            				/home/seaweedfs/test/s3/copying/s3_copying_test.go:994
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8000/test-copying-1781611208824032813-57904": dial tcp 127.0.0.1:8000: connect: connection refused
        	Test:       	TestCopyObjectIfNoneMatchGood
--- FAIL: TestCopyObjectIfNoneMatchGood (13.30s)
FAIL
FAIL	github.com/seaweedfs/seaweedfs/test/s3/copying	179.899s
=== RUN   TestCORSPreflightRequest
    s3_cors_test.go:79: 
        	Error Trace:	/home/seaweedfs/test/s3/cors/s3_cors_test.go:79
        	            				/home/seaweedfs/test/s3/cors/s3_cors_http_test.go:22
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-cors-1781611042230367386": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestCORSPreflightRequest
--- FAIL: TestCORSPreflightRequest (5.13s)
=== RUN   TestCORSActualRequest
    s3_cors_test.go:79: 
        	Error Trace:	/home/seaweedfs/test/s3/cors/s3_cors_test.go:79
        	            				/home/seaweedfs/test/s3/cors/s3_cors_http_test.go:100
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-cors-1781611047356839537": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestCORSActualRequest
--- FAIL: TestCORSActualRequest (2.97s)
=== RUN   TestCORSOriginMatching
    s3_cors_test.go:79: 
        	Error Trace:	/home/seaweedfs/test/s3/cors/s3_cors_test.go:79
        	            				/home/seaweedfs/test/s3/cors/s3_cors_http_test.go:209
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-cors-1781611050324193202": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestCORSOriginMatching
--- FAIL: TestCORSOriginMatching (1.83s)
=== RUN   TestCORSHeaderMatching
    s3_cors_test.go:79: 
        	Error Trace:	/home/seaweedfs/test/s3/cors/s3_cors_test.go:79
        	            				/home/seaweedfs/test/s3/cors/s3_cors_http_test.go:300
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-cors-1781611052153779698": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestCORSHeaderMatching
--- FAIL: TestCORSHeaderMatching (2.81s)
=== RUN   TestCORSWithoutConfiguration
    s3_cors_test.go:79: 
        	Error Trace:	/home/seaweedfs/test/s3/cors/s3_cors_test.go:79
        	            				/home/seaweedfs/test/s3/cors/s3_cors_http_test.go:404
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-cors-1781611054959229293": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestCORSWithoutConfiguration
--- FAIL: TestCORSWithoutConfiguration (3.12s)
=== RUN   TestCORSMethodMatching
    s3_cors_test.go:79: 
        	Error Trace:	/home/seaweedfs/test/s3/cors/s3_cors_test.go:79
        	            				/home/seaweedfs/test/s3/cors/s3_cors_http_test.go:429
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-cors-1781611058078034077": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestCORSMethodMatching
--- FAIL: TestCORSMethodMatching (1.14s)
=== RUN   TestCORSMultipleRulesMatching
    s3_cors_test.go:79: 
        	Error Trace:	/home/seaweedfs/test/s3/cors/s3_cors_test.go:79
        	            				/home/seaweedfs/test/s3/cors/s3_cors_http_test.go:496
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-cors-1781611059219013764": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestCORSMultipleRulesMatching
--- FAIL: TestCORSMultipleRulesMatching (4.96s)
=== RUN   TestServiceLevelCORS
=== RUN   TestServiceLevelCORS/endpoint__
=== NAME  TestServiceLevelCORS
    s3_cors_http_test.go:585: 
        	Error Trace:	/home/seaweedfs/test/s3/cors/s3_cors_http_test.go:585
        	Error:      	Received unexpected error:
        	            	Options "http://localhost:8333/": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestServiceLevelCORS
--- FAIL: TestServiceLevelCORS (0.00s)
    --- FAIL: TestServiceLevelCORS/endpoint__ (0.00s)
panic: runtime error: invalid memory address or nil pointer dereference [recovered, repanicked]
[signal SIGSEGV: segmentation violation code=0x1 addr=0x40 pc=0x3e84ec]

goroutine 78 [running]:
testing.tRunner.func1.2({0x4a6b60, 0x99bbc0})
	/usr/local/go/src/testing/testing.go:1974 +0x1a0
testing.tRunner.func1()
	/usr/local/go/src/testing/testing.go:1977 +0x318
panic({0x4a6b60?, 0x99bbc0?})
	/usr/local/go/src/runtime/panic.go:860 +0x12c
github.com/seaweedfs/seaweedfs/test/s3/cors.TestServiceLevelCORS.func1(0x1a4d03bf5d48?)
	/home/seaweedfs/test/s3/cors/s3_cors_http_test.go:586 +0x20c
testing.tRunner(0x1a4d03bf5d48, 0x1a4d03e1ee80)
	/usr/local/go/src/testing/testing.go:2036 +0xc4
created by testing.(*T).Run in goroutine 77
	/usr/local/go/src/testing/testing.go:2101 +0x3a8
FAIL	github.com/seaweedfs/seaweedfs/test/s3/cors	21.950s
?   	github.com/seaweedfs/seaweedfs/test/s3/multipart	[no test files]
=== RUN   TestReproduceObjectLockIssue
    object_lock_reproduce_test.go:19: === Reproducing Object Lock Header Processing Issue ===
    object_lock_reproduce_test.go:20: Bucket name: object-lock-test-1781611042230469405
    object_lock_reproduce_test.go:23: 
        1. Creating bucket with ObjectLockEnabledForBucket=true
    object_lock_reproduce_test.go:24:    This should send x-amz-bucket-object-lock-enabled: true header
    object_lock_reproduce_test.go:32: Bucket creation failed: operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/object-lock-test-1781611042230469405": dial tcp [::1]:8333: connect: connection refused
--- FAIL: TestReproduceObjectLockIssue (3.63s)
=== RUN   TestNormalBucketCreationStillWorks
    object_lock_reproduce_test.go:96: === Testing Normal Bucket Creation ===
    object_lock_reproduce_test.go:102: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/object_lock_reproduce_test.go:102
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/normal-test-1781611045856410712": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestNormalBucketCreationStillWorks
--- FAIL: TestNormalBucketCreationStillWorks (4.29s)
=== RUN   TestObjectLockValidation
    object_lock_validation_test.go:22: === Validating S3 Object Lock Functionality ===
    object_lock_validation_test.go:23: Bucket: object-lock-test-1781611050146418254
    object_lock_validation_test.go:26: 
        1. Creating bucket with x-amz-bucket-object-lock-enabled: true
    object_lock_validation_test.go:31: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/object_lock_validation_test.go:31
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/object-lock-test-1781611050146418254": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestObjectLockValidation
        	Messages:   	Bucket creation should succeed
--- FAIL: TestObjectLockValidation (3.63s)
=== RUN   TestBucketCreationWithObjectLockEnabled
=== RUN   TestBucketCreationWithObjectLockEnabled/CreateBucketWithObjectLockHeader
    s3_bucket_object_lock_test.go:37: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_bucket_object_lock_test.go:37
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611053772885712": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestBucketCreationWithObjectLockEnabled/CreateBucketWithObjectLockHeader
=== RUN   TestBucketCreationWithObjectLockEnabled/VerifyObjectLockAutoEnabled
    s3_bucket_object_lock_test.go:55: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_bucket_object_lock_test.go:55
        	Error:      	Received unexpected error:
        	            	operation error S3: GetObjectLockConfiguration, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://localhost:8333/test-retention-1781611053772885712?object-lock=": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestBucketCreationWithObjectLockEnabled/VerifyObjectLockAutoEnabled
        	Messages:   	GetObjectLockConfiguration should not fail if Object Lock is enabled
=== RUN   TestBucketCreationWithObjectLockEnabled/VerifyVersioningAutoEnabled
    s3_bucket_object_lock_test.go:67: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_bucket_object_lock_test.go:67
        	Error:      	Received unexpected error:
        	            	operation error S3: GetBucketVersioning, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://localhost:8333/test-retention-1781611053772885712?versioning=": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestBucketCreationWithObjectLockEnabled/VerifyVersioningAutoEnabled
=== NAME  TestBucketCreationWithObjectLockEnabled
    s3_retention_test.go:85: Warning: failed to delete all object versions in first attempt: operation error S3: ListObjectVersions, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://localhost:8333/test-retention-1781611053772885712?versions=": dial tcp [::1]:8333: connect: connection refused
    s3_retention_test.go:90: Warning: failed to delete all object versions in second attempt: operation error S3: ListObjectVersions, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://localhost:8333/test-retention-1781611053772885712?versions=": dial tcp [::1]:8333: connect: connection refused
    s3_retention_test.go:107: Warning: failed to delete bucket test-retention-1781611053772885712 (attempt 1): operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://localhost:8333/test-retention-1781611053772885712": dial tcp [::1]:8333: connect: connection refused
    s3_retention_test.go:107: Warning: failed to delete bucket test-retention-1781611053772885712 (attempt 2): operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://localhost:8333/test-retention-1781611053772885712": dial tcp [::1]:8333: connect: connection refused
    s3_retention_test.go:107: Warning: failed to delete bucket test-retention-1781611053772885712 (attempt 3): operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://localhost:8333/test-retention-1781611053772885712": dial tcp [::1]:8333: connect: connection refused
--- FAIL: TestBucketCreationWithObjectLockEnabled (28.49s)
    --- FAIL: TestBucketCreationWithObjectLockEnabled/CreateBucketWithObjectLockHeader (3.67s)
    --- FAIL: TestBucketCreationWithObjectLockEnabled/VerifyObjectLockAutoEnabled (3.83s)
    --- FAIL: TestBucketCreationWithObjectLockEnabled/VerifyVersioningAutoEnabled (4.82s)
=== RUN   TestBucketCreationWithoutObjectLockHeader
    s3_bucket_object_lock_test.go:85: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_bucket_object_lock_test.go:85
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611082265607886": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestBucketCreationWithoutObjectLockHeader
    s3_retention_test.go:85: Warning: failed to delete all object versions in first attempt: operation error S3: ListObjectVersions, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://localhost:8333/test-retention-1781611082265607886?versions=": dial tcp [::1]:8333: connect: connection refused
    s3_retention_test.go:90: Warning: failed to delete all object versions in second attempt: operation error S3: ListObjectVersions, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://localhost:8333/test-retention-1781611082265607886?versions=": dial tcp [::1]:8333: connect: connection refused
    s3_retention_test.go:107: Warning: failed to delete bucket test-retention-1781611082265607886 (attempt 1): operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://localhost:8333/test-retention-1781611082265607886": dial tcp [::1]:8333: connect: connection refused
    s3_retention_test.go:107: Warning: failed to delete bucket test-retention-1781611082265607886 (attempt 2): operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://localhost:8333/test-retention-1781611082265607886": dial tcp [::1]:8333: connect: connection refused
    s3_retention_test.go:107: Warning: failed to delete bucket test-retention-1781611082265607886 (attempt 3): operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://localhost:8333/test-retention-1781611082265607886": dial tcp [::1]:8333: connect: connection refused
--- FAIL: TestBucketCreationWithoutObjectLockHeader (23.47s)
=== RUN   TestS3ObjectLockWorkflow
=== RUN   TestS3ObjectLockWorkflow/ClientCreatesBucket
    s3_bucket_object_lock_test.go:127: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_bucket_object_lock_test.go:127
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611105737131471": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestS3ObjectLockWorkflow/ClientCreatesBucket
=== RUN   TestS3ObjectLockWorkflow/ClientChecksObjectLockSupport
    s3_bucket_object_lock_test.go:136: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_bucket_object_lock_test.go:136
        	Error:      	Received unexpected error:
        	            	operation error S3: GetObjectLockConfiguration, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://localhost:8333/test-retention-1781611105737131471?object-lock=": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestS3ObjectLockWorkflow/ClientChecksObjectLockSupport
        	Messages:   	Object Lock configuration check should succeed
=== RUN   TestS3ObjectLockWorkflow/ClientConfiguresRetention
    s3_bucket_object_lock_test.go:150: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_bucket_object_lock_test.go:150
        	Error:      	Received unexpected error:
        	            	operation error S3: GetBucketVersioning, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://localhost:8333/test-retention-1781611105737131471?versioning=": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestS3ObjectLockWorkflow/ClientConfiguresRetention
=== NAME  TestS3ObjectLockWorkflow
    s3_retention_test.go:85: Warning: failed to delete all object versions in first attempt: operation error S3: ListObjectVersions, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://localhost:8333/test-retention-1781611105737131471?versions=": dial tcp [::1]:8333: connect: connection refused
    s3_retention_test.go:90: Warning: failed to delete all object versions in second attempt: operation error S3: ListObjectVersions, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://localhost:8333/test-retention-1781611105737131471?versions=": dial tcp [::1]:8333: connect: connection refused
    s3_retention_test.go:107: Warning: failed to delete bucket test-retention-1781611105737131471 (attempt 1): operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://localhost:8333/test-retention-1781611105737131471": dial tcp [::1]:8333: connect: connection refused
    s3_retention_test.go:107: Warning: failed to delete bucket test-retention-1781611105737131471 (attempt 2): operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://localhost:8333/test-retention-1781611105737131471": dial tcp [::1]:8333: connect: connection refused
    s3_retention_test.go:107: Warning: failed to delete bucket test-retention-1781611105737131471 (attempt 3): operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://localhost:8333/test-retention-1781611105737131471": dial tcp [::1]:8333: connect: connection refused
--- FAIL: TestS3ObjectLockWorkflow (20.67s)
    --- FAIL: TestS3ObjectLockWorkflow/ClientCreatesBucket (2.23s)
    --- FAIL: TestS3ObjectLockWorkflow/ClientChecksObjectLockSupport (0.92s)
    --- FAIL: TestS3ObjectLockWorkflow/ClientConfiguresRetention (1.78s)
=== RUN   TestPutObjectWithLockHeaders
    s3_object_lock_headers_test.go:303: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_object_lock_headers_test.go:303
        	            				/home/seaweedfs/test/s3/retention/s3_object_lock_headers_test.go:23
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611126404444463": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestPutObjectWithLockHeaders
--- FAIL: TestPutObjectWithLockHeaders (3.34s)
=== RUN   TestGetObjectWithLockHeaders
    s3_object_lock_headers_test.go:303: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_object_lock_headers_test.go:303
        	            				/home/seaweedfs/test/s3/retention/s3_object_lock_headers_test.go:113
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611129748563051": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestGetObjectWithLockHeaders
--- FAIL: TestGetObjectWithLockHeaders (1.00s)
=== RUN   TestVersionedObjectLockHeaders
    s3_object_lock_headers_test.go:303: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_object_lock_headers_test.go:303
        	            				/home/seaweedfs/test/s3/retention/s3_object_lock_headers_test.go:145
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611130749164445": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestVersionedObjectLockHeaders
--- FAIL: TestVersionedObjectLockHeaders (4.03s)
=== RUN   TestObjectLockHeadersErrorCases
    s3_object_lock_headers_test.go:303: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_object_lock_headers_test.go:303
        	            				/home/seaweedfs/test/s3/retention/s3_object_lock_headers_test.go:190
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611134781909971": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestObjectLockHeadersErrorCases
--- FAIL: TestObjectLockHeadersErrorCases (2.88s)
=== RUN   TestObjectLockHeadersNonVersionedBucket
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_object_lock_headers_test.go:239
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611137663640710": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestObjectLockHeadersNonVersionedBucket
--- FAIL: TestObjectLockHeadersNonVersionedBucket (1.13s)
=== RUN   TestBasicRetentionWorkflow
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_retention_test.go:236
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611138792265998": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestBasicRetentionWorkflow
--- FAIL: TestBasicRetentionWorkflow (3.17s)
=== RUN   TestRetentionModeCompliance
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_retention_test.go:291
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611141964039527": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestRetentionModeCompliance
--- FAIL: TestRetentionModeCompliance (3.14s)
=== RUN   TestLegalHoldWorkflow
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_retention_test.go:352
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611145105713384": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestLegalHoldWorkflow
--- FAIL: TestLegalHoldWorkflow (4.22s)
=== RUN   TestObjectLockConfiguration
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_retention_test.go:431
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/object-lock-config-1781611149323540262-9323": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestObjectLockConfiguration
--- FAIL: TestObjectLockConfiguration (4.13s)
=== RUN   TestRetentionWithVersions
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_retention_test.go:472
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611153458312760": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestRetentionWithVersions
--- FAIL: TestRetentionWithVersions (1.65s)
=== RUN   TestRetentionAndLegalHoldCombination
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_retention_test.go:549
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611155103688871": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestRetentionAndLegalHoldCombination
--- FAIL: TestRetentionAndLegalHoldCombination (4.42s)
=== RUN   TestExpiredRetention
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_retention_test.go:626
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611159525673562": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestExpiredRetention
--- FAIL: TestExpiredRetention (1.34s)
=== RUN   TestRetentionErrorCases
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_retention_test.go:672
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611160870659283": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestRetentionErrorCases
--- FAIL: TestRetentionErrorCases (2.96s)
=== RUN   TestWORMRetentionIntegration
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_worm_integration_test.go:23
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611163832652821": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestWORMRetentionIntegration
--- FAIL: TestWORMRetentionIntegration (2.20s)
=== RUN   TestWORMLegacyCompatibility
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_worm_integration_test.go:76
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611166036543626": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestWORMLegacyCompatibility
--- FAIL: TestWORMLegacyCompatibility (1.53s)
=== RUN   TestRetentionOverwriteProtection
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_worm_integration_test.go:112
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611167569815896": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestRetentionOverwriteProtection
--- FAIL: TestRetentionOverwriteProtection (1.51s)
=== RUN   TestRetentionBulkOperations
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_worm_integration_test.go:164
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611169081965625": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestRetentionBulkOperations
--- FAIL: TestRetentionBulkOperations (1.66s)
=== RUN   TestRetentionWithMultipartUpload
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_worm_integration_test.go:240
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611170739561548": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestRetentionWithMultipartUpload
--- FAIL: TestRetentionWithMultipartUpload (4.11s)
=== RUN   TestRetentionExtendedAttributes
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_worm_integration_test.go:350
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611174844942757": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestRetentionExtendedAttributes
--- FAIL: TestRetentionExtendedAttributes (4.40s)
=== RUN   TestRetentionBucketDefaults
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_worm_integration_test.go:423
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/bucket-defaults-1781611179248114028-9248": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestRetentionBucketDefaults
--- FAIL: TestRetentionBucketDefaults (0.67s)
=== RUN   TestRetentionConcurrentOperations
    s3_retention_test.go:77: 
        	Error Trace:	/home/seaweedfs/test/s3/retention/s3_retention_test.go:77
        	            				/home/seaweedfs/test/s3/retention/s3_worm_integration_test.go:473
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-retention-1781611179915350591": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestRetentionConcurrentOperations
--- FAIL: TestRetentionConcurrentOperations (2.17s)
FAIL
FAIL	github.com/seaweedfs/seaweedfs/test/s3/retention	139.864s
?   	github.com/seaweedfs/seaweedfs/test/s3/s3client	[no test files]
=== RUN   TestSSECIntegrationBasic
    s3_sse_integration_test.go:216: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:216
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-ssec-basic-1781611042230082640": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSECIntegrationBasic
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSECIntegrationBasic (4.66s)
=== RUN   TestSSECIntegrationVariousDataSizes
    s3_sse_integration_test.go:290: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:290
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-ssec-sizes-1781611046890347207": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSECIntegrationVariousDataSizes
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSECIntegrationVariousDataSizes (2.55s)
=== RUN   TestSSEKMSIntegrationBasic
    s3_sse_integration_test.go:341: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:341
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-ssekms-basic-1781611049442103305": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSEKMSIntegrationBasic
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSEKMSIntegrationBasic (4.00s)
=== RUN   TestSSEKMSIntegrationVariousDataSizes
    s3_sse_integration_test.go:401: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:401
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-ssekms-sizes-1781611053441258146": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSEKMSIntegrationVariousDataSizes
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSEKMSIntegrationVariousDataSizes (2.93s)
=== RUN   TestSSECObjectCopyIntegration
    s3_sse_integration_test.go:448: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:448
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-ssec-copy-1781611056375546495": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSECObjectCopyIntegration
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSECObjectCopyIntegration (3.41s)
=== RUN   TestSSEKMSObjectCopyIntegration
    s3_sse_integration_test.go:541: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:541
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-ssekms-copy-1781611059788825014": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSEKMSObjectCopyIntegration
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSEKMSObjectCopyIntegration (1.93s)
=== RUN   TestSSEMultipartUploadIntegration
    s3_sse_integration_test.go:598: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:598
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-sse-multipart-1781611061716966146": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSEMultipartUploadIntegration
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSEMultipartUploadIntegration (3.42s)
=== RUN   TestDebugSSEMultipart
    s3_sse_integration_test.go:785: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:785
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-debug-multipart-1781611065138396419": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestDebugSSEMultipart
        	Messages:   	Failed to create test bucket
--- FAIL: TestDebugSSEMultipart (2.70s)
=== RUN   TestSSEErrorConditions
    s3_sse_integration_test.go:914: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:914
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-sse-errors-1781611067835525877": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSEErrorConditions
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSEErrorConditions (3.73s)
=== RUN   TestSSECRangeRequests
    s3_sse_integration_test.go:997: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:997
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-ssec-range-1781611071569474920": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSECRangeRequests
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSECRangeRequests (1.21s)
=== RUN   TestSSEKMSRangeRequests
    s3_sse_integration_test.go:1073: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:1073
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-ssekms-range-1781611072776899597": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSEKMSRangeRequests
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSEKMSRangeRequests (5.12s)
=== RUN   TestSSES3IntegrationBasic
    s3_sse_integration_test.go:1187: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:1187
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/sse-s3-basic1781611077900366536": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSES3IntegrationBasic
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSES3IntegrationBasic (1.96s)
=== RUN   TestSSES3IntegrationVariousDataSizes
    s3_sse_integration_test.go:1243: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:1243
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/sse-s3-sizes1781611079858907171": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSES3IntegrationVariousDataSizes
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSES3IntegrationVariousDataSizes (4.35s)
=== RUN   TestSSES3WithUserMetadata
    s3_sse_integration_test.go:1301: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:1301
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/sse-s3-metadata1781611084209461348": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSES3WithUserMetadata
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSES3WithUserMetadata (1.62s)
=== RUN   TestSSES3RangeRequests
    s3_sse_integration_test.go:1371: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:1371
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/sse-s3-range1781611085826590298": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSES3RangeRequests
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSES3RangeRequests (3.64s)
=== RUN   TestSSES3BucketDefaultEncryption
    s3_sse_integration_test.go:1437: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:1437
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/sse-s3-default1781611089468480112": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSES3BucketDefaultEncryption
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSES3BucketDefaultEncryption (2.81s)
=== RUN   TestSSES3MultipartUploads
    s3_sse_integration_test.go:1545: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:1545
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-sse-s3-multipart-1781611092273541993": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSES3MultipartUploads
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSES3MultipartUploads (3.20s)
=== RUN   TestCrossSSECopy
    s3_sse_integration_test.go:1691: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:1691
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-sse-cross-copy-1781611095474999723": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestCrossSSECopy
        	Messages:   	Failed to create test bucket
--- FAIL: TestCrossSSECopy (2.05s)
=== RUN   TestSSES3IVStorageRegression
    s3_sse_integration_test.go:1870: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:1870
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/sse-s3-iv-regression1781611097525388695": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSES3IVStorageRegression
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSES3IVStorageRegression (3.36s)
=== RUN   TestSSES3BucketDefaultIVStorageRegression
    s3_sse_integration_test.go:1954: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:1954
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/sse-s3-default-iv-regression1781611100887965449": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSES3BucketDefaultIVStorageRegression
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSES3BucketDefaultIVStorageRegression (2.69s)
=== RUN   TestSSES3EdgeCaseRegression
    s3_sse_integration_test.go:2056: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:2056
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/sse-s3-edge-regression1781611103577996396": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSES3EdgeCaseRegression
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSES3EdgeCaseRegression (4.90s)
=== RUN   TestSSES3ErrorHandlingRegression
    s3_sse_integration_test.go:2122: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:2122
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/sse-s3-error-regression1781611108475118333": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSES3ErrorHandlingRegression
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSES3ErrorHandlingRegression (3.15s)
=== RUN   TestSSES3FunctionalityCompletion
    s3_sse_integration_test.go:2178: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_integration_test.go:2178
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/sse-s3-completion1781611111624413337": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSES3FunctionalityCompletion
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSES3FunctionalityCompletion (1.71s)
=== RUN   TestSSEMultipartCopy
    s3_sse_multipart_copy_test.go:24: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/s3_sse_multipart_copy_test.go:24
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-sse-multipart-copy-1781611113330302237": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSEMultipartCopy
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSEMultipartCopy (0.81s)
=== RUN   TestSimpleSSECIntegration
    simple_sse_test.go:66: Bucket creation result: operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-debug-bucket": dial tcp 127.0.0.1:8333: connect: connection refused (might be OK if exists)
=== RUN   TestSimpleSSECIntegration/PUT_with_SSE-C
    simple_sse_test.go:81: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/simple_sse_test.go:81
        	Error:      	Received unexpected error:
        	            	operation error S3: PutObject, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-debug-bucket/test-object-prefixed-1781611114135394168?x-id=PutObject": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSimpleSSECIntegration/PUT_with_SSE-C
        	Messages:   	Failed to upload SSE-C object
=== RUN   TestSimpleSSECIntegration/GET_with_SSE-C
    simple_sse_test.go:93: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/simple_sse_test.go:93
        	Error:      	Received unexpected error:
        	            	operation error S3: GetObject, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Get "http://127.0.0.1:8333/test-debug-bucket/test-object-prefixed-1781611114135394168?x-id=GetObject": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSimpleSSECIntegration/GET_with_SSE-C
        	Messages:   	Failed to retrieve SSE-C object
=== RUN   TestSimpleSSECIntegration/GET_without_key_should_fail
    simple_sse_test.go:113: GET without key correctly failed
--- FAIL: TestSimpleSSECIntegration (9.93s)
    --- FAIL: TestSimpleSSECIntegration/PUT_with_SSE-C (3.62s)
    --- FAIL: TestSimpleSSECIntegration/GET_with_SSE-C (1.54s)
    --- PASS: TestSimpleSSECIntegration/GET_without_key_should_fail (2.70s)
=== RUN   TestSSEKMSOpenBaoIntegration
    sse_kms_openbao_test.go:28: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/sse_kms_openbao_test.go:28
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-sse-kms-openbao-1781611124066633832": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSEKMSOpenBaoIntegration
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSEKMSOpenBaoIntegration (2.81s)
=== RUN   TestSSEKMSOpenBaoAvailability
    sse_kms_openbao_test.go:151: 
        	Error Trace:	/home/seaweedfs/test/s3/sse/sse_kms_openbao_test.go:151
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://127.0.0.1:8333/test-sse-sse-kms-availability-1781611126876697981": dial tcp 127.0.0.1:8333: connect: connection refused
        	Test:       	TestSSEKMSOpenBaoAvailability
        	Messages:   	Failed to create test bucket
--- FAIL: TestSSEKMSOpenBaoAvailability (2.54s)
FAIL
FAIL	github.com/seaweedfs/seaweedfs/test/s3/sse	87.191s
=== RUN   TestBucketCreationBehavior
=== RUN   TestBucketCreationBehavior/Create_new_bucket_-_should_succeed
    s3_bucket_creation_test.go:120: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_bucket_creation_test.go:120
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-new-bucket-1781611042": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestBucketCreationBehavior/Create_new_bucket_-_should_succeed
        	Messages:   	Expected bucket creation to succeed
    s3_bucket_creation_test.go:264: Warning: failed to delete bucket test-new-bucket-1781611042: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://localhost:8333/test-new-bucket-1781611042": dial tcp [::1]:8333: connect: connection refused
=== RUN   TestBucketCreationBehavior/Create_existing_bucket_with_same_owner_-_should_return_BucketAlreadyExists
    s3_bucket_creation_test.go:45: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_bucket_creation_test.go:45
        	            				/home/seaweedfs/test/s3/versioning/s3_bucket_creation_test.go:94
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-same-owner-same-settings-1781611042": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestBucketCreationBehavior/Create_existing_bucket_with_same_owner_-_should_return_BucketAlreadyExists
        	Messages:   	Setup: failed to create initial bucket
=== RUN   TestBucketCreationBehavior/Create_bucket_with_same_owner_but_different_Object_Lock_settings_-_should_fail
    s3_bucket_creation_test.go:59: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_bucket_creation_test.go:59
        	            				/home/seaweedfs/test/s3/versioning/s3_bucket_creation_test.go:94
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-same-owner-diff-settings-1781611042": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestBucketCreationBehavior/Create_bucket_with_same_owner_but_different_Object_Lock_settings_-_should_fail
        	Messages:   	Setup: failed to create initial bucket
=== RUN   TestBucketCreationBehavior/Create_bucket_with_Object_Lock_enabled_-_should_succeed
    s3_bucket_creation_test.go:120: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_bucket_creation_test.go:120
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-object-lock-new-1781611042": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestBucketCreationBehavior/Create_bucket_with_Object_Lock_enabled_-_should_succeed
        	Messages:   	Expected bucket creation to succeed
    s3_bucket_creation_test.go:264: Warning: failed to delete bucket test-object-lock-new-1781611042: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://localhost:8333/test-object-lock-new-1781611042": dial tcp [::1]:8333: connect: connection refused
=== RUN   TestBucketCreationBehavior/Create_bucket_with_Object_Lock_enabled_twice_-_should_fail
    s3_bucket_creation_test.go:81: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_bucket_creation_test.go:81
        	            				/home/seaweedfs/test/s3/versioning/s3_bucket_creation_test.go:94
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-object-lock-duplicate-1781611042": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestBucketCreationBehavior/Create_bucket_with_Object_Lock_enabled_twice_-_should_fail
        	Messages:   	Setup: failed to create initial bucket with Object Lock
--- FAIL: TestBucketCreationBehavior (27.20s)
    --- FAIL: TestBucketCreationBehavior/Create_new_bucket_-_should_succeed (9.50s)
    --- FAIL: TestBucketCreationBehavior/Create_existing_bucket_with_same_owner_-_should_return_BucketAlreadyExists (4.87s)
    --- FAIL: TestBucketCreationBehavior/Create_bucket_with_same_owner_but_different_Object_Lock_settings_-_should_fail (3.97s)
    --- FAIL: TestBucketCreationBehavior/Create_bucket_with_Object_Lock_enabled_-_should_succeed (7.92s)
    --- FAIL: TestBucketCreationBehavior/Create_bucket_with_Object_Lock_enabled_twice_-_should_fail (0.94s)
=== RUN   TestBucketCreationWithDifferentUsers
    s3_bucket_creation_test.go:137: Different user testing requires IAM setup - implement when IAM is configured
--- SKIP: TestBucketCreationWithDifferentUsers (0.00s)
=== RUN   TestBucketCreationVersioningInteraction
    s3_bucket_creation_test.go:158: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_bucket_creation_test.go:158
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-interaction-1781611069": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestBucketCreationVersioningInteraction
        	Messages:   	Failed to create bucket with Object Lock
    s3_bucket_creation_test.go:264: Warning: failed to delete bucket test-versioning-interaction-1781611069: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://localhost:8333/test-versioning-interaction-1781611069": dial tcp [::1]:8333: connect: connection refused
--- FAIL: TestBucketCreationVersioningInteraction (7.86s)
=== RUN   TestBucketCreationErrorMessages
    s3_bucket_creation_test.go:190: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_bucket_creation_test.go:190
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-error-messages-1781611077": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestBucketCreationErrorMessages
        	Messages:   	Failed to create initial bucket
    s3_bucket_creation_test.go:264: Warning: failed to delete bucket test-error-messages-1781611077: operation error S3: DeleteBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Delete "http://localhost:8333/test-error-messages-1781611077": dial tcp [::1]:8333: connect: connection refused
--- FAIL: TestBucketCreationErrorMessages (5.10s)
=== RUN   TestVersioningCreateObjectsInOrder
    s3_versioning_test.go:78: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:78
        	            				/home/seaweedfs/test/s3/versioning/s3_comprehensive_versioning_test.go:24
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-1781611082391520333": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestVersioningCreateObjectsInOrder
--- FAIL: TestVersioningCreateObjectsInOrder (1.82s)
=== RUN   TestVersioningMultipleVersionsSameObject
    s3_versioning_test.go:78: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:78
        	            				/home/seaweedfs/test/s3/versioning/s3_comprehensive_versioning_test.go:116
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-1781611084207990984": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestVersioningMultipleVersionsSameObject
--- FAIL: TestVersioningMultipleVersionsSameObject (1.90s)
=== RUN   TestVersioningDeleteAndRecreate
    s3_versioning_test.go:78: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:78
        	            				/home/seaweedfs/test/s3/versioning/s3_comprehensive_versioning_test.go:168
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-1781611086112565749": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestVersioningDeleteAndRecreate
--- FAIL: TestVersioningDeleteAndRecreate (3.29s)
=== RUN   TestVersioningListWithPagination
    s3_versioning_test.go:78: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:78
        	            				/home/seaweedfs/test/s3/versioning/s3_comprehensive_versioning_test.go:233
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-1781611089398014914": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestVersioningListWithPagination
--- FAIL: TestVersioningListWithPagination (4.18s)
=== RUN   TestVersioningSpecificVersionRetrieval
    s3_versioning_test.go:78: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:78
        	            				/home/seaweedfs/test/s3/versioning/s3_comprehensive_versioning_test.go:295
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-1781611093582796653": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestVersioningSpecificVersionRetrieval
--- FAIL: TestVersioningSpecificVersionRetrieval (4.72s)
=== RUN   TestVersioningErrorCases
    s3_versioning_test.go:78: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:78
        	            				/home/seaweedfs/test/s3/versioning/s3_comprehensive_versioning_test.go:364
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-1781611098302179958": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestVersioningErrorCases
--- FAIL: TestVersioningErrorCases (4.87s)
=== RUN   TestVersioningSuspendedMixedObjects
    s3_versioning_test.go:78: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:78
        	            				/home/seaweedfs/test/s3/versioning/s3_comprehensive_versioning_test.go:409
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-1781611103171786825": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestVersioningSuspendedMixedObjects
--- FAIL: TestVersioningSuspendedMixedObjects (3.83s)
=== RUN   TestListObjectVersionsIncludesDirectories
    s3_directory_versioning_test.go:32: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_directory_versioning_test.go:32
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-directories": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestListObjectVersionsIncludesDirectories
--- FAIL: TestListObjectVersionsIncludesDirectories (3.60s)
=== RUN   TestListObjectVersionsDeleteMarkers
    s3_directory_versioning_test.go:173: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_directory_versioning_test.go:173
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-delete-markers": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestListObjectVersionsDeleteMarkers
--- FAIL: TestListObjectVersionsDeleteMarkers (3.73s)
=== RUN   TestVersionedObjectAcl
    s3_directory_versioning_test.go:244: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_directory_versioning_test.go:244
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioned-acl": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestVersionedObjectAcl
--- FAIL: TestVersionedObjectAcl (3.44s)
=== RUN   TestConcurrentMultiObjectDelete
    s3_directory_versioning_test.go:343: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_directory_versioning_test.go:343
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-concurrent-delete": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestConcurrentMultiObjectDelete
--- FAIL: TestConcurrentMultiObjectDelete (2.62s)
=== RUN   TestSuspendedVersioningDeleteBehavior
    s3_directory_versioning_test.go:461: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_directory_versioning_test.go:461
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-suspended-versioning-delete": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestSuspendedVersioningDeleteBehavior
--- FAIL: TestSuspendedVersioningDeleteBehavior (4.13s)
=== RUN   TestVersionedObjectListBehavior
    s3_directory_versioning_test.go:625: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_directory_versioning_test.go:625
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioned-list": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestVersionedObjectListBehavior
--- FAIL: TestVersionedObjectListBehavior (3.78s)
=== RUN   TestPrefixFilteringLogic
    s3_directory_versioning_test.go:726: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_directory_versioning_test.go:726
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-bucket-1781611128301725201": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestPrefixFilteringLogic
--- FAIL: TestPrefixFilteringLogic (1.92s)
=== RUN   TestSuspendedVersioningNullOverwrite
    s3_versioning_test.go:78: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:78
        	            				/home/seaweedfs/test/s3/versioning/s3_suspended_versioning_test.go:26
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-1781611130220280544": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestSuspendedVersioningNullOverwrite
--- FAIL: TestSuspendedVersioningNullOverwrite (3.82s)
=== RUN   TestEnabledVersioningReturnsVersionId
    s3_versioning_test.go:78: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:78
        	            				/home/seaweedfs/test/s3/versioning/s3_suspended_versioning_test.go:187
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-1781611134036756686": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestEnabledVersioningReturnsVersionId
--- FAIL: TestEnabledVersioningReturnsVersionId (3.78s)
=== RUN   TestVersioningWithObjectLockHeaders
    s3_versioning_object_lock_test.go:149: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_versioning_object_lock_test.go:149
        	            				/home/seaweedfs/test/s3/versioning/s3_versioning_object_lock_test.go:25
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-1781611137821157415": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestVersioningWithObjectLockHeaders
--- FAIL: TestVersioningWithObjectLockHeaders (5.10s)
=== RUN   TestBucketListReturnDataVersioning
    s3_versioning_test.go:78: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:78
        	            				/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:204
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-1781611142917980806": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestBucketListReturnDataVersioning
--- FAIL: TestBucketListReturnDataVersioning (2.78s)
=== RUN   TestVersioningBasicWorkflow
    s3_versioning_test.go:78: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:78
        	            				/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:294
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-1781611145696937975": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestVersioningBasicWorkflow
--- FAIL: TestVersioningBasicWorkflow (4.15s)
=== RUN   TestVersioningDeleteMarkers
    s3_versioning_test.go:78: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:78
        	            				/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:344
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-1781611149848288913": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestVersioningDeleteMarkers
--- FAIL: TestVersioningDeleteMarkers (2.98s)
=== RUN   TestVersioningConcurrentOperations
    s3_versioning_test.go:78: 
        	Error Trace:	/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:78
        	            				/home/seaweedfs/test/s3/versioning/s3_versioning_test.go:390
        	Error:      	Received unexpected error:
        	            	operation error S3: CreateBucket, exceeded maximum number of attempts, 3, https response error StatusCode: 0, RequestID: , HostID: , request send failed, Put "http://localhost:8333/test-versioning-1781611152829940419": dial tcp [::1]:8333: connect: connection refused
        	Test:       	TestVersioningConcurrentOperations
--- FAIL: TestVersioningConcurrentOperations (4.79s)
FAIL
FAIL	github.com/seaweedfs/seaweedfs/test/s3/versioning	115.395s
?   	github.com/seaweedfs/seaweedfs/unmaintained/change_superblock	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/check_disk_size	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/compact_leveldb	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/diff_volume_servers	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/disk	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/fix_dat	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/load_test/load_test_leveldb	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/load_test/load_test_meta_tail	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/remove_duplicate_fids	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/repeated_vacuum	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/s3/presigned_put	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/see_dat	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/see_idx	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/see_log_entry	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/see_meta	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/stream_read_volume	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/stress_filer_upload/bench_filer_upload	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/stress_filer_upload/stress_filer_upload_actual	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/stress_filer_upload/write_files	[no test files]
?   	github.com/seaweedfs/seaweedfs/unmaintained/volume_tailer	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/admin	[no test files]
=== RUN   TestApplyDefaults_WithEmbeddedStruct
--- PASS: TestApplyDefaults_WithEmbeddedStruct (0.00s)
=== RUN   TestApplyDefaults_PartiallySet
--- PASS: TestApplyDefaults_PartiallySet (0.00s)
=== RUN   TestApplyDefaults_NonPointer
--- PASS: TestApplyDefaults_NonPointer (0.00s)
=== RUN   TestApplyDefaults_NonStruct
--- PASS: TestApplyDefaults_NonStruct (0.00s)
=== RUN   TestApplyDefaults_EmptySchema
--- PASS: TestApplyDefaults_EmptySchema (0.00s)
=== RUN   TestApplyDefaults_MissingSchemaField
--- PASS: TestApplyDefaults_MissingSchemaField (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/admin/config	0.001s
?   	github.com/seaweedfs/seaweedfs/weed/admin/dash	[no test files]
=== RUN   TestParseTaskConfigFromForm_WithEmbeddedStruct
=== RUN   TestParseTaskConfigFromForm_WithEmbeddedStruct/Balance_Config
=== RUN   TestParseTaskConfigFromForm_WithEmbeddedStruct/Vacuum_Config
=== RUN   TestParseTaskConfigFromForm_WithEmbeddedStruct/Erasure_Coding_Config
--- PASS: TestParseTaskConfigFromForm_WithEmbeddedStruct (0.00s)
    --- PASS: TestParseTaskConfigFromForm_WithEmbeddedStruct/Balance_Config (0.00s)
    --- PASS: TestParseTaskConfigFromForm_WithEmbeddedStruct/Vacuum_Config (0.00s)
    --- PASS: TestParseTaskConfigFromForm_WithEmbeddedStruct/Erasure_Coding_Config (0.00s)
=== RUN   TestConfigurationValidation
=== RUN   TestConfigurationValidation/balance
=== RUN   TestConfigurationValidation/vacuum
=== RUN   TestConfigurationValidation/erasure_coding
--- PASS: TestConfigurationValidation (0.00s)
    --- PASS: TestConfigurationValidation/balance (0.00s)
    --- PASS: TestConfigurationValidation/vacuum (0.00s)
    --- PASS: TestConfigurationValidation/erasure_coding (0.00s)
=== RUN   TestParseFieldFromForm_EdgeCases
=== RUN   TestParseFieldFromForm_EdgeCases/Checkbox_Fields
=== RUN   TestParseFieldFromForm_EdgeCases/Checkbox_Fields/Checked_checkbox
=== RUN   TestParseFieldFromForm_EdgeCases/Checkbox_Fields/Unchecked_checkbox
=== RUN   TestParseFieldFromForm_EdgeCases/Checkbox_Fields/Empty_value_checkbox
=== RUN   TestParseFieldFromForm_EdgeCases/Interval_Fields
=== RUN   TestParseFieldFromForm_EdgeCases/Interval_Fields/Minutes
=== RUN   TestParseFieldFromForm_EdgeCases/Interval_Fields/Hours
=== RUN   TestParseFieldFromForm_EdgeCases/Interval_Fields/Days
--- PASS: TestParseFieldFromForm_EdgeCases (0.00s)
    --- PASS: TestParseFieldFromForm_EdgeCases/Checkbox_Fields (0.00s)
        --- PASS: TestParseFieldFromForm_EdgeCases/Checkbox_Fields/Checked_checkbox (0.00s)
        --- PASS: TestParseFieldFromForm_EdgeCases/Checkbox_Fields/Unchecked_checkbox (0.00s)
        --- PASS: TestParseFieldFromForm_EdgeCases/Checkbox_Fields/Empty_value_checkbox (0.00s)
    --- PASS: TestParseFieldFromForm_EdgeCases/Interval_Fields (0.00s)
        --- PASS: TestParseFieldFromForm_EdgeCases/Interval_Fields/Minutes (0.00s)
        --- PASS: TestParseFieldFromForm_EdgeCases/Interval_Fields/Hours (0.00s)
        --- PASS: TestParseFieldFromForm_EdgeCases/Interval_Fields/Days (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/admin/handlers	0.029s
=== RUN   TestMaintenanceManager_ErrorHandling
E0616 11:57:31.539434 maintenance_manager.go:343 Maintenance scan failed: dial tcp [::1]:19333: connect: connection refused (will retry with backoff)
E0616 11:57:31.540184 maintenance_manager.go:345 Maintenance scan still failing after 2 attempts: dial tcp [::1]:19333: connect: connection refused (backoff: 2s)
E0616 11:57:31.540220 maintenance_manager.go:345 Maintenance scan still failing after 3 attempts: dial tcp [::1]:19333: connect: connection refused (backoff: 4s)
E0616 11:57:31.540236 maintenance_manager.go:345 Maintenance scan still failing after 6 attempts: dial tcp [::1]:19333: connect: connection refused (backoff: 32s)
E0616 11:57:31.540246 maintenance_manager.go:345 Maintenance scan still failing after 9 attempts: dial tcp [::1]:19333: connect: connection refused (backoff: 4m16s)
E0616 11:57:31.540255 maintenance_manager.go:345 Maintenance scan still failing after 10 attempts: dial tcp [::1]:19333: connect: connection refused (backoff: 5m0s)
--- PASS: TestMaintenanceManager_ErrorHandling (0.00s)
=== RUN   TestIsConnectionError
--- PASS: TestIsConnectionError (0.00s)
=== RUN   TestMaintenanceManager_GetErrorState
E0616 11:57:31.540361 maintenance_manager.go:349 Maintenance scan failed: test error
E0616 11:57:31.540371 maintenance_manager.go:349 Maintenance scan failed: test error
--- PASS: TestMaintenanceManager_GetErrorState (0.00s)
=== RUN   TestMaintenanceManager_LogThrottling
E0616 11:57:31.540415 maintenance_manager.go:349 Maintenance scan failed: test error
E0616 11:57:31.540426 maintenance_manager.go:349 Maintenance scan failed: test error
E0616 11:57:31.540435 maintenance_manager.go:349 Maintenance scan failed: test error
E0616 11:57:31.540443 maintenance_manager.go:349 Maintenance scan failed: test error
E0616 11:57:31.540450 maintenance_manager.go:349 Maintenance scan failed: test error
E0616 11:57:31.540458 maintenance_manager.go:349 Maintenance scan failed: test error
E0616 11:57:31.540466 maintenance_manager.go:349 Maintenance scan failed: test error
--- PASS: TestMaintenanceManager_LogThrottling (0.00s)
=== RUN   TestCanScheduleTaskNow_FallbackLogic
--- PASS: TestCanScheduleTaskNow_FallbackLogic (0.00s)
=== RUN   TestCanScheduleTaskNow_FallbackWithRunningTasks
--- PASS: TestCanScheduleTaskNow_FallbackWithRunningTasks (0.00s)
=== RUN   TestCanScheduleTaskNow_DifferentTaskTypes
--- PASS: TestCanScheduleTaskNow_DifferentTaskTypes (0.00s)
=== RUN   TestCanScheduleTaskNow_WithIntegration
--- PASS: TestCanScheduleTaskNow_WithIntegration (0.00s)
=== RUN   TestGetRunningTaskCount
--- PASS: TestGetRunningTaskCount (0.00s)
=== RUN   TestCanExecuteTaskType
--- PASS: TestCanExecuteTaskType (0.00s)
=== RUN   TestGetMaxConcurrentForTaskType_DefaultBehavior
--- PASS: TestGetMaxConcurrentForTaskType_DefaultBehavior (0.00s)
=== RUN   TestCanScheduleTaskNow_NilTask
--- PASS: TestCanScheduleTaskNow_NilTask (0.00s)
=== RUN   TestCanScheduleTaskNow_EmptyTaskType
--- PASS: TestCanScheduleTaskNow_EmptyTaskType (0.00s)
=== RUN   TestCanScheduleTaskNow_WithPolicy
--- PASS: TestCanScheduleTaskNow_WithPolicy (0.00s)
=== RUN   TestPendingOperations_ConflictDetection
--- PASS: TestPendingOperations_ConflictDetection (0.00s)
=== RUN   TestPendingOperations_CapacityProjection
--- PASS: TestPendingOperations_CapacityProjection (0.00s)
=== RUN   TestPendingOperations_VolumeFiltering
--- PASS: TestPendingOperations_VolumeFiltering (0.00s)
=== RUN   TestPendingOperations_OperationLifecycle
--- PASS: TestPendingOperations_OperationLifecycle (0.00s)
=== RUN   TestPendingOperations_StaleCleanup
W0616 11:57:31.540946 pending_operations.go:265 Removed stale pending operation: volume 301, task task-stale, age 24h0m0.000002034s
--- PASS: TestPendingOperations_StaleCleanup (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/admin/maintenance	0.014s
=== RUN   TestActiveTopologyBasicOperations
--- PASS: TestActiveTopologyBasicOperations (0.00s)
=== RUN   TestActiveTopologyUpdate
--- PASS: TestActiveTopologyUpdate (0.00s)
=== RUN   TestTaskLifecycle
--- PASS: TestTaskLifecycle (0.00s)
=== RUN   TestTaskDetectionScenarios
=== RUN   TestTaskDetectionScenarios/Empty_cluster_-_no_tasks_needed
=== RUN   TestTaskDetectionScenarios/Unbalanced_cluster_-_balance_task_needed
=== RUN   TestTaskDetectionScenarios/High_garbage_ratio_-_vacuum_task_needed
=== RUN   TestTaskDetectionScenarios/Large_volumes_-_EC_task_needed
=== RUN   TestTaskDetectionScenarios/Recent_tasks_-_no_immediate_re-detection
--- PASS: TestTaskDetectionScenarios (0.00s)
    --- PASS: TestTaskDetectionScenarios/Empty_cluster_-_no_tasks_needed (0.00s)
    --- PASS: TestTaskDetectionScenarios/Unbalanced_cluster_-_balance_task_needed (0.00s)
    --- PASS: TestTaskDetectionScenarios/High_garbage_ratio_-_vacuum_task_needed (0.00s)
    --- PASS: TestTaskDetectionScenarios/Large_volumes_-_EC_task_needed (0.00s)
    --- PASS: TestTaskDetectionScenarios/Recent_tasks_-_no_immediate_re-detection (0.00s)
=== RUN   TestTargetSelectionScenarios
=== RUN   TestTargetSelectionScenarios/Balance_task_-_find_least_loaded_disk
=== RUN   TestTargetSelectionScenarios/EC_task_-_find_multiple_available_disks
=== RUN   TestTargetSelectionScenarios/Vacuum_task_-_avoid_conflicting_disks
--- PASS: TestTargetSelectionScenarios (0.00s)
    --- PASS: TestTargetSelectionScenarios/Balance_task_-_find_least_loaded_disk (0.00s)
    --- PASS: TestTargetSelectionScenarios/EC_task_-_find_multiple_available_disks (0.00s)
    --- PASS: TestTargetSelectionScenarios/Vacuum_task_-_avoid_conflicting_disks (0.00s)
=== RUN   TestDiskLoadCalculation
--- PASS: TestDiskLoadCalculation (0.00s)
=== RUN   TestTaskConflictDetection
--- PASS: TestTaskConflictDetection (0.00s)
=== RUN   TestPublicInterfaces
--- PASS: TestPublicInterfaces (0.00s)
=== RUN   TestDestinationPlanning
=== RUN   TestDestinationPlanning/GetAvailableDisks_functionality
=== RUN   TestDestinationPlanning/Topology_provides_planning_information
--- PASS: TestDestinationPlanning (0.00s)
    --- PASS: TestDestinationPlanning/GetAvailableDisks_functionality (0.00s)
    --- PASS: TestDestinationPlanning/Topology_provides_planning_information (0.00s)
=== RUN   TestStorageSlotChangeArithmetic
--- PASS: TestStorageSlotChangeArithmetic (0.00s)
=== RUN   TestStorageSlotChange
--- PASS: TestStorageSlotChange (0.00s)
=== RUN   TestStorageSlotChangeCapacityCalculation
--- PASS: TestStorageSlotChangeCapacityCalculation (0.00s)
=== RUN   TestECMultipleTargets
    storage_slot_test.go:458: EC operation distributed 14 shards across 3 targets
    storage_slot_test.go:459: Capacity impacts: EC source reserves with zero impact, Targets minimal (shards < 10)
--- PASS: TestECMultipleTargets (0.00s)
=== RUN   TestCapacityReservationCycle
    storage_slot_test.go:557: Capacity lifecycle with StorageSlotChange: Pending -> Assigned -> Released -> Applied
    storage_slot_test.go:558: Source: 10 -> 11 -> 11 -> 10 -> 11 (freed by pending balance, then applied)
    storage_slot_test.go:559: Target: 10 -> 9 -> 9 -> 10 -> 9 (reserved by pending, then applied)
--- PASS: TestCapacityReservationCycle (0.00s)
=== RUN   TestReplicatedVolumeECOperations
    storage_slot_test.go:712: Replicated volume EC operation: 3 source replicas, 14 EC shards distributed across 3 destinations
    storage_slot_test.go:714: Each source replica reserves with zero capacity impact, destinations receive EC shards
--- PASS: TestReplicatedVolumeECOperations (0.00s)
=== RUN   TestECWithOldShardCleanup
    storage_slot_test.go:865: EC operation with cleanup: 2 volume replicas + 2 old EC shard locations → 14 new EC shards
    storage_slot_test.go:867: Volume sources have zero impact, old EC shard sources free capacity, new destinations consume shard slots
--- PASS: TestECWithOldShardCleanup (0.00s)
=== RUN   TestDetailedCapacityCalculations
    storage_slot_test.go:943: Detailed capacity calculation: VolumeSlots=80, ShardSlots=-5
    storage_slot_test.go:945: Capacity impact: VolumeSlots=0, ShardSlots=5
    storage_slot_test.go:947: Simple capacity (backward compatible): 80
--- PASS: TestDetailedCapacityCalculations (0.00s)
=== RUN   TestStorageSlotChangeConversions
    storage_slot_test.go:998: Conversion tests passed: 10 shards = 1 volume slot
    storage_slot_test.go:999: Mixed capacity (2 volumes + 15 shards) = 3 equivalent volume slots
    storage_slot_test.go:1001: Available capacity (10 volumes) = 100 total shard slots
    storage_slot_test.go:1003: NOTE: This test adapts automatically to erasure_coding.DataShardsCount = 10
--- PASS: TestStorageSlotChangeConversions (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/admin/topology	0.013s
=== RUN   TestGetTaskFieldValue_EmbeddedStructFields
=== RUN   TestGetTaskFieldValue_EmbeddedStructFields/BaseConfig_boolean_field
=== RUN   TestGetTaskFieldValue_EmbeddedStructFields/BaseConfig_integer_field
=== RUN   TestGetTaskFieldValue_EmbeddedStructFields/BaseConfig_integer_field#01
=== RUN   TestGetTaskFieldValue_EmbeddedStructFields/Task-specific_float_field
=== RUN   TestGetTaskFieldValue_EmbeddedStructFields/Task-specific_string_field
--- PASS: TestGetTaskFieldValue_EmbeddedStructFields (0.00s)
    --- PASS: TestGetTaskFieldValue_EmbeddedStructFields/BaseConfig_boolean_field (0.00s)
    --- PASS: TestGetTaskFieldValue_EmbeddedStructFields/BaseConfig_integer_field (0.00s)
    --- PASS: TestGetTaskFieldValue_EmbeddedStructFields/BaseConfig_integer_field#01 (0.00s)
    --- PASS: TestGetTaskFieldValue_EmbeddedStructFields/Task-specific_float_field (0.00s)
    --- PASS: TestGetTaskFieldValue_EmbeddedStructFields/Task-specific_string_field (0.00s)
=== RUN   TestGetTaskFieldValue_NonExistentField
--- PASS: TestGetTaskFieldValue_NonExistentField (0.00s)
=== RUN   TestGetTaskFieldValue_NilConfig
--- PASS: TestGetTaskFieldValue_NilConfig (0.00s)
=== RUN   TestGetTaskFieldValue_EmptyStruct
=== RUN   TestGetTaskFieldValue_EmptyStruct/Zero_value_boolean
=== RUN   TestGetTaskFieldValue_EmptyStruct/Zero_value_integer
=== RUN   TestGetTaskFieldValue_EmptyStruct/Zero_value_integer#01
=== RUN   TestGetTaskFieldValue_EmptyStruct/Zero_value_float
=== RUN   TestGetTaskFieldValue_EmptyStruct/Zero_value_string
--- PASS: TestGetTaskFieldValue_EmptyStruct (0.00s)
    --- PASS: TestGetTaskFieldValue_EmptyStruct/Zero_value_boolean (0.00s)
    --- PASS: TestGetTaskFieldValue_EmptyStruct/Zero_value_integer (0.00s)
    --- PASS: TestGetTaskFieldValue_EmptyStruct/Zero_value_integer#01 (0.00s)
    --- PASS: TestGetTaskFieldValue_EmptyStruct/Zero_value_float (0.00s)
    --- PASS: TestGetTaskFieldValue_EmptyStruct/Zero_value_string (0.00s)
=== RUN   TestGetTaskFieldValue_NonStructConfig
--- PASS: TestGetTaskFieldValue_NonStructConfig (0.00s)
=== RUN   TestGetTaskFieldValue_PointerToStruct
--- PASS: TestGetTaskFieldValue_PointerToStruct (0.00s)
=== RUN   TestGetTaskFieldValue_FieldsWithJSONOmitempty
--- PASS: TestGetTaskFieldValue_FieldsWithJSONOmitempty (0.00s)
=== RUN   TestGetTaskFieldValue_DeepEmbedding
--- PASS: TestGetTaskFieldValue_DeepEmbedding (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/admin/view/app	0.022s
?   	github.com/seaweedfs/seaweedfs/weed/admin/view/components	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/admin/view/layout	[no test files]
=== RUN   TestConcurrentAddRemoveNodes
--- PASS: TestConcurrentAddRemoveNodes (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/cluster	0.010s
=== RUN   TestAddServer
I0616 11:57:31.533081 lock_ring.go:45 add server localhost:8080
I0616 11:57:31.533410 lock_ring.go:45 add server localhost:8081
I0616 11:57:31.533452 lock_ring.go:45 add server localhost:8082
I0616 11:57:31.533474 lock_ring.go:45 add server localhost:8083
I0616 11:57:31.533493 lock_ring.go:45 add server localhost:8084
I0616 11:57:31.533528 lock_ring.go:61 remove server localhost:8084
I0616 11:57:31.533549 lock_ring.go:61 remove server localhost:8082
I0616 11:57:31.533567 lock_ring.go:61 remove server localhost:8080
--- PASS: TestAddServer (0.21s)
=== RUN   TestLockRing
--- PASS: TestLockRing (0.22s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/cluster/lock_manager	0.438s
=== RUN   TestReadingTomlConfiguration
database is map[connection_max:5000 enabled:true ports:[8001 8001 8002] server:192.168.1.1]
servers is map[alpha:map[dc:eqdc10 ip:10.0.0.1] beta:map[dc:eqdc10 ip:10.0.0.2]]
alpha ip is 10.0.0.1
--- PASS: TestReadingTomlConfiguration (0.00s)
=== RUN   TestXYZ
I0616 11:57:39.815594 volume_test.go:12 Last-Modified Mon, 08 Jul 2013 08:53:16 GMT
--- PASS: TestXYZ (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/command	0.047s
?   	github.com/seaweedfs/seaweedfs/weed/command/scaffold	[no test files]
=== RUN   TestCredentialStoreInterface
    credential_test.go:15: No credential stores registered - this is expected when testing the base package without store imports
--- SKIP: TestCredentialStoreInterface (0.00s)
=== RUN   TestCredentialManagerCreation
    credential_test.go:66: No credential stores registered - skipping store-specific tests
--- SKIP: TestCredentialManagerCreation (0.00s)
=== RUN   TestCredentialInterface
    credential_test.go:95: No credential stores registered - for full testing see test/ package
--- SKIP: TestCredentialInterface (0.00s)
=== RUN   TestCredentialManagerIntegration
    credential_test.go:178: No credential stores registered - for full testing see test/ package
--- SKIP: TestCredentialManagerIntegration (0.00s)
=== RUN   TestErrorTypes
--- PASS: TestErrorTypes (0.00s)
=== RUN   TestGetAvailableStores
    credential_test.go:308: No stores available for testing
--- SKIP: TestGetAvailableStores (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/credential	0.017s
?   	github.com/seaweedfs/seaweedfs/weed/credential/filer_etc	[no test files]
=== RUN   TestMemoryStore
--- PASS: TestMemoryStore (0.00s)
=== RUN   TestMemoryStoreConcurrency
--- PASS: TestMemoryStoreConcurrency (0.00s)
=== RUN   TestMemoryStoreReset
--- PASS: TestMemoryStoreReset (0.00s)
=== RUN   TestMemoryStoreConfigurationSaveLoad
--- PASS: TestMemoryStoreConfigurationSaveLoad (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/credential/memory	0.015s
?   	github.com/seaweedfs/seaweedfs/weed/credential/postgres	[no test files]
=== RUN   TestStoreRegistration
    integration_test.go:40: Available stores: [memory postgres filer_etc]
--- PASS: TestStoreRegistration (0.00s)
=== RUN   TestMemoryStoreIntegration
--- PASS: TestMemoryStoreIntegration (0.00s)
=== RUN   TestPolicyManagement
--- PASS: TestPolicyManagement (0.00s)
=== RUN   TestPolicyManagementWithFilerEtc
    policy_test.go:140: Filer connection required for filer_etc store testing
--- SKIP: TestPolicyManagementWithFilerEtc (0.00s)
=== RUN   TestPolicyManagementWithPostgres
    policy_test.go:146: PostgreSQL connection required for postgres store testing
--- SKIP: TestPolicyManagementWithPostgres (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/credential/test	0.022s
=== RUN   TestChunkGroup_ReadDataAt_ErrorHandling
=== RUN   TestChunkGroup_ReadDataAt_ErrorHandling/should_return_immediately_on_error
=== RUN   TestChunkGroup_ReadDataAt_ErrorHandling/should_handle_EOF_correctly
=== RUN   TestChunkGroup_ReadDataAt_ErrorHandling/should_return_EOF_when_offset_exceeds_file_size
=== RUN   TestChunkGroup_ReadDataAt_ErrorHandling/should_demonstrate_the_GitHub_issue_fix_-_errors_should_not_be_masked
=== RUN   TestChunkGroup_ReadDataAt_ErrorHandling/Context_Cancellation
    filechunk_group_test.go:145: Operation completed before context cancellation was checked - this is expected for empty ChunkGroup
=== RUN   TestChunkGroup_ReadDataAt_ErrorHandling/Context_Cancellation_with_Timeout
--- PASS: TestChunkGroup_ReadDataAt_ErrorHandling (0.00s)
    --- PASS: TestChunkGroup_ReadDataAt_ErrorHandling/should_return_immediately_on_error (0.00s)
    --- PASS: TestChunkGroup_ReadDataAt_ErrorHandling/should_handle_EOF_correctly (0.00s)
    --- PASS: TestChunkGroup_ReadDataAt_ErrorHandling/should_return_EOF_when_offset_exceeds_file_size (0.00s)
    --- PASS: TestChunkGroup_ReadDataAt_ErrorHandling/should_demonstrate_the_GitHub_issue_fix_-_errors_should_not_be_masked (0.00s)
    --- PASS: TestChunkGroup_ReadDataAt_ErrorHandling/Context_Cancellation (0.00s)
    --- PASS: TestChunkGroup_ReadDataAt_ErrorHandling/Context_Cancellation_with_Timeout (0.00s)
=== RUN   TestChunkGroup_SearchChunks_Cancellation
=== RUN   TestChunkGroup_SearchChunks_Cancellation/Context_Cancellation_in_SearchChunks
    filechunk_group_test.go:207: SearchChunks completed with cancelled context - context threading verified
=== RUN   TestChunkGroup_SearchChunks_Cancellation/Context_with_Timeout_in_SearchChunks
--- PASS: TestChunkGroup_SearchChunks_Cancellation (0.00s)
    --- PASS: TestChunkGroup_SearchChunks_Cancellation/Context_Cancellation_in_SearchChunks (0.00s)
    --- PASS: TestChunkGroup_SearchChunks_Cancellation/Context_with_Timeout_in_SearchChunks (0.00s)
=== RUN   TestChunkGroup_doSearchChunks
--- PASS: TestChunkGroup_doSearchChunks (0.00s)
=== RUN   TestDoMaybeManifestize
test 0
test 1
test 2
test 3
--- PASS: TestDoMaybeManifestize (0.00s)
=== RUN   Test_removeGarbageChunks
--- PASS: Test_removeGarbageChunks (0.00s)
=== RUN   TestDoMinusChunks
2026/06/16 11:57:39 first deleted chunks: [file_id:"1"  size:3  modified_ts_ns:100  source_file_id:"11" file_id:"2"  offset:3  size:3  modified_ts_ns:200 file_id:"3"  offset:6  size:3  modified_ts_ns:300  source_file_id:"33"]
2026/06/16 11:57:39 clusterA synced empty chunks event result: []
--- PASS: TestDoMinusChunks (0.00s)
=== RUN   TestCompactFileChunksRealCase
I0616 11:57:39.791903 filechunks2_test.go:84 before chunk 2,512f31f2c0700a [         0,        25)
I0616 11:57:39.792311 filechunks2_test.go:84 before chunk 6,512f2c2e24e9e8 [    868352,    917585)
I0616 11:57:39.792314 filechunks2_test.go:84 before chunk 7,514468dd5954ca [    884736,    901120)
I0616 11:57:39.792316 filechunks2_test.go:84 before chunk 5,5144463173fe77 [    917504,   2297856)
I0616 11:57:39.792318 filechunks2_test.go:84 before chunk 4,51444c7ab54e2d [   2301952,   2367488)
I0616 11:57:39.792319 filechunks2_test.go:84 before chunk 4,514450e643ad22 [   2371584,   2420736)
I0616 11:57:39.792321 filechunks2_test.go:84 before chunk 6,514456a5e9e4d7 [   2449408,   2490368)
I0616 11:57:39.792322 filechunks2_test.go:84 before chunk 3,51444f8d53eebe [   2494464,   2555904)
I0616 11:57:39.792323 filechunks2_test.go:84 before chunk 4,5144578b097c7e [   2560000,   2596864)
I0616 11:57:39.792325 filechunks2_test.go:84 before chunk 3,51445500b6b4ac [   2637824,   2678784)
I0616 11:57:39.792326 filechunks2_test.go:84 before chunk 1,51446285e52a61 [   2695168,   2715648)
I0616 11:57:39.792339 filechunks2_test.go:84 compacted chunk 2,512f31f2c0700a [         0,        25)
I0616 11:57:39.792341 filechunks2_test.go:84 compacted chunk 6,512f2c2e24e9e8 [    868352,    917585)
I0616 11:57:39.792345 filechunks2_test.go:84 compacted chunk 7,514468dd5954ca [    884736,    901120)
I0616 11:57:39.792346 filechunks2_test.go:84 compacted chunk 5,5144463173fe77 [    917504,   2297856)
I0616 11:57:39.792348 filechunks2_test.go:84 compacted chunk 4,51444c7ab54e2d [   2301952,   2367488)
I0616 11:57:39.792349 filechunks2_test.go:84 compacted chunk 4,514450e643ad22 [   2371584,   2420736)
I0616 11:57:39.792350 filechunks2_test.go:84 compacted chunk 6,514456a5e9e4d7 [   2449408,   2490368)
I0616 11:57:39.792351 filechunks2_test.go:84 compacted chunk 3,51444f8d53eebe [   2494464,   2555904)
I0616 11:57:39.792353 filechunks2_test.go:84 compacted chunk 4,5144578b097c7e [   2560000,   2596864)
I0616 11:57:39.792354 filechunks2_test.go:84 compacted chunk 3,51445500b6b4ac [   2637824,   2678784)
I0616 11:57:39.792355 filechunks2_test.go:84 compacted chunk 1,51446285e52a61 [   2695168,   2715648)
--- PASS: TestCompactFileChunksRealCase (0.00s)
=== RUN   TestReadResolvedChunks
resolved to 4 visible intervales
[0,50) a 1
[50,150) b 2
[175,275) e 5
[275,300) d 4
--- PASS: TestReadResolvedChunks (0.00s)
=== RUN   TestReadResolvedChunks2
resolved to 2 visible intervales
[200,225) e 5
[225,250) c 3
--- PASS: TestReadResolvedChunks2 (0.00s)
=== RUN   TestRandomizedReadResolvedChunks
--- PASS: TestRandomizedReadResolvedChunks (0.00s)
=== RUN   TestSequentialReadResolvedChunks
visibles 13--- PASS: TestSequentialReadResolvedChunks (0.00s)
=== RUN   TestActualReadResolvedChunks
[0,2097152) 5,e7b96fef48 1634447487595823000
[2097152,4194304) 5,e5562640b9 1634447487595826000
[4194304,6291456) 5,df033e0fe4 1634447487595827000
[6291456,8388608) 7,eb08148a9b 1634447487595827000
[8388608,10485760) 7,e0f92d1604 1634447487595828000
[10485760,12582912) 7,e33cb63262 1634447487595828000
[12582912,14680064) 5,ea98e40e93 1634447487595829000
[14680064,16777216) 5,e165661172 1634447487595829000
[16777216,18874368) 3,e692097486 1634447487595830000
[18874368,20971520) 3,e28e2e3cbd 1634447487595830000
[20971520,23068672) 3,e443974d4e 1634447487595830000
[23068672,25165824) 2,e815bed597 1634447487595831000
[25165824,27140560) 5,e94715199e 1634447487595832000
--- PASS: TestActualReadResolvedChunks (0.00s)
=== RUN   TestActualReadResolvedChunks2
[0,184320) 1,e7b96fef48 1
[184320,188416) 2,33562640b9 4
[188416,2285568) 4,df033e0fe4 3
--- PASS: TestActualReadResolvedChunks2 (0.00s)
=== RUN   TestCompactFileChunks
--- PASS: TestCompactFileChunks (0.00s)
=== RUN   TestCompactFileChunks2
--- PASS: TestCompactFileChunks2 (0.00s)
=== RUN   TestRandomFileChunksCompact
--- PASS: TestRandomFileChunksCompact (0.00s)
=== RUN   TestIntervalMerging
2026/06/16 11:57:39 ++++++++++ merged test case 0 ++++++++++++++++++++
2026/06/16 11:57:39 test case 0, interval start=0, stop=100, fileId=abc
2026/06/16 11:57:39 test case 0, interval start=100, stop=200, fileId=asdf
2026/06/16 11:57:39 test case 0, interval start=200, stop=300, fileId=fsad
2026/06/16 11:57:39 ++++++++++ merged test case 1 ++++++++++++++++++++
2026/06/16 11:57:39 test case 1, interval start=0, stop=200, fileId=asdf
2026/06/16 11:57:39 ++++++++++ merged test case 2 ++++++++++++++++++++
2026/06/16 11:57:39 test case 2, interval start=0, stop=70, fileId=b
2026/06/16 11:57:39 test case 2, interval start=70, stop=100, fileId=a
2026/06/16 11:57:39 ++++++++++ merged test case 3 ++++++++++++++++++++
2026/06/16 11:57:39 test case 3, interval start=0, stop=50, fileId=asdf
2026/06/16 11:57:39 test case 3, interval start=50, stop=300, fileId=xxxx
2026/06/16 11:57:39 ++++++++++ merged test case 4 ++++++++++++++++++++
2026/06/16 11:57:39 test case 4, interval start=0, stop=200, fileId=asdf
2026/06/16 11:57:39 test case 4, interval start=250, stop=500, fileId=xxxx
2026/06/16 11:57:39 ++++++++++ merged test case 5 ++++++++++++++++++++
2026/06/16 11:57:39 test case 5, interval start=0, stop=200, fileId=d
2026/06/16 11:57:39 test case 5, interval start=200, stop=220, fileId=c
2026/06/16 11:57:39 ++++++++++ merged test case 6 ++++++++++++++++++++
2026/06/16 11:57:39 test case 6, interval start=0, stop=100, fileId=xyz
2026/06/16 11:57:39 ++++++++++ merged test case 7 ++++++++++++++++++++
2026/06/16 11:57:39 test case 7, interval start=0, stop=2097152, fileId=3,029565bf3092
2026/06/16 11:57:39 test case 7, interval start=2097152, stop=5242880, fileId=6,029632f47ae2
2026/06/16 11:57:39 test case 7, interval start=5242880, stop=8388608, fileId=2,029734c5aa10
2026/06/16 11:57:39 test case 7, interval start=8388608, stop=11534336, fileId=5,02982f80de50
2026/06/16 11:57:39 test case 7, interval start=11534336, stop=14376529, fileId=7,0299ad723803
2026/06/16 11:57:39 ++++++++++ merged test case 8 ++++++++++++++++++++
2026/06/16 11:57:39 test case 8, interval start=0, stop=77824, fileId=4,0b3df938e301
2026/06/16 11:57:39 test case 8, interval start=77824, stop=208896, fileId=4,0b3f0c7202f0
2026/06/16 11:57:39 test case 8, interval start=208896, stop=339968, fileId=2,0b4031a72689
2026/06/16 11:57:39 test case 8, interval start=339968, stop=471040, fileId=3,0b416a557362
2026/06/16 11:57:39 test case 8, interval start=471040, stop=472225, fileId=6,0b3e0650019c
--- PASS: TestIntervalMerging (0.00s)
=== RUN   TestChunksReading
2026/06/16 11:57:39 ++++++++++ read test case 0 ++++++++++++++++++++
2026/06/16 11:57:39 read case 0, chunk 0, offset=0, size=100, fileId=abc
2026/06/16 11:57:39 read case 0, chunk 1, offset=0, size=100, fileId=asdf
2026/06/16 11:57:39 read case 0, chunk 2, offset=0, size=50, fileId=fsad
2026/06/16 11:57:39 ++++++++++ read test case 1 ++++++++++++++++++++
2026/06/16 11:57:39 read case 1, chunk 0, offset=50, size=100, fileId=asdf
2026/06/16 11:57:39 ++++++++++ read test case 2 ++++++++++++++++++++
2026/06/16 11:57:39 read case 2, chunk 0, offset=20, size=30, fileId=b
2026/06/16 11:57:39 read case 2, chunk 1, offset=57, size=10, fileId=a
2026/06/16 11:57:39 ++++++++++ read test case 3 ++++++++++++++++++++
2026/06/16 11:57:39 read case 3, chunk 0, offset=0, size=50, fileId=asdf
2026/06/16 11:57:39 read case 3, chunk 1, offset=0, size=150, fileId=xxxx
2026/06/16 11:57:39 ++++++++++ read test case 4 ++++++++++++++++++++
2026/06/16 11:57:39 read case 4, chunk 0, offset=0, size=200, fileId=asdf
2026/06/16 11:57:39 read case 4, chunk 1, offset=0, size=150, fileId=xxxx
2026/06/16 11:57:39 ++++++++++ read test case 5 ++++++++++++++++++++
2026/06/16 11:57:39 read case 5, chunk 0, offset=0, size=200, fileId=c
2026/06/16 11:57:39 read case 5, chunk 1, offset=130, size=20, fileId=b
2026/06/16 11:57:39 ++++++++++ read test case 6 ++++++++++++++++++++
2026/06/16 11:57:39 read case 6, chunk 0, offset=0, size=100, fileId=xyz
2026/06/16 11:57:39 ++++++++++ read test case 7 ++++++++++++++++++++
2026/06/16 11:57:39 read case 7, chunk 0, offset=0, size=100, fileId=abc
2026/06/16 11:57:39 read case 7, chunk 1, offset=0, size=100, fileId=asdf
2026/06/16 11:57:39 ++++++++++ read test case 8 ++++++++++++++++++++
2026/06/16 11:57:39 read case 8, chunk 0, offset=0, size=90, fileId=abc
2026/06/16 11:57:39 read case 8, chunk 1, offset=0, size=100, fileId=asdf
2026/06/16 11:57:39 read case 8, chunk 2, offset=0, size=110, fileId=fsad
2026/06/16 11:57:39 ++++++++++ read test case 9 ++++++++++++++++++++
2026/06/16 11:57:39 read case 9, chunk 0, offset=0, size=43175936, fileId=2,111fc2cbfac1
2026/06/16 11:57:39 read case 9, chunk 1, offset=0, size=9805824, fileId=2,112a36ea7f85
2026/06/16 11:57:39 read case 9, chunk 2, offset=0, size=19582976, fileId=4,112d5f31c5e7
2026/06/16 11:57:39 read case 9, chunk 3, offset=0, size=60690432, fileId=1,113245f0cdb6
2026/06/16 11:57:39 read case 9, chunk 4, offset=0, size=4014080, fileId=3,1141a70733b5
2026/06/16 11:57:39 read case 9, chunk 5, offset=0, size=16309588, fileId=1,114201d5bbdb
--- PASS: TestChunksReading (0.00s)
=== RUN   TestViewFromVisibleIntervals
--- PASS: TestViewFromVisibleIntervals (0.00s)
=== RUN   TestViewFromVisibleIntervals2
--- PASS: TestViewFromVisibleIntervals2 (0.00s)
=== RUN   TestViewFromVisibleIntervals3
--- PASS: TestViewFromVisibleIntervals3 (0.00s)
=== RUN   TestCompactFileChunks3
--- PASS: TestCompactFileChunks3 (0.00s)
=== RUN   TestFilerConf
--- PASS: TestFilerConf (0.00s)
=== RUN   TestProtoMarshal

e
to:
234,2423423422��� ���*
2342342354223234,2342342342"#����� 0���Ø����:	text/jsonP
--- PASS: TestProtoMarshal (0.00s)
=== RUN   TestIntervalList_Overlay
[0,25) 6 6
[25,50) 1 1
[50,150) 2 2
[175,210) 5 5
[210,225) 3 3
[225,250) 4 4

[0,25) 6 6
[25,50) 1 1
[50,150) 7 7
[175,210) 5 5
[210,225) 3 3
[225,250) 4 4
--- PASS: TestIntervalList_Overlay (0.00s)
=== RUN   TestIntervalList_Overlay2
[0,50) 2 2
[50,100) 1 1
--- PASS: TestIntervalList_Overlay2 (0.00s)
=== RUN   TestIntervalList_Overlay3
[0,60) 2 2
[60,100) 1 1
--- PASS: TestIntervalList_Overlay3 (0.00s)
=== RUN   TestIntervalList_Overlay4
[0,100) 2 2
--- PASS: TestIntervalList_Overlay4 (0.00s)
=== RUN   TestIntervalList_Overlay5
[0,110) 2 2
--- PASS: TestIntervalList_Overlay5 (0.00s)
=== RUN   TestIntervalList_Overlay6
[50,110) 2 2
--- PASS: TestIntervalList_Overlay6 (0.00s)
=== RUN   TestIntervalList_Overlay7
[50,90) 2 2
[90,100) 1 1
--- PASS: TestIntervalList_Overlay7 (0.00s)
=== RUN   TestIntervalList_Overlay8
[50,60) 1 1
[60,90) 2 2
[90,100) 1 1
--- PASS: TestIntervalList_Overlay8 (0.00s)
=== RUN   TestIntervalList_Overlay9
[50,60) 1 1
[60,100) 2 2
--- PASS: TestIntervalList_Overlay9 (0.00s)
=== RUN   TestIntervalList_Overlay10
[50,60) 1 1
[60,110) 2 2
--- PASS: TestIntervalList_Overlay10 (0.00s)
=== RUN   TestIntervalList_Overlay11
[0,90) 5 5
[90,100) 1 1
[100,110) 2 2
--- PASS: TestIntervalList_Overlay11 (0.00s)
=== RUN   TestIntervalList_insertInterval1
[50,150) 2 2
[200,250) 3 3
--- PASS: TestIntervalList_insertInterval1 (0.00s)
=== RUN   TestIntervalList_insertInterval2
[0,25) 3 3
[50,150) 2 2
--- PASS: TestIntervalList_insertInterval2 (0.00s)
=== RUN   TestIntervalList_insertInterval3
[0,75) 3 3
[75,150) 2 2
[200,250) 4 4
--- PASS: TestIntervalList_insertInterval3 (0.00s)
=== RUN   TestIntervalList_insertInterval4
[0,200) 3 3
[200,250) 4 4
--- PASS: TestIntervalList_insertInterval4 (0.00s)
=== RUN   TestIntervalList_insertInterval5
[0,225) 5 5
[225,250) 4 4
--- PASS: TestIntervalList_insertInterval5 (0.00s)
=== RUN   TestIntervalList_insertInterval6
[0,50) 1 1
[50,150) 2 2
[150,200) 1 1
[200,250) 4 4
[250,275) 1 1
--- PASS: TestIntervalList_insertInterval6 (0.00s)
=== RUN   TestIntervalList_insertInterval7
[50,150) 2 2
[150,200) 1 1
[200,250) 4 4
[250,275) 1 1
--- PASS: TestIntervalList_insertInterval7 (0.00s)
=== RUN   TestIntervalList_insertInterval8
[50,75) 2 2
[75,200) 3 3
[200,250) 4 4
[250,275) 3 3
--- PASS: TestIntervalList_insertInterval8 (0.00s)
=== RUN   TestIntervalList_insertInterval9
[50,150) 3 3
[200,250) 4 4
--- PASS: TestIntervalList_insertInterval9 (0.00s)
=== RUN   TestIntervalList_insertInterval10
[50,100) 2 2
[100,200) 5 5
[200,300) 4 4
--- PASS: TestIntervalList_insertInterval10 (0.00s)
=== RUN   TestIntervalList_insertInterval11
[0,64) 1 1
[64,68) 2 2
[68,72) 4 4
[72,136) 3 3
--- PASS: TestIntervalList_insertInterval11 (0.00s)
=== RUN   TestIntervalList_insertIntervalStruct
[0,64) 1 {1 0 0}
[64,68) 4 {4 0 0}
[68,72) 2 {2 0 0}
[72,136) 3 {3 0 0}
--- PASS: TestIntervalList_insertIntervalStruct (0.00s)
=== RUN   TestReaderAt
--- PASS: TestReaderAt (0.00s)
=== RUN   TestReaderAt0
--- PASS: TestReaderAt0 (0.00s)
=== RUN   TestReaderAt1
--- PASS: TestReaderAt1 (0.00s)
=== RUN   TestReaderAtGappedChunksDoNotLeak
--- PASS: TestReaderAtGappedChunksDoNotLeak (0.00s)
=== RUN   TestReaderAtSparseFileDoesNotLeak
--- PASS: TestReaderAtSparseFileDoesNotLeak (0.00s)
=== RUN   TestFilerRemoteStorage_FindRemoteStorageClient
--- PASS: TestFilerRemoteStorage_FindRemoteStorageClient (0.00s)
=== RUN   TestS3Conf
--- PASS: TestS3Conf (0.00s)
=== RUN   TestCheckDuplicateAccessKey
--- PASS: TestCheckDuplicateAccessKey (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer	0.025s
?   	github.com/seaweedfs/seaweedfs/weed/filer/abstract_sql	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/arangodb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/cassandra	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/cassandra2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/elastic/v7	[no test files]
=== RUN   TestStore
--- PASS: TestStore (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/etcd	0.030s
?   	github.com/seaweedfs/seaweedfs/weed/filer/hbase	[no test files]
=== RUN   TestCreateAndFind
I0616 11:57:39.807510 leveldb_store.go:48 filer store dir: /tmp/TestCreateAndFind2314302799/001
I0616 11:57:39.807845 file_util.go:27 Folder /tmp/TestCreateAndFind2314302799/001 Permission: -rwxr-xr-x
I0616 11:57:39.913426 filer.go:155 create filer.store.id to -2074845340
--- PASS: TestCreateAndFind (0.11s)
=== RUN   TestEmptyRoot
I0616 11:57:39.915742 leveldb_store.go:48 filer store dir: /tmp/TestEmptyRoot2291215704/001
I0616 11:57:39.915761 file_util.go:27 Folder /tmp/TestEmptyRoot2291215704/001 Permission: -rwxr-xr-x
I0616 11:57:39.955583 filer.go:155 create filer.store.id to 681266626
--- PASS: TestEmptyRoot (0.04s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb	0.182s
=== RUN   TestCreateAndFind
I0616 11:57:39.797085 leveldb2_store.go:43 filer store leveldb2 dir: /tmp/TestCreateAndFind1488788548/001
I0616 11:57:39.797522 file_util.go:27 Folder /tmp/TestCreateAndFind1488788548/001 Permission: -rwxr-xr-x
I0616 11:57:39.947020 filer.go:155 create filer.store.id to 315134665
--- PASS: TestCreateAndFind (0.16s)
=== RUN   TestEmptyRoot
I0616 11:57:39.949078 leveldb2_store.go:43 filer store leveldb2 dir: /tmp/TestEmptyRoot3373732053/001
I0616 11:57:39.949096 file_util.go:27 Folder /tmp/TestEmptyRoot3373732053/001 Permission: -rwxr-xr-x
I0616 11:57:40.015645 filer.go:155 create filer.store.id to -1650092063
--- PASS: TestEmptyRoot (0.07s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb2	0.242s
=== RUN   TestCreateAndFind
I0616 11:57:39.799793 leveldb3_store.go:50 filer store leveldb3 dir: /tmp/TestCreateAndFind644699209/001
I0616 11:57:39.800167 file_util.go:27 Folder /tmp/TestCreateAndFind644699209/001 Permission: -rwxr-xr-x
I0616 11:57:39.913388 filer.go:155 create filer.store.id to 192617965
--- PASS: TestCreateAndFind (0.12s)
=== RUN   TestEmptyRoot
I0616 11:57:39.915534 leveldb3_store.go:50 filer store leveldb3 dir: /tmp/TestEmptyRoot1707248363/001
I0616 11:57:39.915553 file_util.go:27 Folder /tmp/TestEmptyRoot1707248363/001 Permission: -rwxr-xr-x
I0616 11:57:39.958205 filer.go:155 create filer.store.id to -1681724035
--- PASS: TestEmptyRoot (0.04s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb3	0.184s
?   	github.com/seaweedfs/seaweedfs/weed/filer/mongodb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/mysql	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/mysql2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/postgres	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/postgres2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/redis	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/redis2	[no test files]
testing: warning: no tests to run
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/redis3	0.018s [no tests to run]
?   	github.com/seaweedfs/seaweedfs/weed/filer/redis_lua	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/redis_lua/stored_procedure	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/sqlite	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/store_test	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/tarantool	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/tikv	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/ydb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer_client	[no test files]
=== RUN   TestShortHostname
--- PASS: TestShortHostname (0.00s)
=== RUN   TestInfo
I0616 11:57:39.778421 glog_test.go:92 test
--- PASS: TestInfo (0.00s)
=== RUN   TestInfoDepth
I0616 11:57:39.778434 glog_test.go:109 depth-test0
I0616 11:57:39.778436 glog_test.go:110 depth-test1
--- PASS: TestInfoDepth (0.00s)
=== RUN   TestCopyStandardLogToPanic
--- PASS: TestCopyStandardLogToPanic (0.00s)
=== RUN   TestStandardLog
I0616 11:57:39.778466 glog_test.go:163 test
--- PASS: TestStandardLog (0.00s)
=== RUN   TestHeader
I0102 15:04:05.067890 glog_test.go:181 test
--- PASS: TestHeader (0.00s)
=== RUN   TestError
E0616 11:57:39.778513 glog_test.go:202 test
--- PASS: TestError (0.00s)
=== RUN   TestWarning
W0616 11:57:39.778530 glog_test.go:224 test
--- PASS: TestWarning (0.00s)
=== RUN   TestV
I0616 11:57:39.778540 glog_test.go:243 test
--- PASS: TestV (0.00s)
=== RUN   TestVmoduleOn
I0616 11:57:39.778559 glog_test.go:267 test
--- PASS: TestVmoduleOn (0.00s)
=== RUN   TestVmoduleOff
--- PASS: TestVmoduleOff (0.00s)
=== RUN   TestVmoduleGlob
--- PASS: TestVmoduleGlob (0.00s)
=== RUN   TestRollover
I0616 11:57:39.778604 glog_test.go:339 x
I0616 11:57:39.779294 glog_test.go:348 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
I0616 11:57:40.805176 glog_test.go:361 x
--- PASS: TestRollover (1.03s)
=== RUN   TestLogBacktraceAt
I0616 11:57:40.810809 glog_test.go:395 we want a stack trace here
goroutine 34 [running]:
github.com/seaweedfs/seaweedfs/weed/glog.stacks(0x0)
	/home/seaweedfs/weed/glog/glog.go:780 +0x8c
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).output(0x458440, 0x0, 0x539254414000, {0x2a34cb?, 0x1?}, 0x0?, 0x0)
	/home/seaweedfs/weed/glog/glog.go:678 +0xec
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).printDepth(0x458440, 0x0, 0x53925444ce88?, {0x53925444ce28, 0x1, 0x1})
	/home/seaweedfs/weed/glog/glog.go:649 +0xc4
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).print(...)
	/home/seaweedfs/weed/glog/glog.go:640
github.com/seaweedfs/seaweedfs/weed/glog.Info(...)
	/home/seaweedfs/weed/glog/glog.go:1078
github.com/seaweedfs/seaweedfs/weed/glog.TestLogBacktraceAt(0x539254446008)
	/home/seaweedfs/weed/glog/glog_test.go:395 +0x2e8
testing.tRunner(0x539254446008, 0x2545e8)
	/usr/local/go/src/testing/testing.go:2036 +0xc4
created by testing.(*T).Run in goroutine 1
	/usr/local/go/src/testing/testing.go:2101 +0x3a8
--- PASS: TestLogBacktraceAt (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/glog	1.035s
=== RUN   TestFullOIDCWorkflow
=== RUN   TestFullOIDCWorkflow/successful_role_assumption_with_policy_validation
=== RUN   TestFullOIDCWorkflow/role_assumption_denied_by_trust_policy
=== RUN   TestFullOIDCWorkflow/invalid_token_rejected
--- PASS: TestFullOIDCWorkflow (0.00s)
    --- PASS: TestFullOIDCWorkflow/successful_role_assumption_with_policy_validation (0.00s)
    --- PASS: TestFullOIDCWorkflow/role_assumption_denied_by_trust_policy (0.00s)
    --- PASS: TestFullOIDCWorkflow/invalid_token_rejected (0.00s)
=== RUN   TestFullLDAPWorkflow
=== RUN   TestFullLDAPWorkflow/successful_LDAP_role_assumption
=== RUN   TestFullLDAPWorkflow/invalid_LDAP_credentials
--- PASS: TestFullLDAPWorkflow (0.00s)
    --- PASS: TestFullLDAPWorkflow/successful_LDAP_role_assumption (0.00s)
    --- PASS: TestFullLDAPWorkflow/invalid_LDAP_credentials (0.00s)
=== RUN   TestPolicyEnforcement
=== RUN   TestPolicyEnforcement/allow_read_access
=== RUN   TestPolicyEnforcement/allow_list_bucket
=== RUN   TestPolicyEnforcement/deny_write_access
=== RUN   TestPolicyEnforcement/deny_delete_access
=== RUN   TestPolicyEnforcement/deny_filer_access
--- PASS: TestPolicyEnforcement (0.00s)
    --- PASS: TestPolicyEnforcement/allow_read_access (0.00s)
    --- PASS: TestPolicyEnforcement/allow_list_bucket (0.00s)
    --- PASS: TestPolicyEnforcement/deny_write_access (0.00s)
    --- PASS: TestPolicyEnforcement/deny_delete_access (0.00s)
    --- PASS: TestPolicyEnforcement/deny_filer_access (0.00s)
=== RUN   TestSessionExpiration
--- PASS: TestSessionExpiration (0.00s)
=== RUN   TestTrustPolicyValidation
=== RUN   TestTrustPolicyValidation/OIDC_user_allowed_by_trust_policy
=== RUN   TestTrustPolicyValidation/LDAP_user_allowed_by_different_role
=== RUN   TestTrustPolicyValidation/Wrong_provider_for_role
--- PASS: TestTrustPolicyValidation (0.00s)
    --- PASS: TestTrustPolicyValidation/OIDC_user_allowed_by_trust_policy (0.00s)
    --- PASS: TestTrustPolicyValidation/LDAP_user_allowed_by_different_role (0.00s)
    --- PASS: TestTrustPolicyValidation/Wrong_provider_for_role (0.00s)
=== RUN   TestMemoryRoleStore
--- PASS: TestMemoryRoleStore (0.00s)
=== RUN   TestRoleStoreConfiguration
--- PASS: TestRoleStoreConfiguration (0.00s)
=== RUN   TestDistributedIAMManagerWithRoleStore
--- PASS: TestDistributedIAMManagerWithRoleStore (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/iam/integration	0.012s
?   	github.com/seaweedfs/seaweedfs/weed/iam/ldap	[no test files]
=== RUN   TestOIDCProviderInitialization
=== RUN   TestOIDCProviderInitialization/valid_config
=== RUN   TestOIDCProviderInitialization/missing_issuer
=== RUN   TestOIDCProviderInitialization/missing_client_id
=== RUN   TestOIDCProviderInitialization/invalid_issuer_url
--- PASS: TestOIDCProviderInitialization (0.00s)
    --- PASS: TestOIDCProviderInitialization/valid_config (0.00s)
    --- PASS: TestOIDCProviderInitialization/missing_issuer (0.00s)
    --- PASS: TestOIDCProviderInitialization/missing_client_id (0.00s)
    --- PASS: TestOIDCProviderInitialization/invalid_issuer_url (0.00s)
=== RUN   TestOIDCProviderJWTValidation
=== RUN   TestOIDCProviderJWTValidation/valid_token
=== RUN   TestOIDCProviderJWTValidation/valid_token_with_array_audience
=== RUN   TestOIDCProviderJWTValidation/expired_token
=== RUN   TestOIDCProviderJWTValidation/invalid_signature
--- PASS: TestOIDCProviderJWTValidation (0.18s)
    --- PASS: TestOIDCProviderJWTValidation/valid_token (0.00s)
    --- PASS: TestOIDCProviderJWTValidation/valid_token_with_array_audience (0.00s)
    --- PASS: TestOIDCProviderJWTValidation/expired_token (0.00s)
    --- PASS: TestOIDCProviderJWTValidation/invalid_signature (0.04s)
=== RUN   TestOIDCProviderAuthentication
=== RUN   TestOIDCProviderAuthentication/successful_authentication
=== RUN   TestOIDCProviderAuthentication/authentication_with_invalid_token
--- PASS: TestOIDCProviderAuthentication (0.05s)
    --- PASS: TestOIDCProviderAuthentication/successful_authentication (0.00s)
    --- PASS: TestOIDCProviderAuthentication/authentication_with_invalid_token (0.00s)
=== RUN   TestOIDCProviderUserInfo
=== RUN   TestOIDCProviderUserInfo/get_user_info_with_access_token
=== RUN   TestOIDCProviderUserInfo/get_admin_user_info
=== RUN   TestOIDCProviderUserInfo/get_user_info_without_token
=== RUN   TestOIDCProviderUserInfo/get_user_info_with_invalid_token
=== RUN   TestOIDCProviderUserInfo/get_user_info_with_custom_claims_mapping
=== RUN   TestOIDCProviderUserInfo/get_user_info_with_empty_id
--- PASS: TestOIDCProviderUserInfo (0.00s)
    --- PASS: TestOIDCProviderUserInfo/get_user_info_with_access_token (0.00s)
    --- PASS: TestOIDCProviderUserInfo/get_admin_user_info (0.00s)
    --- PASS: TestOIDCProviderUserInfo/get_user_info_without_token (0.00s)
    --- PASS: TestOIDCProviderUserInfo/get_user_info_with_invalid_token (0.00s)
    --- PASS: TestOIDCProviderUserInfo/get_user_info_with_custom_claims_mapping (0.00s)
    --- PASS: TestOIDCProviderUserInfo/get_user_info_with_empty_id (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/iam/oidc	0.243s
=== RUN   TestAWSIAMMatch
=== RUN   TestAWSIAMMatch/case_insensitive_exact_match
=== RUN   TestAWSIAMMatch/case_insensitive_wildcard_match
=== RUN   TestAWSIAMMatch/AWS_username_variable_expansion
=== RUN   TestAWSIAMMatch/SAML_username_variable_expansion
=== RUN   TestAWSIAMMatch/OIDC_subject_variable_expansion
=== RUN   TestAWSIAMMatch/case_insensitive_with_variable
=== RUN   TestAWSIAMMatch/universal_wildcard
=== RUN   TestAWSIAMMatch/question_mark_wildcard
=== RUN   TestAWSIAMMatch/no_match_different_pattern
=== RUN   TestAWSIAMMatch/variable_not_expanded_due_to_missing_context
--- PASS: TestAWSIAMMatch (0.00s)
    --- PASS: TestAWSIAMMatch/case_insensitive_exact_match (0.00s)
    --- PASS: TestAWSIAMMatch/case_insensitive_wildcard_match (0.00s)
    --- PASS: TestAWSIAMMatch/AWS_username_variable_expansion (0.00s)
    --- PASS: TestAWSIAMMatch/SAML_username_variable_expansion (0.00s)
    --- PASS: TestAWSIAMMatch/OIDC_subject_variable_expansion (0.00s)
    --- PASS: TestAWSIAMMatch/case_insensitive_with_variable (0.00s)
    --- PASS: TestAWSIAMMatch/universal_wildcard (0.00s)
    --- PASS: TestAWSIAMMatch/question_mark_wildcard (0.00s)
    --- PASS: TestAWSIAMMatch/no_match_different_pattern (0.00s)
    --- PASS: TestAWSIAMMatch/variable_not_expanded_due_to_missing_context (0.00s)
=== RUN   TestExpandPolicyVariables
=== RUN   TestExpandPolicyVariables/expand_aws_username
=== RUN   TestExpandPolicyVariables/expand_multiple_variables
=== RUN   TestExpandPolicyVariables/no_variables_to_expand
=== RUN   TestExpandPolicyVariables/nil_context
=== RUN   TestExpandPolicyVariables/missing_variable_in_context
--- PASS: TestExpandPolicyVariables (0.00s)
    --- PASS: TestExpandPolicyVariables/expand_aws_username (0.00s)
    --- PASS: TestExpandPolicyVariables/expand_multiple_variables (0.00s)
    --- PASS: TestExpandPolicyVariables/no_variables_to_expand (0.00s)
    --- PASS: TestExpandPolicyVariables/nil_context (0.00s)
    --- PASS: TestExpandPolicyVariables/missing_variable_in_context (0.00s)
=== RUN   TestAWSWildcardMatch
=== RUN   TestAWSWildcardMatch/case_insensitive_asterisk
=== RUN   TestAWSWildcardMatch/case_insensitive_question_mark
=== RUN   TestAWSWildcardMatch/mixed_wildcards
=== RUN   TestAWSWildcardMatch/no_match
--- PASS: TestAWSWildcardMatch (0.00s)
    --- PASS: TestAWSWildcardMatch/case_insensitive_asterisk (0.00s)
    --- PASS: TestAWSWildcardMatch/case_insensitive_question_mark (0.00s)
    --- PASS: TestAWSWildcardMatch/mixed_wildcards (0.00s)
    --- PASS: TestAWSWildcardMatch/no_match (0.00s)
=== RUN   TestDistributedPolicyEngine
=== RUN   TestDistributedPolicyEngine/policy_storage_consistency
=== RUN   TestDistributedPolicyEngine/evaluation_consistency
=== RUN   TestDistributedPolicyEngine/deny_precedence_consistency
=== RUN   TestDistributedPolicyEngine/default_effect_consistency
--- PASS: TestDistributedPolicyEngine (0.00s)
    --- PASS: TestDistributedPolicyEngine/policy_storage_consistency (0.00s)
    --- PASS: TestDistributedPolicyEngine/evaluation_consistency (0.00s)
    --- PASS: TestDistributedPolicyEngine/deny_precedence_consistency (0.00s)
    --- PASS: TestDistributedPolicyEngine/default_effect_consistency (0.00s)
=== RUN   TestPolicyEngineConfigurationConsistency
=== RUN   TestPolicyEngineConfigurationConsistency/consistent_default_effects_required
=== RUN   TestPolicyEngineConfigurationConsistency/invalid_configuration_handling
=== RUN   TestPolicyEngineConfigurationConsistency/invalid_configuration_handling/invalid_config_0
=== RUN   TestPolicyEngineConfigurationConsistency/invalid_configuration_handling/invalid_config_1
--- PASS: TestPolicyEngineConfigurationConsistency (0.00s)
    --- PASS: TestPolicyEngineConfigurationConsistency/consistent_default_effects_required (0.00s)
    --- PASS: TestPolicyEngineConfigurationConsistency/invalid_configuration_handling (0.00s)
        --- PASS: TestPolicyEngineConfigurationConsistency/invalid_configuration_handling/invalid_config_0 (0.00s)
        --- PASS: TestPolicyEngineConfigurationConsistency/invalid_configuration_handling/invalid_config_1 (0.00s)
=== RUN   TestPolicyStoreDistributed
=== RUN   TestPolicyStoreDistributed/memory_store_isolation
=== RUN   TestPolicyStoreDistributed/policy_loading_error_handling
--- PASS: TestPolicyStoreDistributed (0.00s)
    --- PASS: TestPolicyStoreDistributed/memory_store_isolation (0.00s)
    --- PASS: TestPolicyStoreDistributed/policy_loading_error_handling (0.00s)
=== RUN   TestFilerPolicyStoreConfiguration
=== RUN   TestFilerPolicyStoreConfiguration/filer_store_creation
=== RUN   TestFilerPolicyStoreConfiguration/filer_store_custom_path
=== RUN   TestFilerPolicyStoreConfiguration/filer_store_missing_address
--- PASS: TestFilerPolicyStoreConfiguration (0.00s)
    --- PASS: TestFilerPolicyStoreConfiguration/filer_store_creation (0.00s)
    --- PASS: TestFilerPolicyStoreConfiguration/filer_store_custom_path (0.00s)
    --- PASS: TestFilerPolicyStoreConfiguration/filer_store_missing_address (0.00s)
=== RUN   TestPolicyEvaluationPerformance
    policy_engine_distributed_test.go:384: Average policy evaluation time: 39.934µs
--- PASS: TestPolicyEvaluationPerformance (0.00s)
=== RUN   TestPolicyEngineInitialization
=== RUN   TestPolicyEngineInitialization/valid_config
=== RUN   TestPolicyEngineInitialization/invalid_default_effect
=== RUN   TestPolicyEngineInitialization/nil_config
--- PASS: TestPolicyEngineInitialization (0.00s)
    --- PASS: TestPolicyEngineInitialization/valid_config (0.00s)
    --- PASS: TestPolicyEngineInitialization/invalid_default_effect (0.00s)
    --- PASS: TestPolicyEngineInitialization/nil_config (0.00s)
=== RUN   TestPolicyDocumentValidation
=== RUN   TestPolicyDocumentValidation/valid_policy_document
=== RUN   TestPolicyDocumentValidation/missing_version
=== RUN   TestPolicyDocumentValidation/empty_statements
=== RUN   TestPolicyDocumentValidation/invalid_effect
--- PASS: TestPolicyDocumentValidation (0.00s)
    --- PASS: TestPolicyDocumentValidation/valid_policy_document (0.00s)
    --- PASS: TestPolicyDocumentValidation/missing_version (0.00s)
    --- PASS: TestPolicyDocumentValidation/empty_statements (0.00s)
    --- PASS: TestPolicyDocumentValidation/invalid_effect (0.00s)
=== RUN   TestPolicyEvaluation
=== RUN   TestPolicyEvaluation/allow_read_access
=== RUN   TestPolicyEvaluation/deny_delete_access_(explicit_deny)
=== RUN   TestPolicyEvaluation/deny_by_default_(no_matching_policy)
=== RUN   TestPolicyEvaluation/allow_with_wildcard_action
--- PASS: TestPolicyEvaluation (0.00s)
    --- PASS: TestPolicyEvaluation/allow_read_access (0.00s)
    --- PASS: TestPolicyEvaluation/deny_delete_access_(explicit_deny) (0.00s)
    --- PASS: TestPolicyEvaluation/deny_by_default_(no_matching_policy) (0.00s)
    --- PASS: TestPolicyEvaluation/allow_with_wildcard_action (0.00s)
=== RUN   TestConditionEvaluation
=== RUN   TestConditionEvaluation/allow_from_office_IP
=== RUN   TestConditionEvaluation/deny_from_external_IP
=== RUN   TestConditionEvaluation/allow_from_internal_IP
--- PASS: TestConditionEvaluation (0.00s)
    --- PASS: TestConditionEvaluation/allow_from_office_IP (0.00s)
    --- PASS: TestConditionEvaluation/deny_from_external_IP (0.00s)
    --- PASS: TestConditionEvaluation/allow_from_internal_IP (0.00s)
=== RUN   TestResourceMatching
=== RUN   TestResourceMatching/exact_match
=== RUN   TestResourceMatching/wildcard_match
=== RUN   TestResourceMatching/bucket_wildcard
=== RUN   TestResourceMatching/no_match_different_bucket
=== RUN   TestResourceMatching/prefix_match
--- PASS: TestResourceMatching (0.00s)
    --- PASS: TestResourceMatching/exact_match (0.00s)
    --- PASS: TestResourceMatching/wildcard_match (0.00s)
    --- PASS: TestResourceMatching/bucket_wildcard (0.00s)
    --- PASS: TestResourceMatching/no_match_different_bucket (0.00s)
    --- PASS: TestResourceMatching/prefix_match (0.00s)
=== RUN   TestActionMatching
=== RUN   TestActionMatching/exact_match
=== RUN   TestActionMatching/wildcard_service
=== RUN   TestActionMatching/wildcard_all
=== RUN   TestActionMatching/prefix_match
=== RUN   TestActionMatching/no_match_different_service
--- PASS: TestActionMatching (0.00s)
    --- PASS: TestActionMatching/exact_match (0.00s)
    --- PASS: TestActionMatching/wildcard_service (0.00s)
    --- PASS: TestActionMatching/wildcard_all (0.00s)
    --- PASS: TestActionMatching/prefix_match (0.00s)
    --- PASS: TestActionMatching/no_match_different_service (0.00s)
=== RUN   TestPolicyVariableMatchingInActionsAndResources
=== RUN   TestPolicyVariableMatchingInActionsAndResources/policy_variable_in_action_matches
=== RUN   TestPolicyVariableMatchingInActionsAndResources/policy_variable_in_resource_matches
=== RUN   TestPolicyVariableMatchingInActionsAndResources/saml_username_variable_in_resource
=== RUN   TestPolicyVariableMatchingInActionsAndResources/policy_variable_no_match_wrong_user
=== RUN   TestPolicyVariableMatchingInActionsAndResources/missing_policy_variable_context
--- PASS: TestPolicyVariableMatchingInActionsAndResources (0.00s)
    --- PASS: TestPolicyVariableMatchingInActionsAndResources/policy_variable_in_action_matches (0.00s)
    --- PASS: TestPolicyVariableMatchingInActionsAndResources/policy_variable_in_resource_matches (0.00s)
    --- PASS: TestPolicyVariableMatchingInActionsAndResources/saml_username_variable_in_resource (0.00s)
    --- PASS: TestPolicyVariableMatchingInActionsAndResources/policy_variable_no_match_wrong_user (0.00s)
    --- PASS: TestPolicyVariableMatchingInActionsAndResources/missing_policy_variable_context (0.00s)
=== RUN   TestActionResourceConsistencyWithStringConditions
--- PASS: TestActionResourceConsistencyWithStringConditions (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/iam/policy	0.014s
=== RUN   TestIdentityProviderInterface
--- PASS: TestIdentityProviderInterface (0.00s)
=== RUN   TestExternalIdentityValidation
=== RUN   TestExternalIdentityValidation/valid_identity
=== RUN   TestExternalIdentityValidation/missing_user_id
=== RUN   TestExternalIdentityValidation/missing_provider
=== RUN   TestExternalIdentityValidation/invalid_email
--- PASS: TestExternalIdentityValidation (0.00s)
    --- PASS: TestExternalIdentityValidation/valid_identity (0.00s)
    --- PASS: TestExternalIdentityValidation/missing_user_id (0.00s)
    --- PASS: TestExternalIdentityValidation/missing_provider (0.00s)
    --- PASS: TestExternalIdentityValidation/invalid_email (0.00s)
=== RUN   TestTokenClaimsValidation
=== RUN   TestTokenClaimsValidation/valid_claims
=== RUN   TestTokenClaimsValidation/expired_token
=== RUN   TestTokenClaimsValidation/future_issued_token
--- PASS: TestTokenClaimsValidation (0.00s)
    --- PASS: TestTokenClaimsValidation/valid_claims (0.00s)
    --- PASS: TestTokenClaimsValidation/expired_token (0.00s)
    --- PASS: TestTokenClaimsValidation/future_issued_token (0.00s)
=== RUN   TestProviderRegistry
=== RUN   TestProviderRegistry/register_provider
=== RUN   TestProviderRegistry/get_provider
=== RUN   TestProviderRegistry/list_providers
--- PASS: TestProviderRegistry (0.00s)
    --- PASS: TestProviderRegistry/register_provider (0.00s)
    --- PASS: TestProviderRegistry/get_provider (0.00s)
    --- PASS: TestProviderRegistry/list_providers (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/iam/providers	0.012s
=== RUN   TestCrossInstanceTokenUsage
=== RUN   TestCrossInstanceTokenUsage/cross_instance_token_validation
=== RUN   TestCrossInstanceTokenUsage/cross_instance_assume_role_flow
=== RUN   TestCrossInstanceTokenUsage/cross_instance_session_revocation
=== RUN   TestCrossInstanceTokenUsage/provider_consistency_affects_token_generation
--- PASS: TestCrossInstanceTokenUsage (0.00s)
    --- PASS: TestCrossInstanceTokenUsage/cross_instance_token_validation (0.00s)
    --- PASS: TestCrossInstanceTokenUsage/cross_instance_assume_role_flow (0.00s)
    --- PASS: TestCrossInstanceTokenUsage/cross_instance_session_revocation (0.00s)
    --- PASS: TestCrossInstanceTokenUsage/provider_consistency_affects_token_generation (0.00s)
=== RUN   TestSTSDistributedConfigurationRequirements
=== RUN   TestSTSDistributedConfigurationRequirements/same_signing_key_required
=== RUN   TestSTSDistributedConfigurationRequirements/same_issuer_required
=== RUN   TestSTSDistributedConfigurationRequirements/identical_configuration_required
--- PASS: TestSTSDistributedConfigurationRequirements (0.00s)
    --- PASS: TestSTSDistributedConfigurationRequirements/same_signing_key_required (0.00s)
    --- PASS: TestSTSDistributedConfigurationRequirements/same_issuer_required (0.00s)
    --- PASS: TestSTSDistributedConfigurationRequirements/identical_configuration_required (0.00s)
=== RUN   TestSTSRealWorldDistributedScenarios
=== RUN   TestSTSRealWorldDistributedScenarios/load_balanced_s3_gateway_scenario
--- PASS: TestSTSRealWorldDistributedScenarios (0.00s)
    --- PASS: TestSTSRealWorldDistributedScenarios/load_balanced_s3_gateway_scenario (0.00s)
=== RUN   TestDistributedSTSService
=== RUN   TestDistributedSTSService/provider_consistency
=== RUN   TestDistributedSTSService/token_generation_consistency
=== RUN   TestDistributedSTSService/cross_instance_token_validation
=== RUN   TestDistributedSTSService/provider_access_consistency
--- PASS: TestDistributedSTSService (0.01s)
    --- PASS: TestDistributedSTSService/provider_consistency (0.00s)
    --- PASS: TestDistributedSTSService/token_generation_consistency (0.00s)
    --- PASS: TestDistributedSTSService/cross_instance_token_validation (0.01s)
    --- PASS: TestDistributedSTSService/provider_access_consistency (0.00s)
=== RUN   TestSTSConfigurationValidation
=== RUN   TestSTSConfigurationValidation/consistent_signing_keys_required
=== RUN   TestSTSConfigurationValidation/consistent_issuer_required
--- PASS: TestSTSConfigurationValidation (0.00s)
    --- PASS: TestSTSConfigurationValidation/consistent_signing_keys_required (0.00s)
    --- PASS: TestSTSConfigurationValidation/consistent_issuer_required (0.00s)
=== RUN   TestProviderFactoryDistributed
--- PASS: TestProviderFactoryDistributed (0.00s)
=== RUN   TestProviderFactory_CreateOIDCProvider
--- PASS: TestProviderFactory_CreateOIDCProvider (0.00s)
=== RUN   TestProviderFactory_DisabledProvider
--- PASS: TestProviderFactory_DisabledProvider (0.00s)
=== RUN   TestProviderFactory_InvalidProviderType
--- PASS: TestProviderFactory_InvalidProviderType (0.00s)
=== RUN   TestProviderFactory_LoadMultipleProviders
--- PASS: TestProviderFactory_LoadMultipleProviders (0.00s)
=== RUN   TestProviderFactory_ValidateOIDCConfig
=== RUN   TestProviderFactory_ValidateOIDCConfig/valid_config
=== RUN   TestProviderFactory_ValidateOIDCConfig/missing_issuer
=== RUN   TestProviderFactory_ValidateOIDCConfig/missing_clientId
--- PASS: TestProviderFactory_ValidateOIDCConfig (0.00s)
    --- PASS: TestProviderFactory_ValidateOIDCConfig/valid_config (0.00s)
    --- PASS: TestProviderFactory_ValidateOIDCConfig/missing_issuer (0.00s)
    --- PASS: TestProviderFactory_ValidateOIDCConfig/missing_clientId (0.00s)
=== RUN   TestProviderFactory_ConvertToStringSlice
=== RUN   TestProviderFactory_ConvertToStringSlice/string_slice
=== RUN   TestProviderFactory_ConvertToStringSlice/interface_slice
=== RUN   TestProviderFactory_ConvertToStringSlice/invalid_type
--- PASS: TestProviderFactory_ConvertToStringSlice (0.00s)
    --- PASS: TestProviderFactory_ConvertToStringSlice/string_slice (0.00s)
    --- PASS: TestProviderFactory_ConvertToStringSlice/interface_slice (0.00s)
    --- PASS: TestProviderFactory_ConvertToStringSlice/invalid_type (0.00s)
=== RUN   TestProviderFactory_ConfigConversionErrors
=== RUN   TestProviderFactory_ConfigConversionErrors/invalid_scopes_type
=== RUN   TestProviderFactory_ConfigConversionErrors/invalid_claimsMapping_type
=== RUN   TestProviderFactory_ConfigConversionErrors/invalid_roleMapping_type
--- PASS: TestProviderFactory_ConfigConversionErrors (0.00s)
    --- PASS: TestProviderFactory_ConfigConversionErrors/invalid_scopes_type (0.00s)
    --- PASS: TestProviderFactory_ConfigConversionErrors/invalid_claimsMapping_type (0.00s)
    --- PASS: TestProviderFactory_ConfigConversionErrors/invalid_roleMapping_type (0.00s)
=== RUN   TestProviderFactory_ConvertToStringMap
=== RUN   TestProviderFactory_ConvertToStringMap/string_map
=== RUN   TestProviderFactory_ConvertToStringMap/interface_map
=== RUN   TestProviderFactory_ConvertToStringMap/invalid_type
--- PASS: TestProviderFactory_ConvertToStringMap (0.00s)
    --- PASS: TestProviderFactory_ConvertToStringMap/string_map (0.00s)
    --- PASS: TestProviderFactory_ConvertToStringMap/interface_map (0.00s)
    --- PASS: TestProviderFactory_ConvertToStringMap/invalid_type (0.00s)
=== RUN   TestProviderFactory_GetSupportedProviderTypes
--- PASS: TestProviderFactory_GetSupportedProviderTypes (0.00s)
=== RUN   TestSTSService_LoadProvidersFromConfig
--- PASS: TestSTSService_LoadProvidersFromConfig (0.00s)
=== RUN   TestSTSService_NoProvidersConfig
--- PASS: TestSTSService_NoProvidersConfig (0.00s)
=== RUN   TestSecurityIssuerToProviderMapping
=== RUN   TestSecurityIssuerToProviderMapping/jwt_token_with_issuer_a_only_validated_by_provider_a
=== RUN   TestSecurityIssuerToProviderMapping/jwt_token_with_issuer_b_only_validated_by_provider_b
=== RUN   TestSecurityIssuerToProviderMapping/jwt_token_with_unregistered_issuer_fails
=== RUN   TestSecurityIssuerToProviderMapping/non_jwt_tokens_are_rejected
--- PASS: TestSecurityIssuerToProviderMapping (0.00s)
    --- PASS: TestSecurityIssuerToProviderMapping/jwt_token_with_issuer_a_only_validated_by_provider_a (0.00s)
    --- PASS: TestSecurityIssuerToProviderMapping/jwt_token_with_issuer_b_only_validated_by_provider_b (0.00s)
    --- PASS: TestSecurityIssuerToProviderMapping/jwt_token_with_unregistered_issuer_fails (0.00s)
    --- PASS: TestSecurityIssuerToProviderMapping/non_jwt_tokens_are_rejected (0.00s)
=== RUN   TestAssumeRoleWithWebIdentity_SessionPolicy
=== RUN   TestAssumeRoleWithWebIdentity_SessionPolicy/should_reject_request_with_session_policy
=== RUN   TestAssumeRoleWithWebIdentity_SessionPolicy/should_succeed_without_session_policy
=== RUN   TestAssumeRoleWithWebIdentity_SessionPolicy/should_succeed_with_empty_policy_pointer
=== RUN   TestAssumeRoleWithWebIdentity_SessionPolicy/should_reject_empty_string_policy
--- PASS: TestAssumeRoleWithWebIdentity_SessionPolicy (0.00s)
    --- PASS: TestAssumeRoleWithWebIdentity_SessionPolicy/should_reject_request_with_session_policy (0.00s)
    --- PASS: TestAssumeRoleWithWebIdentity_SessionPolicy/should_succeed_without_session_policy (0.00s)
    --- PASS: TestAssumeRoleWithWebIdentity_SessionPolicy/should_succeed_with_empty_policy_pointer (0.00s)
    --- PASS: TestAssumeRoleWithWebIdentity_SessionPolicy/should_reject_empty_string_policy (0.00s)
=== RUN   TestAssumeRoleWithWebIdentity_SessionPolicy_ErrorMessage
--- PASS: TestAssumeRoleWithWebIdentity_SessionPolicy_ErrorMessage (0.00s)
=== RUN   TestAssumeRoleWithWebIdentity_SessionPolicy_EdgeCases
=== RUN   TestAssumeRoleWithWebIdentity_SessionPolicy_EdgeCases/malformed_json_policy_still_rejected
=== RUN   TestAssumeRoleWithWebIdentity_SessionPolicy_EdgeCases/policy_with_whitespace_still_rejected
--- PASS: TestAssumeRoleWithWebIdentity_SessionPolicy_EdgeCases (0.00s)
    --- PASS: TestAssumeRoleWithWebIdentity_SessionPolicy_EdgeCases/malformed_json_policy_still_rejected (0.00s)
    --- PASS: TestAssumeRoleWithWebIdentity_SessionPolicy_EdgeCases/policy_with_whitespace_still_rejected (0.00s)
=== RUN   TestAssumeRoleWithWebIdentity_PolicyFieldDocumentation
--- PASS: TestAssumeRoleWithWebIdentity_PolicyFieldDocumentation (0.00s)
=== RUN   TestAssumeRoleWithCredentials_NoSessionPolicySupport
--- PASS: TestAssumeRoleWithCredentials_NoSessionPolicySupport (0.00s)
=== RUN   TestSTSServiceInitialization
=== RUN   TestSTSServiceInitialization/valid_config
=== RUN   TestSTSServiceInitialization/missing_signing_key
=== RUN   TestSTSServiceInitialization/invalid_token_duration
--- PASS: TestSTSServiceInitialization (0.00s)
    --- PASS: TestSTSServiceInitialization/valid_config (0.00s)
    --- PASS: TestSTSServiceInitialization/missing_signing_key (0.00s)
    --- PASS: TestSTSServiceInitialization/invalid_token_duration (0.00s)
=== RUN   TestAssumeRoleWithWebIdentity
=== RUN   TestAssumeRoleWithWebIdentity/successful_role_assumption
=== RUN   TestAssumeRoleWithWebIdentity/invalid_web_identity_token
=== RUN   TestAssumeRoleWithWebIdentity/non-existent_role
=== RUN   TestAssumeRoleWithWebIdentity/custom_session_duration
--- PASS: TestAssumeRoleWithWebIdentity (0.00s)
    --- PASS: TestAssumeRoleWithWebIdentity/successful_role_assumption (0.00s)
    --- PASS: TestAssumeRoleWithWebIdentity/invalid_web_identity_token (0.00s)
    --- PASS: TestAssumeRoleWithWebIdentity/non-existent_role (0.00s)
    --- PASS: TestAssumeRoleWithWebIdentity/custom_session_duration (0.00s)
=== RUN   TestAssumeRoleWithLDAP
=== RUN   TestAssumeRoleWithLDAP/successful_LDAP_role_assumption
=== RUN   TestAssumeRoleWithLDAP/invalid_LDAP_credentials
--- PASS: TestAssumeRoleWithLDAP (0.00s)
    --- PASS: TestAssumeRoleWithLDAP/successful_LDAP_role_assumption (0.00s)
    --- PASS: TestAssumeRoleWithLDAP/invalid_LDAP_credentials (0.00s)
=== RUN   TestSessionTokenValidation
=== RUN   TestSessionTokenValidation/valid_session_token
=== RUN   TestSessionTokenValidation/invalid_session_token
=== RUN   TestSessionTokenValidation/empty_session_token
--- PASS: TestSessionTokenValidation (0.00s)
    --- PASS: TestSessionTokenValidation/valid_session_token (0.00s)
    --- PASS: TestSessionTokenValidation/invalid_session_token (0.00s)
    --- PASS: TestSessionTokenValidation/empty_session_token (0.00s)
=== RUN   TestSessionTokenPersistence
--- PASS: TestSessionTokenPersistence (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/iam/sts	0.024s
?   	github.com/seaweedfs/seaweedfs/weed/iam/util	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/iam/utils	[no test files]
=== RUN   TestGetActionsUserPath
--- PASS: TestGetActionsUserPath (0.00s)
=== RUN   TestGetActionsWildcardPath
--- PASS: TestGetActionsWildcardPath (0.00s)
=== RUN   TestGetActionsInvalidAction
--- PASS: TestGetActionsInvalidAction (0.00s)
=== RUN   TestCreateUser
--- PASS: TestCreateUser (0.00s)
=== RUN   TestListUsers
--- PASS: TestListUsers (0.00s)
=== RUN   TestListAccessKeys
--- PASS: TestListAccessKeys (0.00s)
=== RUN   TestGetUser
--- PASS: TestGetUser (0.00s)
=== RUN   TestCreatePolicy
--- PASS: TestCreatePolicy (0.00s)
=== RUN   TestPutUserPolicy
--- PASS: TestPutUserPolicy (0.00s)
=== RUN   TestPutUserPolicyError
E0616 11:57:39.807601 iamapi_management_handlers.go:496 PutUserPolicy:  the user with name InvalidUser cannot be found
E0616 11:57:39.808391 iamapi_handlers.go:29 Response the user with name InvalidUser cannot be found
--- PASS: TestPutUserPolicyError (0.00s)
=== RUN   TestGetUserPolicy
--- PASS: TestGetUserPolicy (0.00s)
=== RUN   TestUpdateUser
--- PASS: TestUpdateUser (0.00s)
=== RUN   TestDeleteUser
--- PASS: TestDeleteUser (0.00s)
=== RUN   TestHandleImplicitUsername
--- PASS: TestHandleImplicitUsername (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/iamapi	0.036s
=== RUN   TestCropping
--- PASS: TestCropping (0.13s)
=== RUN   TestXYZ
--- PASS: TestXYZ (0.47s)
=== RUN   TestResizing
--- PASS: TestResizing (0.06s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/images	0.672s
=== RUN   TestCiphertextEnvelope_CreateAndParse
--- PASS: TestCiphertextEnvelope_CreateAndParse (0.00s)
=== RUN   TestCiphertextEnvelope_InvalidFormat
--- PASS: TestCiphertextEnvelope_InvalidFormat (0.00s)
=== RUN   TestCiphertextEnvelope_ValidationErrors
=== RUN   TestCiphertextEnvelope_ValidationErrors/Valid
=== RUN   TestCiphertextEnvelope_ValidationErrors/Empty_provider
=== RUN   TestCiphertextEnvelope_ValidationErrors/Empty_keyID
=== RUN   TestCiphertextEnvelope_ValidationErrors/Empty_ciphertext
--- PASS: TestCiphertextEnvelope_ValidationErrors (0.00s)
    --- PASS: TestCiphertextEnvelope_ValidationErrors/Valid (0.00s)
    --- PASS: TestCiphertextEnvelope_ValidationErrors/Empty_provider (0.00s)
    --- PASS: TestCiphertextEnvelope_ValidationErrors/Empty_keyID (0.00s)
    --- PASS: TestCiphertextEnvelope_ValidationErrors/Empty_ciphertext (0.00s)
=== RUN   TestCiphertextEnvelope_MultipleProviders
=== RUN   TestCiphertextEnvelope_MultipleProviders/openbao
=== RUN   TestCiphertextEnvelope_MultipleProviders/gcp
=== RUN   TestCiphertextEnvelope_MultipleProviders/azure
=== RUN   TestCiphertextEnvelope_MultipleProviders/aws
--- PASS: TestCiphertextEnvelope_MultipleProviders (0.00s)
    --- PASS: TestCiphertextEnvelope_MultipleProviders/openbao (0.00s)
    --- PASS: TestCiphertextEnvelope_MultipleProviders/gcp (0.00s)
    --- PASS: TestCiphertextEnvelope_MultipleProviders/azure (0.00s)
    --- PASS: TestCiphertextEnvelope_MultipleProviders/aws (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/kms	0.009s
?   	github.com/seaweedfs/seaweedfs/weed/kms/aws	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/kms/gcp	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/kms/local	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/kms/openbao	[no test files]
=== RUN   TestInodeEntry_removeOnePath
=== RUN   TestInodeEntry_removeOnePath/actual_case
=== RUN   TestInodeEntry_removeOnePath/empty
=== RUN   TestInodeEntry_removeOnePath/single
=== RUN   TestInodeEntry_removeOnePath/first
=== RUN   TestInodeEntry_removeOnePath/middle
=== RUN   TestInodeEntry_removeOnePath/last
=== RUN   TestInodeEntry_removeOnePath/not_found
--- PASS: TestInodeEntry_removeOnePath (0.00s)
    --- PASS: TestInodeEntry_removeOnePath/actual_case (0.00s)
    --- PASS: TestInodeEntry_removeOnePath/empty (0.00s)
    --- PASS: TestInodeEntry_removeOnePath/single (0.00s)
    --- PASS: TestInodeEntry_removeOnePath/first (0.00s)
    --- PASS: TestInodeEntry_removeOnePath/middle (0.00s)
    --- PASS: TestInodeEntry_removeOnePath/last (0.00s)
    --- PASS: TestInodeEntry_removeOnePath/not_found (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mount	0.020s
?   	github.com/seaweedfs/seaweedfs/weed/mount/meta_cache	[no test files]
=== RUN   Test_PageChunkWrittenIntervalList
--- PASS: Test_PageChunkWrittenIntervalList (0.00s)
=== RUN   Test_PageChunkWrittenIntervalList1
--- PASS: Test_PageChunkWrittenIntervalList1 (0.00s)
=== RUN   TestUploadPipeline
--- PASS: TestUploadPipeline (45.69s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mount/page_writer	45.697s
?   	github.com/seaweedfs/seaweedfs/weed/mount/unmount	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/agent	[no test files]
=== RUN   TestConvertOffsetToMessagePosition
=== RUN   TestConvertOffsetToMessagePosition/reset_to_earliest
=== RUN   TestConvertOffsetToMessagePosition/reset_to_latest
=== RUN   TestConvertOffsetToMessagePosition/exact_offset_zero
=== RUN   TestConvertOffsetToMessagePosition/exact_offset_non-zero
=== RUN   TestConvertOffsetToMessagePosition/exact_timestamp
--- PASS: TestConvertOffsetToMessagePosition (0.00s)
    --- PASS: TestConvertOffsetToMessagePosition/reset_to_earliest (0.00s)
    --- PASS: TestConvertOffsetToMessagePosition/reset_to_latest (0.00s)
    --- PASS: TestConvertOffsetToMessagePosition/exact_offset_zero (0.00s)
    --- PASS: TestConvertOffsetToMessagePosition/exact_offset_non-zero (0.00s)
    --- PASS: TestConvertOffsetToMessagePosition/exact_timestamp (0.00s)
=== RUN   TestConvertOffsetToMessagePosition_OffsetEncoding
=== RUN   TestConvertOffsetToMessagePosition_OffsetEncoding/offset_10
=== RUN   TestConvertOffsetToMessagePosition_OffsetEncoding/offset_100
=== RUN   TestConvertOffsetToMessagePosition_OffsetEncoding/offset_0
=== RUN   TestConvertOffsetToMessagePosition_OffsetEncoding/offset_42
--- PASS: TestConvertOffsetToMessagePosition_OffsetEncoding (0.00s)
    --- PASS: TestConvertOffsetToMessagePosition_OffsetEncoding/offset_10 (0.00s)
    --- PASS: TestConvertOffsetToMessagePosition_OffsetEncoding/offset_100 (0.00s)
    --- PASS: TestConvertOffsetToMessagePosition_OffsetEncoding/offset_0 (0.00s)
    --- PASS: TestConvertOffsetToMessagePosition_OffsetEncoding/offset_42 (0.00s)
=== RUN   TestConvertOffsetToMessagePosition_ConsistentResults
--- PASS: TestConvertOffsetToMessagePosition_ConsistentResults (0.01s)
=== RUN   TestConvertOffsetToMessagePosition_FixVerification
--- PASS: TestConvertOffsetToMessagePosition_FixVerification (0.02s)
=== RUN   TestPartitionIdentityConsistency
--- PASS: TestPartitionIdentityConsistency (0.00s)
=== RUN   TestBrokerOffsetManager_GetSubscription_Fixed
--- PASS: TestBrokerOffsetManager_GetSubscription_Fixed (0.00s)
=== RUN   TestBrokerOffsetManager_ListActiveSubscriptions_Fixed
--- PASS: TestBrokerOffsetManager_ListActiveSubscriptions_Fixed (0.00s)
=== RUN   TestMessageQueueBroker_ListActiveSubscriptions_Fixed
--- PASS: TestMessageQueueBroker_ListActiveSubscriptions_Fixed (0.00s)
=== RUN   TestSingleWriterPerPartitionCorrectness
--- PASS: TestSingleWriterPerPartitionCorrectness (0.00s)
=== RUN   TestEndToEndWorkflowAfterFixes
--- PASS: TestEndToEndWorkflowAfterFixes (0.00s)
=== RUN   TestBrokerOffsetManager_AssignOffset
--- PASS: TestBrokerOffsetManager_AssignOffset (0.00s)
=== RUN   TestBrokerOffsetManager_AssignBatchOffsets
--- PASS: TestBrokerOffsetManager_AssignBatchOffsets (0.00s)
=== RUN   TestBrokerOffsetManager_GetHighWaterMark
--- PASS: TestBrokerOffsetManager_GetHighWaterMark (0.00s)
=== RUN   TestBrokerOffsetManager_CreateSubscription
--- PASS: TestBrokerOffsetManager_CreateSubscription (0.00s)
=== RUN   TestBrokerOffsetManager_GetPartitionOffsetInfo
--- PASS: TestBrokerOffsetManager_GetPartitionOffsetInfo (0.00s)
=== RUN   TestBrokerOffsetManager_MultiplePartitions
--- PASS: TestBrokerOffsetManager_MultiplePartitions (0.00s)
=== RUN   TestOffsetAwarePublisher
--- PASS: TestOffsetAwarePublisher (0.00s)
=== RUN   TestBrokerOffsetManager_GetOffsetMetrics
--- PASS: TestBrokerOffsetManager_GetOffsetMetrics (0.00s)
=== RUN   TestBrokerOffsetManager_AssignOffsetsWithResult
--- PASS: TestBrokerOffsetManager_AssignOffsetsWithResult (0.00s)
=== RUN   TestBrokerOffsetManager_Shutdown
--- PASS: TestBrokerOffsetManager_Shutdown (0.00s)
=== RUN   TestValidateRecordValue
--- PASS: TestValidateRecordValue (0.00s)
=== RUN   TestValidateRecordValueEmptyFields
--- PASS: TestValidateRecordValueEmptyFields (0.00s)
=== RUN   TestValidateRecordValueNonKafkaTopic
--- PASS: TestValidateRecordValueNonKafkaTopic (0.00s)
=== RUN   TestValidateRecordValueNilInputs
--- PASS: TestValidateRecordValueNilInputs (0.00s)
=== RUN   TestRecordValueMarshalUnmarshalIntegration
--- PASS: TestRecordValueMarshalUnmarshalIntegration (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/broker	0.046s
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/agent_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/pub_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/sub_client	[no test files]
=== RUN   TestPartitionMapper_GetRangeSize
    partition_mapping_test.go:95: Range size: 35, Max Kafka partitions: 72, Ring utilization: 100.00%
--- PASS: TestPartitionMapper_GetRangeSize (0.00s)
=== RUN   TestPartitionMapper_MapKafkaPartitionToSMQRange
=== RUN   TestPartitionMapper_MapKafkaPartitionToSMQRange/#00
=== RUN   TestPartitionMapper_MapKafkaPartitionToSMQRange/#01
=== RUN   TestPartitionMapper_MapKafkaPartitionToSMQRange/#02
=== RUN   TestPartitionMapper_MapKafkaPartitionToSMQRange/#03
--- PASS: TestPartitionMapper_MapKafkaPartitionToSMQRange (0.00s)
    --- PASS: TestPartitionMapper_MapKafkaPartitionToSMQRange/#00 (0.00s)
    --- PASS: TestPartitionMapper_MapKafkaPartitionToSMQRange/#01 (0.00s)
    --- PASS: TestPartitionMapper_MapKafkaPartitionToSMQRange/#02 (0.00s)
    --- PASS: TestPartitionMapper_MapKafkaPartitionToSMQRange/#03 (0.00s)
=== RUN   TestPartitionMapper_ExtractKafkaPartitionFromSMQRange
=== RUN   TestPartitionMapper_ExtractKafkaPartitionFromSMQRange/#00
=== RUN   TestPartitionMapper_ExtractKafkaPartitionFromSMQRange/#01
=== RUN   TestPartitionMapper_ExtractKafkaPartitionFromSMQRange/#02
=== RUN   TestPartitionMapper_ExtractKafkaPartitionFromSMQRange/#03
--- PASS: TestPartitionMapper_ExtractKafkaPartitionFromSMQRange (0.00s)
    --- PASS: TestPartitionMapper_ExtractKafkaPartitionFromSMQRange/#00 (0.00s)
    --- PASS: TestPartitionMapper_ExtractKafkaPartitionFromSMQRange/#01 (0.00s)
    --- PASS: TestPartitionMapper_ExtractKafkaPartitionFromSMQRange/#02 (0.00s)
    --- PASS: TestPartitionMapper_ExtractKafkaPartitionFromSMQRange/#03 (0.00s)
=== RUN   TestPartitionMapper_RoundTrip
--- PASS: TestPartitionMapper_RoundTrip (0.00s)
=== RUN   TestPartitionMapper_CreateSMQPartition
--- PASS: TestPartitionMapper_CreateSMQPartition (0.00s)
=== RUN   TestPartitionMapper_ValidateKafkaPartition
=== RUN   TestPartitionMapper_ValidateKafkaPartition/#00
=== RUN   TestPartitionMapper_ValidateKafkaPartition/#01
=== RUN   TestPartitionMapper_ValidateKafkaPartition/#02
=== RUN   TestPartitionMapper_ValidateKafkaPartition/#03
=== RUN   TestPartitionMapper_ValidateKafkaPartition/#04
=== RUN   TestPartitionMapper_ValidateKafkaPartition/#05
--- PASS: TestPartitionMapper_ValidateKafkaPartition (0.00s)
    --- PASS: TestPartitionMapper_ValidateKafkaPartition/#00 (0.00s)
    --- PASS: TestPartitionMapper_ValidateKafkaPartition/#01 (0.00s)
    --- PASS: TestPartitionMapper_ValidateKafkaPartition/#02 (0.00s)
    --- PASS: TestPartitionMapper_ValidateKafkaPartition/#03 (0.00s)
    --- PASS: TestPartitionMapper_ValidateKafkaPartition/#04 (0.00s)
    --- PASS: TestPartitionMapper_ValidateKafkaPartition/#05 (0.00s)
=== RUN   TestPartitionMapper_ConsistencyWithGlobalFunctions
--- PASS: TestPartitionMapper_ConsistencyWithGlobalFunctions (0.00s)
=== RUN   TestPartitionMapper_GetPartitionMappingInfo
    partition_mapping_test.go:293: Partition mapping info: map[max_kafka_partitions:72 range_size:35 ring_size:2520 ring_utilization:1]
--- PASS: TestPartitionMapper_GetPartitionMappingInfo (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/kafka	0.020s
=== RUN   TestCompressionCodec_String
=== RUN   TestCompressionCodec_String/none
=== RUN   TestCompressionCodec_String/gzip
=== RUN   TestCompressionCodec_String/snappy
=== RUN   TestCompressionCodec_String/lz4
=== RUN   TestCompressionCodec_String/zstd
=== RUN   TestCompressionCodec_String/unknown(99)
--- PASS: TestCompressionCodec_String (0.00s)
    --- PASS: TestCompressionCodec_String/none (0.00s)
    --- PASS: TestCompressionCodec_String/gzip (0.00s)
    --- PASS: TestCompressionCodec_String/snappy (0.00s)
    --- PASS: TestCompressionCodec_String/lz4 (0.00s)
    --- PASS: TestCompressionCodec_String/zstd (0.00s)
    --- PASS: TestCompressionCodec_String/unknown(99) (0.00s)
=== RUN   TestCompressionCodec_IsValid
=== RUN   TestCompressionCodec_IsValid/none
=== RUN   TestCompressionCodec_IsValid/gzip
=== RUN   TestCompressionCodec_IsValid/snappy
=== RUN   TestCompressionCodec_IsValid/lz4
=== RUN   TestCompressionCodec_IsValid/zstd
=== RUN   TestCompressionCodec_IsValid/unknown(-1)
=== RUN   TestCompressionCodec_IsValid/unknown(5)
=== RUN   TestCompressionCodec_IsValid/unknown(99)
--- PASS: TestCompressionCodec_IsValid (0.00s)
    --- PASS: TestCompressionCodec_IsValid/none (0.00s)
    --- PASS: TestCompressionCodec_IsValid/gzip (0.00s)
    --- PASS: TestCompressionCodec_IsValid/snappy (0.00s)
    --- PASS: TestCompressionCodec_IsValid/lz4 (0.00s)
    --- PASS: TestCompressionCodec_IsValid/zstd (0.00s)
    --- PASS: TestCompressionCodec_IsValid/unknown(-1) (0.00s)
    --- PASS: TestCompressionCodec_IsValid/unknown(5) (0.00s)
    --- PASS: TestCompressionCodec_IsValid/unknown(99) (0.00s)
=== RUN   TestExtractCompressionCodec
=== RUN   TestExtractCompressionCodec/None
=== RUN   TestExtractCompressionCodec/Gzip
=== RUN   TestExtractCompressionCodec/Snappy
=== RUN   TestExtractCompressionCodec/Lz4
=== RUN   TestExtractCompressionCodec/Zstd
=== RUN   TestExtractCompressionCodec/Gzip_with_transactional
=== RUN   TestExtractCompressionCodec/Snappy_with_control
=== RUN   TestExtractCompressionCodec/Lz4_with_both_flags
--- PASS: TestExtractCompressionCodec (0.00s)
    --- PASS: TestExtractCompressionCodec/None (0.00s)
    --- PASS: TestExtractCompressionCodec/Gzip (0.00s)
    --- PASS: TestExtractCompressionCodec/Snappy (0.00s)
    --- PASS: TestExtractCompressionCodec/Lz4 (0.00s)
    --- PASS: TestExtractCompressionCodec/Zstd (0.00s)
    --- PASS: TestExtractCompressionCodec/Gzip_with_transactional (0.00s)
    --- PASS: TestExtractCompressionCodec/Snappy_with_control (0.00s)
    --- PASS: TestExtractCompressionCodec/Lz4_with_both_flags (0.00s)
=== RUN   TestSetCompressionCodec
=== RUN   TestSetCompressionCodec/Set_None
=== RUN   TestSetCompressionCodec/Set_Gzip
=== RUN   TestSetCompressionCodec/Set_Snappy
=== RUN   TestSetCompressionCodec/Set_Lz4
=== RUN   TestSetCompressionCodec/Set_Zstd
=== RUN   TestSetCompressionCodec/Replace_Gzip_with_Snappy
=== RUN   TestSetCompressionCodec/Set_Gzip_preserving_transactional
=== RUN   TestSetCompressionCodec/Set_Lz4_preserving_control
=== RUN   TestSetCompressionCodec/Set_Zstd_preserving_both_flags
--- PASS: TestSetCompressionCodec (0.00s)
    --- PASS: TestSetCompressionCodec/Set_None (0.00s)
    --- PASS: TestSetCompressionCodec/Set_Gzip (0.00s)
    --- PASS: TestSetCompressionCodec/Set_Snappy (0.00s)
    --- PASS: TestSetCompressionCodec/Set_Lz4 (0.00s)
    --- PASS: TestSetCompressionCodec/Set_Zstd (0.00s)
    --- PASS: TestSetCompressionCodec/Replace_Gzip_with_Snappy (0.00s)
    --- PASS: TestSetCompressionCodec/Set_Gzip_preserving_transactional (0.00s)
    --- PASS: TestSetCompressionCodec/Set_Lz4_preserving_control (0.00s)
    --- PASS: TestSetCompressionCodec/Set_Zstd_preserving_both_flags (0.00s)
=== RUN   TestCompress_None
--- PASS: TestCompress_None (0.00s)
=== RUN   TestCompress_Gzip
--- PASS: TestCompress_Gzip (0.00s)
=== RUN   TestCompress_Snappy
--- PASS: TestCompress_Snappy (0.00s)
=== RUN   TestCompress_Lz4
--- PASS: TestCompress_Lz4 (0.00s)
=== RUN   TestCompress_Zstd
--- PASS: TestCompress_Zstd (0.01s)
=== RUN   TestCompress_InvalidCodec
--- PASS: TestCompress_InvalidCodec (0.00s)
=== RUN   TestDecompress_None
--- PASS: TestDecompress_None (0.00s)
=== RUN   TestRoundTrip
=== RUN   TestRoundTrip/none
=== RUN   TestRoundTrip/none/data_0
=== RUN   TestRoundTrip/none/data_1
=== RUN   TestRoundTrip/none/data_2
=== RUN   TestRoundTrip/none/data_3
=== RUN   TestRoundTrip/none/data_4
=== RUN   TestRoundTrip/none/data_5
=== RUN   TestRoundTrip/gzip
=== RUN   TestRoundTrip/gzip/data_0
=== RUN   TestRoundTrip/gzip/data_1
=== RUN   TestRoundTrip/gzip/data_2
=== RUN   TestRoundTrip/gzip/data_3
=== RUN   TestRoundTrip/gzip/data_4
=== RUN   TestRoundTrip/gzip/data_5
=== RUN   TestRoundTrip/snappy
=== RUN   TestRoundTrip/snappy/data_0
=== RUN   TestRoundTrip/snappy/data_1
=== RUN   TestRoundTrip/snappy/data_2
=== RUN   TestRoundTrip/snappy/data_3
=== RUN   TestRoundTrip/snappy/data_4
=== RUN   TestRoundTrip/snappy/data_5
=== RUN   TestRoundTrip/lz4
=== RUN   TestRoundTrip/lz4/data_0
=== RUN   TestRoundTrip/lz4/data_1
=== RUN   TestRoundTrip/lz4/data_2
=== RUN   TestRoundTrip/lz4/data_3
=== RUN   TestRoundTrip/lz4/data_4
=== RUN   TestRoundTrip/lz4/data_5
=== RUN   TestRoundTrip/zstd
=== RUN   TestRoundTrip/zstd/data_0
=== RUN   TestRoundTrip/zstd/data_1
=== RUN   TestRoundTrip/zstd/data_2
=== RUN   TestRoundTrip/zstd/data_3
=== RUN   TestRoundTrip/zstd/data_4
=== RUN   TestRoundTrip/zstd/data_5
--- PASS: TestRoundTrip (0.01s)
    --- PASS: TestRoundTrip/none (0.00s)
        --- PASS: TestRoundTrip/none/data_0 (0.00s)
        --- PASS: TestRoundTrip/none/data_1 (0.00s)
        --- PASS: TestRoundTrip/none/data_2 (0.00s)
        --- PASS: TestRoundTrip/none/data_3 (0.00s)
        --- PASS: TestRoundTrip/none/data_4 (0.00s)
        --- PASS: TestRoundTrip/none/data_5 (0.00s)
    --- PASS: TestRoundTrip/gzip (0.00s)
        --- PASS: TestRoundTrip/gzip/data_0 (0.00s)
        --- PASS: TestRoundTrip/gzip/data_1 (0.00s)
        --- PASS: TestRoundTrip/gzip/data_2 (0.00s)
        --- PASS: TestRoundTrip/gzip/data_3 (0.00s)
        --- PASS: TestRoundTrip/gzip/data_4 (0.00s)
        --- PASS: TestRoundTrip/gzip/data_5 (0.00s)
    --- PASS: TestRoundTrip/snappy (0.00s)
        --- PASS: TestRoundTrip/snappy/data_0 (0.00s)
        --- PASS: TestRoundTrip/snappy/data_1 (0.00s)
        --- PASS: TestRoundTrip/snappy/data_2 (0.00s)
        --- PASS: TestRoundTrip/snappy/data_3 (0.00s)
        --- PASS: TestRoundTrip/snappy/data_4 (0.00s)
        --- PASS: TestRoundTrip/snappy/data_5 (0.00s)
    --- PASS: TestRoundTrip/lz4 (0.00s)
        --- PASS: TestRoundTrip/lz4/data_0 (0.00s)
        --- PASS: TestRoundTrip/lz4/data_1 (0.00s)
        --- PASS: TestRoundTrip/lz4/data_2 (0.00s)
        --- PASS: TestRoundTrip/lz4/data_3 (0.00s)
        --- PASS: TestRoundTrip/lz4/data_4 (0.00s)
        --- PASS: TestRoundTrip/lz4/data_5 (0.00s)
    --- PASS: TestRoundTrip/zstd (0.00s)
        --- PASS: TestRoundTrip/zstd/data_0 (0.00s)
        --- PASS: TestRoundTrip/zstd/data_1 (0.00s)
        --- PASS: TestRoundTrip/zstd/data_2 (0.00s)
        --- PASS: TestRoundTrip/zstd/data_3 (0.00s)
        --- PASS: TestRoundTrip/zstd/data_4 (0.00s)
        --- PASS: TestRoundTrip/zstd/data_5 (0.00s)
=== RUN   TestDecompress_InvalidCodec
--- PASS: TestDecompress_InvalidCodec (0.00s)
=== RUN   TestDecompress_CorruptedData
=== RUN   TestDecompress_CorruptedData/gzip
=== RUN   TestDecompress_CorruptedData/snappy
=== RUN   TestDecompress_CorruptedData/lz4
=== RUN   TestDecompress_CorruptedData/zstd
--- PASS: TestDecompress_CorruptedData (0.00s)
    --- PASS: TestDecompress_CorruptedData/gzip (0.00s)
    --- PASS: TestDecompress_CorruptedData/snappy (0.00s)
    --- PASS: TestDecompress_CorruptedData/lz4 (0.00s)
    --- PASS: TestDecompress_CorruptedData/zstd (0.00s)
=== RUN   TestCompressRecordBatch
=== RUN   TestCompressRecordBatch/None_codec
=== RUN   TestCompressRecordBatch/Gzip_codec
=== RUN   TestCompressRecordBatch/Snappy_codec
--- PASS: TestCompressRecordBatch (0.00s)
    --- PASS: TestCompressRecordBatch/None_codec (0.00s)
    --- PASS: TestCompressRecordBatch/Gzip_codec (0.00s)
    --- PASS: TestCompressRecordBatch/Snappy_codec (0.00s)
=== RUN   TestDecompressRecordBatch
=== RUN   TestDecompressRecordBatch/None_codec
=== RUN   TestDecompressRecordBatch/Round_trip_with_Gzip
=== RUN   TestDecompressRecordBatch/Round_trip_with_Snappy
--- PASS: TestDecompressRecordBatch (0.00s)
    --- PASS: TestDecompressRecordBatch/None_codec (0.00s)
    --- PASS: TestDecompressRecordBatch/Round_trip_with_Gzip (0.00s)
    --- PASS: TestDecompressRecordBatch/Round_trip_with_Snappy (0.00s)
=== RUN   TestCompressionEfficiency
=== RUN   TestCompressionEfficiency/gzip
    compression_test.go:304: Codec: gzip, Original: 5100 bytes, Compressed: 98 bytes, Ratio: 0.02
=== RUN   TestCompressionEfficiency/snappy
    compression_test.go:304: Codec: snappy, Original: 5100 bytes, Compressed: 291 bytes, Ratio: 0.06
=== RUN   TestCompressionEfficiency/lz4
    compression_test.go:304: Codec: lz4, Original: 5100 bytes, Compressed: 112 bytes, Ratio: 0.02
=== RUN   TestCompressionEfficiency/zstd
    compression_test.go:304: Codec: zstd, Original: 5100 bytes, Compressed: 68 bytes, Ratio: 0.01
--- PASS: TestCompressionEfficiency (0.00s)
    --- PASS: TestCompressionEfficiency/gzip (0.00s)
    --- PASS: TestCompressionEfficiency/snappy (0.00s)
    --- PASS: TestCompressionEfficiency/lz4 (0.00s)
    --- PASS: TestCompressionEfficiency/zstd (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/kafka/compression	0.031s
=== RUN   TestRangeAssignmentStrategy
--- PASS: TestRangeAssignmentStrategy (0.00s)
=== RUN   TestRangeAssignmentStrategy_UnevenPartitions
--- PASS: TestRangeAssignmentStrategy_UnevenPartitions (0.00s)
=== RUN   TestRangeAssignmentStrategy_MultipleTopics
--- PASS: TestRangeAssignmentStrategy_MultipleTopics (0.00s)
=== RUN   TestRoundRobinAssignmentStrategy
--- PASS: TestRoundRobinAssignmentStrategy (0.00s)
=== RUN   TestRoundRobinAssignmentStrategy_MultipleTopics
--- PASS: TestRoundRobinAssignmentStrategy_MultipleTopics (0.00s)
=== RUN   TestGetAssignmentStrategy
--- PASS: TestGetAssignmentStrategy (0.00s)
=== RUN   TestConsumerGroup_AssignPartitions
--- PASS: TestConsumerGroup_AssignPartitions (0.00s)
=== RUN   TestConsumerGroup_GetMemberAssignments
--- PASS: TestConsumerGroup_GetMemberAssignments (0.00s)
=== RUN   TestConsumerGroup_UpdateMemberSubscription
--- PASS: TestConsumerGroup_UpdateMemberSubscription (0.00s)
=== RUN   TestAssignmentStrategy_EmptyMembers
--- PASS: TestAssignmentStrategy_EmptyMembers (0.00s)
=== RUN   TestCooperativeStickyAssignmentStrategy_Name
--- PASS: TestCooperativeStickyAssignmentStrategy_Name (0.00s)
=== RUN   TestCooperativeStickyAssignmentStrategy_InitialAssignment
--- PASS: TestCooperativeStickyAssignmentStrategy_InitialAssignment (0.00s)
=== RUN   TestCooperativeStickyAssignmentStrategy_StickyBehavior
--- PASS: TestCooperativeStickyAssignmentStrategy_StickyBehavior (0.00s)
=== RUN   TestCooperativeStickyAssignmentStrategy_NewMemberJoin
    cooperative_sticky_test.go:187: Member1 retained 2 out of 4 original partitions
--- PASS: TestCooperativeStickyAssignmentStrategy_NewMemberJoin (0.00s)
=== RUN   TestCooperativeStickyAssignmentStrategy_MemberLeave
--- PASS: TestCooperativeStickyAssignmentStrategy_MemberLeave (0.00s)
=== RUN   TestCooperativeStickyAssignmentStrategy_MultipleTopics
--- PASS: TestCooperativeStickyAssignmentStrategy_MultipleTopics (0.00s)
=== RUN   TestCooperativeStickyAssignmentStrategy_UnevenPartitions
--- PASS: TestCooperativeStickyAssignmentStrategy_UnevenPartitions (0.00s)
=== RUN   TestCooperativeStickyAssignmentStrategy_PartialSubscription
--- PASS: TestCooperativeStickyAssignmentStrategy_PartialSubscription (0.00s)
=== RUN   TestGetAssignmentStrategy_CooperativeSticky
--- PASS: TestGetAssignmentStrategy_CooperativeSticky (0.00s)
=== RUN   TestGroupCoordinator_CreateGroup
--- PASS: TestGroupCoordinator_CreateGroup (0.00s)
=== RUN   TestGroupCoordinator_ValidateSessionTimeout
--- PASS: TestGroupCoordinator_ValidateSessionTimeout (0.00s)
=== RUN   TestGroupCoordinator_MemberManagement
--- PASS: TestGroupCoordinator_MemberManagement (0.00s)
=== RUN   TestGroupCoordinator_Stats
--- PASS: TestGroupCoordinator_Stats (0.00s)
=== RUN   TestGroupCoordinator_Cleanup
--- PASS: TestGroupCoordinator_Cleanup (0.00s)
=== RUN   TestGroupCoordinator_GenerateMemberID
--- PASS: TestGroupCoordinator_GenerateMemberID (0.00s)
=== RUN   TestIncrementalCooperativeAssignmentStrategy_BasicAssignment
    incremental_rebalancing_test.go:41: Member member-1 assigned 2 partitions: [{topic-1 0} {topic-1 1}]
    incremental_rebalancing_test.go:41: Member member-2 assigned 2 partitions: [{topic-1 2} {topic-1 3}]
--- PASS: TestIncrementalCooperativeAssignmentStrategy_BasicAssignment (0.00s)
=== RUN   TestIncrementalCooperativeAssignmentStrategy_RebalanceWithRevocation
    incremental_rebalancing_test.go:106: Revocation phase - Member-1: 2 partitions, Member-2: 0 partitions
    incremental_rebalancing_test.go:139: Final assignment - Member-1: 2 partitions, Member-2: 2 partitions
--- PASS: TestIncrementalCooperativeAssignmentStrategy_RebalanceWithRevocation (0.01s)
=== RUN   TestIncrementalCooperativeAssignmentStrategy_NoRevocationNeeded
--- PASS: TestIncrementalCooperativeAssignmentStrategy_NoRevocationNeeded (0.00s)
=== RUN   TestIncrementalCooperativeAssignmentStrategy_MultipleTopics
    incremental_rebalancing_test.go:244: All assigned partitions: map[topic-1:0:true topic-1:1:true topic-1:2:true topic-2:0:true topic-2:1:true]
--- PASS: TestIncrementalCooperativeAssignmentStrategy_MultipleTopics (0.00s)
=== RUN   TestIncrementalCooperativeAssignmentStrategy_ForceComplete
--- PASS: TestIncrementalCooperativeAssignmentStrategy_ForceComplete (0.00s)
=== RUN   TestIncrementalCooperativeAssignmentStrategy_RevocationTimeout
--- PASS: TestIncrementalCooperativeAssignmentStrategy_RevocationTimeout (0.01s)
=== RUN   TestIncrementalCooperativeAssignmentStrategy_StateTransitions
--- PASS: TestIncrementalCooperativeAssignmentStrategy_StateTransitions (0.00s)
=== RUN   TestRebalanceTimeoutManager_CheckRebalanceTimeouts
--- PASS: TestRebalanceTimeoutManager_CheckRebalanceTimeouts (0.00s)
=== RUN   TestRebalanceTimeoutManager_SessionTimeoutFallback
--- PASS: TestRebalanceTimeoutManager_SessionTimeoutFallback (0.00s)
=== RUN   TestRebalanceTimeoutManager_LeaderEviction
--- PASS: TestRebalanceTimeoutManager_LeaderEviction (0.00s)
=== RUN   TestRebalanceTimeoutManager_IsRebalanceStuck
--- PASS: TestRebalanceTimeoutManager_IsRebalanceStuck (0.00s)
=== RUN   TestRebalanceTimeoutManager_ForceCompleteRebalance
--- PASS: TestRebalanceTimeoutManager_ForceCompleteRebalance (0.00s)
=== RUN   TestRebalanceTimeoutManager_GetRebalanceStatus
--- PASS: TestRebalanceTimeoutManager_GetRebalanceStatus (0.00s)
=== RUN   TestRebalanceTimeoutManager_DefaultRebalanceTimeout
--- PASS: TestRebalanceTimeoutManager_DefaultRebalanceTimeout (0.00s)
=== RUN   TestGroupCoordinator_StaticMembership
--- PASS: TestGroupCoordinator_StaticMembership (0.00s)
=== RUN   TestGroupCoordinator_StaticMemberReconnection
--- PASS: TestGroupCoordinator_StaticMemberReconnection (0.00s)
=== RUN   TestGroupCoordinator_StaticMembershipEdgeCases
--- PASS: TestGroupCoordinator_StaticMembershipEdgeCases (0.00s)
=== RUN   TestGroupCoordinator_StaticMembershipConcurrency
--- PASS: TestGroupCoordinator_StaticMembershipConcurrency (0.01s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/kafka/consumer	0.029s
=== RUN   TestFilerStorageCommitAndFetch
    filer_storage_test.go:14: Requires running filer - integration test
--- SKIP: TestFilerStorageCommitAndFetch (0.00s)
=== RUN   TestFilerStoragePersistence
    filer_storage_test.go:25: Requires running filer - integration test
--- SKIP: TestFilerStoragePersistence (0.00s)
=== RUN   TestFilerStorageMultipleGroups
    filer_storage_test.go:35: Requires running filer - integration test
--- SKIP: TestFilerStorageMultipleGroups (0.00s)
=== RUN   TestFilerStoragePath
--- PASS: TestFilerStoragePath (0.00s)
=== RUN   TestMemoryStorageCommitAndFetch
--- PASS: TestMemoryStorageCommitAndFetch (0.00s)
=== RUN   TestMemoryStorageFetchNonExistent
--- PASS: TestMemoryStorageFetchNonExistent (0.00s)
=== RUN   TestMemoryStorageFetchAllOffsets
--- PASS: TestMemoryStorageFetchAllOffsets (0.00s)
=== RUN   TestMemoryStorageDeleteGroup
--- PASS: TestMemoryStorageDeleteGroup (0.00s)
=== RUN   TestMemoryStorageListGroups
--- PASS: TestMemoryStorageListGroups (0.00s)
=== RUN   TestMemoryStorageConcurrency
--- PASS: TestMemoryStorageConcurrency (0.00s)
=== RUN   TestMemoryStorageInvalidInputs
--- PASS: TestMemoryStorageInvalidInputs (0.00s)
=== RUN   TestMemoryStorageClosedOperations
--- PASS: TestMemoryStorageClosedOperations (0.00s)
=== RUN   TestMemoryStorageOverwrite
--- PASS: TestMemoryStorageOverwrite (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/kafka/consumer_offset	0.019s
=== RUN   TestCoordinatorRegistry_DeterministicNodeID
--- PASS: TestCoordinatorRegistry_DeterministicNodeID (0.00s)
=== RUN   TestCoordinatorRegistry_BasicOperations
--- PASS: TestCoordinatorRegistry_BasicOperations (0.00s)
=== RUN   TestCoordinatorRegistry_AssignCoordinator
--- PASS: TestCoordinatorRegistry_AssignCoordinator (0.00s)
=== RUN   TestCoordinatorRegistry_HealthyGateways
--- PASS: TestCoordinatorRegistry_HealthyGateways (0.00s)
=== RUN   TestCoordinatorRegistry_ConsistentHashing
--- PASS: TestCoordinatorRegistry_ConsistentHashing (0.00s)
=== RUN   TestCoordinatorRegistry_CleanupStaleEntries
--- PASS: TestCoordinatorRegistry_CleanupStaleEntries (0.00s)
=== RUN   TestCoordinatorRegistry_GetStats
--- PASS: TestCoordinatorRegistry_GetStats (0.00s)
=== RUN   TestCoordinatorRegistry_HeartbeatGateway
--- PASS: TestCoordinatorRegistry_HeartbeatGateway (0.01s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/kafka/gateway	0.030s
=== RUN   TestNeedsRestart
=== RUN   TestNeedsRestart/Stream_is_nil_-_needs_restart
=== RUN   TestNeedsRestart/Offset_in_cache_-_no_restart_needed
=== RUN   TestNeedsRestart/Offset_before_current_-_needs_restart
=== RUN   TestNeedsRestart/Large_gap_ahead_-_needs_restart
=== RUN   TestNeedsRestart/Small_gap_ahead_-_no_restart_needed
=== RUN   TestNeedsRestart/Exact_match_-_no_restart_needed
=== RUN   TestNeedsRestart/Context_is_nil_-_needs_restart
--- PASS: TestNeedsRestart (0.00s)
    --- PASS: TestNeedsRestart/Stream_is_nil_-_needs_restart (0.00s)
    --- PASS: TestNeedsRestart/Offset_in_cache_-_no_restart_needed (0.00s)
    --- PASS: TestNeedsRestart/Offset_before_current_-_needs_restart (0.00s)
    --- PASS: TestNeedsRestart/Large_gap_ahead_-_needs_restart (0.00s)
    --- PASS: TestNeedsRestart/Small_gap_ahead_-_no_restart_needed (0.00s)
    --- PASS: TestNeedsRestart/Exact_match_-_no_restart_needed (0.00s)
    --- PASS: TestNeedsRestart/Context_is_nil_-_needs_restart (0.00s)
=== RUN   TestNeedsRestart_CacheLogic
=== RUN   TestNeedsRestart_CacheLogic/First_offset_in_cache
=== RUN   TestNeedsRestart_CacheLogic/Middle_offset_in_cache
=== RUN   TestNeedsRestart_CacheLogic/Last_offset_in_cache
=== RUN   TestNeedsRestart_CacheLogic/Before_cache_start
=== RUN   TestNeedsRestart_CacheLogic/Current_position
=== RUN   TestNeedsRestart_CacheLogic/One_ahead
=== RUN   TestNeedsRestart_CacheLogic/Large_gap_>_1000
--- PASS: TestNeedsRestart_CacheLogic (0.00s)
    --- PASS: TestNeedsRestart_CacheLogic/First_offset_in_cache (0.00s)
    --- PASS: TestNeedsRestart_CacheLogic/Middle_offset_in_cache (0.00s)
    --- PASS: TestNeedsRestart_CacheLogic/Last_offset_in_cache (0.00s)
    --- PASS: TestNeedsRestart_CacheLogic/Before_cache_start (0.00s)
    --- PASS: TestNeedsRestart_CacheLogic/Current_position (0.00s)
    --- PASS: TestNeedsRestart_CacheLogic/One_ahead (0.00s)
    --- PASS: TestNeedsRestart_CacheLogic/Large_gap_>_1000 (0.00s)
=== RUN   TestNeedsRestart_EmptyCache
=== RUN   TestNeedsRestart_EmptyCache/Before_current
=== RUN   TestNeedsRestart_EmptyCache/At_current
=== RUN   TestNeedsRestart_EmptyCache/Small_gap_ahead
=== RUN   TestNeedsRestart_EmptyCache/Large_gap_ahead
--- PASS: TestNeedsRestart_EmptyCache (0.00s)
    --- PASS: TestNeedsRestart_EmptyCache/Before_current (0.00s)
    --- PASS: TestNeedsRestart_EmptyCache/At_current (0.00s)
    --- PASS: TestNeedsRestart_EmptyCache/Small_gap_ahead (0.00s)
    --- PASS: TestNeedsRestart_EmptyCache/Large_gap_ahead (0.00s)
=== RUN   TestNeedsRestart_ThreadSafety
--- PASS: TestNeedsRestart_ThreadSafety (0.00s)
=== RUN   TestRestartSubscriber_StateManagement
--- PASS: TestRestartSubscriber_StateManagement (0.00s)
=== RUN   TestMapBrokerErrorToKafka
=== RUN   TestMapBrokerErrorToKafka/No_error
=== RUN   TestMapBrokerErrorToKafka/Unknown_server_error
=== RUN   TestMapBrokerErrorToKafka/Topic_not_found
=== RUN   TestMapBrokerErrorToKafka/Partition_not_found
=== RUN   TestMapBrokerErrorToKafka/Not_leader_or_follower
=== RUN   TestMapBrokerErrorToKafka/Request_timed_out
=== RUN   TestMapBrokerErrorToKafka/Broker_not_available
=== RUN   TestMapBrokerErrorToKafka/Message_too_large
=== RUN   TestMapBrokerErrorToKafka/Network_exception
=== RUN   TestMapBrokerErrorToKafka/Offset_load_in_progress
=== RUN   TestMapBrokerErrorToKafka/Invalid_record
=== RUN   TestMapBrokerErrorToKafka/Topic_already_exists
=== RUN   TestMapBrokerErrorToKafka/Invalid_partitions
=== RUN   TestMapBrokerErrorToKafka/Invalid_config
=== RUN   TestMapBrokerErrorToKafka/Publisher_not_found
=== RUN   TestMapBrokerErrorToKafka/Connection_failed
=== RUN   TestMapBrokerErrorToKafka/Follower_connection_failed
=== RUN   TestMapBrokerErrorToKafka/Unknown_error_code
--- PASS: TestMapBrokerErrorToKafka (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/No_error (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Unknown_server_error (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Topic_not_found (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Partition_not_found (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Not_leader_or_follower (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Request_timed_out (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Broker_not_available (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Message_too_large (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Network_exception (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Offset_load_in_progress (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Invalid_record (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Topic_already_exists (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Invalid_partitions (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Invalid_config (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Publisher_not_found (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Connection_failed (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Follower_connection_failed (0.00s)
    --- PASS: TestMapBrokerErrorToKafka/Unknown_error_code (0.00s)
=== RUN   TestHandleBrokerResponse
=== RUN   TestHandleBrokerResponse/No_error
=== RUN   TestHandleBrokerResponse/Structured_error_-_Not_leader
=== RUN   TestHandleBrokerResponse/Structured_error_-_Topic_not_found
=== RUN   TestHandleBrokerResponse/Fallback_string_parsing_-_Not_leader
=== RUN   TestHandleBrokerResponse/Fallback_string_parsing_-_Topic_not_found
=== RUN   TestHandleBrokerResponse/Fallback_string_parsing_-_Unknown_error
--- PASS: TestHandleBrokerResponse (0.00s)
    --- PASS: TestHandleBrokerResponse/No_error (0.00s)
    --- PASS: TestHandleBrokerResponse/Structured_error_-_Not_leader (0.00s)
    --- PASS: TestHandleBrokerResponse/Structured_error_-_Topic_not_found (0.00s)
    --- PASS: TestHandleBrokerResponse/Fallback_string_parsing_-_Not_leader (0.00s)
    --- PASS: TestHandleBrokerResponse/Fallback_string_parsing_-_Topic_not_found (0.00s)
    --- PASS: TestHandleBrokerResponse/Fallback_string_parsing_-_Unknown_error (0.00s)
=== RUN   TestParseStringErrorToKafkaCode
=== RUN   TestParseStringErrorToKafkaCode/Empty_error
=== RUN   TestParseStringErrorToKafkaCode/Not_leader_error
=== RUN   TestParseStringErrorToKafkaCode/Not_leader_error_variant
=== RUN   TestParseStringErrorToKafkaCode/Topic_not_found
=== RUN   TestParseStringErrorToKafkaCode/Topic_does_not_exist
=== RUN   TestParseStringErrorToKafkaCode/Partition_not_found
=== RUN   TestParseStringErrorToKafkaCode/Timeout_error
=== RUN   TestParseStringErrorToKafkaCode/Timeout_error_variant
=== RUN   TestParseStringErrorToKafkaCode/Network_error
=== RUN   TestParseStringErrorToKafkaCode/Connection_error
=== RUN   TestParseStringErrorToKafkaCode/Message_too_large
=== RUN   TestParseStringErrorToKafkaCode/Size_error
=== RUN   TestParseStringErrorToKafkaCode/Unknown_error
--- PASS: TestParseStringErrorToKafkaCode (0.00s)
    --- PASS: TestParseStringErrorToKafkaCode/Empty_error (0.00s)
    --- PASS: TestParseStringErrorToKafkaCode/Not_leader_error (0.00s)
    --- PASS: TestParseStringErrorToKafkaCode/Not_leader_error_variant (0.00s)
    --- PASS: TestParseStringErrorToKafkaCode/Topic_not_found (0.00s)
    --- PASS: TestParseStringErrorToKafkaCode/Topic_does_not_exist (0.00s)
    --- PASS: TestParseStringErrorToKafkaCode/Partition_not_found (0.00s)
    --- PASS: TestParseStringErrorToKafkaCode/Timeout_error (0.00s)
    --- PASS: TestParseStringErrorToKafkaCode/Timeout_error_variant (0.00s)
    --- PASS: TestParseStringErrorToKafkaCode/Network_error (0.00s)
    --- PASS: TestParseStringErrorToKafkaCode/Connection_error (0.00s)
    --- PASS: TestParseStringErrorToKafkaCode/Message_too_large (0.00s)
    --- PASS: TestParseStringErrorToKafkaCode/Size_error (0.00s)
    --- PASS: TestParseStringErrorToKafkaCode/Unknown_error (0.00s)
=== RUN   TestAdaptiveFetchTimeout
    fetch_performance_test.go:11: Testing adaptive fetch timeout strategy...
=== RUN   TestAdaptiveFetchTimeout/OldStrategy_50ms_Timeout
    fetch_performance_test.go:32: Record 1 timed out (readTime=150ms > timeout=50ms)
    fetch_performance_test.go:38: Old strategy: received 0/4 records in 9.492µs
    fetch_performance_test.go:43: ✓ Bug reproduced: old strategy times out too quickly
=== RUN   TestAdaptiveFetchTimeout/NewStrategy_1s_Timeout
    fetch_performance_test.go:56: Record 1 received (readTime=150ms)
    fetch_performance_test.go:56: Record 2 received (readTime=150ms)
    fetch_performance_test.go:56: Record 3 received (readTime=150ms)
    fetch_performance_test.go:56: Record 4 received (readTime=150ms)
    fetch_performance_test.go:64: New strategy: received 4/4 records in 11.151µs
    fetch_performance_test.go:69: ✓ Fix verified: new strategy receives all records
=== RUN   TestAdaptiveFetchTimeout/SchemaRegistry_CatchUp_Scenario
    fetch_performance_test.go:99: Schema Registry catch-up simulation:
    fetch_performance_test.go:100:   Old strategy: 4 round trips, ~800ms total time
    fetch_performance_test.go:101:   New strategy: 1 round trip, ~600ms total time
    fetch_performance_test.go:102:   Schema Registry timeout: 500ms
    fetch_performance_test.go:108: ✓ Old strategy exceeds timeout: 800ms > 500ms
    fetch_performance_test.go:112: ✓ New strategy completes within timeout: 600ms <= 700ms
--- PASS: TestAdaptiveFetchTimeout (0.00s)
    --- PASS: TestAdaptiveFetchTimeout/OldStrategy_50ms_Timeout (0.00s)
    --- PASS: TestAdaptiveFetchTimeout/NewStrategy_1s_Timeout (0.00s)
    --- PASS: TestAdaptiveFetchTimeout/SchemaRegistry_CatchUp_Scenario (0.00s)
=== RUN   TestFetchTimeoutProgression
    fetch_performance_test.go:121: Testing fetch timeout progression...
    fetch_performance_test.go:134: Timeout progression:
    fetch_performance_test.go:137:   Record  1: timeout = 1s
    fetch_performance_test.go:137:   Record  2: timeout = 1s
    fetch_performance_test.go:137:   Record  3: timeout = 1s
    fetch_performance_test.go:137:   Record  4: timeout = 1s
    fetch_performance_test.go:137:   Record  5: timeout = 1s
    fetch_performance_test.go:137:   Record  6: timeout = 100ms
    fetch_performance_test.go:137:   Record  7: timeout = 100ms
    fetch_performance_test.go:137:   Record  8: timeout = 100ms
    fetch_performance_test.go:137:   Record  9: timeout = 100ms
    fetch_performance_test.go:137:   Record 10: timeout = 100ms
    fetch_performance_test.go:154: ✓ Timeout progression is correct
--- PASS: TestFetchTimeoutProgression (0.00s)
=== RUN   TestSeaweedSMQRecord_Interface
--- PASS: TestSeaweedSMQRecord_Interface (0.00s)
=== RUN   TestSeaweedMQHandler_GetStoredRecords_EmptyTopic
    record_retrieval_test.go:96: Test obsolete: ledgers removed, SMQ broker handles offset management
--- SKIP: TestSeaweedMQHandler_GetStoredRecords_EmptyTopic (0.00s)
=== RUN   TestSeaweedMQHandler_GetStoredRecords_EmptyPartition
    record_retrieval_test.go:102: Test obsolete: ledgers removed, SMQ broker handles offset management
--- SKIP: TestSeaweedMQHandler_GetStoredRecords_EmptyPartition (0.00s)
=== RUN   TestSeaweedMQHandler_GetStoredRecords_OffsetBeyondHighWaterMark
    record_retrieval_test.go:108: Test obsolete: ledgers removed, SMQ broker handles offset management
--- SKIP: TestSeaweedMQHandler_GetStoredRecords_OffsetBeyondHighWaterMark (0.00s)
=== RUN   TestSeaweedMQHandler_GetStoredRecords_MaxRecordsLimit
    record_retrieval_test.go:114: Test obsolete: ledgers removed, SMQ broker handles offset management
--- SKIP: TestSeaweedMQHandler_GetStoredRecords_MaxRecordsLimit (0.00s)
=== RUN   TestSeaweedMQHandler_MapSeaweedToKafkaOffsets
    seaweedmq_handler_test.go:15: Test obsolete: ledger system removed, SMQ uses native offsets
--- SKIP: TestSeaweedMQHandler_MapSeaweedToKafkaOffsets (0.00s)
=== RUN   TestSeaweedMQHandler_MapSeaweedToKafkaOffsets_EmptyRecords
    seaweedmq_handler_test.go:21: Test obsolete: ledger system removed, SMQ uses native offsets
--- SKIP: TestSeaweedMQHandler_MapSeaweedToKafkaOffsets_EmptyRecords (0.00s)
=== RUN   TestSeaweedMQHandler_ConvertSeaweedToKafkaRecordBatch
    seaweedmq_handler_test.go:68: Successfully converted 2 records to 119 byte batch
--- PASS: TestSeaweedMQHandler_ConvertSeaweedToKafkaRecordBatch (0.00s)
=== RUN   TestSeaweedMQHandler_ConvertSeaweedToKafkaRecordBatch_EmptyRecords
--- PASS: TestSeaweedMQHandler_ConvertSeaweedToKafkaRecordBatch_EmptyRecords (0.00s)
=== RUN   TestSeaweedMQHandler_ConvertSingleSeaweedRecord
=== RUN   TestSeaweedMQHandler_ConvertSingleSeaweedRecord/Record_with_key_and_value
    seaweedmq_handler_test.go:161: Successfully converted single record: 24 bytes
=== RUN   TestSeaweedMQHandler_ConvertSingleSeaweedRecord/Record_with_null_key
    seaweedmq_handler_test.go:161: Successfully converted single record: 23 bytes
=== RUN   TestSeaweedMQHandler_ConvertSingleSeaweedRecord/Record_with_empty_value
    seaweedmq_handler_test.go:161: Successfully converted single record: 26 bytes
--- PASS: TestSeaweedMQHandler_ConvertSingleSeaweedRecord (0.00s)
    --- PASS: TestSeaweedMQHandler_ConvertSingleSeaweedRecord/Record_with_key_and_value (0.00s)
    --- PASS: TestSeaweedMQHandler_ConvertSingleSeaweedRecord/Record_with_null_key (0.00s)
    --- PASS: TestSeaweedMQHandler_ConvertSingleSeaweedRecord/Record_with_empty_value (0.00s)
=== RUN   TestSeaweedMQHandler_Creation
    seaweedmq_handler_test.go:171: Integration test requires real SeaweedMQ Broker - run manually with broker available
--- SKIP: TestSeaweedMQHandler_Creation (0.00s)
=== RUN   TestSeaweedMQHandler_TopicLifecycle
    seaweedmq_handler_test.go:190: Integration test requires real SeaweedMQ Broker - run manually with broker available
--- SKIP: TestSeaweedMQHandler_TopicLifecycle (0.00s)
=== RUN   TestSeaweedMQHandler_ProduceRecord
    seaweedmq_handler_test.go:252: Integration test requires real SeaweedMQ Broker - run manually with broker available
--- SKIP: TestSeaweedMQHandler_ProduceRecord (0.00s)
=== RUN   TestSeaweedMQHandler_MultiplePartitions
    seaweedmq_handler_test.go:297: Integration test requires real SeaweedMQ Broker - run manually with broker available
--- SKIP: TestSeaweedMQHandler_MultiplePartitions (0.00s)
=== RUN   TestSeaweedMQHandler_FetchRecords
    seaweedmq_handler_test.go:341: Integration test requires real SeaweedMQ Broker - run manually with broker available
--- SKIP: TestSeaweedMQHandler_FetchRecords (0.00s)
=== RUN   TestSeaweedMQHandler_FetchRecords_ErrorHandling
    seaweedmq_handler_test.go:435: Integration test requires real SeaweedMQ Broker - run manually with broker available
--- SKIP: TestSeaweedMQHandler_FetchRecords_ErrorHandling (0.00s)
=== RUN   TestSeaweedMQHandler_ErrorHandling
    seaweedmq_handler_test.go:485: Integration test requires real SeaweedMQ Broker - run manually with broker available
--- SKIP: TestSeaweedMQHandler_ErrorHandling (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/kafka/integration	0.020s
=== RUN   TestBatchConstruction
    batch_crc_compat_test.go:24: Batch size: 86 bytes
    batch_crc_compat_test.go:25: Batch hex:
          0000: 00000000000000000000004affffffff
          0016: 02808eb3f10000000000000000019ed0
          0032: 4b5a570000019ed04b5a57ffffffffff
          0048: ffffffffffffffffff00000001300000
          0064: 0010746573742d6b657914746573742d
          0080: 76616c756500
    batch_crc_compat_test.go:33: Stored CRC: 0x808eb3f1
    batch_crc_compat_test.go:38: Calculated CRC: 0x808eb3f1 (over 65 bytes)
    batch_crc_compat_test.go:57: CRC verification PASSED
    batch_crc_compat_test.go:61: 
        === Batch Structure ===
    batch_crc_compat_test.go:238:   Base Offset: 0000000000000000 (value: 0)
    batch_crc_compat_test.go:238:   Batch Length: 0000004a (value: 74)
    batch_crc_compat_test.go:238:   Leader Epoch: ffffffff (value: -1)
    batch_crc_compat_test.go:238:   Magic: 02 (value: 2)
    batch_crc_compat_test.go:238:   CRC: 808eb3f1 (value: 2156835825)
    batch_crc_compat_test.go:238:   Attributes: 0000 (value: 0)
    batch_crc_compat_test.go:238:   Last Offset Delta: 00000000 (value: 0)
    batch_crc_compat_test.go:238:   Base Timestamp: 0000019ed04b5a57 (value: 1781611059799)
    batch_crc_compat_test.go:238:   Max Timestamp: 0000019ed04b5a57 (value: 1781611059799)
    batch_crc_compat_test.go:238:   Record Count: 00000001 (value: 1)
    batch_crc_compat_test.go:79: Batch length correct: 74
--- PASS: TestBatchConstruction (0.00s)
=== RUN   TestMultipleRecordsBatch
    batch_crc_compat_test.go:93: Batch 1 size: 78, CRC: 0xc793c5a8
    batch_crc_compat_test.go:94: Batch 2 size: 78, CRC: 0xeadb6118
    batch_crc_compat_test.go:104: Batch 1 CRC valid
    batch_crc_compat_test.go:104: Batch 2 CRC valid
--- PASS: TestMultipleRecordsBatch (0.00s)
=== RUN   TestVarintEncoding
    batch_crc_compat_test.go:131: encodeVarint(0) = 00
    batch_crc_compat_test.go:131: encodeVarint(1) = 02
    batch_crc_compat_test.go:131: encodeVarint(-1) = 01
    batch_crc_compat_test.go:131: encodeVarint(5) = 0a
    batch_crc_compat_test.go:131: encodeVarint(-5) = 09
    batch_crc_compat_test.go:131: encodeVarint(127) = fe01
    batch_crc_compat_test.go:131: encodeVarint(128) = 8002
    batch_crc_compat_test.go:131: encodeVarint(-127) = fd01
    batch_crc_compat_test.go:131: encodeVarint(-128) = ff01
--- PASS: TestVarintEncoding (0.00s)
=== RUN   TestClientSideCRCValidation
    batch_crc_compat_test.go:259: Constructed batch: 86 bytes
    batch_crc_compat_test.go:268: Client read CRC from header: 0x808eb3f1
    batch_crc_compat_test.go:272: Client calculated CRC: 0x808eb3f1
    batch_crc_compat_test.go:280: CLIENT WOULD ACCEPT: CRC valid
--- PASS: TestClientSideCRCValidation (0.00s)
=== RUN   TestConcurrentBatchConstruction
    batch_crc_compat_test.go:316: All 10 concurrent batches have valid CRCs
--- PASS: TestConcurrentBatchConstruction (0.00s)
=== RUN   TestProductionBatchConstruction
    batch_crc_compat_test.go:338: Production batch size: 86 bytes
    batch_crc_compat_test.go:348: Production batch CRC: stored=0xa58a6065 calculated=0xa58a6065
    batch_crc_compat_test.go:354: PRODUCTION CODE CRC VALID
--- PASS: TestProductionBatchConstruction (0.00s)
=== RUN   TestHeartbeatResponseFormat_V0
--- PASS: TestHeartbeatResponseFormat_V0 (0.00s)
=== RUN   TestHeartbeatResponseFormat_V1ToV3
=== RUN   TestHeartbeatResponseFormat_V1ToV3/v1
=== RUN   TestHeartbeatResponseFormat_V1ToV3/v2
=== RUN   TestHeartbeatResponseFormat_V1ToV3/v3
--- PASS: TestHeartbeatResponseFormat_V1ToV3 (0.00s)
    --- PASS: TestHeartbeatResponseFormat_V1ToV3/v1 (0.00s)
    --- PASS: TestHeartbeatResponseFormat_V1ToV3/v2 (0.00s)
    --- PASS: TestHeartbeatResponseFormat_V1ToV3/v3 (0.00s)
=== RUN   TestHeartbeatResponseFormat_V4Plus
=== RUN   TestHeartbeatResponseFormat_V4Plus/v4
--- PASS: TestHeartbeatResponseFormat_V4Plus (0.00s)
    --- PASS: TestHeartbeatResponseFormat_V4Plus/v4 (0.00s)
=== RUN   TestHeartbeatResponseFormat_ErrorCode
=== RUN   TestHeartbeatResponseFormat_ErrorCode/None
=== RUN   TestHeartbeatResponseFormat_ErrorCode/UnknownMemberID
=== RUN   TestHeartbeatResponseFormat_ErrorCode/IllegalGeneration
=== RUN   TestHeartbeatResponseFormat_ErrorCode/RebalanceInProgress
--- PASS: TestHeartbeatResponseFormat_ErrorCode (0.00s)
    --- PASS: TestHeartbeatResponseFormat_ErrorCode/None (0.00s)
    --- PASS: TestHeartbeatResponseFormat_ErrorCode/UnknownMemberID (0.00s)
    --- PASS: TestHeartbeatResponseFormat_ErrorCode/IllegalGeneration (0.00s)
    --- PASS: TestHeartbeatResponseFormat_ErrorCode/RebalanceInProgress (0.00s)
=== RUN   TestHeartbeatResponseFormat_BugReproduce
    heartbeat_response_format_test.go:157: This test documents the original bug - skip to avoid false failures
--- SKIP: TestHeartbeatResponseFormat_BugReproduce (0.00s)
=== RUN   TestMetadataRequestBlocking
    metadata_blocking_test.go:22: This test documents the original bug. The fix is in the broker's ListTopics with filer timeout. Run TestMetadataRequestWithFastMock to verify fast path works.
--- SKIP: TestMetadataRequestBlocking (0.00s)
=== RUN   TestMetadataRequestWithFastMock
    metadata_blocking_test.go:68: Testing Metadata handler with fast-responding backend...
    metadata_blocking_test.go:88: ✓ Metadata completed in 7.24µs (283 bytes)
--- PASS: TestMetadataRequestWithFastMock (0.00s)
=== RUN   TestMetadataRequestWithTimeoutFix
    metadata_blocking_test.go:98: Testing Metadata handler with timeout-aware backend...
    metadata_blocking_test.go:115: Metadata completed in 2.001066292s
    metadata_blocking_test.go:121: ✓ Metadata returned response (33 bytes) without blocking
--- PASS: TestMetadataRequestWithTimeoutFix (2.00s)
=== RUN   TestOffsetCommitFetchPattern
    offset_fetch_pattern_test.go:18: Integration test - requires mock broker setup
--- SKIP: TestOffsetCommitFetchPattern (0.00s)
=== RUN   TestOffsetFetchAfterCommit
    offset_fetch_pattern_test.go:98: Integration test - requires mock broker setup
--- SKIP: TestOffsetFetchAfterCommit (0.00s)
=== RUN   TestOffsetPersistencePattern
    offset_fetch_pattern_test.go:136: Integration test - requires mock broker setup
--- SKIP: TestOffsetPersistencePattern (0.00s)
=== RUN   TestOffsetCommitConsistency
    offset_fetch_pattern_test.go:177: Integration test - requires mock broker setup
--- SKIP: TestOffsetCommitConsistency (0.00s)
=== RUN   TestFetchEmptyPartitionHandling
    offset_fetch_pattern_test.go:210: Integration test - requires mock broker setup
--- SKIP: TestFetchEmptyPartitionHandling (0.00s)
=== RUN   TestLongPollWithOffsetCommit
    offset_fetch_pattern_test.go:237: Integration test - requires mock broker setup
--- SKIP: TestLongPollWithOffsetCommit (0.00s)
=== RUN   TestRecordBatchParser_ParseRecordBatch
--- PASS: TestRecordBatchParser_ParseRecordBatch (0.00s)
=== RUN   TestRecordBatchParser_ParseRecordBatch_TooSmall
--- PASS: TestRecordBatchParser_ParseRecordBatch_TooSmall (0.00s)
=== RUN   TestRecordBatchParser_ParseRecordBatch_InvalidMagic
--- PASS: TestRecordBatchParser_ParseRecordBatch_InvalidMagic (0.00s)
=== RUN   TestRecordBatchParser_Compression
=== RUN   TestRecordBatchParser_Compression/none
=== RUN   TestRecordBatchParser_Compression/gzip
=== RUN   TestRecordBatchParser_Compression/snappy
=== RUN   TestRecordBatchParser_Compression/lz4
=== RUN   TestRecordBatchParser_Compression/zstd
--- PASS: TestRecordBatchParser_Compression (0.00s)
    --- PASS: TestRecordBatchParser_Compression/none (0.00s)
    --- PASS: TestRecordBatchParser_Compression/gzip (0.00s)
    --- PASS: TestRecordBatchParser_Compression/snappy (0.00s)
    --- PASS: TestRecordBatchParser_Compression/lz4 (0.00s)
    --- PASS: TestRecordBatchParser_Compression/zstd (0.00s)
=== RUN   TestRecordBatchParser_CRCValidation
=== RUN   TestRecordBatchParser_CRCValidation/Valid_CRC
=== RUN   TestRecordBatchParser_CRCValidation/Invalid_CRC
=== RUN   TestRecordBatchParser_CRCValidation/Skip_CRC_validation
--- PASS: TestRecordBatchParser_CRCValidation (0.00s)
    --- PASS: TestRecordBatchParser_CRCValidation/Valid_CRC (0.00s)
    --- PASS: TestRecordBatchParser_CRCValidation/Invalid_CRC (0.00s)
    --- PASS: TestRecordBatchParser_CRCValidation/Skip_CRC_validation (0.00s)
=== RUN   TestRecordBatchParser_ExtractRecords
--- PASS: TestRecordBatchParser_ExtractRecords (0.00s)
=== RUN   TestCompressRecordBatch
=== RUN   TestCompressRecordBatch/No_compression
=== RUN   TestCompressRecordBatch/Gzip_compression
--- PASS: TestCompressRecordBatch (0.00s)
    --- PASS: TestCompressRecordBatch/No_compression (0.00s)
    --- PASS: TestCompressRecordBatch/Gzip_compression (0.00s)
=== RUN   TestCreateRecordBatch
=== RUN   TestCreateRecordBatch/Uncompressed_batch
=== RUN   TestCreateRecordBatch/Compressed_batch
--- PASS: TestCreateRecordBatch (0.00s)
    --- PASS: TestCreateRecordBatch/Uncompressed_batch (0.00s)
    --- PASS: TestCreateRecordBatch/Compressed_batch (0.00s)
=== RUN   TestRecordBatchParser_InvalidRecordCount
--- PASS: TestRecordBatchParser_InvalidRecordCount (0.00s)
=== RUN   TestExtractAllRecords_RealKafkaFormat
    record_extraction_test.go:125: Created batch of 85 bytes, record value: {"type":"string"}
    record_extraction_test.go:150: Successfully extracted record with value: {"type":"string"}
--- PASS: TestExtractAllRecords_RealKafkaFormat (0.00s)
=== RUN   TestExtractAllRecords_CompressedBatch
    record_extraction_test.go:157: Compressed batch test - implement after uncompressed works
--- SKIP: TestExtractAllRecords_CompressedBatch (0.00s)
=== RUN   TestResponseFormatsNoCorrelationID
=== RUN   TestResponseFormatsNoCorrelationID/ApiVersions_v0
    response_format_test.go:153: Testing ApiVersions_v0: ApiVersions v0 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 18 Version 0: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/ApiVersions_v4
    response_format_test.go:153: Testing ApiVersions_v4: ApiVersions v4 (flexible) should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 18 Version 4: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/Metadata_v0
    response_format_test.go:153: Testing Metadata_v0: Metadata v0 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 3 Version 0: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/Metadata_v7
    response_format_test.go:153: Testing Metadata_v7: Metadata v7 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 3 Version 7: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/FindCoordinator_v0
    response_format_test.go:153: Testing FindCoordinator_v0: FindCoordinator v0 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 10 Version 0: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/FindCoordinator_v2
    response_format_test.go:153: Testing FindCoordinator_v2: FindCoordinator v2 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 10 Version 2: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/DescribeConfigs_v0
    response_format_test.go:153: Testing DescribeConfigs_v0: DescribeConfigs v0 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 32 Version 0: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/DescribeConfigs_v4
    response_format_test.go:153: Testing DescribeConfigs_v4: DescribeConfigs v4 (flexible) should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 32 Version 4: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/DescribeCluster_v0
    response_format_test.go:153: Testing DescribeCluster_v0: DescribeCluster v0 (flexible) should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 60 Version 0: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/InitProducerId_v0
    response_format_test.go:153: Testing InitProducerId_v0: InitProducerId v0 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 22 Version 0: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/InitProducerId_v4
    response_format_test.go:153: Testing InitProducerId_v4: InitProducerId v4 (flexible) should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 22 Version 4: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/JoinGroup_v0
    response_format_test.go:153: Testing JoinGroup_v0: JoinGroup v0 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 11 Version 0: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/SyncGroup_v0
    response_format_test.go:153: Testing SyncGroup_v0: SyncGroup v0 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 14 Version 0: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/Heartbeat_v0
    response_format_test.go:153: Testing Heartbeat_v0: Heartbeat v0 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 12 Version 0: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/LeaveGroup_v0
    response_format_test.go:153: Testing LeaveGroup_v0: LeaveGroup v0 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 13 Version 0: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/OffsetFetch_v0
    response_format_test.go:153: Testing OffsetFetch_v0: OffsetFetch v0 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 9 Version 0: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/OffsetCommit_v0
    response_format_test.go:153: Testing OffsetCommit_v0: OffsetCommit v0 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 8 Version 0: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/Produce_v0
    response_format_test.go:153: Testing Produce_v0: Produce v0 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 0 Version 0: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/Produce_v7
    response_format_test.go:153: Testing Produce_v7: Produce v7 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 0 Version 7: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/Fetch_v0
    response_format_test.go:153: Testing Fetch_v0: Fetch v0 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 1 Version 0: Correlation ID should be handled by writeResponseWithHeader
=== RUN   TestResponseFormatsNoCorrelationID/Fetch_v7
    response_format_test.go:153: Testing Fetch_v7: Fetch v7 should not include correlation ID in body
    response_format_test.go:160: ✓ API Key 1 Version 7: Correlation ID should be handled by writeResponseWithHeader
--- PASS: TestResponseFormatsNoCorrelationID (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/ApiVersions_v0 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/ApiVersions_v4 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/Metadata_v0 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/Metadata_v7 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/FindCoordinator_v0 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/FindCoordinator_v2 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/DescribeConfigs_v0 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/DescribeConfigs_v4 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/DescribeCluster_v0 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/InitProducerId_v0 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/InitProducerId_v4 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/JoinGroup_v0 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/SyncGroup_v0 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/Heartbeat_v0 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/LeaveGroup_v0 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/OffsetFetch_v0 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/OffsetCommit_v0 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/Produce_v0 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/Produce_v7 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/Fetch_v0 (0.00s)
    --- PASS: TestResponseFormatsNoCorrelationID/Fetch_v7 (0.00s)
=== RUN   TestFlexibleResponseHeaderFormat
=== RUN   TestFlexibleResponseHeaderFormat/ApiVersions_v0
    response_format_test.go:252: ✓ ApiVersions_v0: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/ApiVersions_v3
    response_format_test.go:252: ✓ ApiVersions_v3: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/ApiVersions_v4
    response_format_test.go:252: ✓ ApiVersions_v4: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/Metadata_v0
    response_format_test.go:252: ✓ Metadata_v0: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/Metadata_v7
    response_format_test.go:252: ✓ Metadata_v7: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/Metadata_v9
    response_format_test.go:252: ✓ Metadata_v9: correctly identified as flexible=true
=== RUN   TestFlexibleResponseHeaderFormat/Produce_v0
    response_format_test.go:252: ✓ Produce_v0: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/Produce_v7
    response_format_test.go:252: ✓ Produce_v7: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/Produce_v9
    response_format_test.go:252: ✓ Produce_v9: correctly identified as flexible=true
=== RUN   TestFlexibleResponseHeaderFormat/Fetch_v0
    response_format_test.go:252: ✓ Fetch_v0: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/Fetch_v7
    response_format_test.go:252: ✓ Fetch_v7: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/Fetch_v12
    response_format_test.go:252: ✓ Fetch_v12: correctly identified as flexible=true
=== RUN   TestFlexibleResponseHeaderFormat/FindCoordinator_v0
    response_format_test.go:252: ✓ FindCoordinator_v0: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/FindCoordinator_v2
    response_format_test.go:252: ✓ FindCoordinator_v2: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/FindCoordinator_v3
    response_format_test.go:252: ✓ FindCoordinator_v3: correctly identified as flexible=true
=== RUN   TestFlexibleResponseHeaderFormat/JoinGroup_v0
    response_format_test.go:252: ✓ JoinGroup_v0: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/JoinGroup_v5
    response_format_test.go:252: ✓ JoinGroup_v5: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/JoinGroup_v6
    response_format_test.go:252: ✓ JoinGroup_v6: correctly identified as flexible=true
=== RUN   TestFlexibleResponseHeaderFormat/SyncGroup_v0
    response_format_test.go:252: ✓ SyncGroup_v0: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/SyncGroup_v3
    response_format_test.go:252: ✓ SyncGroup_v3: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/SyncGroup_v4
    response_format_test.go:252: ✓ SyncGroup_v4: correctly identified as flexible=true
=== RUN   TestFlexibleResponseHeaderFormat/Heartbeat_v0
    response_format_test.go:252: ✓ Heartbeat_v0: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/Heartbeat_v3
    response_format_test.go:252: ✓ Heartbeat_v3: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/Heartbeat_v4
    response_format_test.go:252: ✓ Heartbeat_v4: correctly identified as flexible=true
=== RUN   TestFlexibleResponseHeaderFormat/LeaveGroup_v0
    response_format_test.go:252: ✓ LeaveGroup_v0: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/LeaveGroup_v3
    response_format_test.go:252: ✓ LeaveGroup_v3: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/LeaveGroup_v4
    response_format_test.go:252: ✓ LeaveGroup_v4: correctly identified as flexible=true
=== RUN   TestFlexibleResponseHeaderFormat/OffsetFetch_v0
    response_format_test.go:252: ✓ OffsetFetch_v0: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/OffsetFetch_v5
    response_format_test.go:252: ✓ OffsetFetch_v5: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/OffsetFetch_v6
    response_format_test.go:252: ✓ OffsetFetch_v6: correctly identified as flexible=true
=== RUN   TestFlexibleResponseHeaderFormat/OffsetCommit_v0
    response_format_test.go:252: ✓ OffsetCommit_v0: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/OffsetCommit_v7
    response_format_test.go:252: ✓ OffsetCommit_v7: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/OffsetCommit_v8
    response_format_test.go:252: ✓ OffsetCommit_v8: correctly identified as flexible=true
=== RUN   TestFlexibleResponseHeaderFormat/DescribeConfigs_v0
    response_format_test.go:252: ✓ DescribeConfigs_v0: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/DescribeConfigs_v3
    response_format_test.go:252: ✓ DescribeConfigs_v3: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/DescribeConfigs_v4
    response_format_test.go:252: ✓ DescribeConfigs_v4: correctly identified as flexible=true
=== RUN   TestFlexibleResponseHeaderFormat/InitProducerId_v0
    response_format_test.go:252: ✓ InitProducerId_v0: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/InitProducerId_v1
    response_format_test.go:252: ✓ InitProducerId_v1: correctly identified as flexible=false
=== RUN   TestFlexibleResponseHeaderFormat/InitProducerId_v2
    response_format_test.go:252: ✓ InitProducerId_v2: correctly identified as flexible=true
=== RUN   TestFlexibleResponseHeaderFormat/DescribeCluster_v0
    response_format_test.go:252: ✓ DescribeCluster_v0: correctly identified as flexible=true
=== RUN   TestFlexibleResponseHeaderFormat/DescribeCluster_v1
    response_format_test.go:252: ✓ DescribeCluster_v1: correctly identified as flexible=true
--- PASS: TestFlexibleResponseHeaderFormat (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/ApiVersions_v0 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/ApiVersions_v3 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/ApiVersions_v4 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/Metadata_v0 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/Metadata_v7 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/Metadata_v9 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/Produce_v0 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/Produce_v7 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/Produce_v9 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/Fetch_v0 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/Fetch_v7 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/Fetch_v12 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/FindCoordinator_v0 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/FindCoordinator_v2 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/FindCoordinator_v3 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/JoinGroup_v0 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/JoinGroup_v5 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/JoinGroup_v6 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/SyncGroup_v0 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/SyncGroup_v3 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/SyncGroup_v4 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/Heartbeat_v0 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/Heartbeat_v3 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/Heartbeat_v4 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/LeaveGroup_v0 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/LeaveGroup_v3 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/LeaveGroup_v4 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/OffsetFetch_v0 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/OffsetFetch_v5 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/OffsetFetch_v6 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/OffsetCommit_v0 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/OffsetCommit_v7 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/OffsetCommit_v8 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/DescribeConfigs_v0 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/DescribeConfigs_v3 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/DescribeConfigs_v4 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/InitProducerId_v0 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/InitProducerId_v1 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/InitProducerId_v2 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/DescribeCluster_v0 (0.00s)
    --- PASS: TestFlexibleResponseHeaderFormat/DescribeCluster_v1 (0.00s)
=== RUN   TestCorrelationIDNotInResponseBody
=== RUN   TestCorrelationIDNotInResponseBody/DetectCorrelationIDInBody
    response_format_test.go:283: ✓ Successfully detected correlation ID in body (bad response)
    response_format_test.go:294: ✓ Correctly identified response without correlation ID
--- PASS: TestCorrelationIDNotInResponseBody (0.00s)
    --- PASS: TestCorrelationIDNotInResponseBody/DetectCorrelationIDInBody (0.00s)
=== RUN   TestWireProtocolFormat
    response_format_test.go:301: Kafka Wire Protocol Format (KIP-482):
    response_format_test.go:302:   Non-flexible responses:
    response_format_test.go:303:     [Size: 4 bytes][Correlation ID: 4 bytes][Response Body]
    response_format_test.go:304: 
    response_format_test.go:305:   Flexible responses (header version 1+):
    response_format_test.go:306:     [Size: 4 bytes][Correlation ID: 4 bytes][Tagged Fields: 1+ bytes][Response Body]
    response_format_test.go:307: 
    response_format_test.go:308:   Size field: includes correlation ID + tagged fields + body
    response_format_test.go:309:   Tagged Fields: varint-encoded, 0x00 for empty
    response_format_test.go:310: 
    response_format_test.go:311: CRITICAL: Response body should NEVER include correlation ID!
    response_format_test.go:312:           It is written ONLY by writeResponseWithHeader
--- PASS: TestWireProtocolFormat (0.00s)
=== RUN   TestJoinGroupResponseStructure
    response_validation_example_test.go:14: This is a demonstration test - shows what we SHOULD check
--- SKIP: TestJoinGroupResponseStructure (0.00s)
=== RUN   TestProduceResponseStructure
    response_validation_example_test.go:48: This is a demonstration test - shows what we SHOULD check
--- SKIP: TestProduceResponseStructure (0.00s)
=== RUN   TestCompareWithReferenceImplementation
    response_validation_example_test.go:64: This would require a reference Kafka broker or client library
--- SKIP: TestCompareWithReferenceImplementation (0.00s)
=== RUN   TestCurrentTestingApproach
    response_validation_example_test.go:82: Current testing strategy (as of Oct 2025):
    response_validation_example_test.go:83: 
    response_validation_example_test.go:84: LEVEL 1: Static Code Analysis
    response_validation_example_test.go:85:   Tool: check_responses.sh
    response_validation_example_test.go:86:   Checks: Correlation ID patterns
    response_validation_example_test.go:87:   Coverage: Good for known issues
    response_validation_example_test.go:88: 
    response_validation_example_test.go:89: LEVEL 2: Protocol Format Tests
    response_validation_example_test.go:90:   Tool: TestFlexibleResponseHeaderFormat
    response_validation_example_test.go:91:   Checks: Flexible vs non-flexible classification
    response_validation_example_test.go:92:   Coverage: Header format only
    response_validation_example_test.go:93: 
    response_validation_example_test.go:94: LEVEL 3: Integration Testing
    response_validation_example_test.go:95:   Tool: Schema Registry, kafka-go, Sarama, Java client
    response_validation_example_test.go:96:   Checks: Real client compatibility
    response_validation_example_test.go:97:   Coverage: Complete but requires manual debugging
    response_validation_example_test.go:98: 
    response_validation_example_test.go:99: MISSING: Field-level response body validation
    response_validation_example_test.go:100:   This is why JoinGroup issue wasn't caught by unit tests
--- PASS: TestCurrentTestingApproach (0.00s)
=== RUN   TestMetadataResponseHasBrokers
    response_validation_example_test.go:115: Example of what a real field-level test would look like
--- SKIP: TestMetadataResponseHasBrokers (0.00s)
=== RUN   TestSyncGroup_RaceCondition_BugDocumentation
    syncgroup_assignment_test.go:48: Original bug: Non-leader in Stable state would trigger server-side assignment
    syncgroup_assignment_test.go:49: This caused duplicate partition assignments and message re-reads (66.7% duplicates)
    syncgroup_assignment_test.go:50: Fix: Check if member is non-leader with empty assignments, regardless of group state
--- PASS: TestSyncGroup_RaceCondition_BugDocumentation (0.00s)
=== RUN   TestSyncGroup_FixVerification
=== RUN   TestSyncGroup_FixVerification/Leader_with_assignments
    syncgroup_assignment_test.go:121: ✓ Leader provides client-side assignments, processes them: isLeader=true hasAssignments=true shouldWait=false
=== RUN   TestSyncGroup_FixVerification/Non-leader_without_assignments_(PreparingRebalance)
    syncgroup_assignment_test.go:121: ✓ Non-leader waits for leader to provide assignments: isLeader=false hasAssignments=false shouldWait=true
=== RUN   TestSyncGroup_FixVerification/Non-leader_without_assignments_(Stable)_-_THE_BUG_CASE
    syncgroup_assignment_test.go:121: ✓ Non-leader retrieves assignment from leader (already processed): isLeader=false hasAssignments=false shouldWait=true
=== RUN   TestSyncGroup_FixVerification/Leader_without_assignments
    syncgroup_assignment_test.go:121: ✓ Edge case: server-side assignment (should not happen with Sarama): isLeader=true hasAssignments=false shouldWait=false
--- PASS: TestSyncGroup_FixVerification (0.00s)
    --- PASS: TestSyncGroup_FixVerification/Leader_with_assignments (0.00s)
    --- PASS: TestSyncGroup_FixVerification/Non-leader_without_assignments_(PreparingRebalance) (0.00s)
    --- PASS: TestSyncGroup_FixVerification/Non-leader_without_assignments_(Stable)_-_THE_BUG_CASE (0.00s)
    --- PASS: TestSyncGroup_FixVerification/Leader_without_assignments (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/kafka/protocol	2.031s
=== RUN   TestNewAvroDecoder
=== RUN   TestNewAvroDecoder/valid_record_schema
=== RUN   TestNewAvroDecoder/valid_enum_schema
=== RUN   TestNewAvroDecoder/invalid_schema
=== RUN   TestNewAvroDecoder/empty_schema
--- PASS: TestNewAvroDecoder (0.00s)
    --- PASS: TestNewAvroDecoder/valid_record_schema (0.00s)
    --- PASS: TestNewAvroDecoder/valid_enum_schema (0.00s)
    --- PASS: TestNewAvroDecoder/invalid_schema (0.00s)
    --- PASS: TestNewAvroDecoder/empty_schema (0.00s)
=== RUN   TestAvroDecoder_Decode
--- PASS: TestAvroDecoder_Decode (0.00s)
=== RUN   TestAvroDecoder_DecodeToRecordValue
--- PASS: TestAvroDecoder_DecodeToRecordValue (0.00s)
=== RUN   TestMapToRecordValue
--- PASS: TestMapToRecordValue (0.00s)
=== RUN   TestGoValueToSchemaValue
=== RUN   TestGoValueToSchemaValue/nil_value
=== RUN   TestGoValueToSchemaValue/bool_value
=== RUN   TestGoValueToSchemaValue/int32_value
=== RUN   TestGoValueToSchemaValue/int64_value
=== RUN   TestGoValueToSchemaValue/string_value
=== RUN   TestGoValueToSchemaValue/bytes_value
=== RUN   TestGoValueToSchemaValue/time_value
--- PASS: TestGoValueToSchemaValue (0.00s)
    --- PASS: TestGoValueToSchemaValue/nil_value (0.00s)
    --- PASS: TestGoValueToSchemaValue/bool_value (0.00s)
    --- PASS: TestGoValueToSchemaValue/int32_value (0.00s)
    --- PASS: TestGoValueToSchemaValue/int64_value (0.00s)
    --- PASS: TestGoValueToSchemaValue/string_value (0.00s)
    --- PASS: TestGoValueToSchemaValue/bytes_value (0.00s)
    --- PASS: TestGoValueToSchemaValue/time_value (0.00s)
=== RUN   TestInferRecordTypeFromMap
--- PASS: TestInferRecordTypeFromMap (0.00s)
=== RUN   TestInferTypeFromValue
=== RUN   TestInferTypeFromValue/nil
=== RUN   TestInferTypeFromValue/bool
=== RUN   TestInferTypeFromValue/int32
=== RUN   TestInferTypeFromValue/int64
=== RUN   TestInferTypeFromValue/int
=== RUN   TestInferTypeFromValue/float32
=== RUN   TestInferTypeFromValue/float64
=== RUN   TestInferTypeFromValue/string
=== RUN   TestInferTypeFromValue/bytes
=== RUN   TestInferTypeFromValue/time
--- PASS: TestInferTypeFromValue (0.00s)
    --- PASS: TestInferTypeFromValue/nil (0.00s)
    --- PASS: TestInferTypeFromValue/bool (0.00s)
    --- PASS: TestInferTypeFromValue/int32 (0.00s)
    --- PASS: TestInferTypeFromValue/int64 (0.00s)
    --- PASS: TestInferTypeFromValue/int (0.00s)
    --- PASS: TestInferTypeFromValue/float32 (0.00s)
    --- PASS: TestInferTypeFromValue/float64 (0.00s)
    --- PASS: TestInferTypeFromValue/string (0.00s)
    --- PASS: TestInferTypeFromValue/bytes (0.00s)
    --- PASS: TestInferTypeFromValue/time (0.00s)
=== RUN   TestAvroDecoder_Integration
--- PASS: TestAvroDecoder_Integration (0.00s)
=== RUN   TestBrokerClient_FetchIntegration
=== RUN   TestBrokerClient_FetchIntegration/Fetch_Schema_Integration
I0616 11:57:39.806537 connect_to_sub_coordinator.go:32 broker coordinator on localhost:17777: getOrCreateConnection localhost:17777: fail to dial localhost:17777: grpc: no transport security set (use grpc.WithTransportCredentials(insecure.NewCredentials()) explicitly or set credentials)
I0616 11:57:39.806910 connect_to_sub_coordinator.go:101 subscriber kafka.fetch-test-topic/kafka-gateway waiting for more assignments
    broker_client_fetch_test.go:57: Fetch integration test completed - connection failed as expected with mock broker: failed to get subscriber for topic fetch-test-topic: failed to connect to brokers: connection timeout
=== RUN   TestBrokerClient_FetchIntegration/Envelope_Reconstruction
    broker_client_fetch_test.go:88: Expected error in envelope reconstruction due to schema mismatch: failed to encode RecordValue: failed to encode to Avro binary: cannot encode binary record "FetchTest" field "id": schema does not specify default value and no value provided
=== RUN   TestBrokerClient_FetchIntegration/Subscriber_Management
I0616 11:57:39.907639 connect_to_sub_coordinator.go:32 broker coordinator on localhost:17777: getOrCreateConnection localhost:17777: fail to dial localhost:17777: grpc: no transport security set (use grpc.WithTransportCredentials(insecure.NewCredentials()) explicitly or set credentials)
I0616 11:57:39.907648 connect_to_sub_coordinator.go:101 subscriber kafka.subscriber-test-topic/kafka-gateway waiting for more assignments
    broker_client_fetch_test.go:106: Subscriber creation failed as expected with mock brokers: failed to connect to brokers: connection timeout
    broker_client_fetch_test.go:118: Active subscribers: 0
--- PASS: TestBrokerClient_FetchIntegration (0.20s)
    --- PASS: TestBrokerClient_FetchIntegration/Fetch_Schema_Integration (0.10s)
    --- PASS: TestBrokerClient_FetchIntegration/Envelope_Reconstruction (0.00s)
    --- PASS: TestBrokerClient_FetchIntegration/Subscriber_Management (0.10s)
=== RUN   TestBrokerClient_RoundTripIntegration
=== RUN   TestBrokerClient_RoundTripIntegration/Complete_Schema_Workflow
    broker_client_fetch_test.go:182: Round-trip test completed - schema validation and processing successful
=== RUN   TestBrokerClient_RoundTripIntegration/Error_Handling_in_Fetch
I0616 11:57:40.008934 connect_to_sub_coordinator.go:32 broker coordinator on localhost:17777: getOrCreateConnection localhost:17777: fail to dial localhost:17777: grpc: no transport security set (use grpc.WithTransportCredentials(insecure.NewCredentials()) explicitly or set credentials)
I0616 11:57:40.008943 connect_to_sub_coordinator.go:101 subscriber kafka.non-existent-topic/kafka-gateway waiting for more assignments
    broker_client_fetch_test.go:200: Reconstruction result: failed to encode RecordValue: failed to get schema for encoding: schema registry error 404: {"error_code": 40403, "message": "Schema not found"}
--- PASS: TestBrokerClient_RoundTripIntegration (0.10s)
    --- PASS: TestBrokerClient_RoundTripIntegration/Complete_Schema_Workflow (0.00s)
    --- PASS: TestBrokerClient_RoundTripIntegration/Error_Handling_in_Fetch (0.10s)
=== RUN   TestBrokerClient_SubscriberConfiguration
=== RUN   TestBrokerClient_SubscriberConfiguration/Subscriber_Cache_Management
I0616 11:57:40.109673 connect_to_sub_coordinator.go:32 broker coordinator on localhost:17777: getOrCreateConnection localhost:17777: fail to dial localhost:17777: grpc: no transport security set (use grpc.WithTransportCredentials(insecure.NewCredentials()) explicitly or set credentials)
I0616 11:57:40.109681 connect_to_sub_coordinator.go:101 subscriber kafka.cache-test-topic/kafka-gateway waiting for more assignments
I0616 11:57:40.209968 connect_to_sub_coordinator.go:32 broker coordinator on localhost:17777: getOrCreateConnection localhost:17777: fail to dial localhost:17777: grpc: no transport security set (use grpc.WithTransportCredentials(insecure.NewCredentials()) explicitly or set credentials)
I0616 11:57:40.209980 connect_to_sub_coordinator.go:101 subscriber kafka.cache-test-topic/kafka-gateway waiting for more assignments
    broker_client_fetch_test.go:230: Subscriber creation results: err1=failed to connect to brokers: connection timeout, err2=failed to connect to brokers: connection timeout
    broker_client_fetch_test.go:235: Broker client remains functional after subscriber creation attempts
=== RUN   TestBrokerClient_SubscriberConfiguration/Multiple_Topic_Subscribers
I0616 11:57:40.310327 connect_to_sub_coordinator.go:32 broker coordinator on localhost:17777: getOrCreateConnection localhost:17777: fail to dial localhost:17777: grpc: no transport security set (use grpc.WithTransportCredentials(insecure.NewCredentials()) explicitly or set credentials)
I0616 11:57:40.310339 connect_to_sub_coordinator.go:101 subscriber kafka.topic-a/kafka-gateway waiting for more assignments
    broker_client_fetch_test.go:244: Subscriber creation for topic-a: failed to connect to brokers: connection timeout
I0616 11:57:40.410633 connect_to_sub_coordinator.go:32 broker coordinator on localhost:17777: getOrCreateConnection localhost:17777: fail to dial localhost:17777: grpc: no transport security set (use grpc.WithTransportCredentials(insecure.NewCredentials()) explicitly or set credentials)
I0616 11:57:40.410642 connect_to_sub_coordinator.go:101 subscriber kafka.topic-b/kafka-gateway waiting for more assignments
    broker_client_fetch_test.go:244: Subscriber creation for topic-b: failed to connect to brokers: connection timeout
I0616 11:57:40.510967 connect_to_sub_coordinator.go:32 broker coordinator on localhost:17777: getOrCreateConnection localhost:17777: fail to dial localhost:17777: grpc: no transport security set (use grpc.WithTransportCredentials(insecure.NewCredentials()) explicitly or set credentials)
I0616 11:57:40.510979 connect_to_sub_coordinator.go:101 subscriber kafka.topic-c/kafka-gateway waiting for more assignments
    broker_client_fetch_test.go:244: Subscriber creation for topic-c: failed to connect to brokers: connection timeout
--- PASS: TestBrokerClient_SubscriberConfiguration (0.50s)
    --- PASS: TestBrokerClient_SubscriberConfiguration/Subscriber_Cache_Management (0.20s)
    --- PASS: TestBrokerClient_SubscriberConfiguration/Multiple_Topic_Subscribers (0.30s)
=== RUN   TestBrokerClient_SchematizedMessage
=== RUN   TestBrokerClient_SchematizedMessage/Avro_Schematized_Message
    broker_client_test.go:78: Known issue: Integer value decoded as 0 instead of 42
    broker_client_test.go:87: Successfully validated schematized message with schema ID 1
=== RUN   TestBrokerClient_SchematizedMessage/RecordType_Creation
=== RUN   TestBrokerClient_SchematizedMessage/Publisher_Stats
--- PASS: TestBrokerClient_SchematizedMessage (0.00s)
    --- PASS: TestBrokerClient_SchematizedMessage/Avro_Schematized_Message (0.00s)
    --- PASS: TestBrokerClient_SchematizedMessage/RecordType_Creation (0.00s)
    --- PASS: TestBrokerClient_SchematizedMessage/Publisher_Stats (0.00s)
=== RUN   TestBrokerClient_ErrorHandling
=== RUN   TestBrokerClient_ErrorHandling/Invalid_Schematized_Message
=== RUN   TestBrokerClient_ErrorHandling/Non-Schematized_Message
=== RUN   TestBrokerClient_ErrorHandling/Unknown_Schema_ID
=== RUN   TestBrokerClient_ErrorHandling/Invalid_RecordType_Creation
--- PASS: TestBrokerClient_ErrorHandling (0.00s)
    --- PASS: TestBrokerClient_ErrorHandling/Invalid_Schematized_Message (0.00s)
    --- PASS: TestBrokerClient_ErrorHandling/Non-Schematized_Message (0.00s)
    --- PASS: TestBrokerClient_ErrorHandling/Unknown_Schema_ID (0.00s)
    --- PASS: TestBrokerClient_ErrorHandling/Invalid_RecordType_Creation (0.00s)
=== RUN   TestBrokerClient_Integration
=== RUN   TestBrokerClient_Integration/Multiple_Schema_Formats
    broker_client_test.go:251: Successfully validated JSON Schema message with schema ID 11
=== RUN   TestBrokerClient_Integration/Cache_Behavior
--- PASS: TestBrokerClient_Integration (0.00s)
    --- PASS: TestBrokerClient_Integration/Multiple_Schema_Formats (0.00s)
    --- PASS: TestBrokerClient_Integration/Cache_Behavior (0.00s)
=== RUN   TestBasicSchemaDecodeEncode
=== RUN   TestBasicSchemaDecodeEncode/Simple_Avro_String_Record
=== RUN   TestBasicSchemaDecodeEncode/JSON_Schema_with_String_Field
=== RUN   TestBasicSchemaDecodeEncode/Cache_Performance
--- PASS: TestBasicSchemaDecodeEncode (0.00s)
    --- PASS: TestBasicSchemaDecodeEncode/Simple_Avro_String_Record (0.00s)
    --- PASS: TestBasicSchemaDecodeEncode/JSON_Schema_with_String_Field (0.00s)
    --- PASS: TestBasicSchemaDecodeEncode/Cache_Performance (0.00s)
=== RUN   TestSchemaValidation
=== RUN   TestSchemaValidation/Valid_Schema_Message
=== RUN   TestSchemaValidation/Non-Schematized_Message
=== RUN   TestSchemaValidation/Invalid_Envelope
--- PASS: TestSchemaValidation (0.00s)
    --- PASS: TestSchemaValidation/Valid_Schema_Message (0.00s)
    --- PASS: TestSchemaValidation/Non-Schematized_Message (0.00s)
    --- PASS: TestSchemaValidation/Invalid_Envelope (0.00s)
=== RUN   TestSchemaDecodeEncode_Avro
=== RUN   TestSchemaDecodeEncode_Avro/Simple_User_Record
=== RUN   TestSchemaDecodeEncode_Avro/Complex_Record_with_Arrays
=== RUN   TestSchemaDecodeEncode_Avro/Union_Types
--- PASS: TestSchemaDecodeEncode_Avro (0.00s)
    --- PASS: TestSchemaDecodeEncode_Avro/Simple_User_Record (0.00s)
    --- PASS: TestSchemaDecodeEncode_Avro/Complex_Record_with_Arrays (0.00s)
    --- PASS: TestSchemaDecodeEncode_Avro/Union_Types (0.00s)
=== RUN   TestSchemaDecodeEncode_JSONSchema
=== RUN   TestSchemaDecodeEncode_JSONSchema/Product_Schema
=== RUN   TestSchemaDecodeEncode_JSONSchema/Nested_Object_Schema
--- PASS: TestSchemaDecodeEncode_JSONSchema (0.00s)
    --- PASS: TestSchemaDecodeEncode_JSONSchema/Product_Schema (0.00s)
    --- PASS: TestSchemaDecodeEncode_JSONSchema/Nested_Object_Schema (0.00s)
=== RUN   TestSchemaDecodeEncode_Protobuf
--- PASS: TestSchemaDecodeEncode_Protobuf (0.00s)
=== RUN   TestSchemaDecodeEncode_ErrorHandling
=== RUN   TestSchemaDecodeEncode_ErrorHandling/Invalid_Confluent_Envelope
=== RUN   TestSchemaDecodeEncode_ErrorHandling/Schema_Not_Found
=== RUN   TestSchemaDecodeEncode_ErrorHandling/Invalid_Avro_Data
=== RUN   TestSchemaDecodeEncode_ErrorHandling/Invalid_JSON_Data
--- PASS: TestSchemaDecodeEncode_ErrorHandling (0.00s)
    --- PASS: TestSchemaDecodeEncode_ErrorHandling/Invalid_Confluent_Envelope (0.00s)
    --- PASS: TestSchemaDecodeEncode_ErrorHandling/Schema_Not_Found (0.00s)
    --- PASS: TestSchemaDecodeEncode_ErrorHandling/Invalid_Avro_Data (0.00s)
    --- PASS: TestSchemaDecodeEncode_ErrorHandling/Invalid_JSON_Data (0.00s)
=== RUN   TestSchemaDecodeEncode_CachePerformance
--- PASS: TestSchemaDecodeEncode_CachePerformance (0.00s)
=== RUN   TestParseConfluentEnvelope
=== RUN   TestParseConfluentEnvelope/valid_Avro_message
=== RUN   TestParseConfluentEnvelope/valid_message_with_larger_schema_ID
=== RUN   TestParseConfluentEnvelope/too_short_message
=== RUN   TestParseConfluentEnvelope/no_magic_byte
=== RUN   TestParseConfluentEnvelope/empty_message
=== RUN   TestParseConfluentEnvelope/minimal_valid_message
--- PASS: TestParseConfluentEnvelope (0.00s)
    --- PASS: TestParseConfluentEnvelope/valid_Avro_message (0.00s)
    --- PASS: TestParseConfluentEnvelope/valid_message_with_larger_schema_ID (0.00s)
    --- PASS: TestParseConfluentEnvelope/too_short_message (0.00s)
    --- PASS: TestParseConfluentEnvelope/no_magic_byte (0.00s)
    --- PASS: TestParseConfluentEnvelope/empty_message (0.00s)
    --- PASS: TestParseConfluentEnvelope/minimal_valid_message (0.00s)
=== RUN   TestIsSchematized
=== RUN   TestIsSchematized/schematized_message
=== RUN   TestIsSchematized/non-schematized_message
=== RUN   TestIsSchematized/empty_message
--- PASS: TestIsSchematized (0.00s)
    --- PASS: TestIsSchematized/schematized_message (0.00s)
    --- PASS: TestIsSchematized/non-schematized_message (0.00s)
    --- PASS: TestIsSchematized/empty_message (0.00s)
=== RUN   TestExtractSchemaID
=== RUN   TestExtractSchemaID/valid_schema_ID
=== RUN   TestExtractSchemaID/large_schema_ID
=== RUN   TestExtractSchemaID/no_magic_byte
=== RUN   TestExtractSchemaID/too_short
--- PASS: TestExtractSchemaID (0.00s)
    --- PASS: TestExtractSchemaID/valid_schema_ID (0.00s)
    --- PASS: TestExtractSchemaID/large_schema_ID (0.00s)
    --- PASS: TestExtractSchemaID/no_magic_byte (0.00s)
    --- PASS: TestExtractSchemaID/too_short (0.00s)
=== RUN   TestCreateConfluentEnvelope
=== RUN   TestCreateConfluentEnvelope/simple_Avro_message
=== RUN   TestCreateConfluentEnvelope/large_schema_ID
=== RUN   TestCreateConfluentEnvelope/empty_payload
--- PASS: TestCreateConfluentEnvelope (0.00s)
    --- PASS: TestCreateConfluentEnvelope/simple_Avro_message (0.00s)
    --- PASS: TestCreateConfluentEnvelope/large_schema_ID (0.00s)
    --- PASS: TestCreateConfluentEnvelope/empty_payload (0.00s)
=== RUN   TestEnvelopeValidate
=== RUN   TestEnvelopeValidate/valid_Avro_envelope
=== RUN   TestEnvelopeValidate/zero_schema_ID
=== RUN   TestEnvelopeValidate/empty_payload
=== RUN   TestEnvelopeValidate/unknown_format
--- PASS: TestEnvelopeValidate (0.00s)
    --- PASS: TestEnvelopeValidate/valid_Avro_envelope (0.00s)
    --- PASS: TestEnvelopeValidate/zero_schema_ID (0.00s)
    --- PASS: TestEnvelopeValidate/empty_payload (0.00s)
    --- PASS: TestEnvelopeValidate/unknown_format (0.00s)
=== RUN   TestEnvelopeMetadata
--- PASS: TestEnvelopeMetadata (0.00s)
=== RUN   TestEncodeDecodeVarint
=== RUN   TestEncodeDecodeVarint/zero
=== RUN   TestEncodeDecodeVarint/small
=== RUN   TestEncodeDecodeVarint/medium
=== RUN   TestEncodeDecodeVarint/large
=== RUN   TestEncodeDecodeVarint/very_large
=== RUN   TestEncodeDecodeVarint/max_uint32
--- PASS: TestEncodeDecodeVarint (0.00s)
    --- PASS: TestEncodeDecodeVarint/zero (0.00s)
    --- PASS: TestEncodeDecodeVarint/small (0.00s)
    --- PASS: TestEncodeDecodeVarint/medium (0.00s)
    --- PASS: TestEncodeDecodeVarint/large (0.00s)
    --- PASS: TestEncodeDecodeVarint/very_large (0.00s)
    --- PASS: TestEncodeDecodeVarint/max_uint32 (0.00s)
=== RUN   TestCreateConfluentEnvelopeWithProtobufIndexes
=== RUN   TestCreateConfluentEnvelopeWithProtobufIndexes/avro_no_indexes
=== RUN   TestCreateConfluentEnvelopeWithProtobufIndexes/protobuf_no_indexes
=== RUN   TestCreateConfluentEnvelopeWithProtobufIndexes/protobuf_single_index
=== RUN   TestCreateConfluentEnvelopeWithProtobufIndexes/protobuf_multiple_indexes
--- PASS: TestCreateConfluentEnvelopeWithProtobufIndexes (0.00s)
    --- PASS: TestCreateConfluentEnvelopeWithProtobufIndexes/avro_no_indexes (0.00s)
    --- PASS: TestCreateConfluentEnvelopeWithProtobufIndexes/protobuf_no_indexes (0.00s)
    --- PASS: TestCreateConfluentEnvelopeWithProtobufIndexes/protobuf_single_index (0.00s)
    --- PASS: TestCreateConfluentEnvelopeWithProtobufIndexes/protobuf_multiple_indexes (0.00s)
=== RUN   TestProtobufEnvelopeRoundTrip
--- PASS: TestProtobufEnvelopeRoundTrip (0.00s)
=== RUN   TestVarintEdgeCases
=== RUN   TestVarintEdgeCases/empty_data
=== RUN   TestVarintEdgeCases/incomplete_varint
=== RUN   TestVarintEdgeCases/max_varint_length
--- PASS: TestVarintEdgeCases (0.00s)
    --- PASS: TestVarintEdgeCases/empty_data (0.00s)
    --- PASS: TestVarintEdgeCases/incomplete_varint (0.00s)
    --- PASS: TestVarintEdgeCases/max_varint_length (0.00s)
=== RUN   TestProtobufEnvelopeValidation
=== RUN   TestProtobufEnvelopeValidation/valid_envelope
=== RUN   TestProtobufEnvelopeValidation/zero_schema_id
=== RUN   TestProtobufEnvelopeValidation/empty_payload
--- PASS: TestProtobufEnvelopeValidation (0.00s)
    --- PASS: TestProtobufEnvelopeValidation/valid_envelope (0.00s)
    --- PASS: TestProtobufEnvelopeValidation/zero_schema_id (0.00s)
    --- PASS: TestProtobufEnvelopeValidation/empty_payload (0.00s)
=== RUN   TestSchemaEvolutionChecker_AvroBackwardCompatibility
=== RUN   TestSchemaEvolutionChecker_AvroBackwardCompatibility/Compatible_-_Add_optional_field
=== RUN   TestSchemaEvolutionChecker_AvroBackwardCompatibility/Incompatible_-_Remove_field
=== RUN   TestSchemaEvolutionChecker_AvroBackwardCompatibility/Incompatible_-_Add_required_field
=== RUN   TestSchemaEvolutionChecker_AvroBackwardCompatibility/Compatible_-_Type_promotion
--- PASS: TestSchemaEvolutionChecker_AvroBackwardCompatibility (0.00s)
    --- PASS: TestSchemaEvolutionChecker_AvroBackwardCompatibility/Compatible_-_Add_optional_field (0.00s)
    --- PASS: TestSchemaEvolutionChecker_AvroBackwardCompatibility/Incompatible_-_Remove_field (0.00s)
    --- PASS: TestSchemaEvolutionChecker_AvroBackwardCompatibility/Incompatible_-_Add_required_field (0.00s)
    --- PASS: TestSchemaEvolutionChecker_AvroBackwardCompatibility/Compatible_-_Type_promotion (0.00s)
=== RUN   TestSchemaEvolutionChecker_AvroForwardCompatibility
=== RUN   TestSchemaEvolutionChecker_AvroForwardCompatibility/Compatible_-_Remove_optional_field
=== RUN   TestSchemaEvolutionChecker_AvroForwardCompatibility/Incompatible_-_Add_field_without_default_in_old_schema
--- PASS: TestSchemaEvolutionChecker_AvroForwardCompatibility (0.00s)
    --- PASS: TestSchemaEvolutionChecker_AvroForwardCompatibility/Compatible_-_Remove_optional_field (0.00s)
    --- PASS: TestSchemaEvolutionChecker_AvroForwardCompatibility/Incompatible_-_Add_field_without_default_in_old_schema (0.00s)
=== RUN   TestSchemaEvolutionChecker_AvroFullCompatibility
=== RUN   TestSchemaEvolutionChecker_AvroFullCompatibility/Compatible_-_Add_optional_field_with_default
=== RUN   TestSchemaEvolutionChecker_AvroFullCompatibility/Incompatible_-_Remove_field
--- PASS: TestSchemaEvolutionChecker_AvroFullCompatibility (0.00s)
    --- PASS: TestSchemaEvolutionChecker_AvroFullCompatibility/Compatible_-_Add_optional_field_with_default (0.00s)
    --- PASS: TestSchemaEvolutionChecker_AvroFullCompatibility/Incompatible_-_Remove_field (0.00s)
=== RUN   TestSchemaEvolutionChecker_JSONSchemaCompatibility
=== RUN   TestSchemaEvolutionChecker_JSONSchemaCompatibility/Compatible_-_Add_optional_property
=== RUN   TestSchemaEvolutionChecker_JSONSchemaCompatibility/Incompatible_-_Add_required_property
=== RUN   TestSchemaEvolutionChecker_JSONSchemaCompatibility/Incompatible_-_Remove_property
--- PASS: TestSchemaEvolutionChecker_JSONSchemaCompatibility (0.00s)
    --- PASS: TestSchemaEvolutionChecker_JSONSchemaCompatibility/Compatible_-_Add_optional_property (0.00s)
    --- PASS: TestSchemaEvolutionChecker_JSONSchemaCompatibility/Incompatible_-_Add_required_property (0.00s)
    --- PASS: TestSchemaEvolutionChecker_JSONSchemaCompatibility/Incompatible_-_Remove_property (0.00s)
=== RUN   TestSchemaEvolutionChecker_ProtobufCompatibility
=== RUN   TestSchemaEvolutionChecker_ProtobufCompatibility/Simplified_Protobuf_check
--- PASS: TestSchemaEvolutionChecker_ProtobufCompatibility (0.00s)
    --- PASS: TestSchemaEvolutionChecker_ProtobufCompatibility/Simplified_Protobuf_check (0.00s)
=== RUN   TestSchemaEvolutionChecker_NoCompatibility
--- PASS: TestSchemaEvolutionChecker_NoCompatibility (0.00s)
=== RUN   TestSchemaEvolutionChecker_TypePromotion
=== RUN   TestSchemaEvolutionChecker_TypePromotion/int_to_long
=== RUN   TestSchemaEvolutionChecker_TypePromotion/int_to_float
=== RUN   TestSchemaEvolutionChecker_TypePromotion/int_to_double
=== RUN   TestSchemaEvolutionChecker_TypePromotion/long_to_float
=== RUN   TestSchemaEvolutionChecker_TypePromotion/long_to_double
=== RUN   TestSchemaEvolutionChecker_TypePromotion/float_to_double
=== RUN   TestSchemaEvolutionChecker_TypePromotion/string_to_bytes
=== RUN   TestSchemaEvolutionChecker_TypePromotion/bytes_to_string
=== RUN   TestSchemaEvolutionChecker_TypePromotion/long_to_int
=== RUN   TestSchemaEvolutionChecker_TypePromotion/double_to_float
=== RUN   TestSchemaEvolutionChecker_TypePromotion/string_to_int
--- PASS: TestSchemaEvolutionChecker_TypePromotion (0.00s)
    --- PASS: TestSchemaEvolutionChecker_TypePromotion/int_to_long (0.00s)
    --- PASS: TestSchemaEvolutionChecker_TypePromotion/int_to_float (0.00s)
    --- PASS: TestSchemaEvolutionChecker_TypePromotion/int_to_double (0.00s)
    --- PASS: TestSchemaEvolutionChecker_TypePromotion/long_to_float (0.00s)
    --- PASS: TestSchemaEvolutionChecker_TypePromotion/long_to_double (0.00s)
    --- PASS: TestSchemaEvolutionChecker_TypePromotion/float_to_double (0.00s)
    --- PASS: TestSchemaEvolutionChecker_TypePromotion/string_to_bytes (0.00s)
    --- PASS: TestSchemaEvolutionChecker_TypePromotion/bytes_to_string (0.00s)
    --- PASS: TestSchemaEvolutionChecker_TypePromotion/long_to_int (0.00s)
    --- PASS: TestSchemaEvolutionChecker_TypePromotion/double_to_float (0.00s)
    --- PASS: TestSchemaEvolutionChecker_TypePromotion/string_to_int (0.00s)
=== RUN   TestSchemaEvolutionChecker_SuggestEvolution
=== RUN   TestSchemaEvolutionChecker_SuggestEvolution/Compatible_schema
=== RUN   TestSchemaEvolutionChecker_SuggestEvolution/Incompatible_schema_with_suggestions
--- PASS: TestSchemaEvolutionChecker_SuggestEvolution (0.00s)
    --- PASS: TestSchemaEvolutionChecker_SuggestEvolution/Compatible_schema (0.00s)
    --- PASS: TestSchemaEvolutionChecker_SuggestEvolution/Incompatible_schema_with_suggestions (0.00s)
=== RUN   TestSchemaEvolutionChecker_CanEvolve
--- PASS: TestSchemaEvolutionChecker_CanEvolve (0.00s)
=== RUN   TestSchemaEvolutionChecker_ExtractFields
=== RUN   TestSchemaEvolutionChecker_ExtractFields/Extract_Avro_fields
=== RUN   TestSchemaEvolutionChecker_ExtractFields/Extract_JSON_Schema_required_fields
=== RUN   TestSchemaEvolutionChecker_ExtractFields/Extract_JSON_Schema_properties
--- PASS: TestSchemaEvolutionChecker_ExtractFields (0.00s)
    --- PASS: TestSchemaEvolutionChecker_ExtractFields/Extract_Avro_fields (0.00s)
    --- PASS: TestSchemaEvolutionChecker_ExtractFields/Extract_JSON_Schema_required_fields (0.00s)
    --- PASS: TestSchemaEvolutionChecker_ExtractFields/Extract_JSON_Schema_properties (0.00s)
=== RUN   TestFullIntegration_AvroWorkflow
=== RUN   TestFullIntegration_AvroWorkflow/Producer_Workflow
    integration_test.go:88: Successfully processed producer message with 5 fields
=== RUN   TestFullIntegration_AvroWorkflow/Consumer_Workflow
    integration_test.go:140: Successfully reconstructed consumer message: 38 bytes
=== RUN   TestFullIntegration_AvroWorkflow/Round_Trip_Integrity
    integration_test.go:203: Round-trip integrity test passed
--- PASS: TestFullIntegration_AvroWorkflow (0.00s)
    --- PASS: TestFullIntegration_AvroWorkflow/Producer_Workflow (0.00s)
    --- PASS: TestFullIntegration_AvroWorkflow/Consumer_Workflow (0.00s)
    --- PASS: TestFullIntegration_AvroWorkflow/Round_Trip_Integrity (0.00s)
=== RUN   TestFullIntegration_MultiFormatSupport
=== RUN   TestFullIntegration_MultiFormatSupport/Avro_Format
    integration_test.go:281: Successfully processed Avro_Format format
=== RUN   TestFullIntegration_MultiFormatSupport/JSON_Schema_Format
    integration_test.go:281: Successfully processed JSON_Schema_Format format
--- PASS: TestFullIntegration_MultiFormatSupport (0.00s)
    --- PASS: TestFullIntegration_MultiFormatSupport/Avro_Format (0.00s)
    --- PASS: TestFullIntegration_MultiFormatSupport/JSON_Schema_Format (0.00s)
=== RUN   TestIntegration_CachePerformance
    integration_test.go:343: Cache performance: First decode: 249.159µs, Average cached: 33.631µs
    integration_test.go:345: Cache stats: 1 decoders, 1 schemas, 0 subjects
--- PASS: TestIntegration_CachePerformance (0.00s)
=== RUN   TestIntegration_ErrorHandling
=== RUN   TestIntegration_ErrorHandling/Non_Schematized_Message
    integration_test.go:405: Expected error occurred: message is not schematized
=== RUN   TestIntegration_ErrorHandling/Invalid_Schema_ID
    integration_test.go:405: Expected error occurred: failed to get schema 999: schema registry error 404: 
=== RUN   TestIntegration_ErrorHandling/Empty_Payload
    integration_test.go:405: Expected error occurred: invalid envelope: empty payload
=== RUN   TestIntegration_ErrorHandling/Corrupted_Avro_Data
    integration_test.go:405: Expected error occurred: failed to decode Avro message: strict validation failed: failed to decode Avro data: cannot decode binary record "User" field "name": cannot decode binary string: cannot decode binary bytes: short buffer
--- PASS: TestIntegration_ErrorHandling (0.00s)
    --- PASS: TestIntegration_ErrorHandling/Non_Schematized_Message (0.00s)
    --- PASS: TestIntegration_ErrorHandling/Invalid_Schema_ID (0.00s)
    --- PASS: TestIntegration_ErrorHandling/Empty_Payload (0.00s)
    --- PASS: TestIntegration_ErrorHandling/Corrupted_Avro_Data (0.00s)
=== RUN   TestIntegration_SchemaEvolution
=== RUN   TestIntegration_SchemaEvolution/Schema_V1_Message
=== RUN   TestIntegration_SchemaEvolution/Schema_V2_Message
--- PASS: TestIntegration_SchemaEvolution (0.00s)
    --- PASS: TestIntegration_SchemaEvolution/Schema_V1_Message (0.00s)
    --- PASS: TestIntegration_SchemaEvolution/Schema_V2_Message (0.00s)
=== RUN   TestNewJSONSchemaDecoder
=== RUN   TestNewJSONSchemaDecoder/valid_object_schema
=== RUN   TestNewJSONSchemaDecoder/valid_array_schema
=== RUN   TestNewJSONSchemaDecoder/valid_string_schema_with_format
=== RUN   TestNewJSONSchemaDecoder/invalid_JSON
=== RUN   TestNewJSONSchemaDecoder/empty_schema
--- PASS: TestNewJSONSchemaDecoder (0.00s)
    --- PASS: TestNewJSONSchemaDecoder/valid_object_schema (0.00s)
    --- PASS: TestNewJSONSchemaDecoder/valid_array_schema (0.00s)
    --- PASS: TestNewJSONSchemaDecoder/valid_string_schema_with_format (0.00s)
    --- PASS: TestNewJSONSchemaDecoder/invalid_JSON (0.00s)
    --- PASS: TestNewJSONSchemaDecoder/empty_schema (0.00s)
=== RUN   TestJSONSchemaDecoder_Decode
=== RUN   TestJSONSchemaDecoder_Decode/valid_complete_data
=== RUN   TestJSONSchemaDecoder_Decode/valid_minimal_data
=== RUN   TestJSONSchemaDecoder_Decode/missing_required_field
=== RUN   TestJSONSchemaDecoder_Decode/invalid_type
=== RUN   TestJSONSchemaDecoder_Decode/invalid_email_format
=== RUN   TestJSONSchemaDecoder_Decode/negative_age
--- PASS: TestJSONSchemaDecoder_Decode (0.00s)
    --- PASS: TestJSONSchemaDecoder_Decode/valid_complete_data (0.00s)
    --- PASS: TestJSONSchemaDecoder_Decode/valid_minimal_data (0.00s)
    --- PASS: TestJSONSchemaDecoder_Decode/missing_required_field (0.00s)
    --- PASS: TestJSONSchemaDecoder_Decode/invalid_type (0.00s)
    --- PASS: TestJSONSchemaDecoder_Decode/invalid_email_format (0.00s)
    --- PASS: TestJSONSchemaDecoder_Decode/negative_age (0.00s)
=== RUN   TestJSONSchemaDecoder_DecodeToRecordValue
--- PASS: TestJSONSchemaDecoder_DecodeToRecordValue (0.00s)
=== RUN   TestJSONSchemaDecoder_InferRecordType
--- PASS: TestJSONSchemaDecoder_InferRecordType (0.00s)
=== RUN   TestJSONSchemaDecoder_EncodeFromRecordValue
--- PASS: TestJSONSchemaDecoder_EncodeFromRecordValue (0.00s)
=== RUN   TestJSONSchemaDecoder_ArrayAndPrimitiveSchemas
=== RUN   TestJSONSchemaDecoder_ArrayAndPrimitiveSchemas/array_schema
=== RUN   TestJSONSchemaDecoder_ArrayAndPrimitiveSchemas/string_schema
=== RUN   TestJSONSchemaDecoder_ArrayAndPrimitiveSchemas/number_schema
=== RUN   TestJSONSchemaDecoder_ArrayAndPrimitiveSchemas/boolean_schema
--- PASS: TestJSONSchemaDecoder_ArrayAndPrimitiveSchemas (0.00s)
    --- PASS: TestJSONSchemaDecoder_ArrayAndPrimitiveSchemas/array_schema (0.00s)
    --- PASS: TestJSONSchemaDecoder_ArrayAndPrimitiveSchemas/string_schema (0.00s)
    --- PASS: TestJSONSchemaDecoder_ArrayAndPrimitiveSchemas/number_schema (0.00s)
    --- PASS: TestJSONSchemaDecoder_ArrayAndPrimitiveSchemas/boolean_schema (0.00s)
=== RUN   TestJSONSchemaDecoder_GetSchemaInfo
--- PASS: TestJSONSchemaDecoder_GetSchemaInfo (0.00s)
=== RUN   TestAvroLoadTestDecoding
    loadtest_decode_test.go:127: Avro encoded size: 68 bytes
    loadtest_decode_test.go:133: Confluent wire format size: 73 bytes
    loadtest_decode_test.go:170: ✅ Avro decoding successful: 7 fields
--- PASS: TestAvroLoadTestDecoding (0.00s)
=== RUN   TestJSONSchemaLoadTestDecoding
    loadtest_decode_test.go:183: JSON encoded size: 174 bytes
    loadtest_decode_test.go:184: JSON content: {"id":"msg-test-123","timestamp":1781611060629169516,"producer_id":0,"counter":42,"user_id":"user-789","event_type":"click","properties":{"browser":"chrome","version":"1.0"}}
    loadtest_decode_test.go:190: Confluent wire format size: 179 bytes
    loadtest_decode_test.go:227: ✅ JSON Schema decoding successful: 7 fields
--- PASS: TestJSONSchemaLoadTestDecoding (0.00s)
=== RUN   TestProtobufLoadTestDecoding
    loadtest_decode_test.go:241: JSON (for Protobuf) encoded size: 174 bytes
    loadtest_decode_test.go:242: JSON content: {"id":"msg-test-123","timestamp":1781611060629293084,"producer_id":0,"counter":42,"user_id":"user-789","event_type":"click","properties":{"browser":"chrome","version":"1.0"}}
    loadtest_decode_test.go:248: Confluent wire format size: 179 bytes
    loadtest_decode_test.go:275: Unexpectedly succeeded in decoding JSON as Protobuf
    loadtest_decode_test.go:277: RecordValue has 7 fields
--- PASS: TestProtobufLoadTestDecoding (0.00s)
=== RUN   TestManager_SchemaEvolution
=== RUN   TestManager_SchemaEvolution/Compatible_Avro_evolution
=== RUN   TestManager_SchemaEvolution/Incompatible_Avro_evolution
=== RUN   TestManager_SchemaEvolution/Schema_evolution_suggestions
=== RUN   TestManager_SchemaEvolution/JSON_Schema_evolution
=== RUN   TestManager_SchemaEvolution/Full_compatibility_check
=== RUN   TestManager_SchemaEvolution/Type_promotion_compatibility
--- PASS: TestManager_SchemaEvolution (0.00s)
    --- PASS: TestManager_SchemaEvolution/Compatible_Avro_evolution (0.00s)
    --- PASS: TestManager_SchemaEvolution/Incompatible_Avro_evolution (0.00s)
    --- PASS: TestManager_SchemaEvolution/Schema_evolution_suggestions (0.00s)
    --- PASS: TestManager_SchemaEvolution/JSON_Schema_evolution (0.00s)
    --- PASS: TestManager_SchemaEvolution/Full_compatibility_check (0.00s)
    --- PASS: TestManager_SchemaEvolution/Type_promotion_compatibility (0.00s)
=== RUN   TestManager_CompatibilityLevels
=== RUN   TestManager_CompatibilityLevels/Get_default_compatibility_level
=== RUN   TestManager_CompatibilityLevels/Set_compatibility_level
--- PASS: TestManager_CompatibilityLevels (0.00s)
    --- PASS: TestManager_CompatibilityLevels/Get_default_compatibility_level (0.00s)
    --- PASS: TestManager_CompatibilityLevels/Set_compatibility_level (0.00s)
=== RUN   TestManager_CanEvolveSchema
=== RUN   TestManager_CanEvolveSchema/Compatible_evolution
=== RUN   TestManager_CanEvolveSchema/Incompatible_evolution
--- PASS: TestManager_CanEvolveSchema (0.00s)
    --- PASS: TestManager_CanEvolveSchema/Compatible_evolution (0.00s)
    --- PASS: TestManager_CanEvolveSchema/Incompatible_evolution (0.00s)
=== RUN   TestManager_SchemaEvolutionWorkflow
=== RUN   TestManager_SchemaEvolutionWorkflow/Complete_evolution_workflow
--- PASS: TestManager_SchemaEvolutionWorkflow (0.00s)
    --- PASS: TestManager_SchemaEvolutionWorkflow/Complete_evolution_workflow (0.00s)
=== RUN   TestManager_DecodeMessage
--- PASS: TestManager_DecodeMessage (0.00s)
=== RUN   TestManager_IsSchematized
=== RUN   TestManager_IsSchematized/schematized_message
=== RUN   TestManager_IsSchematized/non-schematized_message
=== RUN   TestManager_IsSchematized/empty_message
--- PASS: TestManager_IsSchematized (0.00s)
    --- PASS: TestManager_IsSchematized/schematized_message (0.00s)
    --- PASS: TestManager_IsSchematized/non-schematized_message (0.00s)
    --- PASS: TestManager_IsSchematized/empty_message (0.00s)
=== RUN   TestManager_GetSchemaInfo
--- PASS: TestManager_GetSchemaInfo (0.00s)
=== RUN   TestManager_CacheManagement
--- PASS: TestManager_CacheManagement (0.00s)
=== RUN   TestManager_EncodeMessage
--- PASS: TestManager_EncodeMessage (0.00s)
=== RUN   TestProtobufDecoder_BasicDecoding
=== RUN   TestProtobufDecoder_BasicDecoding/NewProtobufDecoder_with_binary_descriptor
    protobuf_decoder_test.go:40: Protobuf decoder creation succeeded - Phase E3 is working!
=== RUN   TestProtobufDecoder_BasicDecoding/NewProtobufDecoder_with_empty_message_name
    protobuf_decoder_test.go:60: Empty message name resolution succeeded - Phase E3 is working!
--- PASS: TestProtobufDecoder_BasicDecoding (0.00s)
    --- PASS: TestProtobufDecoder_BasicDecoding/NewProtobufDecoder_with_binary_descriptor (0.00s)
    --- PASS: TestProtobufDecoder_BasicDecoding/NewProtobufDecoder_with_empty_message_name (0.00s)
=== RUN   TestProtobufDecoder_Integration
=== RUN   TestProtobufDecoder_Integration/Parse_complex_descriptor
    protobuf_decoder_test.go:86: Empty message name resolution succeeded!
    protobuf_decoder_test.go:100: Complex message resolution succeeded!
--- PASS: TestProtobufDecoder_Integration (0.00s)
    --- PASS: TestProtobufDecoder_Integration/Parse_complex_descriptor (0.00s)
=== RUN   TestProtobufDecoder_Caching
=== RUN   TestProtobufDecoder_Caching/Decoder_creation_uses_cache
--- PASS: TestProtobufDecoder_Caching (0.00s)
    --- PASS: TestProtobufDecoder_Caching/Decoder_creation_uses_cache (0.00s)
=== RUN   TestProtobufDecoder_ErrorHandling
=== RUN   TestProtobufDecoder_ErrorHandling/Invalid_binary_data
=== RUN   TestProtobufDecoder_ErrorHandling/Empty_binary_data
=== RUN   TestProtobufDecoder_ErrorHandling/FileDescriptorSet_with_no_messages
--- PASS: TestProtobufDecoder_ErrorHandling (0.00s)
    --- PASS: TestProtobufDecoder_ErrorHandling/Invalid_binary_data (0.00s)
    --- PASS: TestProtobufDecoder_ErrorHandling/Empty_binary_data (0.00s)
    --- PASS: TestProtobufDecoder_ErrorHandling/FileDescriptorSet_with_no_messages (0.00s)
=== RUN   TestProtobufDescriptorParser_BasicParsing
=== RUN   TestProtobufDescriptorParser_BasicParsing/Parse_Simple_Message_Descriptor
    protobuf_descriptor_test.go:42: Simple message descriptor resolution succeeded - Phase E3 is working!
=== RUN   TestProtobufDescriptorParser_BasicParsing/Parse_Complex_Message_Descriptor
=== RUN   TestProtobufDescriptorParser_BasicParsing/Cache_Functionality
    protobuf_descriptor_test.go:101: Cache functionality working with successful descriptor resolution!
--- PASS: TestProtobufDescriptorParser_BasicParsing (0.00s)
    --- PASS: TestProtobufDescriptorParser_BasicParsing/Parse_Simple_Message_Descriptor (0.00s)
    --- PASS: TestProtobufDescriptorParser_BasicParsing/Parse_Complex_Message_Descriptor (0.00s)
    --- PASS: TestProtobufDescriptorParser_BasicParsing/Cache_Functionality (0.00s)
=== RUN   TestProtobufDescriptorParser_Validation
=== RUN   TestProtobufDescriptorParser_Validation/Invalid_Binary_Data
=== RUN   TestProtobufDescriptorParser_Validation/Empty_FileDescriptorSet
=== RUN   TestProtobufDescriptorParser_Validation/FileDescriptor_Without_Name
=== RUN   TestProtobufDescriptorParser_Validation/FileDescriptor_Without_Package
--- PASS: TestProtobufDescriptorParser_Validation (0.00s)
    --- PASS: TestProtobufDescriptorParser_Validation/Invalid_Binary_Data (0.00s)
    --- PASS: TestProtobufDescriptorParser_Validation/Empty_FileDescriptorSet (0.00s)
    --- PASS: TestProtobufDescriptorParser_Validation/FileDescriptor_Without_Name (0.00s)
    --- PASS: TestProtobufDescriptorParser_Validation/FileDescriptor_Without_Package (0.00s)
=== RUN   TestProtobufDescriptorParser_MessageSearch
=== RUN   TestProtobufDescriptorParser_MessageSearch/Message_Not_Found
=== RUN   TestProtobufDescriptorParser_MessageSearch/Nested_Message_Search
    protobuf_descriptor_test.go:235: Nested message resolution succeeded - Phase E3 is working!
--- PASS: TestProtobufDescriptorParser_MessageSearch (0.00s)
    --- PASS: TestProtobufDescriptorParser_MessageSearch/Message_Not_Found (0.00s)
    --- PASS: TestProtobufDescriptorParser_MessageSearch/Nested_Message_Search (0.00s)
=== RUN   TestProtobufDescriptorParser_Dependencies
=== RUN   TestProtobufDescriptorParser_Dependencies/Extract_Dependencies
--- PASS: TestProtobufDescriptorParser_Dependencies (0.00s)
    --- PASS: TestProtobufDescriptorParser_Dependencies/Extract_Dependencies (0.00s)
=== RUN   TestProtobufSchema_Methods
=== RUN   TestProtobufSchema_Methods/GetMessageFields_Implemented
=== RUN   TestProtobufSchema_Methods/GetFieldByName_Implemented
=== RUN   TestProtobufSchema_Methods/GetFieldByNumber_Implemented
=== RUN   TestProtobufSchema_Methods/ValidateMessage_Requires_MessageDescriptor
--- PASS: TestProtobufSchema_Methods (0.00s)
    --- PASS: TestProtobufSchema_Methods/GetMessageFields_Implemented (0.00s)
    --- PASS: TestProtobufSchema_Methods/GetFieldByName_Implemented (0.00s)
    --- PASS: TestProtobufSchema_Methods/GetFieldByNumber_Implemented (0.00s)
    --- PASS: TestProtobufSchema_Methods/ValidateMessage_Requires_MessageDescriptor (0.00s)
=== RUN   TestProtobufDescriptorParser_CacheManagement
--- PASS: TestProtobufDescriptorParser_CacheManagement (0.00s)
=== RUN   TestSchemaReconstruction_Avro
    reconstruction_test.go:77: Original Avro binary length: 11
    reconstruction_test.go:78: Original Confluent message length: 16
    reconstruction_test.go:85: Parsed envelope - SchemaID: 1, Format: AVRO, Payload length: 11
    reconstruction_test.go:124: Successfully completed round-trip: Original -> Decode -> Encode -> Decode
    reconstruction_test.go:125: Original message size: 16 bytes
    reconstruction_test.go:126: Reconstructed message size: 16 bytes
--- PASS: TestSchemaReconstruction_Avro (0.00s)
=== RUN   TestSchemaReconstruction_MultipleFormats
=== RUN   TestSchemaReconstruction_MultipleFormats/Avro
=== RUN   TestSchemaReconstruction_MultipleFormats/Protobuf
=== RUN   TestSchemaReconstruction_MultipleFormats/JSON_Schema
--- PASS: TestSchemaReconstruction_MultipleFormats (0.00s)
    --- PASS: TestSchemaReconstruction_MultipleFormats/Avro (0.00s)
    --- PASS: TestSchemaReconstruction_MultipleFormats/Protobuf (0.00s)
    --- PASS: TestSchemaReconstruction_MultipleFormats/JSON_Schema (0.00s)
=== RUN   TestConfluentEnvelope_RoundTrip
=== RUN   TestConfluentEnvelope_RoundTrip/Avro_message
    reconstruction_test.go:259: Successfully round-tripped Avro message envelope: 17 bytes
=== RUN   TestConfluentEnvelope_RoundTrip/Protobuf_message_with_indexes
    reconstruction_test.go:259: Successfully round-tripped Protobuf message with indexes envelope: 21 bytes
=== RUN   TestConfluentEnvelope_RoundTrip/JSON_Schema_message
    reconstruction_test.go:259: Successfully round-tripped JSON Schema message envelope: 17 bytes
--- PASS: TestConfluentEnvelope_RoundTrip (0.00s)
    --- PASS: TestConfluentEnvelope_RoundTrip/Avro_message (0.00s)
    --- PASS: TestConfluentEnvelope_RoundTrip/Protobuf_message_with_indexes (0.00s)
    --- PASS: TestConfluentEnvelope_RoundTrip/JSON_Schema_message (0.00s)
=== RUN   TestSchemaMetadata_Preservation
    reconstruction_test.go:306: Successfully preserved and reconstructed schema metadata
--- PASS: TestSchemaMetadata_Preservation (0.00s)
=== RUN   TestNewRegistryClient
--- PASS: TestNewRegistryClient (0.00s)
=== RUN   TestRegistryClient_GetSchemaByID
=== RUN   TestRegistryClient_GetSchemaByID/successful_fetch
=== RUN   TestRegistryClient_GetSchemaByID/schema_not_found
=== RUN   TestRegistryClient_GetSchemaByID/cache_hit
--- PASS: TestRegistryClient_GetSchemaByID (0.00s)
    --- PASS: TestRegistryClient_GetSchemaByID/successful_fetch (0.00s)
    --- PASS: TestRegistryClient_GetSchemaByID/schema_not_found (0.00s)
    --- PASS: TestRegistryClient_GetSchemaByID/cache_hit (0.00s)
=== RUN   TestRegistryClient_GetLatestSchema
--- PASS: TestRegistryClient_GetLatestSchema (0.00s)
=== RUN   TestRegistryClient_RegisterSchema
--- PASS: TestRegistryClient_RegisterSchema (0.00s)
=== RUN   TestRegistryClient_CheckCompatibility
--- PASS: TestRegistryClient_CheckCompatibility (0.00s)
=== RUN   TestRegistryClient_ListSubjects
--- PASS: TestRegistryClient_ListSubjects (0.00s)
=== RUN   TestRegistryClient_DetectSchemaFormat
=== RUN   TestRegistryClient_DetectSchemaFormat/Avro_record_schema
=== RUN   TestRegistryClient_DetectSchemaFormat/Avro_enum_schema
=== RUN   TestRegistryClient_DetectSchemaFormat/JSON_Schema
=== RUN   TestRegistryClient_DetectSchemaFormat/Protobuf_(non-JSON)
=== RUN   TestRegistryClient_DetectSchemaFormat/Simple_Avro_primitive
--- PASS: TestRegistryClient_DetectSchemaFormat (0.00s)
    --- PASS: TestRegistryClient_DetectSchemaFormat/Avro_record_schema (0.00s)
    --- PASS: TestRegistryClient_DetectSchemaFormat/Avro_enum_schema (0.00s)
    --- PASS: TestRegistryClient_DetectSchemaFormat/JSON_Schema (0.00s)
    --- PASS: TestRegistryClient_DetectSchemaFormat/Protobuf_(non-JSON) (0.00s)
    --- PASS: TestRegistryClient_DetectSchemaFormat/Simple_Avro_primitive (0.00s)
=== RUN   TestRegistryClient_CacheManagement
--- PASS: TestRegistryClient_CacheManagement (0.00s)
=== RUN   TestRegistryClient_HealthCheck
=== RUN   TestRegistryClient_HealthCheck/healthy_registry
=== RUN   TestRegistryClient_HealthCheck/unhealthy_registry
--- PASS: TestRegistryClient_HealthCheck (0.00s)
    --- PASS: TestRegistryClient_HealthCheck/healthy_registry (0.00s)
    --- PASS: TestRegistryClient_HealthCheck/unhealthy_registry (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/kafka/schema	0.862s
=== RUN   TestWriteRowsNoPanic
--- PASS: TestWriteRowsNoPanic (0.01s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/logstore	0.026s
=== RUN   TestConsumerGroupPosition_JSON
=== RUN   TestConsumerGroupPosition_JSON/offset-based_position
    consumer_group_storage_test.go:53: JSON: {"type":"offset","value":12345,"offset_type":"EXACT_OFFSET","committed_at":1781611059804,"metadata":"test metadata"}
=== RUN   TestConsumerGroupPosition_JSON/timestamp-based_position
    consumer_group_storage_test.go:53: JSON: {"type":"timestamp","value":1781611059804194175,"offset_type":"EXACT_TS_NS","committed_at":1781611059804,"metadata":"checkpoint at 2024-10-05"}
=== RUN   TestConsumerGroupPosition_JSON/minimal_position
    consumer_group_storage_test.go:53: JSON: {"type":"offset","value":42,"offset_type":"","committed_at":0,"metadata":""}
--- PASS: TestConsumerGroupPosition_JSON (0.00s)
    --- PASS: TestConsumerGroupPosition_JSON/offset-based_position (0.00s)
    --- PASS: TestConsumerGroupPosition_JSON/timestamp-based_position (0.00s)
    --- PASS: TestConsumerGroupPosition_JSON/minimal_position (0.00s)
=== RUN   TestConsumerGroupPosition_JSONExamples
    consumer_group_storage_test.go:93: Example 0: Type=offset, Value=12345
    consumer_group_storage_test.go:93: Example 1: Type=timestamp, Value=1696521600000000000
    consumer_group_storage_test.go:93: Example 2: Type=offset, Value=42
--- PASS: TestConsumerGroupPosition_JSONExamples (0.00s)
=== RUN   TestConsumerGroupPosition_TypeValidation
--- PASS: TestConsumerGroupPosition_TypeValidation (0.00s)
=== RUN   TestEndToEndOffsetFlow
Applying migration 1: Create initial offset storage tables
Successfully applied migration 1
Applying migration 2: Add indexes for performance optimization
Successfully applied migration 2
Applying migration 3: Add partition metadata table for enhanced tracking
Successfully applied migration 3
=== RUN   TestEndToEndOffsetFlow/PublishAndAssignOffsets
=== RUN   TestEndToEndOffsetFlow/CreateAndUseSubscription
=== RUN   TestEndToEndOffsetFlow/OffsetSeekingAndRanges
=== RUN   TestEndToEndOffsetFlow/PartitionInformationAndMetrics
--- PASS: TestEndToEndOffsetFlow (0.16s)
    --- PASS: TestEndToEndOffsetFlow/PublishAndAssignOffsets (0.00s)
    --- PASS: TestEndToEndOffsetFlow/CreateAndUseSubscription (0.00s)
    --- PASS: TestEndToEndOffsetFlow/OffsetSeekingAndRanges (0.00s)
    --- PASS: TestEndToEndOffsetFlow/PartitionInformationAndMetrics (0.00s)
=== RUN   TestOffsetPersistenceAcrossRestarts
Applying migration 1: Create initial offset storage tables
Successfully applied migration 1
Applying migration 2: Add indexes for performance optimization
Successfully applied migration 2
Applying migration 3: Add partition metadata table for enhanced tracking
Successfully applied migration 3
--- PASS: TestOffsetPersistenceAcrossRestarts (0.06s)
=== RUN   TestConcurrentOffsetOperations
Applying migration 1: Create initial offset storage tables
Successfully applied migration 1
Applying migration 2: Add indexes for performance optimization
Successfully applied migration 2
Applying migration 3: Add partition metadata table for enhanced tracking
Successfully applied migration 3
--- PASS: TestConcurrentOffsetOperations (0.03s)
=== RUN   TestOffsetValidationAndErrorHandling
Applying migration 1: Create initial offset storage tables
Successfully applied migration 1
Applying migration 2: Add indexes for performance optimization
Successfully applied migration 2
Applying migration 3: Add partition metadata table for enhanced tracking
Successfully applied migration 3
=== RUN   TestOffsetValidationAndErrorHandling/InvalidOffsetSubscription
=== RUN   TestOffsetValidationAndErrorHandling/NegativeOffsetValidation
=== RUN   TestOffsetValidationAndErrorHandling/DuplicateSubscriptionID
=== RUN   TestOffsetValidationAndErrorHandling/OffsetRangeValidation
--- PASS: TestOffsetValidationAndErrorHandling (0.03s)
    --- PASS: TestOffsetValidationAndErrorHandling/InvalidOffsetSubscription (0.00s)
    --- PASS: TestOffsetValidationAndErrorHandling/NegativeOffsetValidation (0.00s)
    --- PASS: TestOffsetValidationAndErrorHandling/DuplicateSubscriptionID (0.00s)
    --- PASS: TestOffsetValidationAndErrorHandling/OffsetRangeValidation (0.00s)
=== RUN   TestSMQOffsetIntegration_PublishRecord
--- PASS: TestSMQOffsetIntegration_PublishRecord (0.00s)
=== RUN   TestSMQOffsetIntegration_PublishRecordBatch
--- PASS: TestSMQOffsetIntegration_PublishRecordBatch (0.00s)
=== RUN   TestSMQOffsetIntegration_EmptyBatch
--- PASS: TestSMQOffsetIntegration_EmptyBatch (0.00s)
=== RUN   TestSMQOffsetIntegration_CreateSubscription
--- PASS: TestSMQOffsetIntegration_CreateSubscription (0.00s)
=== RUN   TestSMQOffsetIntegration_SubscribeRecords
--- PASS: TestSMQOffsetIntegration_SubscribeRecords (0.00s)
=== RUN   TestSMQOffsetIntegration_SubscribeEmptyPartition
--- PASS: TestSMQOffsetIntegration_SubscribeEmptyPartition (0.00s)
=== RUN   TestSMQOffsetIntegration_SeekSubscription
--- PASS: TestSMQOffsetIntegration_SeekSubscription (0.00s)
=== RUN   TestSMQOffsetIntegration_GetSubscriptionLag
--- PASS: TestSMQOffsetIntegration_GetSubscriptionLag (0.00s)
=== RUN   TestSMQOffsetIntegration_CloseSubscription
--- PASS: TestSMQOffsetIntegration_CloseSubscription (0.00s)
=== RUN   TestSMQOffsetIntegration_ValidateOffsetRange
--- PASS: TestSMQOffsetIntegration_ValidateOffsetRange (0.00s)
=== RUN   TestSMQOffsetIntegration_GetAvailableOffsetRange
--- PASS: TestSMQOffsetIntegration_GetAvailableOffsetRange (0.00s)
=== RUN   TestSMQOffsetIntegration_GetOffsetMetrics
--- PASS: TestSMQOffsetIntegration_GetOffsetMetrics (0.00s)
=== RUN   TestSMQOffsetIntegration_GetOffsetInfo
--- PASS: TestSMQOffsetIntegration_GetOffsetInfo (0.00s)
=== RUN   TestSMQOffsetIntegration_GetPartitionOffsetInfo
--- PASS: TestSMQOffsetIntegration_GetPartitionOffsetInfo (0.00s)
=== RUN   TestPartitionOffsetManager_BasicAssignment
--- PASS: TestPartitionOffsetManager_BasicAssignment (0.00s)
=== RUN   TestPartitionOffsetManager_BatchAssignment
--- PASS: TestPartitionOffsetManager_BatchAssignment (0.00s)
=== RUN   TestPartitionOffsetManager_Recovery
--- PASS: TestPartitionOffsetManager_Recovery (0.10s)
=== RUN   TestPartitionOffsetManager_RecoveryFromStorage
--- PASS: TestPartitionOffsetManager_RecoveryFromStorage (0.00s)
=== RUN   TestPartitionOffsetRegistry_MultiplePartitions
--- PASS: TestPartitionOffsetRegistry_MultiplePartitions (0.00s)
=== RUN   TestPartitionOffsetRegistry_BatchAssignment
--- PASS: TestPartitionOffsetRegistry_BatchAssignment (0.00s)
=== RUN   TestOffsetAssigner_SingleAssignment
--- PASS: TestOffsetAssigner_SingleAssignment (0.00s)
=== RUN   TestOffsetAssigner_BatchAssignment
--- PASS: TestOffsetAssigner_BatchAssignment (0.00s)
=== RUN   TestOffsetAssigner_HighWaterMark
--- PASS: TestOffsetAssigner_HighWaterMark (0.00s)
=== RUN   TestPartitionKey
--- PASS: TestPartitionKey (0.00s)
=== RUN   TestConcurrentOffsetAssignment
--- PASS: TestConcurrentOffsetAssignment (0.00s)
=== RUN   TestSQLOffsetStorage_InitializeSchema
--- PASS: TestSQLOffsetStorage_InitializeSchema (0.16s)
=== RUN   TestSQLOffsetStorage_SaveLoadCheckpoint
--- PASS: TestSQLOffsetStorage_SaveLoadCheckpoint (0.22s)
=== RUN   TestSQLOffsetStorage_LoadCheckpointNotFound
--- PASS: TestSQLOffsetStorage_LoadCheckpointNotFound (0.05s)
=== RUN   TestSQLOffsetStorage_SaveLoadOffsetMappings
--- PASS: TestSQLOffsetStorage_SaveLoadOffsetMappings (0.24s)
=== RUN   TestSQLOffsetStorage_GetHighestOffset
--- PASS: TestSQLOffsetStorage_GetHighestOffset (0.44s)
=== RUN   TestSQLOffsetStorage_GetOffsetMappingsByRange
Failed to checkpoint offset 2 for test-namespace/test-topic: failed to save checkpoint: sql: database is closed
Failed to checkpoint offset 3 for test-namespace/test-topic: failed to save checkpoint: sql: database is closed
Failed to checkpoint offset 49 for test-namespace/test-topic: failed to save checkpoint: sql: database is closed
Failed to checkpoint offset 0 for test-namespace/test-topic: failed to save checkpoint: sql: database is closed
--- PASS: TestSQLOffsetStorage_GetOffsetMappingsByRange (2.46s)
=== RUN   TestSQLOffsetStorage_GetPartitionStats
--- PASS: TestSQLOffsetStorage_GetPartitionStats (0.04s)
=== RUN   TestSQLOffsetStorage_GetAllPartitions
--- PASS: TestSQLOffsetStorage_GetAllPartitions (0.07s)
=== RUN   TestSQLOffsetStorage_CleanupOldMappings
Failed to checkpoint offset 2 for test-namespace/test-topic: failed to save checkpoint: sql: database is closed
Cleaned up 1 old offset mappings
--- PASS: TestSQLOffsetStorage_CleanupOldMappings (0.13s)
=== RUN   TestSQLOffsetStorage_Vacuum
Failed to checkpoint offset 3 for test-namespace/test-topic: failed to save checkpoint: sql: database is closed
Failed to checkpoint offset 49 for test-namespace/test-topic: failed to save checkpoint: sql: database is closed
--- PASS: TestSQLOffsetStorage_Vacuum (0.05s)
=== RUN   TestSQLOffsetStorage_ConcurrentAccess
Failed to checkpoint offset 0 for test-namespace/test-topic: failed to save checkpoint: sql: database is closed
--- PASS: TestSQLOffsetStorage_ConcurrentAccess (1.00s)
=== RUN   TestOffsetSubscriber_CreateSubscription
--- PASS: TestOffsetSubscriber_CreateSubscription (0.00s)
=== RUN   TestOffsetSubscriber_InvalidSubscription
--- PASS: TestOffsetSubscriber_InvalidSubscription (0.00s)
=== RUN   TestOffsetSubscriber_DuplicateSubscription
--- PASS: TestOffsetSubscriber_DuplicateSubscription (0.00s)
=== RUN   TestOffsetSubscription_SeekToOffset
--- PASS: TestOffsetSubscription_SeekToOffset (0.00s)
=== RUN   TestOffsetSubscription_AdvanceOffset
--- PASS: TestOffsetSubscription_AdvanceOffset (0.00s)
=== RUN   TestOffsetSubscription_GetLag
--- PASS: TestOffsetSubscription_GetLag (0.00s)
=== RUN   TestOffsetSubscription_IsAtEnd
--- PASS: TestOffsetSubscription_IsAtEnd (0.00s)
=== RUN   TestOffsetSubscription_GetOffsetRange
--- PASS: TestOffsetSubscription_GetOffsetRange (0.00s)
=== RUN   TestOffsetSubscription_EmptyRange
--- PASS: TestOffsetSubscription_EmptyRange (0.00s)
=== RUN   TestOffsetSeeker_ValidateOffsetRange
=== RUN   TestOffsetSeeker_ValidateOffsetRange/negative_start
=== RUN   TestOffsetSeeker_ValidateOffsetRange/end_before_start
=== RUN   TestOffsetSeeker_ValidateOffsetRange/start_beyond_hwm
=== RUN   TestOffsetSeeker_ValidateOffsetRange/valid_range
=== RUN   TestOffsetSeeker_ValidateOffsetRange/single_offset
--- PASS: TestOffsetSeeker_ValidateOffsetRange (0.00s)
    --- PASS: TestOffsetSeeker_ValidateOffsetRange/negative_start (0.00s)
    --- PASS: TestOffsetSeeker_ValidateOffsetRange/end_before_start (0.00s)
    --- PASS: TestOffsetSeeker_ValidateOffsetRange/start_beyond_hwm (0.00s)
    --- PASS: TestOffsetSeeker_ValidateOffsetRange/valid_range (0.00s)
    --- PASS: TestOffsetSeeker_ValidateOffsetRange/single_offset (0.00s)
=== RUN   TestOffsetSeeker_GetAvailableOffsetRange
--- PASS: TestOffsetSeeker_GetAvailableOffsetRange (0.00s)
=== RUN   TestOffsetSubscriber_CloseSubscription
--- PASS: TestOffsetSubscriber_CloseSubscription (0.00s)
=== RUN   TestOffsetSubscription_InactiveOperations
--- PASS: TestOffsetSubscription_InactiveOperations (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/offset	5.271s
=== RUN   Test_allocateOneBroker
=== RUN   Test_allocateOneBroker/test_only_one_broker
I0616 11:57:39.794103 allocate.go:34 allocate topic partitions 1: [partition:{ring_size:2520  range_stop:2520  unix_time_ns:1781611059794003177}  leader_broker:"localhost:17777"]
--- PASS: Test_allocateOneBroker (0.00s)
    --- PASS: Test_allocateOneBroker/test_only_one_broker (0.00s)
=== RUN   TestEnsureAssignmentsToActiveBrokersX
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_empty_leader
test empty leader before [partition:{}  follower_broker:"localhost:2"]
test empty leader after [partition:{}  leader_broker:"localhost:4"  follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_empty_follower
test empty follower before [partition:{}  leader_broker:"localhost:1"]
test empty follower after [partition:{}  leader_broker:"localhost:1"  follower_broker:"localhost:4"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_dead_follower
test dead follower before [partition:{}  leader_broker:"localhost:1"  follower_broker:"localhost:200"]
test dead follower after [partition:{}  leader_broker:"localhost:1"  follower_broker:"localhost:6"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_dead_leader_and_follower
test dead leader and follower before [partition:{}  leader_broker:"localhost:100"  follower_broker:"localhost:200"]
test dead leader and follower after [partition:{}  leader_broker:"localhost:3"  follower_broker:"localhost:5"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_low_active_brokers
test low active brokers before [partition:{}  leader_broker:"localhost:1"  follower_broker:"localhost:2"]
test low active brokers after [partition:{}  leader_broker:"localhost:1"  follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_low_active_brokers_with_one_follower
test low active brokers with one follower before [partition:{}  leader_broker:"localhost:1"]
test low active brokers with one follower after [partition:{}  leader_broker:"localhost:1"  follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_single_active_broker
test single active broker before [partition:{}  leader_broker:"localhost:1"  follower_broker:"localhost:2"]
test single active broker after [partition:{}  leader_broker:"localhost:1"  follower_broker:"localhost:1"]
--- PASS: TestEnsureAssignmentsToActiveBrokersX (0.00s)
    --- PASS: TestEnsureAssignmentsToActiveBrokersX/test_empty_leader (0.00s)
    --- PASS: TestEnsureAssignmentsToActiveBrokersX/test_empty_follower (0.00s)
    --- PASS: TestEnsureAssignmentsToActiveBrokersX/test_dead_follower (0.00s)
    --- PASS: TestEnsureAssignmentsToActiveBrokersX/test_dead_leader_and_follower (0.00s)
    --- PASS: TestEnsureAssignmentsToActiveBrokersX/test_low_active_brokers (0.00s)
    --- PASS: TestEnsureAssignmentsToActiveBrokersX/test_low_active_brokers_with_one_follower (0.00s)
    --- PASS: TestEnsureAssignmentsToActiveBrokersX/test_single_active_broker (0.00s)
=== RUN   TestBalanceTopicPartitionOnBrokers
=== RUN   TestBalanceTopicPartitionOnBrokers/test
--- PASS: TestBalanceTopicPartitionOnBrokers (0.00s)
    --- PASS: TestBalanceTopicPartitionOnBrokers/test (0.00s)
=== RUN   Test_findMissingPartitions
=== RUN   Test_findMissingPartitions/one_partition
=== RUN   Test_findMissingPartitions/two_partitions
=== RUN   Test_findMissingPartitions/four_partitions,_missing_last_two
=== RUN   Test_findMissingPartitions/four_partitions,_missing_first_two
=== RUN   Test_findMissingPartitions/four_partitions,_missing_middle_two
=== RUN   Test_findMissingPartitions/four_partitions,_missing_three
--- PASS: Test_findMissingPartitions (0.00s)
    --- PASS: Test_findMissingPartitions/one_partition (0.00s)
    --- PASS: Test_findMissingPartitions/two_partitions (0.00s)
    --- PASS: Test_findMissingPartitions/four_partitions,_missing_last_two (0.00s)
    --- PASS: Test_findMissingPartitions/four_partitions,_missing_first_two (0.00s)
    --- PASS: Test_findMissingPartitions/four_partitions,_missing_middle_two (0.00s)
    --- PASS: Test_findMissingPartitions/four_partitions,_missing_three (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/pub_balancer	0.022s
=== RUN   TestSplitFlatSchemaToKeyValue
--- PASS: TestSplitFlatSchemaToKeyValue (0.00s)
=== RUN   TestSplitFlatSchemaToKeyValueMissingColumns
--- PASS: TestSplitFlatSchemaToKeyValueMissingColumns (0.00s)
=== RUN   TestCombineFlatSchemaFromKeyValue
--- PASS: TestCombineFlatSchemaFromKeyValue (0.00s)
=== RUN   TestExtractKeyColumnsFromCombinedSchema
--- PASS: TestExtractKeyColumnsFromCombinedSchema (0.00s)
=== RUN   TestValidateKeyColumns
--- PASS: TestValidateKeyColumns (0.00s)
=== RUN   TestEnumScalarType
=== RUN   TestEnumScalarType/Boolean
=== RUN   TestEnumScalarType/Integer
=== RUN   TestEnumScalarType/Long
=== RUN   TestEnumScalarType/Float
=== RUN   TestEnumScalarType/Double
=== RUN   TestEnumScalarType/Bytes
=== RUN   TestEnumScalarType/String
--- PASS: TestEnumScalarType (0.00s)
    --- PASS: TestEnumScalarType/Boolean (0.00s)
    --- PASS: TestEnumScalarType/Integer (0.00s)
    --- PASS: TestEnumScalarType/Long (0.00s)
    --- PASS: TestEnumScalarType/Float (0.00s)
    --- PASS: TestEnumScalarType/Double (0.00s)
    --- PASS: TestEnumScalarType/Bytes (0.00s)
    --- PASS: TestEnumScalarType/String (0.00s)
=== RUN   TestField
--- PASS: TestField (0.00s)
=== RUN   TestRecordType
fields: <
  name: "field_key"
  field_index: 1
  type: <
    scalar_type: INT32
  >
>
fields: <
  name: "field_record"
  field_index: 2
  type: <
    record_type: <
      fields: <
        name: "field_1"
        field_index: 1
        type: <
          scalar_type: INT32
        >
      >
      fields: <
        name: "field_2"
        field_index: 2
        type: <
          scalar_type: STRING
        >
      >
    >
  >
>

{"fields":[{"name":"field_key","field_index":1,"type":{"Kind":{"ScalarType":1}}},{"name":"field_record","field_index":2,"type":{"Kind":{"RecordType":{"fields":[{"name":"field_1","field_index":1,"type":{"Kind":{"ScalarType":1}}},{"name":"field_2","field_index":2,"type":{"Kind":{"ScalarType":7}}}]}}}}]}
--- PASS: TestRecordType (0.00s)
=== RUN   TestStructToSchema
=== RUN   TestStructToSchema/scalar_type
=== RUN   TestStructToSchema/simple_struct_type
=== RUN   TestStructToSchema/simple_list
=== RUN   TestStructToSchema/simple_[]byte
=== RUN   TestStructToSchema/nested_simpe_structs
=== RUN   TestStructToSchema/nested_struct_type
--- PASS: TestStructToSchema (0.00s)
    --- PASS: TestStructToSchema/scalar_type (0.00s)
    --- PASS: TestStructToSchema/simple_struct_type (0.00s)
    --- PASS: TestStructToSchema/simple_list (0.00s)
    --- PASS: TestStructToSchema/simple_[]byte (0.00s)
    --- PASS: TestStructToSchema/nested_simpe_structs (0.00s)
    --- PASS: TestStructToSchema/nested_struct_type (0.00s)
=== RUN   TestToParquetLevels
=== RUN   TestToParquetLevels/nested_type
--- PASS: TestToParquetLevels (0.00s)
    --- PASS: TestToParquetLevels/nested_type (0.00s)
=== RUN   TestToParquetValue_BasicTypes
=== RUN   TestToParquetValue_BasicTypes/BoolValue_true
=== RUN   TestToParquetValue_BasicTypes/Int32Value
=== RUN   TestToParquetValue_BasicTypes/Int64Value
=== RUN   TestToParquetValue_BasicTypes/FloatValue
=== RUN   TestToParquetValue_BasicTypes/DoubleValue
=== RUN   TestToParquetValue_BasicTypes/BytesValue
=== RUN   TestToParquetValue_BasicTypes/BytesValue_empty
=== RUN   TestToParquetValue_BasicTypes/StringValue
--- PASS: TestToParquetValue_BasicTypes (0.00s)
    --- PASS: TestToParquetValue_BasicTypes/BoolValue_true (0.00s)
    --- PASS: TestToParquetValue_BasicTypes/Int32Value (0.00s)
    --- PASS: TestToParquetValue_BasicTypes/Int64Value (0.00s)
    --- PASS: TestToParquetValue_BasicTypes/FloatValue (0.00s)
    --- PASS: TestToParquetValue_BasicTypes/DoubleValue (0.00s)
    --- PASS: TestToParquetValue_BasicTypes/BytesValue (0.00s)
    --- PASS: TestToParquetValue_BasicTypes/BytesValue_empty (0.00s)
    --- PASS: TestToParquetValue_BasicTypes/StringValue (0.00s)
=== RUN   TestToParquetValue_TimestampValue
=== RUN   TestToParquetValue_TimestampValue/Valid_TimestampValue_UTC
=== RUN   TestToParquetValue_TimestampValue/Valid_TimestampValue_local
=== RUN   TestToParquetValue_TimestampValue/TimestampValue_zero
=== RUN   TestToParquetValue_TimestampValue/TimestampValue_negative_(before_epoch)
=== RUN   TestToParquetValue_TimestampValue/TimestampValue_nil_pointer
--- PASS: TestToParquetValue_TimestampValue (0.00s)
    --- PASS: TestToParquetValue_TimestampValue/Valid_TimestampValue_UTC (0.00s)
    --- PASS: TestToParquetValue_TimestampValue/Valid_TimestampValue_local (0.00s)
    --- PASS: TestToParquetValue_TimestampValue/TimestampValue_zero (0.00s)
    --- PASS: TestToParquetValue_TimestampValue/TimestampValue_negative_(before_epoch) (0.00s)
    --- PASS: TestToParquetValue_TimestampValue/TimestampValue_nil_pointer (0.00s)
=== RUN   TestToParquetValue_DateValue
=== RUN   TestToParquetValue_DateValue/Valid_DateValue_(2024-01-01)
=== RUN   TestToParquetValue_DateValue/DateValue_epoch_(1970-01-01)
=== RUN   TestToParquetValue_DateValue/DateValue_before_epoch
=== RUN   TestToParquetValue_DateValue/DateValue_nil_pointer
--- PASS: TestToParquetValue_DateValue (0.00s)
    --- PASS: TestToParquetValue_DateValue/Valid_DateValue_(2024-01-01) (0.00s)
    --- PASS: TestToParquetValue_DateValue/DateValue_epoch_(1970-01-01) (0.00s)
    --- PASS: TestToParquetValue_DateValue/DateValue_before_epoch (0.00s)
    --- PASS: TestToParquetValue_DateValue/DateValue_nil_pointer (0.00s)
=== RUN   TestToParquetValue_DecimalValue
=== RUN   TestToParquetValue_DecimalValue/Small_Decimal_(precision_<=_9)_-_positive
=== RUN   TestToParquetValue_DecimalValue/Small_Decimal_(precision_<=_9)_-_negative
=== RUN   TestToParquetValue_DecimalValue/Medium_Decimal_(9_<_precision_<=_18)
=== RUN   TestToParquetValue_DecimalValue/Large_Decimal_(precision_>_18)
=== RUN   TestToParquetValue_DecimalValue/Decimal_with_zero_precision
=== RUN   TestToParquetValue_DecimalValue/Decimal_nil_pointer
=== RUN   TestToParquetValue_DecimalValue/Decimal_with_nil_Value_bytes
=== RUN   TestToParquetValue_DecimalValue/Decimal_with_empty_Value_bytes
=== RUN   TestToParquetValue_DecimalValue/Decimal_out_of_int32_range_(stored_as_binary)
=== RUN   TestToParquetValue_DecimalValue/Decimal_out_of_int64_range_(stored_as_binary)
=== RUN   TestToParquetValue_DecimalValue/Decimal_extremely_large_value_(should_be_rejected)
--- PASS: TestToParquetValue_DecimalValue (0.00s)
    --- PASS: TestToParquetValue_DecimalValue/Small_Decimal_(precision_<=_9)_-_positive (0.00s)
    --- PASS: TestToParquetValue_DecimalValue/Small_Decimal_(precision_<=_9)_-_negative (0.00s)
    --- PASS: TestToParquetValue_DecimalValue/Medium_Decimal_(9_<_precision_<=_18) (0.00s)
    --- PASS: TestToParquetValue_DecimalValue/Large_Decimal_(precision_>_18) (0.00s)
    --- PASS: TestToParquetValue_DecimalValue/Decimal_with_zero_precision (0.00s)
    --- PASS: TestToParquetValue_DecimalValue/Decimal_nil_pointer (0.00s)
    --- PASS: TestToParquetValue_DecimalValue/Decimal_with_nil_Value_bytes (0.00s)
    --- PASS: TestToParquetValue_DecimalValue/Decimal_with_empty_Value_bytes (0.00s)
    --- PASS: TestToParquetValue_DecimalValue/Decimal_out_of_int32_range_(stored_as_binary) (0.00s)
    --- PASS: TestToParquetValue_DecimalValue/Decimal_out_of_int64_range_(stored_as_binary) (0.00s)
    --- PASS: TestToParquetValue_DecimalValue/Decimal_extremely_large_value_(should_be_rejected) (0.00s)
=== RUN   TestToParquetValue_TimeValue
=== RUN   TestToParquetValue_TimeValue/Valid_TimeValue_(12:34:56.789)
=== RUN   TestToParquetValue_TimeValue/TimeValue_midnight
=== RUN   TestToParquetValue_TimeValue/TimeValue_end_of_day_(23:59:59.999999)
=== RUN   TestToParquetValue_TimeValue/TimeValue_nil_pointer
--- PASS: TestToParquetValue_TimeValue (0.00s)
    --- PASS: TestToParquetValue_TimeValue/Valid_TimeValue_(12:34:56.789) (0.00s)
    --- PASS: TestToParquetValue_TimeValue/TimeValue_midnight (0.00s)
    --- PASS: TestToParquetValue_TimeValue/TimeValue_end_of_day_(23:59:59.999999) (0.00s)
    --- PASS: TestToParquetValue_TimeValue/TimeValue_nil_pointer (0.00s)
=== RUN   TestToParquetValue_EdgeCases
=== RUN   TestToParquetValue_EdgeCases/Nil_value
=== RUN   TestToParquetValue_EdgeCases/Completely_nil_value
=== RUN   TestToParquetValue_EdgeCases/BytesValue_with_nil_slice
--- PASS: TestToParquetValue_EdgeCases (0.00s)
    --- PASS: TestToParquetValue_EdgeCases/Nil_value (0.00s)
    --- PASS: TestToParquetValue_EdgeCases/Completely_nil_value (0.00s)
    --- PASS: TestToParquetValue_EdgeCases/BytesValue_with_nil_slice (0.00s)
=== RUN   TestWriteReadParquet
RecordType: fields:{name:"Address" type:{record_type:{fields:{name:"City" type:{scalar_type:STRING}} fields:{name:"Street" type:{scalar_type:STRING}}}}} fields:{name:"Company" type:{scalar_type:STRING}} fields:{name:"CreatedAt" type:{scalar_type:INT64}} fields:{name:"ID" type:{scalar_type:INT64}} fields:{name:"Person" type:{record_type:{fields:{name:"emails" type:{list_type:{element_type:{scalar_type:STRING}}}} fields:{name:"zName" type:{scalar_type:STRING}}}}}
ParquetSchema: message example {
	optional group Address {
		optional binary City;
		optional binary Street;
	}
	optional binary Company;
	optional int64 CreatedAt (INT(64,true));
	optional int64 ID (INT(64,true));
	optional group Person {
		repeated binary emails;
		optional binary zName;
	}
}
Go Type: struct { Address *struct { City *[]uint8; Street *[]uint8 }; Company *[]uint8; CreatedAt *int64; ID *int64; Person *struct { Emails []*[]uint8; ZName *[]uint8 } }
Write RecordValue: fields:{key:"Company" value:{string_value:"company_0"}} fields:{key:"CreatedAt" value:{int64_value:2}} fields:{key:"ID" value:{int64_value:1}} fields:{key:"Person" value:{record_value:{fields:{key:"emails" value:{list_value:{values:{string_value:"john_0@a.com"} values:{string_value:"john_0@b.com"} values:{string_value:"john_0@c.com"} values:{string_value:"john_0@d.com"} values:{string_value:"john_0@e.com"}}}} fields:{key:"zName" value:{string_value:"john_0"}}}}}
Build Row: [C:0 D:2 R:0 V:<null> C:1 D:2 R:0 V:<null> C:2 D:1 R:0 V:company_0 C:3 D:1 R:0 V:2 C:4 D:1 R:0 V:1 C:5 D:2 R:0 V:john_0@a.com C:5 D:2 R:1 V:john_0@b.com C:5 D:2 R:1 V:john_0@c.com C:5 D:2 R:1 V:john_0@d.com C:5 D:2 R:1 V:john_0@e.com C:6 D:2 R:0 V:john_0]
Write RecordValue: fields:{key:"Company" value:{string_value:"company_1"}} fields:{key:"CreatedAt" value:{int64_value:4}} fields:{key:"ID" value:{int64_value:2}} fields:{key:"Person" value:{record_value:{fields:{key:"emails" value:{list_value:{values:{string_value:"john_1@a.com"} values:{string_value:"john_1@b.com"} values:{string_value:"john_1@c.com"} values:{string_value:"john_1@d.com"} values:{string_value:"john_1@e.com"}}}} fields:{key:"zName" value:{string_value:"john_1"}}}}}
Build Row: [C:0 D:2 R:0 V:<null> C:1 D:2 R:0 V:<null> C:2 D:1 R:0 V:company_1 C:3 D:1 R:0 V:4 C:4 D:1 R:0 V:2 C:5 D:2 R:0 V:john_1@a.com C:5 D:2 R:1 V:john_1@b.com C:5 D:2 R:1 V:john_1@c.com C:5 D:2 R:1 V:john_1@d.com C:5 D:2 R:1 V:john_1@e.com C:6 D:2 R:0 V:john_1]
Write RecordValue: fields:{key:"Company" value:{string_value:"company_2"}} fields:{key:"CreatedAt" value:{int64_value:6}} fields:{key:"ID" value:{int64_value:3}} fields:{key:"Person" value:{record_value:{fields:{key:"emails" value:{list_value:{values:{string_value:"john_2@a.com"} values:{string_value:"john_2@b.com"} values:{string_value:"john_2@c.com"} values:{string_value:"john_2@d.com"} values:{string_value:"john_2@e.com"}}}} fields:{key:"zName" value:{string_value:"john_2"}}}}}
Build Row: [C:0 D:2 R:0 V:<null> C:1 D:2 R:0 V:<null> C:2 D:1 R:0 V:company_2 C:3 D:1 R:0 V:6 C:4 D:1 R:0 V:3 C:5 D:2 R:0 V:john_2@a.com C:5 D:2 R:1 V:john_2@b.com C:5 D:2 R:1 V:john_2@c.com C:5 D:2 R:1 V:john_2@d.com C:5 D:2 R:1 V:john_2@e.com C:6 D:2 R:0 V:john_2]
Read RecordValue: fields:{key:"Address" value:{record_value:{fields:{key:"City" value:{string_value:""}} fields:{key:"Street" value:{string_value:""}}}}} fields:{key:"Company" value:{string_value:"company_0"}} fields:{key:"CreatedAt" value:{int64_value:2}} fields:{key:"ID" value:{int64_value:1}} fields:{key:"Person" value:{record_value:{fields:{key:"emails" value:{list_value:{values:{string_value:"john_0@a.com"} values:{string_value:"john_0@b.com"} values:{string_value:"john_0@c.com"} values:{string_value:"john_0@d.com"} values:{string_value:"john_0@e.com"}}}} fields:{key:"zName" value:{string_value:"john_0"}}}}}
Read RecordValue: fields:{key:"Address" value:{record_value:{fields:{key:"City" value:{string_value:""}} fields:{key:"Street" value:{string_value:""}}}}} fields:{key:"Company" value:{string_value:"company_1"}} fields:{key:"CreatedAt" value:{int64_value:4}} fields:{key:"ID" value:{int64_value:2}} fields:{key:"Person" value:{record_value:{fields:{key:"emails" value:{list_value:{values:{string_value:"john_1@a.com"} values:{string_value:"john_1@b.com"} values:{string_value:"john_1@c.com"} values:{string_value:"john_1@d.com"} values:{string_value:"john_1@e.com"}}}} fields:{key:"zName" value:{string_value:"john_1"}}}}}
Read RecordValue: fields:{key:"Address" value:{record_value:{fields:{key:"City" value:{string_value:""}} fields:{key:"Street" value:{string_value:""}}}}} fields:{key:"Company" value:{string_value:"company_2"}} fields:{key:"CreatedAt" value:{int64_value:6}} fields:{key:"ID" value:{int64_value:3}} fields:{key:"Person" value:{record_value:{fields:{key:"emails" value:{list_value:{values:{string_value:"john_2@a.com"} values:{string_value:"john_2@b.com"} values:{string_value:"john_2@c.com"} values:{string_value:"john_2@d.com"} values:{string_value:"john_2@e.com"}}}} fields:{key:"zName" value:{string_value:"john_2"}}}}}
total: 3
--- PASS: TestWriteReadParquet (0.02s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/schema	0.024s
=== RUN   TestMessageSerde
serialized size 368
--- PASS: TestMessageSerde (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/segment	0.004s
=== RUN   TestRingBuffer
--- PASS: TestRingBuffer (0.00s)
=== RUN   TestInflightMessageTracker
--- PASS: TestInflightMessageTracker (0.00s)
=== RUN   TestInflightMessageTracker2
--- PASS: TestInflightMessageTracker2 (0.00s)
=== RUN   TestInflightMessageTracker3
--- PASS: TestInflightMessageTracker3 (0.00s)
=== RUN   TestInflightMessageTracker4
--- PASS: TestInflightMessageTracker4 (0.00s)
=== RUN   TestAddConsumerInstance
&{isAssign:true partition:{RangeStart:1 RangeStop:2 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14016447155985639661 ext:514803031 loc:0x1679ee0}}
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14016447155985642945 ext:514806314 loc:0x1679ee0}}
--- PASS: TestAddConsumerInstance (1.00s)
=== RUN   TestMultipleConsumerInstances
&{isAssign:true partition:{RangeStart:1 RangeStop:2 RingSize:3 UnixTimeNs:0} consumer:third ts:{wall:14016447157059172510 ext:1514594046 loc:0x1679ee0}}
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14016447157059176255 ext:1514597792 loc:0x1679ee0}}
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:second ts:{wall:14016447157059177172 ext:1514598709 loc:0x1679ee0}}
--- PASS: TestMultipleConsumerInstances (1.00s)
=== RUN   TestConfirmAdjustment
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:third ts:{wall:14016447158134113071 ext:2515792786 loc:0x1679ee0}}
&{isAssign:true partition:{RangeStart:1 RangeStop:2 RingSize:3 UnixTimeNs:0} consumer:second ts:{wall:14016447158134120082 ext:2515799798 loc:0x1679ee0}}
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14016447158134121278 ext:2515800993 loc:0x1679ee0}}
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14016447160281366558 ext:4515562623 loc:0x1679ee0}}
--- PASS: TestConfirmAdjustment (5.00s)
=== RUN   Test_doBalanceSticky
=== RUN   Test_doBalanceSticky/1_consumer_instance,_1_partition
=== RUN   Test_doBalanceSticky/2_consumer_instances,_1_partition
=== RUN   Test_doBalanceSticky/1_consumer_instance,_2_partitions
=== RUN   Test_doBalanceSticky/2_consumer_instances,_2_partitions
=== RUN   Test_doBalanceSticky/2_consumer_instances,_2_partitions,_1_deleted_consumer_instance
=== RUN   Test_doBalanceSticky/2_consumer_instances,_2_partitions,_1_new_consumer_instance
=== RUN   Test_doBalanceSticky/2_consumer_instances,_2_partitions,_1_new_partition
=== RUN   Test_doBalanceSticky/2_consumer_instances,_2_partitions,_1_new_partition,_1_new_consumer_instance
--- PASS: Test_doBalanceSticky (0.00s)
    --- PASS: Test_doBalanceSticky/1_consumer_instance,_1_partition (0.00s)
    --- PASS: Test_doBalanceSticky/2_consumer_instances,_1_partition (0.00s)
    --- PASS: Test_doBalanceSticky/1_consumer_instance,_2_partitions (0.00s)
    --- PASS: Test_doBalanceSticky/2_consumer_instances,_2_partitions (0.00s)
    --- PASS: Test_doBalanceSticky/2_consumer_instances,_2_partitions,_1_deleted_consumer_instance (0.00s)
    --- PASS: Test_doBalanceSticky/2_consumer_instances,_2_partitions,_1_new_consumer_instance (0.00s)
    --- PASS: Test_doBalanceSticky/2_consumer_instances,_2_partitions,_1_new_partition (0.00s)
    --- PASS: Test_doBalanceSticky/2_consumer_instances,_2_partitions,_1_new_partition,_1_new_consumer_instance (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/sub_coordinator	7.020s
=== RUN   TestOffsetBasedSubscribe_AllDataInMemory
=== RUN   TestOffsetBasedSubscribe_AllDataInMemory/ReadFromOffset0
=== RUN   TestOffsetBasedSubscribe_AllDataInMemory/ReadFromOffset2
--- PASS: TestOffsetBasedSubscribe_AllDataInMemory (0.00s)
    --- PASS: TestOffsetBasedSubscribe_AllDataInMemory/ReadFromOffset0 (0.00s)
    --- PASS: TestOffsetBasedSubscribe_AllDataInMemory/ReadFromOffset2 (0.00s)
=== RUN   TestOffsetBasedSubscribe_DataOnDisk
=== RUN   TestOffsetBasedSubscribe_DataOnDisk/ReadFromOffset0_OnDisk
=== RUN   TestOffsetBasedSubscribe_DataOnDisk/ReadFromOffset5_OnDisk
=== RUN   TestOffsetBasedSubscribe_DataOnDisk/ReadFromOffset11_InMemory
--- PASS: TestOffsetBasedSubscribe_DataOnDisk (0.00s)
    --- PASS: TestOffsetBasedSubscribe_DataOnDisk/ReadFromOffset0_OnDisk (0.00s)
    --- PASS: TestOffsetBasedSubscribe_DataOnDisk/ReadFromOffset5_OnDisk (0.00s)
    --- PASS: TestOffsetBasedSubscribe_DataOnDisk/ReadFromOffset11_InMemory (0.00s)
=== RUN   TestTimestampBasedSubscribe
=== RUN   TestTimestampBasedSubscribe/ReadFromBeginning
=== RUN   TestTimestampBasedSubscribe/ReadFromMiddleTimestamp
--- PASS: TestTimestampBasedSubscribe (0.00s)
    --- PASS: TestTimestampBasedSubscribe/ReadFromBeginning (0.00s)
    --- PASS: TestTimestampBasedSubscribe/ReadFromMiddleTimestamp (0.00s)
=== RUN   TestConcurrentSubscribers
--- PASS: TestConcurrentSubscribers (0.00s)
=== RUN   TestResumeFromDiskError
--- PASS: TestResumeFromDiskError (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/topic	0.025s
?   	github.com/seaweedfs/seaweedfs/weed/notification	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/notification/aws_sqs	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/notification/gocdk_pub_sub	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/notification/google_pub_sub	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/notification/kafka	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/notification/log	[no test files]
=== RUN   TestFilterEventTypes
=== RUN   TestFilterEventTypes/create_event_-_allowed
=== RUN   TestFilterEventTypes/create_event_-_not_allowed
=== RUN   TestFilterEventTypes/delete_event_-_allowed
=== RUN   TestFilterEventTypes/update_event_-_allowed
=== RUN   TestFilterEventTypes/rename_event_-_allowed
=== RUN   TestFilterEventTypes/rename_event_-_not_allowed
=== RUN   TestFilterEventTypes/all_events_allowed_when_empty
--- PASS: TestFilterEventTypes (0.00s)
    --- PASS: TestFilterEventTypes/create_event_-_allowed (0.00s)
    --- PASS: TestFilterEventTypes/create_event_-_not_allowed (0.00s)
    --- PASS: TestFilterEventTypes/delete_event_-_allowed (0.00s)
    --- PASS: TestFilterEventTypes/update_event_-_allowed (0.00s)
    --- PASS: TestFilterEventTypes/rename_event_-_allowed (0.00s)
    --- PASS: TestFilterEventTypes/rename_event_-_not_allowed (0.00s)
    --- PASS: TestFilterEventTypes/all_events_allowed_when_empty (0.00s)
=== RUN   TestFilterPathPrefixes
=== RUN   TestFilterPathPrefixes/matches_single_prefix
=== RUN   TestFilterPathPrefixes/matches_one_of_multiple_prefixes
=== RUN   TestFilterPathPrefixes/no_match
=== RUN   TestFilterPathPrefixes/empty_prefixes_allows_all
=== RUN   TestFilterPathPrefixes/exact_prefix_match
=== RUN   TestFilterPathPrefixes/partial_match_not_allowed
--- PASS: TestFilterPathPrefixes (0.00s)
    --- PASS: TestFilterPathPrefixes/matches_single_prefix (0.00s)
    --- PASS: TestFilterPathPrefixes/matches_one_of_multiple_prefixes (0.00s)
    --- PASS: TestFilterPathPrefixes/no_match (0.00s)
    --- PASS: TestFilterPathPrefixes/empty_prefixes_allows_all (0.00s)
    --- PASS: TestFilterPathPrefixes/exact_prefix_match (0.00s)
    --- PASS: TestFilterPathPrefixes/partial_match_not_allowed (0.00s)
=== RUN   TestFilterCombined
=== RUN   TestFilterCombined/allowed_event_and_path
=== RUN   TestFilterCombined/allowed_event_but_wrong_path
=== RUN   TestFilterCombined/wrong_event_but_allowed_path
=== RUN   TestFilterCombined/wrong_event_and_wrong_path
--- PASS: TestFilterCombined (0.00s)
    --- PASS: TestFilterCombined/allowed_event_and_path (0.00s)
    --- PASS: TestFilterCombined/allowed_event_but_wrong_path (0.00s)
    --- PASS: TestFilterCombined/wrong_event_but_allowed_path (0.00s)
    --- PASS: TestFilterCombined/wrong_event_and_wrong_path (0.00s)
=== RUN   TestHttpClientSendMessage
--- PASS: TestHttpClientSendMessage (0.00s)
=== RUN   TestHttpClientSendMessageWithoutToken
--- PASS: TestHttpClientSendMessageWithoutToken (0.00s)
=== RUN   TestHttpClientSendMessageServerError
--- PASS: TestHttpClientSendMessageServerError (0.00s)
=== RUN   TestHttpClientSendMessageNetworkError
--- PASS: TestHttpClientSendMessageNetworkError (0.00s)
=== RUN   TestConfigValidation
=== RUN   TestConfigValidation/valid_config
=== RUN   TestConfigValidation/empty_endpoint
=== RUN   TestConfigValidation/invalid_URL
=== RUN   TestConfigValidation/timeout_too_large
=== RUN   TestConfigValidation/too_many_retries
=== RUN   TestConfigValidation/too_many_workers
=== RUN   TestConfigValidation/buffer_too_large
--- PASS: TestConfigValidation (0.00s)
    --- PASS: TestConfigValidation/valid_config (0.00s)
    --- PASS: TestConfigValidation/empty_endpoint (0.00s)
    --- PASS: TestConfigValidation/invalid_URL (0.00s)
    --- PASS: TestConfigValidation/timeout_too_large (0.00s)
    --- PASS: TestConfigValidation/too_many_retries (0.00s)
    --- PASS: TestConfigValidation/too_many_workers (0.00s)
    --- PASS: TestConfigValidation/buffer_too_large (0.00s)
=== RUN   TestWebhookMessageSerialization
--- PASS: TestWebhookMessageSerialization (0.00s)
=== RUN   TestQueueInitialize
[watermill] 2026/06/16 11:57:39.788085 router.go:280: 	level=INFO  msg="Adding handler" handler_name=webhook_handler_0 topic=webhook_topic 
[watermill] 2026/06/16 11:57:39.791076 router.go:434: 	level=INFO  msg="Running router handlers" count=1 
[watermill] 2026/06/16 11:57:39.791756 router.go:648: 	level=INFO  msg="Starting handler" subscriber_name=webhook_handler_0 topic=webhook_topic 
[watermill] 2026/06/16 11:57:39.791778 router.go:483: 	level=INFO  msg="Subscriber stopped" subscriber_name=webhook_handler_0 topic=webhook_topic 
[watermill] 2026/06/16 11:57:39.791785 router.go:580: 	level=INFO  msg="Closing router" 
[watermill] 2026/06/16 11:57:39.791800 router.go:413: 	level=INFO  msg="Waiting for messages" timeout=1m0s 
[watermill] 2026/06/16 11:57:39.791805 router.go:591: 	level=INFO  msg="Router closed" 
[watermill] 2026/06/16 11:57:39.791808 router.go:419: 	level=INFO  msg="All messages processed" 
I0616 11:57:39.791814 webhook_queue.go:161 webhook pubsub worker stopped
--- PASS: TestQueueInitialize (0.10s)
=== RUN   TestQueueSendMessage
[watermill] 2026/06/16 11:57:39.888322 router.go:280: 	level=INFO  msg="Adding handler" handler_name=webhook_handler_0 topic=webhook_topic 
[watermill] 2026/06/16 11:57:39.888359 pubsub.go:160: 	level=INFO  msg="No subscribers to send message" message_uuid=a759f7b4-bce3-4d0c-ba0f-9685daa8cebc pubsub_uuid=wYy9WCE7XKx7ifxcWznysE topic=webhook_topic 
[watermill] 2026/06/16 11:57:39.888390 router.go:434: 	level=INFO  msg="Running router handlers" count=1 
[watermill] 2026/06/16 11:57:39.888442 router.go:648: 	level=INFO  msg="Starting handler" subscriber_name=webhook_handler_0 topic=webhook_topic 
[watermill] 2026/06/16 11:57:39.888456 router.go:483: 	level=INFO  msg="Subscriber stopped" subscriber_name=webhook_handler_0 topic=webhook_topic 
[watermill] 2026/06/16 11:57:39.888475 router.go:580: 	level=INFO  msg="Closing router" 
[watermill] 2026/06/16 11:57:39.888504 router.go:413: 	level=INFO  msg="Waiting for messages" timeout=1m0s 
[watermill] 2026/06/16 11:57:39.888527 router.go:591: 	level=INFO  msg="Router closed" 
[watermill] 2026/06/16 11:57:39.888547 router.go:419: 	level=INFO  msg="All messages processed" 
I0616 11:57:39.888557 webhook_queue.go:161 webhook pubsub worker stopped
--- PASS: TestQueueSendMessage (0.10s)
=== RUN   TestQueueHandleWebhook
--- PASS: TestQueueHandleWebhook (0.00s)
=== RUN   TestQueueEndToEnd
[watermill] 2026/06/16 11:57:39.989587 router.go:280: 	level=INFO  msg="Adding handler" handler_name=webhook_handler_0 topic=webhook_topic 
[watermill] 2026/06/16 11:57:39.989619 pubsub.go:160: 	level=INFO  msg="No subscribers to send message" message_uuid=c590e24b-d5cb-4c7c-8203-ae0b028bba1d pubsub_uuid=T4aUYTNmTPW78Gi88eiYLa topic=webhook_topic 
[watermill] 2026/06/16 11:57:39.989640 router.go:434: 	level=INFO  msg="Running router handlers" count=1 
[watermill] 2026/06/16 11:57:39.989674 router.go:648: 	level=INFO  msg="Starting handler" subscriber_name=webhook_handler_0 topic=webhook_topic 
[watermill] 2026/06/16 11:57:39.989691 router.go:483: 	level=INFO  msg="Subscriber stopped" subscriber_name=webhook_handler_0 topic=webhook_topic 
[watermill] 2026/06/16 11:57:39.989699 router.go:580: 	level=INFO  msg="Closing router" 
[watermill] 2026/06/16 11:57:39.989720 router.go:413: 	level=INFO  msg="Waiting for messages" timeout=1m0s 
[watermill] 2026/06/16 11:57:39.989729 router.go:419: 	level=INFO  msg="All messages processed" 
[watermill] 2026/06/16 11:57:39.989720 router.go:591: 	level=INFO  msg="Router closed" 
I0616 11:57:39.989736 webhook_queue.go:161 webhook pubsub worker stopped
--- PASS: TestQueueEndToEnd (0.10s)
=== RUN   TestQueueRetryMechanism
[watermill] 2026/06/16 11:57:40.090003 router.go:280: 	level=INFO  msg="Adding handler" handler_name=webhook_handler_0 topic=webhook_topic 
[watermill] 2026/06/16 11:57:40.090041 pubsub.go:160: 	level=INFO  msg="No subscribers to send message" message_uuid=c1f5b7e7-7d87-4ca3-a281-308fbe5f76ac pubsub_uuid=nhLh3raLcwBLemUqWt8YW6 topic=webhook_topic 
[watermill] 2026/06/16 11:57:40.090063 router.go:434: 	level=INFO  msg="Running router handlers" count=1 
[watermill] 2026/06/16 11:57:40.090078 router.go:648: 	level=INFO  msg="Starting handler" subscriber_name=webhook_handler_0 topic=webhook_topic 
[watermill] 2026/06/16 11:57:40.090086 router.go:483: 	level=INFO  msg="Subscriber stopped" subscriber_name=webhook_handler_0 topic=webhook_topic 
[watermill] 2026/06/16 11:57:40.090094 router.go:580: 	level=INFO  msg="Closing router" 
[watermill] 2026/06/16 11:57:40.090105 router.go:413: 	level=INFO  msg="Waiting for messages" timeout=1m0s 
[watermill] 2026/06/16 11:57:40.090111 router.go:591: 	level=INFO  msg="Router closed" 
[watermill] 2026/06/16 11:57:40.090115 router.go:419: 	level=INFO  msg="All messages processed" 
I0616 11:57:40.090120 webhook_queue.go:161 webhook pubsub worker stopped
--- PASS: TestQueueRetryMechanism (0.10s)
=== RUN   TestQueueSendMessageWithFilter
=== RUN   TestQueueSendMessageWithFilter/allowed_event_type
=== RUN   TestQueueSendMessageWithFilter/filtered_event_type
=== RUN   TestQueueSendMessageWithFilter/allowed_path_prefix
=== RUN   TestQueueSendMessageWithFilter/filtered_path_prefix
=== RUN   TestQueueSendMessageWithFilter/combined_filters_-_both_pass
=== RUN   TestQueueSendMessageWithFilter/combined_filters_-_event_fails
=== RUN   TestQueueSendMessageWithFilter/combined_filters_-_path_fails
--- PASS: TestQueueSendMessageWithFilter (0.00s)
    --- PASS: TestQueueSendMessageWithFilter/allowed_event_type (0.00s)
    --- PASS: TestQueueSendMessageWithFilter/filtered_event_type (0.00s)
    --- PASS: TestQueueSendMessageWithFilter/allowed_path_prefix (0.00s)
    --- PASS: TestQueueSendMessageWithFilter/filtered_path_prefix (0.00s)
    --- PASS: TestQueueSendMessageWithFilter/combined_filters_-_both_pass (0.00s)
    --- PASS: TestQueueSendMessageWithFilter/combined_filters_-_event_fails (0.00s)
    --- PASS: TestQueueSendMessageWithFilter/combined_filters_-_path_fails (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/notification/webhook	0.414s
=== RUN   TestCaching
vid 123 locations = [{a.com:8080   0}]
--- PASS: TestCaching (2.00s)
=== RUN   TestCreateNeedleFromRequest
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain; charset=utf-8 Compressed:true, originalSize: 1422
W0616 11:57:41.791850 upload_content.go:215 uploading 0 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain; charset=utf-8 Compressed:true, originalSize: 1422
W0616 11:57:42.266629 upload_content.go:215 uploading 1 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain; charset=utf-8 Compressed:true, originalSize: 1422
W0616 11:57:42.977820 upload_content.go:215 uploading 2 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
err: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
uploadResult: <nil>
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0616 11:57:42.977934 upload_content.go:215 uploading 0 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0616 11:57:43.452650 upload_content.go:215 uploading 1 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0616 11:57:44.164608 upload_content.go:215 uploading 2 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
--- PASS: TestCreateNeedleFromRequest (2.38s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/operation	4.388s
=== RUN   TestJsonpMarshalUnmarshal
marshalled: {
  "backendType": "aws",
  "backendId": "",
  "key": "",
  "offset": "0",
  "fileSize": "12",
  "modifiedTime": "0",
  "extension": ""
}
unmarshalled: backend_type:"aws" backend_id:"temp" file_size:12
--- PASS: TestJsonpMarshalUnmarshal (0.00s)
=== RUN   TestServerAddresses_ToAddressMapOrSrv_shouldRemovePrefix
--- PASS: TestServerAddresses_ToAddressMapOrSrv_shouldRemovePrefix (0.00s)
=== RUN   TestServerAddresses_ToAddressMapOrSrv_shouldHandleIPPortList
--- PASS: TestServerAddresses_ToAddressMapOrSrv_shouldHandleIPPortList (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/pb	0.009s
=== RUN   TestFileIdSize
24
14
--- PASS: TestFileIdSize (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/pb/filer_pb	0.010s
?   	github.com/seaweedfs/seaweedfs/weed/pb/iam_pb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/master_pb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/message_fbs	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/mount_pb	[no test files]
=== RUN   TestPublishRecordResponseSerialization
--- PASS: TestPublishRecordResponseSerialization (0.00s)
=== RUN   TestSubscribeRecordResponseSerialization
--- PASS: TestSubscribeRecordResponseSerialization (0.00s)
=== RUN   TestPublishRecordResponseBackwardCompatibility
--- PASS: TestPublishRecordResponseBackwardCompatibility (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/pb/mq_agent_pb	0.006s
?   	github.com/seaweedfs/seaweedfs/weed/pb/mq_pb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/remote_pb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/s3_pb	[no test files]
=== RUN   TestOffsetTypeEnums
=== RUN   TestOffsetTypeEnums/EXACT_OFFSET
=== RUN   TestOffsetTypeEnums/RESET_TO_OFFSET
--- PASS: TestOffsetTypeEnums (0.00s)
    --- PASS: TestOffsetTypeEnums/EXACT_OFFSET (0.00s)
    --- PASS: TestOffsetTypeEnums/RESET_TO_OFFSET (0.00s)
=== RUN   TestPartitionOffsetSerialization
--- PASS: TestPartitionOffsetSerialization (0.00s)
=== RUN   TestPartitionOffsetBackwardCompatibility
--- PASS: TestPartitionOffsetBackwardCompatibility (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/pb/schema_pb	0.004s
?   	github.com/seaweedfs/seaweedfs/weed/pb/volume_server_pb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/worker_pb	[no test files]
=== RUN   TestAliasTimestampIntegration
=== RUN   TestAliasTimestampIntegration/AliasWithLargeTimestamps
=== RUN   TestAliasTimestampIntegration/AliasWithLargeTimestamps/Timestamp_1
=== RUN   TestAliasTimestampIntegration/AliasWithLargeTimestamps/Timestamp_2
=== RUN   TestAliasTimestampIntegration/AliasWithLargeTimestamps/Timestamp_3
=== RUN   TestAliasTimestampIntegration/AliasWithTimestampRangeQueries
=== RUN   TestAliasTimestampIntegration/AliasWithTimestampPrecisionEdgeCases
=== RUN   TestAliasTimestampIntegration/MultipleAliasesWithTimestamps
=== RUN   TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes
=== RUN   TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_=_1756947416566456262
=== RUN   TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_=_1756947416566456263
=== RUN   TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_>_1756947416566456261
=== RUN   TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_>_1756947416566456262
=== RUN   TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_>=_1756947416566456262
=== RUN   TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_>=_1756947416566456263
=== RUN   TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_<_1756947416566456263
=== RUN   TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_<_1756947416566456262
=== RUN   TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_<=_1756947416566456262
=== RUN   TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_<=_1756947416566456261
=== RUN   TestAliasTimestampIntegration/ProductionScenarioReproduction
--- PASS: TestAliasTimestampIntegration (0.00s)
    --- PASS: TestAliasTimestampIntegration/AliasWithLargeTimestamps (0.00s)
        --- PASS: TestAliasTimestampIntegration/AliasWithLargeTimestamps/Timestamp_1 (0.00s)
        --- PASS: TestAliasTimestampIntegration/AliasWithLargeTimestamps/Timestamp_2 (0.00s)
        --- PASS: TestAliasTimestampIntegration/AliasWithLargeTimestamps/Timestamp_3 (0.00s)
    --- PASS: TestAliasTimestampIntegration/AliasWithTimestampRangeQueries (0.00s)
    --- PASS: TestAliasTimestampIntegration/AliasWithTimestampPrecisionEdgeCases (0.00s)
    --- PASS: TestAliasTimestampIntegration/MultipleAliasesWithTimestamps (0.00s)
    --- PASS: TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes (0.00s)
        --- PASS: TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_=_1756947416566456262 (0.00s)
        --- PASS: TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_=_1756947416566456263 (0.00s)
        --- PASS: TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_>_1756947416566456261 (0.00s)
        --- PASS: TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_>_1756947416566456262 (0.00s)
        --- PASS: TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_>=_1756947416566456262 (0.00s)
        --- PASS: TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_>=_1756947416566456263 (0.00s)
        --- PASS: TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_<_1756947416566456263 (0.00s)
        --- PASS: TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_<_1756947416566456262 (0.00s)
        --- PASS: TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_<=_1756947416566456262 (0.00s)
        --- PASS: TestAliasTimestampIntegration/CompatibilityWithExistingTimestampFixes/ts_<=_1756947416566456261 (0.00s)
    --- PASS: TestAliasTimestampIntegration/ProductionScenarioReproduction (0.00s)
=== RUN   TestArithmeticOperations
=== RUN   TestArithmeticOperations/Add_two_integers
=== RUN   TestArithmeticOperations/Add_integer_and_float
=== RUN   TestArithmeticOperations/Subtract_two_integers
=== RUN   TestArithmeticOperations/Multiply_two_integers
=== RUN   TestArithmeticOperations/Multiply_with_float
=== RUN   TestArithmeticOperations/Divide_two_integers
=== RUN   TestArithmeticOperations/Division_by_zero
=== RUN   TestArithmeticOperations/Modulo_operation
=== RUN   TestArithmeticOperations/Modulo_by_zero
=== RUN   TestArithmeticOperations/Add_string_number_to_integer
=== RUN   TestArithmeticOperations/Invalid_string_conversion
=== RUN   TestArithmeticOperations/Add_boolean_to_integer
=== RUN   TestArithmeticOperations/Add_with_null_left_operand
=== RUN   TestArithmeticOperations/Add_with_null_right_operand
--- PASS: TestArithmeticOperations (0.00s)
    --- PASS: TestArithmeticOperations/Add_two_integers (0.00s)
    --- PASS: TestArithmeticOperations/Add_integer_and_float (0.00s)
    --- PASS: TestArithmeticOperations/Subtract_two_integers (0.00s)
    --- PASS: TestArithmeticOperations/Multiply_two_integers (0.00s)
    --- PASS: TestArithmeticOperations/Multiply_with_float (0.00s)
    --- PASS: TestArithmeticOperations/Divide_two_integers (0.00s)
    --- PASS: TestArithmeticOperations/Division_by_zero (0.00s)
    --- PASS: TestArithmeticOperations/Modulo_operation (0.00s)
    --- PASS: TestArithmeticOperations/Modulo_by_zero (0.00s)
    --- PASS: TestArithmeticOperations/Add_string_number_to_integer (0.00s)
    --- PASS: TestArithmeticOperations/Invalid_string_conversion (0.00s)
    --- PASS: TestArithmeticOperations/Add_boolean_to_integer (0.00s)
    --- PASS: TestArithmeticOperations/Add_with_null_left_operand (0.00s)
    --- PASS: TestArithmeticOperations/Add_with_null_right_operand (0.00s)
=== RUN   TestIndividualArithmeticFunctions
--- PASS: TestIndividualArithmeticFunctions (0.00s)
=== RUN   TestMathematicalFunctions
=== RUN   TestMathematicalFunctions/ROUND_function_tests
=== RUN   TestMathematicalFunctions/ROUND_function_tests/Round_float_to_integer
=== RUN   TestMathematicalFunctions/ROUND_function_tests/Round_integer_stays_integer
=== RUN   TestMathematicalFunctions/ROUND_function_tests/Round_with_precision_2
=== RUN   TestMathematicalFunctions/ROUND_function_tests/Round_negative_number
=== RUN   TestMathematicalFunctions/ROUND_function_tests/Round_null_value
=== RUN   TestMathematicalFunctions/CEIL_function_tests
=== RUN   TestMathematicalFunctions/CEIL_function_tests/Ceil_positive_decimal
=== RUN   TestMathematicalFunctions/CEIL_function_tests/Ceil_negative_decimal
=== RUN   TestMathematicalFunctions/CEIL_function_tests/Ceil_integer
=== RUN   TestMathematicalFunctions/CEIL_function_tests/Ceil_null_value
=== RUN   TestMathematicalFunctions/FLOOR_function_tests
=== RUN   TestMathematicalFunctions/FLOOR_function_tests/Floor_positive_decimal
=== RUN   TestMathematicalFunctions/FLOOR_function_tests/Floor_negative_decimal
=== RUN   TestMathematicalFunctions/FLOOR_function_tests/Floor_integer
=== RUN   TestMathematicalFunctions/FLOOR_function_tests/Floor_null_value
=== RUN   TestMathematicalFunctions/ABS_function_tests
=== RUN   TestMathematicalFunctions/ABS_function_tests/Abs_positive_integer
=== RUN   TestMathematicalFunctions/ABS_function_tests/Abs_negative_integer
=== RUN   TestMathematicalFunctions/ABS_function_tests/Abs_positive_double
=== RUN   TestMathematicalFunctions/ABS_function_tests/Abs_negative_double
=== RUN   TestMathematicalFunctions/ABS_function_tests/Abs_positive_float
=== RUN   TestMathematicalFunctions/ABS_function_tests/Abs_negative_float
=== RUN   TestMathematicalFunctions/ABS_function_tests/Abs_zero
=== RUN   TestMathematicalFunctions/ABS_function_tests/Abs_null_value
--- PASS: TestMathematicalFunctions (0.00s)
    --- PASS: TestMathematicalFunctions/ROUND_function_tests (0.00s)
        --- PASS: TestMathematicalFunctions/ROUND_function_tests/Round_float_to_integer (0.00s)
        --- PASS: TestMathematicalFunctions/ROUND_function_tests/Round_integer_stays_integer (0.00s)
        --- PASS: TestMathematicalFunctions/ROUND_function_tests/Round_with_precision_2 (0.00s)
        --- PASS: TestMathematicalFunctions/ROUND_function_tests/Round_negative_number (0.00s)
        --- PASS: TestMathematicalFunctions/ROUND_function_tests/Round_null_value (0.00s)
    --- PASS: TestMathematicalFunctions/CEIL_function_tests (0.00s)
        --- PASS: TestMathematicalFunctions/CEIL_function_tests/Ceil_positive_decimal (0.00s)
        --- PASS: TestMathematicalFunctions/CEIL_function_tests/Ceil_negative_decimal (0.00s)
        --- PASS: TestMathematicalFunctions/CEIL_function_tests/Ceil_integer (0.00s)
        --- PASS: TestMathematicalFunctions/CEIL_function_tests/Ceil_null_value (0.00s)
    --- PASS: TestMathematicalFunctions/FLOOR_function_tests (0.00s)
        --- PASS: TestMathematicalFunctions/FLOOR_function_tests/Floor_positive_decimal (0.00s)
        --- PASS: TestMathematicalFunctions/FLOOR_function_tests/Floor_negative_decimal (0.00s)
        --- PASS: TestMathematicalFunctions/FLOOR_function_tests/Floor_integer (0.00s)
        --- PASS: TestMathematicalFunctions/FLOOR_function_tests/Floor_null_value (0.00s)
    --- PASS: TestMathematicalFunctions/ABS_function_tests (0.00s)
        --- PASS: TestMathematicalFunctions/ABS_function_tests/Abs_positive_integer (0.00s)
        --- PASS: TestMathematicalFunctions/ABS_function_tests/Abs_negative_integer (0.00s)
        --- PASS: TestMathematicalFunctions/ABS_function_tests/Abs_positive_double (0.00s)
        --- PASS: TestMathematicalFunctions/ABS_function_tests/Abs_negative_double (0.00s)
        --- PASS: TestMathematicalFunctions/ABS_function_tests/Abs_positive_float (0.00s)
        --- PASS: TestMathematicalFunctions/ABS_function_tests/Abs_negative_float (0.00s)
        --- PASS: TestMathematicalFunctions/ABS_function_tests/Abs_zero (0.00s)
        --- PASS: TestMathematicalFunctions/ABS_function_tests/Abs_null_value (0.00s)
=== RUN   TestSQLEngine_ArithmeticOnlyQueryExecution
=== RUN   TestSQLEngine_ArithmeticOnlyQueryExecution/Basic_arithmetic_only_query
    arithmetic_only_execution_test.go:75: SUCCESS: SELECT id+user_id, id*2 FROM user_events LIMIT 3 returned 3 rows with calculated values
=== RUN   TestSQLEngine_ArithmeticOnlyQueryExecution/With_LIMIT_and_OFFSET_-_original_user_issue
    arithmetic_only_execution_test.go:75: SUCCESS: SELECT id+user_id, id*2 FROM user_events LIMIT 2 OFFSET 1 returned 2 rows with calculated values
=== RUN   TestSQLEngine_ArithmeticOnlyQueryExecution/Multiple_arithmetic_expressions
    arithmetic_only_execution_test.go:75: SUCCESS: SELECT user_id+100, id-1000 FROM user_events LIMIT 1 returned 1 rows with calculated values
--- PASS: TestSQLEngine_ArithmeticOnlyQueryExecution (0.00s)
    --- PASS: TestSQLEngine_ArithmeticOnlyQueryExecution/Basic_arithmetic_only_query (0.00s)
    --- PASS: TestSQLEngine_ArithmeticOnlyQueryExecution/With_LIMIT_and_OFFSET_-_original_user_issue (0.00s)
    --- PASS: TestSQLEngine_ArithmeticOnlyQueryExecution/Multiple_arithmetic_expressions (0.00s)
=== RUN   TestSQLEngine_ArithmeticOnlyQueryBugReproduction
    arithmetic_only_execution_test.go:140: SUCCESS: Arithmetic-only query with OFFSET works correctly!
    arithmetic_only_execution_test.go:141: Query: SELECT id+user_id, id*amount, id*2 FROM user_events LIMIT 10 OFFSET 5
    arithmetic_only_execution_test.go:142: Returned 5 rows with correct calculations
--- PASS: TestSQLEngine_ArithmeticOnlyQueryBugReproduction (0.00s)
=== RUN   TestArithmeticExpressionParsing
=== RUN   TestArithmeticExpressionParsing/simple_addition
=== RUN   TestArithmeticExpressionParsing/simple_subtraction
=== RUN   TestArithmeticExpressionParsing/multiplication_with_spaces
=== RUN   TestArithmeticExpressionParsing/string_concatenation
=== RUN   TestArithmeticExpressionParsing/string_concatenation_with_spaces
=== RUN   TestArithmeticExpressionParsing/not_arithmetic
--- PASS: TestArithmeticExpressionParsing (0.00s)
    --- PASS: TestArithmeticExpressionParsing/simple_addition (0.00s)
    --- PASS: TestArithmeticExpressionParsing/simple_subtraction (0.00s)
    --- PASS: TestArithmeticExpressionParsing/multiplication_with_spaces (0.00s)
    --- PASS: TestArithmeticExpressionParsing/string_concatenation (0.00s)
    --- PASS: TestArithmeticExpressionParsing/string_concatenation_with_spaces (0.00s)
    --- PASS: TestArithmeticExpressionParsing/not_arithmetic (0.00s)
=== RUN   TestArithmeticExpressionEvaluation
=== RUN   TestArithmeticExpressionEvaluation/integer_addition
=== RUN   TestArithmeticExpressionEvaluation/integer_subtraction
=== RUN   TestArithmeticExpressionEvaluation/mixed_types_multiplication
=== RUN   TestArithmeticExpressionEvaluation/string_concatenation
=== RUN   TestArithmeticExpressionEvaluation/string_concatenation_with_spaces
--- PASS: TestArithmeticExpressionEvaluation (0.00s)
    --- PASS: TestArithmeticExpressionEvaluation/integer_addition (0.00s)
    --- PASS: TestArithmeticExpressionEvaluation/integer_subtraction (0.00s)
    --- PASS: TestArithmeticExpressionEvaluation/mixed_types_multiplication (0.00s)
    --- PASS: TestArithmeticExpressionEvaluation/string_concatenation (0.00s)
    --- PASS: TestArithmeticExpressionEvaluation/string_concatenation_with_spaces (0.00s)
=== RUN   TestSelectArithmeticExpression
--- PASS: TestSelectArithmeticExpression (0.00s)
=== RUN   TestArithmeticWithFunctions
=== RUN   TestArithmeticWithFunctions/Simple_function_arithmetic
    arithmetic_with_functions_test.go:75: PASS Basic function call with addition: SELECT LENGTH('hello') + 10 FROM user_events LIMIT 1 → 15
=== RUN   TestArithmeticWithFunctions/Nested_functions_with_arithmetic
    arithmetic_with_functions_test.go:75: PASS Complex nested functions with arithmetic operation (user's original failing query): SELECT length(trim('  hello world  ')) + 12 FROM user_events LIMIT 1 → 23
=== RUN   TestArithmeticWithFunctions/Function_subtraction
    arithmetic_with_functions_test.go:75: PASS Function call with subtraction: SELECT LENGTH('programming') - 5 FROM user_events LIMIT 1 → 6
=== RUN   TestArithmeticWithFunctions/Function_multiplication
    arithmetic_with_functions_test.go:75: PASS Function call with multiplication: SELECT LENGTH('test') * 3 FROM user_events LIMIT 1 → 12
=== RUN   TestArithmeticWithFunctions/Multiple_nested_functions
    arithmetic_with_functions_test.go:75: PASS Triple nested functions: SELECT LENGTH(UPPER(TRIM('  hello  '))) FROM user_events LIMIT 1 → 5
--- PASS: TestArithmeticWithFunctions (0.00s)
    --- PASS: TestArithmeticWithFunctions/Simple_function_arithmetic (0.00s)
    --- PASS: TestArithmeticWithFunctions/Nested_functions_with_arithmetic (0.00s)
    --- PASS: TestArithmeticWithFunctions/Function_subtraction (0.00s)
    --- PASS: TestArithmeticWithFunctions/Function_multiplication (0.00s)
    --- PASS: TestArithmeticWithFunctions/Multiple_nested_functions (0.00s)
=== RUN   TestConvertMQSchemaToTableInfo_NoSchema
=== RUN   TestConvertMQSchemaToTableInfo_NoSchema/nil_schema
=== RUN   TestConvertMQSchemaToTableInfo_NoSchema/schema_with_nil_RecordType
--- PASS: TestConvertMQSchemaToTableInfo_NoSchema (0.00s)
    --- PASS: TestConvertMQSchemaToTableInfo_NoSchema/nil_schema (0.00s)
    --- PASS: TestConvertMQSchemaToTableInfo_NoSchema/schema_with_nil_RecordType (0.00s)
=== RUN   TestCockroachDBParserSuccess
=== RUN   TestCockroachDBParserSuccess/Basic_Function
    cockroach_parser_success_test.go:93: SUCCESS: Simple function call → 5
=== RUN   TestCockroachDBParserSuccess/Function_Arithmetic
    cockroach_parser_success_test.go:93: SUCCESS: Function with arithmetic operation (original user issue) → 15
=== RUN   TestCockroachDBParserSuccess/User_Original_Query
    cockroach_parser_success_test.go:93: SUCCESS: User's exact original failing query - now fixed! → 23
=== RUN   TestCockroachDBParserSuccess/String_Concatenation
    cockroach_parser_success_test.go:93: SUCCESS: Basic string concatenation → helloworld
=== RUN   TestCockroachDBParserSuccess/Function_With_Concat
    cockroach_parser_success_test.go:93: SUCCESS: Function with string concatenation argument → 10
=== RUN   TestCockroachDBParserSuccess/Multiple_Arithmetic
    cockroach_parser_success_test.go:93: SUCCESS: Function with multiplication → 12
=== RUN   TestCockroachDBParserSuccess/Nested_Functions
    cockroach_parser_success_test.go:93: SUCCESS: Nested function calls → 5
=== RUN   TestCockroachDBParserSuccess/Column_Alias
    cockroach_parser_success_test.go:93: SUCCESS: Column alias functionality (AS keyword) → 4
=== NAME  TestCockroachDBParserSuccess
    cockroach_parser_success_test.go:101: CockroachDB Parser Integration: 8/8 tests passed!
--- PASS: TestCockroachDBParserSuccess (0.00s)
    --- PASS: TestCockroachDBParserSuccess/Basic_Function (0.00s)
    --- PASS: TestCockroachDBParserSuccess/Function_Arithmetic (0.00s)
    --- PASS: TestCockroachDBParserSuccess/User_Original_Query (0.00s)
    --- PASS: TestCockroachDBParserSuccess/String_Concatenation (0.00s)
    --- PASS: TestCockroachDBParserSuccess/Function_With_Concat (0.00s)
    --- PASS: TestCockroachDBParserSuccess/Multiple_Arithmetic (0.00s)
    --- PASS: TestCockroachDBParserSuccess/Nested_Functions (0.00s)
    --- PASS: TestCockroachDBParserSuccess/Column_Alias (0.00s)
=== RUN   TestCompleteSQLFixes
=== RUN   TestCompleteSQLFixes/OriginalFailingProductionQueries
=== RUN   TestCompleteSQLFixes/OriginalFailingProductionQueries/OriginalFailingQuery1
=== RUN   TestCompleteSQLFixes/OriginalFailingProductionQueries/OriginalFailingQuery2
=== RUN   TestCompleteSQLFixes/OriginalFailingProductionQueries/CurrentDataQuery
=== RUN   TestCompleteSQLFixes/AllFixesWorkTogether
=== RUN   TestCompleteSQLFixes/BackwardCompatibilityVerified
=== RUN   TestCompleteSQLFixes/PerformanceAndStability
=== RUN   TestCompleteSQLFixes/EdgeCasesAndErrorHandling
--- PASS: TestCompleteSQLFixes (0.00s)
    --- PASS: TestCompleteSQLFixes/OriginalFailingProductionQueries (0.00s)
        --- PASS: TestCompleteSQLFixes/OriginalFailingProductionQueries/OriginalFailingQuery1 (0.00s)
        --- PASS: TestCompleteSQLFixes/OriginalFailingProductionQueries/OriginalFailingQuery2 (0.00s)
        --- PASS: TestCompleteSQLFixes/OriginalFailingProductionQueries/CurrentDataQuery (0.00s)
    --- PASS: TestCompleteSQLFixes/AllFixesWorkTogether (0.00s)
    --- PASS: TestCompleteSQLFixes/BackwardCompatibilityVerified (0.00s)
    --- PASS: TestCompleteSQLFixes/PerformanceAndStability (0.00s)
    --- PASS: TestCompleteSQLFixes/EdgeCasesAndErrorHandling (0.00s)
=== RUN   TestSQLFixesSummary
=== RUN   TestSQLFixesSummary/Summary
    complete_sql_fixes_test.go:251: ALL SQL FIXES VERIFIED:
    complete_sql_fixes_test.go:252:   Timestamp precision for large int64 values
    complete_sql_fixes_test.go:253:   SQL alias resolution in WHERE clauses
    complete_sql_fixes_test.go:254:   Scan boundary fixes for equality queries
    complete_sql_fixes_test.go:255:   Range query fixes for equal boundaries
    complete_sql_fixes_test.go:256:   Hybrid scanner time range handling
    complete_sql_fixes_test.go:257:   Backward compatibility maintained
    complete_sql_fixes_test.go:258:   Production stability verified
--- PASS: TestSQLFixesSummary (0.00s)
    --- PASS: TestSQLFixesSummary/Summary (0.00s)
=== RUN   TestComprehensiveSQLSuite
=== RUN   TestComprehensiveSQLSuite/Basic_Select_All
    comprehensive_sql_test.go:319: PASS: Success: Basic select all columns
=== RUN   TestComprehensiveSQLSuite/Basic_Select_Column
    comprehensive_sql_test.go:319: PASS: Success: Basic select single column
=== RUN   TestComprehensiveSQLSuite/Basic_Select_Multiple_Columns
    comprehensive_sql_test.go:319: PASS: Success: Basic select multiple columns
=== RUN   TestComprehensiveSQLSuite/Arithmetic_Multiply_FIXED
    comprehensive_sql_test.go:319: PASS: Success: FIXED: Arithmetic multiplication works
=== RUN   TestComprehensiveSQLSuite/Arithmetic_Add
    comprehensive_sql_test.go:319: PASS: Success: Arithmetic addition works
=== RUN   TestComprehensiveSQLSuite/Arithmetic_Subtract
    comprehensive_sql_test.go:319: PASS: Success: Arithmetic subtraction works
=== RUN   TestComprehensiveSQLSuite/Arithmetic_Divide
    comprehensive_sql_test.go:319: PASS: Success: Arithmetic division works
=== RUN   TestComprehensiveSQLSuite/Arithmetic_Complex
    comprehensive_sql_test.go:319: PASS: Success: Complex arithmetic expression works
=== RUN   TestComprehensiveSQLSuite/String_Concatenation
    comprehensive_sql_test.go:319: PASS: Success: String concatenation
=== RUN   TestComprehensiveSQLSuite/String_Column_Concat
    comprehensive_sql_test.go:319: PASS: Success: Column string concatenation
=== RUN   TestComprehensiveSQLSuite/Function_LENGTH
    comprehensive_sql_test.go:319: PASS: Success: LENGTH function with literal
=== RUN   TestComprehensiveSQLSuite/Function_LENGTH_Column
    comprehensive_sql_test.go:319: PASS: Success: LENGTH function with column
=== RUN   TestComprehensiveSQLSuite/Function_UPPER
    comprehensive_sql_test.go:319: PASS: Success: UPPER function
=== RUN   TestComprehensiveSQLSuite/Function_Nested
    comprehensive_sql_test.go:319: PASS: Success: Nested functions
=== RUN   TestComprehensiveSQLSuite/Function_Arithmetic
    comprehensive_sql_test.go:319: PASS: Success: Function with arithmetic
=== RUN   TestComprehensiveSQLSuite/Function_Arithmetic_Complex
    comprehensive_sql_test.go:319: PASS: Success: Function with complex arithmetic
=== RUN   TestComprehensiveSQLSuite/Table_Simple
    comprehensive_sql_test.go:319: PASS: Success: Simple table reference
=== RUN   TestComprehensiveSQLSuite/Table_With_Database
    comprehensive_sql_test.go:319: PASS: Success: Table with database qualifier
=== RUN   TestComprehensiveSQLSuite/Table_Quoted
    comprehensive_sql_test.go:319: PASS: Success: Quoted table name
=== RUN   TestComprehensiveSQLSuite/Where_Simple
    comprehensive_sql_test.go:319: PASS: Success: Simple WHERE clause
=== RUN   TestComprehensiveSQLSuite/Where_String
    comprehensive_sql_test.go:319: PASS: Success: WHERE clause with string
=== RUN   TestComprehensiveSQLSuite/Limit_Only
    comprehensive_sql_test.go:319: PASS: Success: LIMIT clause only
=== RUN   TestComprehensiveSQLSuite/Limit_Offset
    comprehensive_sql_test.go:319: PASS: Success: LIMIT with OFFSET
=== RUN   TestComprehensiveSQLSuite/DateTime_CURRENT_DATE
    comprehensive_sql_test.go:319: PASS: Success: CURRENT_DATE function
=== RUN   TestComprehensiveSQLSuite/DateTime_NOW
    comprehensive_sql_test.go:319: PASS: Success: NOW() function
=== RUN   TestComprehensiveSQLSuite/DateTime_EXTRACT
    comprehensive_sql_test.go:319: PASS: Success: EXTRACT function
=== RUN   TestComprehensiveSQLSuite/Empty_String
    comprehensive_sql_test.go:319: PASS: Success: Empty string literal
=== RUN   TestComprehensiveSQLSuite/Multiple_Spaces
    comprehensive_sql_test.go:319: PASS: Success: Query with multiple spaces
=== RUN   TestComprehensiveSQLSuite/Mixed_Case
    comprehensive_sql_test.go:319: PASS: Success: Mixed case SQL
=== RUN   TestComprehensiveSQLSuite/Show_Databases
    comprehensive_sql_test.go:319: PASS: Success: SHOW DATABASES statement
=== RUN   TestComprehensiveSQLSuite/Show_Tables
    comprehensive_sql_test.go:319: PASS: Success: SHOW TABLES statement
=== NAME  TestComprehensiveSQLSuite
    comprehensive_sql_test.go:327: 
        ================================================================================
    comprehensive_sql_test.go:328: COMPREHENSIVE SQL TEST SUITE SUMMARY
    comprehensive_sql_test.go:329: ================================================================================
    comprehensive_sql_test.go:330: Total Tests: 31
    comprehensive_sql_test.go:331: Successful: 31
    comprehensive_sql_test.go:332: Panics: 0
    comprehensive_sql_test.go:333: Errors: 0
    comprehensive_sql_test.go:334: ================================================================================
--- PASS: TestComprehensiveSQLSuite (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Basic_Select_All (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Basic_Select_Column (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Basic_Select_Multiple_Columns (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Arithmetic_Multiply_FIXED (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Arithmetic_Add (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Arithmetic_Subtract (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Arithmetic_Divide (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Arithmetic_Complex (0.00s)
    --- PASS: TestComprehensiveSQLSuite/String_Concatenation (0.00s)
    --- PASS: TestComprehensiveSQLSuite/String_Column_Concat (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Function_LENGTH (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Function_LENGTH_Column (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Function_UPPER (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Function_Nested (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Function_Arithmetic (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Function_Arithmetic_Complex (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Table_Simple (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Table_With_Database (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Table_Quoted (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Where_Simple (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Where_String (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Limit_Only (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Limit_Offset (0.00s)
    --- PASS: TestComprehensiveSQLSuite/DateTime_CURRENT_DATE (0.00s)
    --- PASS: TestComprehensiveSQLSuite/DateTime_NOW (0.00s)
    --- PASS: TestComprehensiveSQLSuite/DateTime_EXTRACT (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Empty_String (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Multiple_Spaces (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Mixed_Case (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Show_Databases (0.00s)
    --- PASS: TestComprehensiveSQLSuite/Show_Tables (0.00s)
=== RUN   TestDateTimeFunctions
=== RUN   TestDateTimeFunctions/CURRENT_DATE_function_tests
=== RUN   TestDateTimeFunctions/CURRENT_TIMESTAMP_function_tests
=== RUN   TestDateTimeFunctions/NOW_function_tests
=== RUN   TestDateTimeFunctions/CURRENT_TIME_function_tests
--- PASS: TestDateTimeFunctions (0.00s)
    --- PASS: TestDateTimeFunctions/CURRENT_DATE_function_tests (0.00s)
    --- PASS: TestDateTimeFunctions/CURRENT_TIMESTAMP_function_tests (0.00s)
    --- PASS: TestDateTimeFunctions/NOW_function_tests (0.00s)
    --- PASS: TestDateTimeFunctions/CURRENT_TIME_function_tests (0.00s)
=== RUN   TestExtractFunction
=== RUN   TestExtractFunction/Extract_YEAR
=== RUN   TestExtractFunction/Extract_MONTH
=== RUN   TestExtractFunction/Extract_DAY
=== RUN   TestExtractFunction/Extract_HOUR
=== RUN   TestExtractFunction/Extract_MINUTE
=== RUN   TestExtractFunction/Extract_SECOND
=== RUN   TestExtractFunction/Extract_QUARTER_from_June
=== RUN   TestExtractFunction/Extract_from_string_date
=== RUN   TestExtractFunction/Extract_from_Unix_timestamp
=== RUN   TestExtractFunction/Extract_from_null_value
=== RUN   TestExtractFunction/Extract_invalid_part
=== RUN   TestExtractFunction/Extract_from_invalid_string
--- PASS: TestExtractFunction (0.01s)
    --- PASS: TestExtractFunction/Extract_YEAR (0.00s)
    --- PASS: TestExtractFunction/Extract_MONTH (0.00s)
    --- PASS: TestExtractFunction/Extract_DAY (0.00s)
    --- PASS: TestExtractFunction/Extract_HOUR (0.00s)
    --- PASS: TestExtractFunction/Extract_MINUTE (0.00s)
    --- PASS: TestExtractFunction/Extract_SECOND (0.00s)
    --- PASS: TestExtractFunction/Extract_QUARTER_from_June (0.00s)
    --- PASS: TestExtractFunction/Extract_from_string_date (0.00s)
    --- PASS: TestExtractFunction/Extract_from_Unix_timestamp (0.00s)
    --- PASS: TestExtractFunction/Extract_from_null_value (0.00s)
    --- PASS: TestExtractFunction/Extract_invalid_part (0.00s)
    --- PASS: TestExtractFunction/Extract_from_invalid_string (0.00s)
=== RUN   TestDateTruncFunction
=== RUN   TestDateTruncFunction/Truncate_to_second
=== RUN   TestDateTruncFunction/Truncate_to_minute
=== RUN   TestDateTruncFunction/Truncate_to_hour
=== RUN   TestDateTruncFunction/Truncate_to_day
=== RUN   TestDateTruncFunction/Truncate_to_month
=== RUN   TestDateTruncFunction/Truncate_to_quarter
=== RUN   TestDateTruncFunction/Truncate_to_year
=== RUN   TestDateTruncFunction/Truncate_with_plural_precision
=== RUN   TestDateTruncFunction/Truncate_from_string_date
=== RUN   TestDateTruncFunction/Truncate_null_value
=== RUN   TestDateTruncFunction/Invalid_precision
--- PASS: TestDateTruncFunction (0.00s)
    --- PASS: TestDateTruncFunction/Truncate_to_second (0.00s)
    --- PASS: TestDateTruncFunction/Truncate_to_minute (0.00s)
    --- PASS: TestDateTruncFunction/Truncate_to_hour (0.00s)
    --- PASS: TestDateTruncFunction/Truncate_to_day (0.00s)
    --- PASS: TestDateTruncFunction/Truncate_to_month (0.00s)
    --- PASS: TestDateTruncFunction/Truncate_to_quarter (0.00s)
    --- PASS: TestDateTruncFunction/Truncate_to_year (0.00s)
    --- PASS: TestDateTruncFunction/Truncate_with_plural_precision (0.00s)
    --- PASS: TestDateTruncFunction/Truncate_from_string_date (0.00s)
    --- PASS: TestDateTruncFunction/Truncate_null_value (0.00s)
    --- PASS: TestDateTruncFunction/Invalid_precision (0.00s)
=== RUN   TestDateTimeConstantsInSQL
=== RUN   TestDateTimeConstantsInSQL/CURRENT_TIME_in_SQL_query
    datetime_functions_test.go:468: CURRENT_TIME returned valid time: 11:57:39
=== RUN   TestDateTimeConstantsInSQL/CURRENT_DATE_in_SQL_query
    datetime_functions_test.go:494: CURRENT_DATE returned: 2026-06-16
--- PASS: TestDateTimeConstantsInSQL (0.00s)
    --- PASS: TestDateTimeConstantsInSQL/CURRENT_TIME_in_SQL_query (0.00s)
    --- PASS: TestDateTimeConstantsInSQL/CURRENT_DATE_in_SQL_query (0.00s)
=== RUN   TestFunctionArgumentCountHandling
=== RUN   TestFunctionArgumentCountHandling/Zero-argument_function_should_fail_appropriately
=== RUN   TestFunctionArgumentCountHandling/Single-argument_function_should_still_work
=== RUN   TestFunctionArgumentCountHandling/Any_zero-argument_function_should_fail
=== RUN   TestFunctionArgumentCountHandling/Wrong_argument_count_for_single-arg_function_should_fail
--- PASS: TestFunctionArgumentCountHandling (0.00s)
    --- PASS: TestFunctionArgumentCountHandling/Zero-argument_function_should_fail_appropriately (0.00s)
    --- PASS: TestFunctionArgumentCountHandling/Single-argument_function_should_still_work (0.00s)
    --- PASS: TestFunctionArgumentCountHandling/Any_zero-argument_function_should_fail (0.00s)
    --- PASS: TestFunctionArgumentCountHandling/Wrong_argument_count_for_single-arg_function_should_fail (0.00s)
=== RUN   TestExtractFunctionSQL
=== RUN   TestExtractFunctionSQL/Extract_YEAR_from_current_date
=== RUN   TestExtractFunctionSQL/Extract_MONTH_from_current_date
=== RUN   TestExtractFunctionSQL/Extract_DAY_from_current_date
=== RUN   TestExtractFunctionSQL/Extract_HOUR_from_current_timestamp
=== RUN   TestExtractFunctionSQL/Extract_MINUTE_from_current_timestamp
=== RUN   TestExtractFunctionSQL/Extract_QUARTER_from_current_date
=== RUN   TestExtractFunctionSQL/Multiple_EXTRACT_functions
=== RUN   TestExtractFunctionSQL/EXTRACT_with_invalid_date_part
=== RUN   TestExtractFunctionSQL/EXTRACT_with_wrong_number_of_arguments
=== RUN   TestExtractFunctionSQL/EXTRACT_with_too_many_arguments
--- PASS: TestExtractFunctionSQL (0.00s)
    --- PASS: TestExtractFunctionSQL/Extract_YEAR_from_current_date (0.00s)
    --- PASS: TestExtractFunctionSQL/Extract_MONTH_from_current_date (0.00s)
    --- PASS: TestExtractFunctionSQL/Extract_DAY_from_current_date (0.00s)
    --- PASS: TestExtractFunctionSQL/Extract_HOUR_from_current_timestamp (0.00s)
    --- PASS: TestExtractFunctionSQL/Extract_MINUTE_from_current_timestamp (0.00s)
    --- PASS: TestExtractFunctionSQL/Extract_QUARTER_from_current_date (0.00s)
    --- PASS: TestExtractFunctionSQL/Multiple_EXTRACT_functions (0.00s)
    --- PASS: TestExtractFunctionSQL/EXTRACT_with_invalid_date_part (0.00s)
    --- PASS: TestExtractFunctionSQL/EXTRACT_with_wrong_number_of_arguments (0.00s)
    --- PASS: TestExtractFunctionSQL/EXTRACT_with_too_many_arguments (0.00s)
=== RUN   TestDateTruncFunctionSQL
=== RUN   TestDateTruncFunctionSQL/DATE_TRUNC_to_day
=== RUN   TestDateTruncFunctionSQL/DATE_TRUNC_to_hour
=== RUN   TestDateTruncFunctionSQL/DATE_TRUNC_to_month
=== RUN   TestDateTruncFunctionSQL/DATE_TRUNC_with_invalid_precision
=== RUN   TestDateTruncFunctionSQL/DATE_TRUNC_with_wrong_number_of_arguments
--- PASS: TestDateTruncFunctionSQL (0.00s)
    --- PASS: TestDateTruncFunctionSQL/DATE_TRUNC_to_day (0.00s)
    --- PASS: TestDateTruncFunctionSQL/DATE_TRUNC_to_hour (0.00s)
    --- PASS: TestDateTruncFunctionSQL/DATE_TRUNC_to_month (0.00s)
    --- PASS: TestDateTruncFunctionSQL/DATE_TRUNC_with_invalid_precision (0.00s)
    --- PASS: TestDateTruncFunctionSQL/DATE_TRUNC_with_wrong_number_of_arguments (0.00s)
=== RUN   TestFastPathOptimizer_DetermineStrategy
=== RUN   TestFastPathOptimizer_DetermineStrategy/Supported_aggregations
=== RUN   TestFastPathOptimizer_DetermineStrategy/Unsupported_aggregation
=== RUN   TestFastPathOptimizer_DetermineStrategy/Empty_aggregations
--- PASS: TestFastPathOptimizer_DetermineStrategy (0.00s)
    --- PASS: TestFastPathOptimizer_DetermineStrategy/Supported_aggregations (0.00s)
    --- PASS: TestFastPathOptimizer_DetermineStrategy/Unsupported_aggregation (0.00s)
    --- PASS: TestFastPathOptimizer_DetermineStrategy/Empty_aggregations (0.00s)
=== RUN   TestAggregationComputer_ComputeFastPathAggregations
=== RUN   TestAggregationComputer_ComputeFastPathAggregations/COUNT_aggregation
=== RUN   TestAggregationComputer_ComputeFastPathAggregations/MAX_aggregation
=== RUN   TestAggregationComputer_ComputeFastPathAggregations/MIN_aggregation
--- PASS: TestAggregationComputer_ComputeFastPathAggregations (0.00s)
    --- PASS: TestAggregationComputer_ComputeFastPathAggregations/COUNT_aggregation (0.00s)
    --- PASS: TestAggregationComputer_ComputeFastPathAggregations/MAX_aggregation (0.00s)
    --- PASS: TestAggregationComputer_ComputeFastPathAggregations/MIN_aggregation (0.00s)
=== RUN   TestAggregationComputer_MinMaxEdgeCases
=== RUN   TestAggregationComputer_MinMaxEdgeCases/Case_insensitive_column_lookup
=== RUN   TestAggregationComputer_MinMaxEdgeCases/Null_column_stats_handling
=== RUN   TestAggregationComputer_MinMaxEdgeCases/Mixed_data_types_-_string_column
=== RUN   TestAggregationComputer_MinMaxEdgeCases/Mixed_data_types_-_float_column
=== RUN   TestAggregationComputer_MinMaxEdgeCases/Column_not_found_in_parquet_stats
=== RUN   TestAggregationComputer_MinMaxEdgeCases/Multiple_parquet_files_with_different_ranges
--- PASS: TestAggregationComputer_MinMaxEdgeCases (0.00s)
    --- PASS: TestAggregationComputer_MinMaxEdgeCases/Case_insensitive_column_lookup (0.00s)
    --- PASS: TestAggregationComputer_MinMaxEdgeCases/Null_column_stats_handling (0.00s)
    --- PASS: TestAggregationComputer_MinMaxEdgeCases/Mixed_data_types_-_string_column (0.00s)
    --- PASS: TestAggregationComputer_MinMaxEdgeCases/Mixed_data_types_-_float_column (0.00s)
    --- PASS: TestAggregationComputer_MinMaxEdgeCases/Column_not_found_in_parquet_stats (0.00s)
    --- PASS: TestAggregationComputer_MinMaxEdgeCases/Multiple_parquet_files_with_different_ranges (0.00s)
=== RUN   TestAggregationComputer_MinMaxEmptyValuesBugFix
=== RUN   TestAggregationComputer_MinMaxEmptyValuesBugFix/MIN_should_return_0_not_empty
=== RUN   TestAggregationComputer_MinMaxEmptyValuesBugFix/MAX_should_return_99_not_empty
--- PASS: TestAggregationComputer_MinMaxEmptyValuesBugFix (0.00s)
    --- PASS: TestAggregationComputer_MinMaxEmptyValuesBugFix/MIN_should_return_0_not_empty (0.00s)
    --- PASS: TestAggregationComputer_MinMaxEmptyValuesBugFix/MAX_should_return_99_not_empty (0.00s)
=== RUN   TestSQLEngine_FormatAggregationResult_MinMax
=== RUN   TestSQLEngine_FormatAggregationResult_MinMax/MIN_with_zero_value_should_not_be_empty
=== RUN   TestSQLEngine_FormatAggregationResult_MinMax/MAX_with_large_value
=== RUN   TestSQLEngine_FormatAggregationResult_MinMax/MIN_with_negative_value
=== RUN   TestSQLEngine_FormatAggregationResult_MinMax/MAX_with_float_value
=== RUN   TestSQLEngine_FormatAggregationResult_MinMax/MIN_with_string_value
=== RUN   TestSQLEngine_FormatAggregationResult_MinMax/MIN_with_nil_should_return_NULL
--- PASS: TestSQLEngine_FormatAggregationResult_MinMax (0.00s)
    --- PASS: TestSQLEngine_FormatAggregationResult_MinMax/MIN_with_zero_value_should_not_be_empty (0.00s)
    --- PASS: TestSQLEngine_FormatAggregationResult_MinMax/MAX_with_large_value (0.00s)
    --- PASS: TestSQLEngine_FormatAggregationResult_MinMax/MIN_with_negative_value (0.00s)
    --- PASS: TestSQLEngine_FormatAggregationResult_MinMax/MAX_with_float_value (0.00s)
    --- PASS: TestSQLEngine_FormatAggregationResult_MinMax/MIN_with_string_value (0.00s)
    --- PASS: TestSQLEngine_FormatAggregationResult_MinMax/MIN_with_nil_should_return_NULL (0.00s)
=== RUN   TestSQLEngine_MinMaxBugFixIntegration
=== RUN   TestSQLEngine_MinMaxBugFixIntegration/MIN_with_zero_should_not_be_empty_(the_original_bug)
=== RUN   TestSQLEngine_MinMaxBugFixIntegration/MAX_with_valid_value_should_not_be_empty
=== RUN   TestSQLEngine_MinMaxBugFixIntegration/MIN_with_negative_value_should_work
=== RUN   TestSQLEngine_MinMaxBugFixIntegration/MIN_with_nil_should_be_empty_(expected_behavior)
--- PASS: TestSQLEngine_MinMaxBugFixIntegration (0.00s)
    --- PASS: TestSQLEngine_MinMaxBugFixIntegration/MIN_with_zero_should_not_be_empty_(the_original_bug) (0.00s)
    --- PASS: TestSQLEngine_MinMaxBugFixIntegration/MAX_with_valid_value_should_not_be_empty (0.00s)
    --- PASS: TestSQLEngine_MinMaxBugFixIntegration/MIN_with_negative_value_should_work (0.00s)
    --- PASS: TestSQLEngine_MinMaxBugFixIntegration/MIN_with_nil_should_be_empty_(expected_behavior) (0.00s)
=== RUN   TestSQLEngine_FastParquetAggregationBugFix
=== RUN   TestSQLEngine_FastParquetAggregationBugFix/Single_MIN_aggregation_should_return_value_not_nil
=== RUN   TestSQLEngine_FastParquetAggregationBugFix/Single_MAX_aggregation_should_return_value_not_nil
=== RUN   TestSQLEngine_FastParquetAggregationBugFix/Combined_MIN/MAX_should_both_return_values
--- PASS: TestSQLEngine_FastParquetAggregationBugFix (0.00s)
    --- PASS: TestSQLEngine_FastParquetAggregationBugFix/Single_MIN_aggregation_should_return_value_not_nil (0.00s)
    --- PASS: TestSQLEngine_FastParquetAggregationBugFix/Single_MAX_aggregation_should_return_value_not_nil (0.00s)
    --- PASS: TestSQLEngine_FastParquetAggregationBugFix/Combined_MIN/MAX_should_both_return_values (0.00s)
=== RUN   TestExecutionPlanBuilder_BuildAggregationPlan
--- PASS: TestExecutionPlanBuilder_BuildAggregationPlan (0.00s)
=== RUN   TestErrorTypes
=== RUN   TestErrorTypes/AggregationError
=== RUN   TestErrorTypes/DataSourceError
=== RUN   TestErrorTypes/OptimizationError
--- PASS: TestErrorTypes (0.00s)
    --- PASS: TestErrorTypes/AggregationError (0.00s)
    --- PASS: TestErrorTypes/DataSourceError (0.00s)
    --- PASS: TestErrorTypes/OptimizationError (0.00s)
=== RUN   TestIntegration_FastPathOptimization
--- PASS: TestIntegration_FastPathOptimization (0.00s)
=== RUN   TestIntegration_FallbackToFullScan
--- PASS: TestIntegration_FallbackToFullScan (0.00s)
=== RUN   TestSQLEngine_ConvertLogEntryToRecordValue_ValidProtobuf
--- PASS: TestSQLEngine_ConvertLogEntryToRecordValue_ValidProtobuf (0.00s)
=== RUN   TestSQLEngine_ConvertLogEntryToRecordValue_InvalidProtobuf
--- PASS: TestSQLEngine_ConvertLogEntryToRecordValue_InvalidProtobuf (0.00s)
=== RUN   TestSQLEngine_ConvertLogEntryToRecordValue_EmptyProtobuf
--- PASS: TestSQLEngine_ConvertLogEntryToRecordValue_EmptyProtobuf (0.00s)
=== RUN   TestSQLEngine_ConvertLogEntryToRecordValue_NilFieldsMap
--- PASS: TestSQLEngine_ConvertLogEntryToRecordValue_NilFieldsMap (0.00s)
=== RUN   TestSQLEngine_ConvertLogEntryToRecordValue_SystemColumnOverride
--- PASS: TestSQLEngine_ConvertLogEntryToRecordValue_SystemColumnOverride (0.00s)
=== RUN   TestSQLEngine_ConvertLogEntryToRecordValue_ComplexDataTypes
--- PASS: TestSQLEngine_ConvertLogEntryToRecordValue_ComplexDataTypes (0.00s)
=== RUN   TestSQLEngine_GetLogBufferStartFromFile_BinaryFormat
--- PASS: TestSQLEngine_GetLogBufferStartFromFile_BinaryFormat (0.00s)
=== RUN   TestSQLEngine_GetLogBufferStartFromFile_NoMetadata
--- PASS: TestSQLEngine_GetLogBufferStartFromFile_NoMetadata (0.00s)
=== RUN   TestSQLEngine_GetLogBufferStartFromFile_InvalidData
--- PASS: TestSQLEngine_GetLogBufferStartFromFile_InvalidData (0.00s)
=== RUN   TestSQLEngine_BuildLogBufferDeduplicationMap_NoBrokerClient
--- PASS: TestSQLEngine_BuildLogBufferDeduplicationMap_NoBrokerClient (0.00s)
=== RUN   TestSQLEngine_LogBufferDeduplication_ServerRestartScenario
--- PASS: TestSQLEngine_LogBufferDeduplication_ServerRestartScenario (0.00s)
=== RUN   TestBrokerClient_BinaryBufferStartFormat
--- PASS: TestBrokerClient_BinaryBufferStartFormat (0.00s)
=== RUN   TestGetSQLValAlias
=== RUN   TestGetSQLValAlias/simple_string
=== RUN   TestGetSQLValAlias/string_with_single_quote
=== RUN   TestGetSQLValAlias/string_with_multiple_single_quotes
=== RUN   TestGetSQLValAlias/empty_string
=== RUN   TestGetSQLValAlias/integer_value
=== RUN   TestGetSQLValAlias/float_value
--- PASS: TestGetSQLValAlias (0.00s)
    --- PASS: TestGetSQLValAlias/simple_string (0.00s)
    --- PASS: TestGetSQLValAlias/string_with_single_quote (0.00s)
    --- PASS: TestGetSQLValAlias/string_with_multiple_single_quotes (0.00s)
    --- PASS: TestGetSQLValAlias/empty_string (0.00s)
    --- PASS: TestGetSQLValAlias/integer_value (0.00s)
    --- PASS: TestGetSQLValAlias/float_value (0.00s)
=== RUN   TestExecutionPlanFastPathDisplay
=== RUN   TestExecutionPlanFastPathDisplay/Fast_path_execution_plan_shows_correct_data_sources
=== RUN   TestExecutionPlanFastPathDisplay/Slow_path_execution_plan_shows_full_scan_data_sources
=== RUN   TestExecutionPlanFastPathDisplay/Data_source_formatting_works_correctly
--- PASS: TestExecutionPlanFastPathDisplay (0.00s)
    --- PASS: TestExecutionPlanFastPathDisplay/Fast_path_execution_plan_shows_correct_data_sources (0.00s)
    --- PASS: TestExecutionPlanFastPathDisplay/Slow_path_execution_plan_shows_full_scan_data_sources (0.00s)
    --- PASS: TestExecutionPlanFastPathDisplay/Data_source_formatting_works_correctly (0.00s)
=== RUN   TestFastPathCountFixRealistic
=== RUN   TestFastPathCountFixRealistic/COUNT(*)_should_return_correct_total_(1803)
=== RUN   TestFastPathCountFixRealistic/MIN/MAX_should_work_with_multiple_partitions
--- PASS: TestFastPathCountFixRealistic (0.00s)
    --- PASS: TestFastPathCountFixRealistic/COUNT(*)_should_return_correct_total_(1803) (0.00s)
    --- PASS: TestFastPathCountFixRealistic/MIN/MAX_should_work_with_multiple_partitions (0.00s)
=== RUN   TestFastPathDataSourceDiscoveryLogging
=== RUN   TestFastPathDataSourceDiscoveryLogging/DataSources_structure_validation
--- PASS: TestFastPathDataSourceDiscoveryLogging (0.00s)
    --- PASS: TestFastPathDataSourceDiscoveryLogging/DataSources_structure_validation (0.00s)
=== RUN   TestFastPathValidationLogic
=== RUN   TestFastPathValidationLogic/Validation_catches_data_source_vs_computation_mismatch
=== RUN   TestFastPathValidationLogic/Validation_passes_for_consistent_data
--- PASS: TestFastPathValidationLogic (0.00s)
    --- PASS: TestFastPathValidationLogic/Validation_catches_data_source_vs_computation_mismatch (0.00s)
    --- PASS: TestFastPathValidationLogic/Validation_passes_for_consistent_data (0.00s)
=== RUN   TestFastPathPredicateValidation
=== RUN   TestFastPathPredicateValidation/No_WHERE_clause
    fast_path_predicate_validation_test.go:142: No WHERE clause: onlyTimePredicates=true, startTimeNs=0, stopTimeNs=0
=== RUN   TestFastPathPredicateValidation/Time-only_predicate_(greater_than)
    fast_path_predicate_validation_test.go:142: Time-only predicate (greater than): onlyTimePredicates=true, startTimeNs=1640995200000000000, stopTimeNs=0
=== RUN   TestFastPathPredicateValidation/Time-only_predicate_(less_than)
    fast_path_predicate_validation_test.go:142: Time-only predicate (less than): onlyTimePredicates=true, startTimeNs=0, stopTimeNs=1640995200000000000
=== RUN   TestFastPathPredicateValidation/Time-only_predicate_(range_with_AND)
    fast_path_predicate_validation_test.go:142: Time-only predicate (range with AND): onlyTimePredicates=true, startTimeNs=1640995200000000000, stopTimeNs=1641081600000000000
=== RUN   TestFastPathPredicateValidation/Mixed_predicate_(time_+_non-time)
    fast_path_predicate_validation_test.go:142: Mixed predicate (time + non-time): onlyTimePredicates=false, startTimeNs=1640995200000000000, stopTimeNs=0
=== RUN   TestFastPathPredicateValidation/Non-time_predicate_only
    fast_path_predicate_validation_test.go:142: Non-time predicate only: onlyTimePredicates=false, startTimeNs=0, stopTimeNs=0
=== RUN   TestFastPathPredicateValidation/Multiple_non-time_predicates
    fast_path_predicate_validation_test.go:142: Multiple non-time predicates: onlyTimePredicates=false, startTimeNs=0, stopTimeNs=0
=== RUN   TestFastPathPredicateValidation/OR_with_time_predicate_(unsafe)
    fast_path_predicate_validation_test.go:142: OR with time predicate (unsafe): onlyTimePredicates=false, startTimeNs=0, stopTimeNs=0
=== RUN   TestFastPathPredicateValidation/OR_with_only_time_predicates_(still_unsafe)
    fast_path_predicate_validation_test.go:142: OR with only time predicates (still unsafe): onlyTimePredicates=false, startTimeNs=0, stopTimeNs=0
=== RUN   TestFastPathPredicateValidation/String_column_comparison
    fast_path_predicate_validation_test.go:142: String column comparison: onlyTimePredicates=false, startTimeNs=0, stopTimeNs=0
=== RUN   TestFastPathPredicateValidation/Numeric_column_comparison
    fast_path_predicate_validation_test.go:142: Numeric column comparison: onlyTimePredicates=false, startTimeNs=0, stopTimeNs=0
=== RUN   TestFastPathPredicateValidation/Internal_timestamp_column
    fast_path_predicate_validation_test.go:142: Internal timestamp column: onlyTimePredicates=true, startTimeNs=1640995200000000000, stopTimeNs=0
--- PASS: TestFastPathPredicateValidation (0.00s)
    --- PASS: TestFastPathPredicateValidation/No_WHERE_clause (0.00s)
    --- PASS: TestFastPathPredicateValidation/Time-only_predicate_(greater_than) (0.00s)
    --- PASS: TestFastPathPredicateValidation/Time-only_predicate_(less_than) (0.00s)
    --- PASS: TestFastPathPredicateValidation/Time-only_predicate_(range_with_AND) (0.00s)
    --- PASS: TestFastPathPredicateValidation/Mixed_predicate_(time_+_non-time) (0.00s)
    --- PASS: TestFastPathPredicateValidation/Non-time_predicate_only (0.00s)
    --- PASS: TestFastPathPredicateValidation/Multiple_non-time_predicates (0.00s)
    --- PASS: TestFastPathPredicateValidation/OR_with_time_predicate_(unsafe) (0.00s)
    --- PASS: TestFastPathPredicateValidation/OR_with_only_time_predicates_(still_unsafe) (0.00s)
    --- PASS: TestFastPathPredicateValidation/String_column_comparison (0.00s)
    --- PASS: TestFastPathPredicateValidation/Numeric_column_comparison (0.00s)
    --- PASS: TestFastPathPredicateValidation/Internal_timestamp_column (0.00s)
=== RUN   TestFastPathAggregationSafety
=== RUN   TestFastPathAggregationSafety/No_WHERE_-_should_use_fast_path
    fast_path_predicate_validation_test.go:215: No WHERE - should use fast path: canAttemptFastPath=true (onlyTimePredicates=true, startTimeNs=0, stopTimeNs=0)
=== RUN   TestFastPathAggregationSafety/Time-only_WHERE_-_should_use_fast_path
    fast_path_predicate_validation_test.go:215: Time-only WHERE - should use fast path: canAttemptFastPath=true (onlyTimePredicates=true, startTimeNs=1640995200000000000, stopTimeNs=0)
=== RUN   TestFastPathAggregationSafety/Mixed_WHERE_-_should_NOT_use_fast_path
    fast_path_predicate_validation_test.go:215: Mixed WHERE - should NOT use fast path: canAttemptFastPath=false (onlyTimePredicates=false, startTimeNs=1640995200000000000, stopTimeNs=0)
=== RUN   TestFastPathAggregationSafety/Non-time_WHERE_-_should_NOT_use_fast_path
    fast_path_predicate_validation_test.go:215: Non-time WHERE - should NOT use fast path: canAttemptFastPath=false (onlyTimePredicates=false, startTimeNs=0, stopTimeNs=0)
=== RUN   TestFastPathAggregationSafety/OR_expression_-_should_NOT_use_fast_path
    fast_path_predicate_validation_test.go:215: OR expression - should NOT use fast path: canAttemptFastPath=false (onlyTimePredicates=false, startTimeNs=0, stopTimeNs=0)
--- PASS: TestFastPathAggregationSafety (0.00s)
    --- PASS: TestFastPathAggregationSafety/No_WHERE_-_should_use_fast_path (0.00s)
    --- PASS: TestFastPathAggregationSafety/Time-only_WHERE_-_should_use_fast_path (0.00s)
    --- PASS: TestFastPathAggregationSafety/Mixed_WHERE_-_should_NOT_use_fast_path (0.00s)
    --- PASS: TestFastPathAggregationSafety/Non-time_WHERE_-_should_NOT_use_fast_path (0.00s)
    --- PASS: TestFastPathAggregationSafety/OR_expression_-_should_NOT_use_fast_path (0.00s)
=== RUN   TestTimestampColumnDetection
=== RUN   TestTimestampColumnDetection/_ts
    fast_path_predicate_validation_test.go:269: Column '_ts': isTimestamp=true
=== RUN   TestTimestampColumnDetection/_ts_ns
    fast_path_predicate_validation_test.go:269: Column '_ts_ns': isTimestamp=true
=== RUN   TestTimestampColumnDetection/user_id
    fast_path_predicate_validation_test.go:269: Column 'user_id': isTimestamp=false
=== RUN   TestTimestampColumnDetection/id
    fast_path_predicate_validation_test.go:269: Column 'id': isTimestamp=false
=== RUN   TestTimestampColumnDetection/status
    fast_path_predicate_validation_test.go:269: Column 'status': isTimestamp=false
=== RUN   TestTimestampColumnDetection/event_type
    fast_path_predicate_validation_test.go:269: Column 'event_type': isTimestamp=false
--- PASS: TestTimestampColumnDetection (0.00s)
    --- PASS: TestTimestampColumnDetection/_ts (0.00s)
    --- PASS: TestTimestampColumnDetection/_ts_ns (0.00s)
    --- PASS: TestTimestampColumnDetection/user_id (0.00s)
    --- PASS: TestTimestampColumnDetection/id (0.00s)
    --- PASS: TestTimestampColumnDetection/status (0.00s)
    --- PASS: TestTimestampColumnDetection/event_type (0.00s)
=== RUN   TestSQLEngine_HybridSelectBasic
    hybrid_test.go:67: Found live_log data source from unflushed messages
--- PASS: TestSQLEngine_HybridSelectBasic (0.00s)
=== RUN   TestSQLEngine_HybridSelectWithLimit
--- PASS: TestSQLEngine_HybridSelectWithLimit (0.00s)
=== RUN   TestSQLEngine_HybridSelectDifferentTables
    hybrid_test.go:129: Table user_events: 1 columns, 10 rows with hybrid data sources
    hybrid_test.go:129: Table system_logs: 1 columns, 4 rows with hybrid data sources
--- PASS: TestSQLEngine_HybridSelectDifferentTables (0.00s)
=== RUN   TestSQLEngine_HybridDataSource
    hybrid_test.go:178: Found live event: live_login from live_log
    hybrid_test.go:178: Found live event: live_action from live_log
    hybrid_test.go:183: Found archived event: archived_login from parquet_archive
    hybrid_test.go:183: Found archived event: archived_logout from parquet_archive
--- PASS: TestSQLEngine_HybridDataSource (0.00s)
=== RUN   TestSQLEngine_HybridSystemLogs
    hybrid_test.go:240: Live system log: level=INFO
    hybrid_test.go:240: Live system log: level=WARN
    hybrid_test.go:248: Archived system log: level=ERROR
    hybrid_test.go:248: Archived system log: level=INFO
--- PASS: TestSQLEngine_HybridSystemLogs (0.00s)
=== RUN   TestSQLEngine_HybridSelectWithTimeImplications
    hybrid_test.go:304: Hybrid query results: 4 live messages, 6 archived messages
--- PASS: TestSQLEngine_HybridSelectWithTimeImplications (0.00s)
=== RUN   TestMockBrokerClient_BasicFunctionality
--- PASS: TestMockBrokerClient_BasicFunctionality (0.00s)
=== RUN   TestMockBrokerClient_FailureScenarios
--- PASS: TestMockBrokerClient_FailureScenarios (0.00s)
=== RUN   TestMockBrokerClient_TopicManagement
--- PASS: TestMockBrokerClient_TopicManagement (0.00s)
=== RUN   TestSQLEngineWithMockBrokerClient_ErrorHandling
    mock_test.go:147: ExecuteSQL returned error (acceptable): topic default.nonexistent_topic not found or no schema available: mock broker failure: mock broker unavailable
--- PASS: TestSQLEngineWithMockBrokerClient_ErrorHandling (0.00s)
=== RUN   TestNoSchemaError
--- PASS: TestNoSchemaError (0.00s)
=== RUN   TestParseSQL_OFFSET_EdgeCases
=== RUN   TestParseSQL_OFFSET_EdgeCases/Valid_LIMIT_OFFSET_with_WHERE
=== RUN   TestParseSQL_OFFSET_EdgeCases/LIMIT_OFFSET_with_mixed_case
=== RUN   TestParseSQL_OFFSET_EdgeCases/LIMIT_OFFSET_with_extra_spaces
--- PASS: TestParseSQL_OFFSET_EdgeCases (0.00s)
    --- PASS: TestParseSQL_OFFSET_EdgeCases/Valid_LIMIT_OFFSET_with_WHERE (0.00s)
    --- PASS: TestParseSQL_OFFSET_EdgeCases/LIMIT_OFFSET_with_mixed_case (0.00s)
    --- PASS: TestParseSQL_OFFSET_EdgeCases/LIMIT_OFFSET_with_extra_spaces (0.00s)
=== RUN   TestSQLEngine_OFFSET_EdgeCases
=== RUN   TestSQLEngine_OFFSET_EdgeCases/OFFSET_larger_than_result_set
=== RUN   TestSQLEngine_OFFSET_EdgeCases/OFFSET_with_LIMIT_0
=== RUN   TestSQLEngine_OFFSET_EdgeCases/High_OFFSET_with_small_LIMIT
--- PASS: TestSQLEngine_OFFSET_EdgeCases (0.00s)
    --- PASS: TestSQLEngine_OFFSET_EdgeCases/OFFSET_larger_than_result_set (0.00s)
    --- PASS: TestSQLEngine_OFFSET_EdgeCases/OFFSET_with_LIMIT_0 (0.00s)
    --- PASS: TestSQLEngine_OFFSET_EdgeCases/High_OFFSET_with_small_LIMIT (0.00s)
=== RUN   TestSQLEngine_OFFSET_ErrorCases
=== RUN   TestSQLEngine_OFFSET_ErrorCases/Negative_OFFSET_value
    offset_test.go:149: Parser accepts negative OFFSET, execution should validate
=== RUN   TestSQLEngine_OFFSET_ErrorCases/Very_large_OFFSET_value
--- PASS: TestSQLEngine_OFFSET_ErrorCases (0.00s)
    --- PASS: TestSQLEngine_OFFSET_ErrorCases/Negative_OFFSET_value (0.00s)
    --- PASS: TestSQLEngine_OFFSET_ErrorCases/Very_large_OFFSET_value (0.00s)
=== RUN   TestSQLEngine_OFFSET_Consistency
=== RUN   TestSQLEngine_OFFSET_Consistency/OFFSET_0
=== RUN   TestSQLEngine_OFFSET_Consistency/OFFSET_1
=== RUN   TestSQLEngine_OFFSET_Consistency/OFFSET_2
=== RUN   TestSQLEngine_OFFSET_Consistency/OFFSET_3
=== RUN   TestSQLEngine_OFFSET_Consistency/OFFSET_4
=== RUN   TestSQLEngine_OFFSET_Consistency/OFFSET_5
=== RUN   TestSQLEngine_OFFSET_Consistency/OFFSET_6
=== RUN   TestSQLEngine_OFFSET_Consistency/OFFSET_7
=== RUN   TestSQLEngine_OFFSET_Consistency/OFFSET_8
=== RUN   TestSQLEngine_OFFSET_Consistency/OFFSET_9
--- PASS: TestSQLEngine_OFFSET_Consistency (0.00s)
    --- PASS: TestSQLEngine_OFFSET_Consistency/OFFSET_0 (0.00s)
    --- PASS: TestSQLEngine_OFFSET_Consistency/OFFSET_1 (0.00s)
    --- PASS: TestSQLEngine_OFFSET_Consistency/OFFSET_2 (0.00s)
    --- PASS: TestSQLEngine_OFFSET_Consistency/OFFSET_3 (0.00s)
    --- PASS: TestSQLEngine_OFFSET_Consistency/OFFSET_4 (0.00s)
    --- PASS: TestSQLEngine_OFFSET_Consistency/OFFSET_5 (0.00s)
    --- PASS: TestSQLEngine_OFFSET_Consistency/OFFSET_6 (0.00s)
    --- PASS: TestSQLEngine_OFFSET_Consistency/OFFSET_7 (0.00s)
    --- PASS: TestSQLEngine_OFFSET_Consistency/OFFSET_8 (0.00s)
    --- PASS: TestSQLEngine_OFFSET_Consistency/OFFSET_9 (0.00s)
=== RUN   TestSQLEngine_LIMIT_OFFSET_BugFix
=== RUN   TestSQLEngine_LIMIT_OFFSET_BugFix/LIMIT_10_OFFSET_5_returns_correct_count
    offset_test.go:240: LIMIT 10 OFFSET 5 returned 5 rows (within limit)
=== RUN   TestSQLEngine_LIMIT_OFFSET_BugFix/LIMIT_5_OFFSET_0
    offset_test.go:287: LIMIT 5 OFFSET 0: returned 5 rows (within limit 5)
=== RUN   TestSQLEngine_LIMIT_OFFSET_BugFix/LIMIT_5_OFFSET_2
    offset_test.go:287: LIMIT 5 OFFSET 2: returned 5 rows (within limit 5)
=== RUN   TestSQLEngine_LIMIT_OFFSET_BugFix/LIMIT_8_OFFSET_3
    offset_test.go:287: LIMIT 8 OFFSET 3: returned 7 rows (within limit 8)
=== RUN   TestSQLEngine_LIMIT_OFFSET_BugFix/LIMIT_15_OFFSET_1
    offset_test.go:287: LIMIT 15 OFFSET 1: returned 9 rows (within limit 15)
=== RUN   TestSQLEngine_LIMIT_OFFSET_BugFix/LIMIT_3_OFFSET_7
    offset_test.go:287: LIMIT 3 OFFSET 7: returned 3 rows (within limit 3)
=== RUN   TestSQLEngine_LIMIT_OFFSET_BugFix/LIMIT_12_OFFSET_4
    offset_test.go:287: LIMIT 12 OFFSET 4: returned 6 rows (within limit 12)
--- PASS: TestSQLEngine_LIMIT_OFFSET_BugFix (0.00s)
    --- PASS: TestSQLEngine_LIMIT_OFFSET_BugFix/LIMIT_10_OFFSET_5_returns_correct_count (0.00s)
    --- PASS: TestSQLEngine_LIMIT_OFFSET_BugFix/LIMIT_5_OFFSET_0 (0.00s)
    --- PASS: TestSQLEngine_LIMIT_OFFSET_BugFix/LIMIT_5_OFFSET_2 (0.00s)
    --- PASS: TestSQLEngine_LIMIT_OFFSET_BugFix/LIMIT_8_OFFSET_3 (0.00s)
    --- PASS: TestSQLEngine_LIMIT_OFFSET_BugFix/LIMIT_15_OFFSET_1 (0.00s)
    --- PASS: TestSQLEngine_LIMIT_OFFSET_BugFix/LIMIT_3_OFFSET_7 (0.00s)
    --- PASS: TestSQLEngine_LIMIT_OFFSET_BugFix/LIMIT_12_OFFSET_4 (0.00s)
=== RUN   TestSQLEngine_OFFSET_DataCollectionBuffer
=== RUN   TestSQLEngine_OFFSET_DataCollectionBuffer/Large_OFFSET_with_small_LIMIT
=== RUN   TestSQLEngine_OFFSET_DataCollectionBuffer/Medium_OFFSET_with_medium_LIMIT
=== RUN   TestSQLEngine_OFFSET_DataCollectionBuffer/Progressive_OFFSET_test
    offset_test.go:351: OFFSET 0: returned 3 rows
    offset_test.go:351: OFFSET 1: returned 3 rows
    offset_test.go:351: OFFSET 2: returned 3 rows
    offset_test.go:351: OFFSET 3: returned 3 rows
    offset_test.go:351: OFFSET 4: returned 3 rows
    offset_test.go:351: OFFSET 5: returned 3 rows
--- PASS: TestSQLEngine_OFFSET_DataCollectionBuffer (0.00s)
    --- PASS: TestSQLEngine_OFFSET_DataCollectionBuffer/Large_OFFSET_with_small_LIMIT (0.00s)
    --- PASS: TestSQLEngine_OFFSET_DataCollectionBuffer/Medium_OFFSET_with_medium_LIMIT (0.00s)
    --- PASS: TestSQLEngine_OFFSET_DataCollectionBuffer/Progressive_OFFSET_test (0.00s)
=== RUN   TestSQLEngine_LIMIT_OFFSET_ArithmeticExpressions
=== RUN   TestSQLEngine_LIMIT_OFFSET_ArithmeticExpressions/Arithmetic_expressions_with_LIMIT_OFFSET
    offset_test.go:391: LIMIT 10: returned 10 rows
    offset_test.go:392: LIMIT 10 OFFSET 5: returned 5 rows
    offset_test.go:399: Insufficient data (10 rows) to fully test LIMIT 10 OFFSET 5 scenario
    offset_test.go:409: Row 0: id=417224, user_id=7810, id+user_id=425034
    offset_test.go:409: Row 1: id=424297, user_id=8897, id+user_id=433194
    offset_test.go:409: Row 2: id=431189, user_id=3400, id+user_id=434589
    offset_test.go:409: Row 3: id=413249, user_id=5175, id+user_id=418424
    offset_test.go:409: Row 4: id=120612, user_id=5429, id+user_id=126041
=== RUN   TestSQLEngine_LIMIT_OFFSET_ArithmeticExpressions/Multiplication_expressions
    offset_test.go:441: Row 0: id=82460, id*2=164920 ✓
    offset_test.go:441: Row 1: id=841256, id*2=1682512 ✓
    offset_test.go:441: Row 2: id=55537, id*2=111074 ✓
--- PASS: TestSQLEngine_LIMIT_OFFSET_ArithmeticExpressions (0.00s)
    --- PASS: TestSQLEngine_LIMIT_OFFSET_ArithmeticExpressions/Arithmetic_expressions_with_LIMIT_OFFSET (0.00s)
    --- PASS: TestSQLEngine_LIMIT_OFFSET_ArithmeticExpressions/Multiplication_expressions (0.00s)
=== RUN   TestSQLEngine_OFFSET_WithAggregation
=== RUN   TestSQLEngine_OFFSET_WithAggregation/COUNT_with_OFFSET
=== RUN   TestSQLEngine_OFFSET_WithAggregation/COUNT_with_OFFSET_1
--- PASS: TestSQLEngine_OFFSET_WithAggregation (0.00s)
    --- PASS: TestSQLEngine_OFFSET_WithAggregation/COUNT_with_OFFSET (0.00s)
    --- PASS: TestSQLEngine_OFFSET_WithAggregation/COUNT_with_OFFSET_1 (0.00s)
=== RUN   TestBasicParsing
=== RUN   TestBasicParsing/Query_1
    parsing_debug_test.go:20: Testing SQL: SELECT * FROM user_events
    parsing_debug_test.go:28: Parsed statement type: *engine.SelectStatement
    parsing_debug_test.go:31: SelectStatement details:
    parsing_debug_test.go:32:   SelectExprs count: 1
    parsing_debug_test.go:33:   From count: 1
    parsing_debug_test.go:34:   WHERE clause exists: false
    parsing_debug_test.go:39:   WHERE clause is NIL - this is the bug!
=== RUN   TestBasicParsing/Query_2
    parsing_debug_test.go:20: Testing SQL: SELECT id FROM user_events
    parsing_debug_test.go:28: Parsed statement type: *engine.SelectStatement
    parsing_debug_test.go:31: SelectStatement details:
    parsing_debug_test.go:32:   SelectExprs count: 1
    parsing_debug_test.go:33:   From count: 1
    parsing_debug_test.go:34:   WHERE clause exists: false
    parsing_debug_test.go:39:   WHERE clause is NIL - this is the bug!
=== RUN   TestBasicParsing/Query_3
    parsing_debug_test.go:20: Testing SQL: SELECT id FROM user_events WHERE id = 123
    parsing_debug_test.go:28: Parsed statement type: *engine.SelectStatement
    parsing_debug_test.go:31: SelectStatement details:
    parsing_debug_test.go:32:   SelectExprs count: 1
    parsing_debug_test.go:33:   From count: 1
    parsing_debug_test.go:34:   WHERE clause exists: true
    parsing_debug_test.go:37:   WHERE expression type: *engine.ComparisonExpr
=== RUN   TestBasicParsing/Query_4
    parsing_debug_test.go:20: Testing SQL: SELECT id FROM user_events WHERE id > 123
    parsing_debug_test.go:28: Parsed statement type: *engine.SelectStatement
    parsing_debug_test.go:31: SelectStatement details:
    parsing_debug_test.go:32:   SelectExprs count: 1
    parsing_debug_test.go:33:   From count: 1
    parsing_debug_test.go:34:   WHERE clause exists: true
    parsing_debug_test.go:37:   WHERE expression type: *engine.ComparisonExpr
=== RUN   TestBasicParsing/Query_5
    parsing_debug_test.go:20: Testing SQL: SELECT id FROM user_events WHERE status = 'active'
    parsing_debug_test.go:28: Parsed statement type: *engine.SelectStatement
    parsing_debug_test.go:31: SelectStatement details:
    parsing_debug_test.go:32:   SelectExprs count: 1
    parsing_debug_test.go:33:   From count: 1
    parsing_debug_test.go:34:   WHERE clause exists: true
    parsing_debug_test.go:37:   WHERE expression type: *engine.ComparisonExpr
--- PASS: TestBasicParsing (0.00s)
    --- PASS: TestBasicParsing/Query_1 (0.00s)
    --- PASS: TestBasicParsing/Query_2 (0.00s)
    --- PASS: TestBasicParsing/Query_3 (0.00s)
    --- PASS: TestBasicParsing/Query_4 (0.00s)
    --- PASS: TestBasicParsing/Query_5 (0.00s)
=== RUN   TestCockroachParserDirectly
    parsing_debug_test.go:53: Testing CockroachDB parser directly with: SELECT id FROM user_events WHERE id > 123
    parsing_debug_test.go:61: Our ParseSQL returned: *engine.SelectStatement
    parsing_debug_test.go:68: Our ParseSQL extracted WHERE clause: *engine.ComparisonExpr
--- PASS: TestCockroachParserDirectly (0.00s)
=== RUN   TestParseMethodComparison
    parsing_debug_test.go:77: Comparing parsing methods for: SELECT id FROM user_events WHERE id > 123
    parsing_debug_test.go:81: Global ParseSQL: *engine.SelectStatement, error: <nil>
    parsing_debug_test.go:84:   WHERE clause: true
    parsing_debug_test.go:92: ExecuteSQL error (helps identify parsing path): <nil>
--- PASS: TestParseMethodComparison (0.00s)
=== RUN   TestPartitionPathHandling
=== RUN   TestPartitionPathHandling/Mock_discoverTopicPartitions_returns_correct_paths
=== RUN   TestPartitionPathHandling/Mock_discoverTopicPartitions_handles_relative_paths
=== RUN   TestPartitionPathHandling/Partition_path_building_logic_works_correctly
=== RUN   TestPartitionPathHandling/Partition_path_building_logic_works_correctly/Absolute_path_-_use_as-is
=== RUN   TestPartitionPathHandling/Partition_path_building_logic_works_correctly/Relative_path_-_build_full_path
--- PASS: TestPartitionPathHandling (0.00s)
    --- PASS: TestPartitionPathHandling/Mock_discoverTopicPartitions_returns_correct_paths (0.00s)
    --- PASS: TestPartitionPathHandling/Mock_discoverTopicPartitions_handles_relative_paths (0.00s)
    --- PASS: TestPartitionPathHandling/Partition_path_building_logic_works_correctly (0.00s)
        --- PASS: TestPartitionPathHandling/Partition_path_building_logic_works_correctly/Absolute_path_-_use_as-is (0.00s)
        --- PASS: TestPartitionPathHandling/Partition_path_building_logic_works_correctly/Relative_path_-_build_full_path (0.00s)
=== RUN   TestPartitionPathLogic
=== RUN   TestPartitionPathLogic/Building_partition_paths_from_discovered_partitions
--- PASS: TestPartitionPathLogic (0.00s)
    --- PASS: TestPartitionPathLogic/Building_partition_paths_from_discovered_partitions (0.00s)
=== RUN   TestPostgreSQLOnlySupport
=== RUN   TestPostgreSQLOnlySupport/MySQL_Backticks_Table
    postgresql_only_test.go:89: CORRECTLY REJECTED: MySQL backticks for table names should be rejected
=== RUN   TestPostgreSQLOnlySupport/MySQL_Backticks_Column
    postgresql_only_test.go:89: CORRECTLY REJECTED: MySQL backticks for column names should be rejected
=== RUN   TestPostgreSQLOnlySupport/PostgreSQL_Double_Quotes_OK
    postgresql_only_test.go:103: CORRECTLY ACCEPTED: PostgreSQL double quotes for identifiers should work
=== RUN   TestPostgreSQLOnlySupport/PostgreSQL_EXTRACT_OK
    postgresql_only_test.go:103: CORRECTLY ACCEPTED: PostgreSQL EXTRACT function should work
=== RUN   TestPostgreSQLOnlySupport/Single_Quotes_String_Literal_OK
    postgresql_only_test.go:103: CORRECTLY ACCEPTED: Single quotes for string literals should work
=== NAME  TestPostgreSQLOnlySupport
    postgresql_only_test.go:109: PostgreSQL-only compliance: 5/5 tests passed
--- PASS: TestPostgreSQLOnlySupport (0.00s)
    --- PASS: TestPostgreSQLOnlySupport/MySQL_Backticks_Table (0.00s)
    --- PASS: TestPostgreSQLOnlySupport/MySQL_Backticks_Column (0.00s)
    --- PASS: TestPostgreSQLOnlySupport/PostgreSQL_Double_Quotes_OK (0.00s)
    --- PASS: TestPostgreSQLOnlySupport/PostgreSQL_EXTRACT_OK (0.00s)
    --- PASS: TestPostgreSQLOnlySupport/Single_Quotes_String_Literal_OK (0.00s)
=== RUN   TestParseSQL_COUNT_Functions
=== RUN   TestParseSQL_COUNT_Functions/COUNT(*)_basic
=== RUN   TestParseSQL_COUNT_Functions/COUNT(column_name)
=== RUN   TestParseSQL_COUNT_Functions/Multiple_aggregate_functions
--- PASS: TestParseSQL_COUNT_Functions (0.00s)
    --- PASS: TestParseSQL_COUNT_Functions/COUNT(*)_basic (0.00s)
    --- PASS: TestParseSQL_COUNT_Functions/COUNT(column_name) (0.00s)
    --- PASS: TestParseSQL_COUNT_Functions/Multiple_aggregate_functions (0.00s)
=== RUN   TestParseSQL_SELECT_Expressions
=== RUN   TestParseSQL_SELECT_Expressions/SELECT_*_FROM_table
=== RUN   TestParseSQL_SELECT_Expressions/SELECT_column_FROM_table
=== RUN   TestParseSQL_SELECT_Expressions/SELECT_multiple_columns
--- PASS: TestParseSQL_SELECT_Expressions (0.00s)
    --- PASS: TestParseSQL_SELECT_Expressions/SELECT_*_FROM_table (0.00s)
    --- PASS: TestParseSQL_SELECT_Expressions/SELECT_column_FROM_table (0.00s)
    --- PASS: TestParseSQL_SELECT_Expressions/SELECT_multiple_columns (0.00s)
=== RUN   TestParseSQL_WHERE_Clauses
=== RUN   TestParseSQL_WHERE_Clauses/WHERE_with_simple_comparison
=== RUN   TestParseSQL_WHERE_Clauses/WHERE_with_AND_condition
=== RUN   TestParseSQL_WHERE_Clauses/WHERE_with_OR_condition
--- PASS: TestParseSQL_WHERE_Clauses (0.00s)
    --- PASS: TestParseSQL_WHERE_Clauses/WHERE_with_simple_comparison (0.00s)
    --- PASS: TestParseSQL_WHERE_Clauses/WHERE_with_AND_condition (0.00s)
    --- PASS: TestParseSQL_WHERE_Clauses/WHERE_with_OR_condition (0.00s)
=== RUN   TestParseSQL_LIMIT_Clauses
=== RUN   TestParseSQL_LIMIT_Clauses/LIMIT_with_number
=== RUN   TestParseSQL_LIMIT_Clauses/LIMIT_with_OFFSET
=== RUN   TestParseSQL_LIMIT_Clauses/LIMIT_with_OFFSET_zero
=== RUN   TestParseSQL_LIMIT_Clauses/LIMIT_with_large_OFFSET
--- PASS: TestParseSQL_LIMIT_Clauses (0.00s)
    --- PASS: TestParseSQL_LIMIT_Clauses/LIMIT_with_number (0.00s)
    --- PASS: TestParseSQL_LIMIT_Clauses/LIMIT_with_OFFSET (0.00s)
    --- PASS: TestParseSQL_LIMIT_Clauses/LIMIT_with_OFFSET_zero (0.00s)
    --- PASS: TestParseSQL_LIMIT_Clauses/LIMIT_with_large_OFFSET (0.00s)
=== RUN   TestParseSQL_SHOW_Statements
=== RUN   TestParseSQL_SHOW_Statements/SHOW_DATABASES
=== RUN   TestParseSQL_SHOW_Statements/SHOW_TABLES
=== RUN   TestParseSQL_SHOW_Statements/SHOW_TABLES_FROM_database
--- PASS: TestParseSQL_SHOW_Statements (0.00s)
    --- PASS: TestParseSQL_SHOW_Statements/SHOW_DATABASES (0.00s)
    --- PASS: TestParseSQL_SHOW_Statements/SHOW_TABLES (0.00s)
    --- PASS: TestParseSQL_SHOW_Statements/SHOW_TABLES_FROM_database (0.00s)
=== RUN   TestRealNamespaceDiscovery
    real_namespace_test.go:24: Discovered 0 namespaces (no fallback data):
    real_namespace_test.go:26:   (No namespaces found - requires real SeaweedFS MQ cluster)
--- PASS: TestRealNamespaceDiscovery (0.00s)
=== RUN   TestRealTopicDiscovery
    real_namespace_test.go:53: Discovered 0 topics in 'default' namespace (no fallback data):
    real_namespace_test.go:55:   (No topics found - requires real SeaweedFS MQ cluster with 'default' namespace)
--- PASS: TestRealTopicDiscovery (0.00s)
=== RUN   TestNamespaceDiscoveryNoFallback
    real_namespace_test.go:79: ListNamespaces failed as expected: failed to get filer client: failed to discover filer: failed to list filers from master: rpc error: code = Unavailable desc = connection error: desc = "transport: Error while dialing: dial tcp [::1]:18888: connect: connection refused"
    real_namespace_test.go:99: No fallback behavior - returns empty lists when filer unavailable
--- PASS: TestNamespaceDiscoveryNoFallback (0.00s)
=== RUN   TestRealWorldWhereClauseFailure
    real_world_where_clause_test.go:44: TESTING REAL-WORLD WHERE CLAUSE SCENARIOS
    real_world_where_clause_test.go:45: ============================================
=== RUN   TestRealWorldWhereClauseFailure/Where_ID_Greater_Than_Large_Number
    real_world_where_clause_test.go:65: Query: SELECT id FROM user_events WHERE id > 10000000
    real_world_where_clause_test.go:66: Total rows returned: 0
    real_world_where_clause_test.go:131: No rows returned - this could be correct if no data matches
=== RUN   TestRealWorldWhereClauseFailure/Where_ID_Greater_Than_Small_Number
    real_world_where_clause_test.go:65: Query: SELECT id FROM user_events WHERE id > 100000
    real_world_where_clause_test.go:66: Total rows returned: 7
    real_world_where_clause_test.go:69: Sample IDs returned:
    real_world_where_clause_test.go:78:   Row 1: id = 841256
    real_world_where_clause_test.go:78:   Row 2: id = 686003
    real_world_where_clause_test.go:78:   Row 3: id = 417224
    real_world_where_clause_test.go:78:   Row 4: id = 424297
    real_world_where_clause_test.go:78:   Row 5: id = 431189
    real_world_where_clause_test.go:120: Analysis:
    real_world_where_clause_test.go:121:   Rows matching WHERE condition: 7
    real_world_where_clause_test.go:122:   Rows NOT matching WHERE condition: 0
    real_world_where_clause_test.go:128: PASS: WHERE id > 100000 should filter results - All returned rows match the WHERE condition
=== RUN   TestRealWorldWhereClauseFailure/Where_ID_Less_Than
    real_world_where_clause_test.go:65: Query: SELECT id FROM user_events WHERE id < 100000
    real_world_where_clause_test.go:66: Total rows returned: 3
    real_world_where_clause_test.go:69: Sample IDs returned:
    real_world_where_clause_test.go:78:   Row 1: id = 82460
    real_world_where_clause_test.go:78:   Row 2: id = 55537
    real_world_where_clause_test.go:78:   Row 3: id = 65143
    real_world_where_clause_test.go:120: Analysis:
    real_world_where_clause_test.go:121:   Rows matching WHERE condition: 3
    real_world_where_clause_test.go:122:   Rows NOT matching WHERE condition: 0
    real_world_where_clause_test.go:128: PASS: WHERE id < 100000 should filter results - All returned rows match the WHERE condition
--- PASS: TestRealWorldWhereClauseFailure (0.00s)
    --- PASS: TestRealWorldWhereClauseFailure/Where_ID_Greater_Than_Large_Number (0.00s)
    --- PASS: TestRealWorldWhereClauseFailure/Where_ID_Greater_Than_Small_Number (0.00s)
    --- PASS: TestRealWorldWhereClauseFailure/Where_ID_Less_Than (0.00s)
=== RUN   TestWhereClauseWithLimitOffset
    real_world_where_clause_test.go:144: Testing exact failing query: SELECT id FROM user_events WHERE id > 10000000 LIMIT 10 OFFSET 5
    real_world_where_clause_test.go:159: Returned 0 rows (LIMIT 10 worked)
    real_world_where_clause_test.go:181: WHERE clause working correctly
--- PASS: TestWhereClauseWithLimitOffset (0.00s)
=== RUN   TestWhatShouldHaveBeenTested
    real_world_where_clause_test.go:189: THE TEST THAT SHOULD HAVE CAUGHT THE WHERE CLAUSE ISSUE
    real_world_where_clause_test.go:190: ========================================================
    real_world_where_clause_test.go:199: All rows: 10
    real_world_where_clause_test.go:200: WHERE id > 999999999: 0 rows
    real_world_where_clause_test.go:213: WHERE 1 = 0 (impossible): 0 rows
--- PASS: TestWhatShouldHaveBeenTested (0.00s)
=== RUN   TestSchemaAwareParsing
=== RUN   TestSchemaAwareParsing/JSON_Message_Parsing
    schema_parsing_test.go:74: JSON parsing correctly converted types: int32=1234, string='login', double=75.5, bool=true
=== RUN   TestSchemaAwareParsing/Raw_Data_Type_Conversion
    schema_parsing_test.go:118: Raw data type conversions working correctly
=== RUN   TestSchemaAwareParsing/Invalid_JSON_Graceful_Handling
    schema_parsing_test.go:129: Invalid JSON handled gracefully with error
--- PASS: TestSchemaAwareParsing (0.00s)
    --- PASS: TestSchemaAwareParsing/JSON_Message_Parsing (0.00s)
    --- PASS: TestSchemaAwareParsing/Raw_Data_Type_Conversion (0.00s)
    --- PASS: TestSchemaAwareParsing/Invalid_JSON_Graceful_Handling (0.00s)
=== RUN   TestSchemaAwareParsingIntegration
    schema_parsing_test.go:160: Schema-aware parsing integrates correctly with SQL engine
--- PASS: TestSchemaAwareParsingIntegration (0.00s)
=== RUN   TestSQLEngine_SelectBasic
--- PASS: TestSQLEngine_SelectBasic (0.00s)
=== RUN   TestSQLEngine_SelectWithLimit
--- PASS: TestSQLEngine_SelectWithLimit (0.00s)
=== RUN   TestSQLEngine_SelectSpecificColumns
--- PASS: TestSQLEngine_SelectSpecificColumns (0.00s)
=== RUN   TestSQLEngine_SelectFromNonExistentTable
    select_test.go:83: Skipping non-existent table test - table name parsing issue needs investigation
--- SKIP: TestSQLEngine_SelectFromNonExistentTable (0.00s)
=== RUN   TestSQLEngine_SelectWithOffset
--- PASS: TestSQLEngine_SelectWithOffset (0.00s)
=== RUN   TestSQLEngine_SelectWithLimitAndOffset
--- PASS: TestSQLEngine_SelectWithLimitAndOffset (0.00s)
=== RUN   TestSQLEngine_SelectWithOffsetExceedsRows
--- PASS: TestSQLEngine_SelectWithOffsetExceedsRows (0.00s)
=== RUN   TestSQLEngine_SelectWithOffsetZero
--- PASS: TestSQLEngine_SelectWithOffsetZero (0.00s)
=== RUN   TestSQLEngine_SelectDifferentTables
    select_test.go:211: Table user_events: 4 columns, 10 rows
    select_test.go:211: Table system_logs: 3 columns, 4 rows
--- PASS: TestSQLEngine_SelectDifferentTables (0.00s)
=== RUN   TestSQLAliasResolution
=== RUN   TestSQLAliasResolution/ResolveColumnAlias
=== RUN   TestSQLAliasResolution/SingleAliasInWhere
=== RUN   TestSQLAliasResolution/MultipleAliasesInWhere
=== RUN   TestSQLAliasResolution/RangeQueryWithAliases
=== RUN   TestSQLAliasResolution/MixedAliasAndDirectColumn
=== RUN   TestSQLAliasResolution/AliasCompatibilityWithTimestampFixes
=== RUN   TestSQLAliasResolution/EdgeCasesAndErrorHandling
=== RUN   TestSQLAliasResolution/ComparisonOperators
=== RUN   TestSQLAliasResolution/ComparisonOperators/=_1000
=== RUN   TestSQLAliasResolution/ComparisonOperators/=_999
=== RUN   TestSQLAliasResolution/ComparisonOperators/>_999
=== RUN   TestSQLAliasResolution/ComparisonOperators/>_1000
=== RUN   TestSQLAliasResolution/ComparisonOperators/>=_1000
=== RUN   TestSQLAliasResolution/ComparisonOperators/>=_1001
=== RUN   TestSQLAliasResolution/ComparisonOperators/<_1001
=== RUN   TestSQLAliasResolution/ComparisonOperators/<_1000
=== RUN   TestSQLAliasResolution/ComparisonOperators/<=_1000
=== RUN   TestSQLAliasResolution/ComparisonOperators/<=_999
=== RUN   TestSQLAliasResolution/BackwardCompatibility
--- PASS: TestSQLAliasResolution (0.00s)
    --- PASS: TestSQLAliasResolution/ResolveColumnAlias (0.00s)
    --- PASS: TestSQLAliasResolution/SingleAliasInWhere (0.00s)
    --- PASS: TestSQLAliasResolution/MultipleAliasesInWhere (0.00s)
    --- PASS: TestSQLAliasResolution/RangeQueryWithAliases (0.00s)
    --- PASS: TestSQLAliasResolution/MixedAliasAndDirectColumn (0.00s)
    --- PASS: TestSQLAliasResolution/AliasCompatibilityWithTimestampFixes (0.00s)
    --- PASS: TestSQLAliasResolution/EdgeCasesAndErrorHandling (0.00s)
    --- PASS: TestSQLAliasResolution/ComparisonOperators (0.00s)
        --- PASS: TestSQLAliasResolution/ComparisonOperators/=_1000 (0.00s)
        --- PASS: TestSQLAliasResolution/ComparisonOperators/=_999 (0.00s)
        --- PASS: TestSQLAliasResolution/ComparisonOperators/>_999 (0.00s)
        --- PASS: TestSQLAliasResolution/ComparisonOperators/>_1000 (0.00s)
        --- PASS: TestSQLAliasResolution/ComparisonOperators/>=_1000 (0.00s)
        --- PASS: TestSQLAliasResolution/ComparisonOperators/>=_1001 (0.00s)
        --- PASS: TestSQLAliasResolution/ComparisonOperators/<_1001 (0.00s)
        --- PASS: TestSQLAliasResolution/ComparisonOperators/<_1000 (0.00s)
        --- PASS: TestSQLAliasResolution/ComparisonOperators/<=_1000 (0.00s)
        --- PASS: TestSQLAliasResolution/ComparisonOperators/<=_999 (0.00s)
    --- PASS: TestSQLAliasResolution/BackwardCompatibility (0.00s)
=== RUN   TestAliasIntegrationWithProductionScenarios
=== RUN   TestAliasIntegrationWithProductionScenarios/OriginalFailingQuery
=== RUN   TestAliasIntegrationWithProductionScenarios/ComplexProductionQuery
=== RUN   TestAliasIntegrationWithProductionScenarios/PerformanceRegression
--- PASS: TestAliasIntegrationWithProductionScenarios (0.00s)
    --- PASS: TestAliasIntegrationWithProductionScenarios/OriginalFailingQuery (0.00s)
    --- PASS: TestAliasIntegrationWithProductionScenarios/ComplexProductionQuery (0.00s)
    --- PASS: TestAliasIntegrationWithProductionScenarios/PerformanceRegression (0.00s)
=== RUN   TestSQLFeatureDiagnostic
    sql_feature_diagnostic_test.go:14: SEAWEEDFS SQL ENGINE FEATURE DIAGNOSTIC
    sql_feature_diagnostic_test.go:15: ================================================================================
    sql_feature_diagnostic_test.go:18: 
        1. TESTING LIMIT FUNCTIONALITY:
    sql_feature_diagnostic_test.go:35:    LIMIT 0: PASS - Got 0 rows
    sql_feature_diagnostic_test.go:35:    LIMIT 1: PASS - Got 1 rows
    sql_feature_diagnostic_test.go:35:    LIMIT 3: PASS - Got 3 rows
    sql_feature_diagnostic_test.go:35:    LIMIT 5: PASS - Got 5 rows
    sql_feature_diagnostic_test.go:35:    LIMIT 10: PASS - Got 10 rows
    sql_feature_diagnostic_test.go:35:    LIMIT 100: PASS - Got 10 rows
    sql_feature_diagnostic_test.go:43: 
        2. TESTING OFFSET FUNCTIONALITY:
    sql_feature_diagnostic_test.go:58:    OFFSET 0: PASS - Got 3 rows
    sql_feature_diagnostic_test.go:58:    OFFSET 1: PASS - Got 3 rows
    sql_feature_diagnostic_test.go:58:    OFFSET 2: PASS - Got 3 rows
    sql_feature_diagnostic_test.go:58:    OFFSET 5: PASS - Got 3 rows
    sql_feature_diagnostic_test.go:56:    OFFSET 10: PASS - Beyond data range, got 0 rows
    sql_feature_diagnostic_test.go:56:    OFFSET 100: PASS - Beyond data range, got 0 rows
    sql_feature_diagnostic_test.go:64: 
        3. TESTING WHERE CLAUSE FUNCTIONALITY:
    sql_feature_diagnostic_test.go:90:    Specific ID match: PASS - WHERE clause working, got 1 rows
    sql_feature_diagnostic_test.go:90:    Greater than comparison: PASS - WHERE clause working, got 7 rows
    sql_feature_diagnostic_test.go:90:    String equality: PASS - WHERE clause working, got 1 rows
    sql_feature_diagnostic_test.go:90:    Non-existent ID: PASS - WHERE clause working, got 0 rows
    sql_feature_diagnostic_test.go:90:    Always false condition: PASS - WHERE clause working, got 0 rows
    sql_feature_diagnostic_test.go:96: 
        4. TESTING COMBINED LIMIT + OFFSET + WHERE:
    sql_feature_diagnostic_test.go:106:    Combined query: Got 2 rows (LIMIT=2 part works, WHERE filtering unknown)
    sql_feature_diagnostic_test.go:110: 
        ================================================================================
    sql_feature_diagnostic_test.go:111: FEATURE SUMMARY:
    sql_feature_diagnostic_test.go:112:   LIMIT: FULLY WORKING - Correctly limits result rows
    sql_feature_diagnostic_test.go:113:   OFFSET: FULLY WORKING - Correctly skips rows
    sql_feature_diagnostic_test.go:114:   WHERE: FULLY WORKING - All comparison operators working
    sql_feature_diagnostic_test.go:115:   SELECT: WORKING - Supports *, columns, functions, arithmetic
    sql_feature_diagnostic_test.go:116:   Functions: WORKING - String and datetime functions work
    sql_feature_diagnostic_test.go:117:   Arithmetic: WORKING - +, -, *, / operations work
    sql_feature_diagnostic_test.go:118: ================================================================================
--- PASS: TestSQLFeatureDiagnostic (0.00s)
=== RUN   TestSQLWhereClauseIssue
    sql_feature_diagnostic_test.go:125: DEMONSTRATING WHERE CLAUSE ISSUE:
    sql_feature_diagnostic_test.go:130: Total rows in test data: 10
    sql_feature_diagnostic_test.go:134: First row ID: 82460
    sql_feature_diagnostic_test.go:144: WHERE id = 82460 returned 1 rows
    sql_feature_diagnostic_test.go:152: WHERE clause working correctly
    sql_feature_diagnostic_test.go:162: WHERE 1 = 0 returned 0 rows
    sql_feature_diagnostic_test.go:167: Impossible WHERE condition correctly returns no rows
--- PASS: TestSQLWhereClauseIssue (0.00s)
=== RUN   TestSQLFilteringLimitOffset
=== RUN   TestSQLFilteringLimitOffset/Where_Equals_Integer
    sql_filtering_limit_offset_test.go:295: PASS: WHERE with equals operator (integer) - Correct row count: 1
=== RUN   TestSQLFilteringLimitOffset/Where_Equals_String
    sql_filtering_limit_offset_test.go:298: PASS: WHERE with equals operator (string) - Row count: 1 (not validated)
=== RUN   TestSQLFilteringLimitOffset/Where_Not_Equals
    sql_filtering_limit_offset_test.go:298: PASS: WHERE with not equals operator - Row count: 2 (not validated)
=== RUN   TestSQLFilteringLimitOffset/Where_Greater_Than
    sql_filtering_limit_offset_test.go:298: PASS: WHERE with greater than operator - Row count: 7 (not validated)
=== RUN   TestSQLFilteringLimitOffset/Where_Less_Than
    sql_filtering_limit_offset_test.go:298: PASS: WHERE with less than operator - Row count: 3 (not validated)
=== RUN   TestSQLFilteringLimitOffset/Where_Greater_Equal
    sql_filtering_limit_offset_test.go:298: PASS: WHERE with greater than or equal operator - Row count: 8 (not validated)
=== RUN   TestSQLFilteringLimitOffset/Where_Less_Equal
    sql_filtering_limit_offset_test.go:298: PASS: WHERE with less than or equal operator - Row count: 3 (not validated)
=== RUN   TestSQLFilteringLimitOffset/Where_Column_Comparison
    sql_filtering_limit_offset_test.go:295: PASS: WHERE filtering with specific columns selected - Correct row count: 1
=== RUN   TestSQLFilteringLimitOffset/Where_With_Function
    sql_filtering_limit_offset_test.go:298: PASS: WHERE with function in SELECT - Row count: 1 (not validated)
=== RUN   TestSQLFilteringLimitOffset/Where_With_Arithmetic
    sql_filtering_limit_offset_test.go:295: PASS: WHERE with arithmetic in SELECT - Correct row count: 1
=== RUN   TestSQLFilteringLimitOffset/Limit_1
    sql_filtering_limit_offset_test.go:295: PASS: LIMIT 1 row - Correct row count: 1
=== RUN   TestSQLFilteringLimitOffset/Limit_5
    sql_filtering_limit_offset_test.go:295: PASS: LIMIT 5 rows - Correct row count: 5
=== RUN   TestSQLFilteringLimitOffset/Limit_0
    sql_filtering_limit_offset_test.go:295: PASS: LIMIT 0 rows (should return no results) - Correct row count: 0
=== RUN   TestSQLFilteringLimitOffset/Limit_Large
    sql_filtering_limit_offset_test.go:298: PASS: LIMIT with large number - Row count: 10 (not validated)
=== RUN   TestSQLFilteringLimitOffset/Limit_With_Columns
    sql_filtering_limit_offset_test.go:295: PASS: LIMIT with specific columns - Correct row count: 3
=== RUN   TestSQLFilteringLimitOffset/Limit_With_Functions
    sql_filtering_limit_offset_test.go:295: PASS: LIMIT with functions - Correct row count: 2
=== RUN   TestSQLFilteringLimitOffset/Offset_0
    sql_filtering_limit_offset_test.go:295: PASS: OFFSET 0 (same as no offset) - Correct row count: 5
=== RUN   TestSQLFilteringLimitOffset/Offset_1
    sql_filtering_limit_offset_test.go:295: PASS: OFFSET 1 row - Correct row count: 3
=== RUN   TestSQLFilteringLimitOffset/Offset_5
    sql_filtering_limit_offset_test.go:295: PASS: OFFSET 5 rows - Correct row count: 2
=== RUN   TestSQLFilteringLimitOffset/Offset_Large
    sql_filtering_limit_offset_test.go:298: PASS: OFFSET with large number - Row count: 0 (not validated)
=== RUN   TestSQLFilteringLimitOffset/Limit_Offset_Pagination_Page1
    sql_filtering_limit_offset_test.go:295: PASS: Pagination: Page 1 (LIMIT 3, OFFSET 0) - Correct row count: 3
=== RUN   TestSQLFilteringLimitOffset/Limit_Offset_Pagination_Page2
    sql_filtering_limit_offset_test.go:295: PASS: Pagination: Page 2 (LIMIT 3, OFFSET 3) - Correct row count: 3
=== RUN   TestSQLFilteringLimitOffset/Limit_Offset_Pagination_Page3
    sql_filtering_limit_offset_test.go:295: PASS: Pagination: Page 3 (LIMIT 3, OFFSET 6) - Correct row count: 3
=== RUN   TestSQLFilteringLimitOffset/Where_Limit
    sql_filtering_limit_offset_test.go:298: PASS: WHERE clause with LIMIT - Row count: 1 (not validated)
=== RUN   TestSQLFilteringLimitOffset/Where_Limit_Offset
    sql_filtering_limit_offset_test.go:298: PASS: WHERE clause with LIMIT and OFFSET - Row count: 0 (not validated)
=== RUN   TestSQLFilteringLimitOffset/Where_Complex_Limit
    sql_filtering_limit_offset_test.go:298: PASS: Complex WHERE with functions and arithmetic, plus LIMIT - Row count: 3 (not validated)
=== RUN   TestSQLFilteringLimitOffset/Where_No_Match
    sql_filtering_limit_offset_test.go:295: PASS: WHERE clause that matches no rows - Correct row count: 0
=== RUN   TestSQLFilteringLimitOffset/Limit_Offset_Beyond_Data
    sql_filtering_limit_offset_test.go:295: PASS: OFFSET beyond available data - Correct row count: 0
=== RUN   TestSQLFilteringLimitOffset/Where_Empty_String
    sql_filtering_limit_offset_test.go:298: PASS: WHERE with empty string value - Row count: 0 (not validated)
=== RUN   TestSQLFilteringLimitOffset/Small_Result_Set
    sql_filtering_limit_offset_test.go:295: PASS: Optimized query: specific WHERE + LIMIT 1 - Correct row count: 1
=== RUN   TestSQLFilteringLimitOffset/Batch_Processing
    sql_filtering_limit_offset_test.go:298: PASS: Batch processing pattern: moderate LIMIT - Row count: 10 (not validated)
=== NAME  TestSQLFilteringLimitOffset
    sql_filtering_limit_offset_test.go:307: 
        ================================================================================
    sql_filtering_limit_offset_test.go:308: SQL FILTERING, LIMIT & OFFSET TEST SUITE SUMMARY
    sql_filtering_limit_offset_test.go:309: ================================================================================
    sql_filtering_limit_offset_test.go:310: Total Tests: 31
    sql_filtering_limit_offset_test.go:311: Successful: 31
    sql_filtering_limit_offset_test.go:312: Errors: 0
    sql_filtering_limit_offset_test.go:313: Row Count Mismatches: 0
    sql_filtering_limit_offset_test.go:314: ================================================================================
--- PASS: TestSQLFilteringLimitOffset (0.01s)
    --- PASS: TestSQLFilteringLimitOffset/Where_Equals_Integer (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Where_Equals_String (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Where_Not_Equals (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Where_Greater_Than (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Where_Less_Than (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Where_Greater_Equal (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Where_Less_Equal (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Where_Column_Comparison (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Where_With_Function (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Where_With_Arithmetic (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Limit_1 (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Limit_5 (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Limit_0 (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Limit_Large (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Limit_With_Columns (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Limit_With_Functions (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Offset_0 (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Offset_1 (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Offset_5 (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Offset_Large (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Limit_Offset_Pagination_Page1 (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Limit_Offset_Pagination_Page2 (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Limit_Offset_Pagination_Page3 (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Where_Limit (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Where_Limit_Offset (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Where_Complex_Limit (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Where_No_Match (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Limit_Offset_Beyond_Data (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Where_Empty_String (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Small_Result_Set (0.00s)
    --- PASS: TestSQLFilteringLimitOffset/Batch_Processing (0.00s)
=== RUN   TestSQLFilteringAccuracy
    sql_filtering_limit_offset_test.go:335: Testing SQL filtering accuracy with specific data verification
    sql_filtering_limit_offset_test.go:350: PASS: Exact ID filtering works correctly
    sql_filtering_limit_offset_test.go:363: PASS: LIMIT 3 returns exactly 3 rows
    sql_filtering_limit_offset_test.go:380: PASS: OFFSET 1 correctly skips first row
--- PASS: TestSQLFilteringAccuracy (0.00s)
=== RUN   TestSQLFilteringEdgeCases
=== RUN   TestSQLFilteringEdgeCases/Zero_Limit
    sql_filtering_limit_offset_test.go:441: PASS: LIMIT 0 should return empty result set - Rows: 0
=== RUN   TestSQLFilteringEdgeCases/Large_Offset
    sql_filtering_limit_offset_test.go:441: PASS: Very large OFFSET should handle gracefully - Rows: 0
=== RUN   TestSQLFilteringEdgeCases/Where_False_Condition
    sql_filtering_limit_offset_test.go:431: UNEXPECTED SUCCESS: WHERE with always-false condition (may indicate feature is implemented)
=== RUN   TestSQLFilteringEdgeCases/Complex_Where
    sql_filtering_limit_offset_test.go:431: UNEXPECTED SUCCESS: Complex WHERE with AND condition (may indicate feature is implemented)
--- PASS: TestSQLFilteringEdgeCases (0.00s)
    --- PASS: TestSQLFilteringEdgeCases/Zero_Limit (0.00s)
    --- PASS: TestSQLFilteringEdgeCases/Large_Offset (0.00s)
    --- PASS: TestSQLFilteringEdgeCases/Where_False_Condition (0.00s)
    --- PASS: TestSQLFilteringEdgeCases/Complex_Where (0.00s)
=== RUN   TestSQLEngine_StringConcatenationWithLiterals
=== RUN   TestSQLEngine_StringConcatenationWithLiterals/Simple_concatenation_with_literals
    string_concatenation_test.go:108: Query: SELECT 'test' || action || 'end' FROM user_events LIMIT 1
    string_concatenation_test.go:109: Columns: ['test'||action||'end']
    string_concatenation_test.go:115: Row 0: [testloginend]
=== RUN   TestSQLEngine_StringConcatenationWithLiterals/User's_original_complex_concatenation
    string_concatenation_test.go:92: Expected column 0 to be ''test'||action||'xxx'||action||'~~~'||status', got ''test'||action||'xxx'||action||' ~~~ '||status'
    string_concatenation_test.go:108: Query: SELECT 'test' || action || 'xxx' || action || ' ~~~ ' || status FROM user_events LIMIT 1
    string_concatenation_test.go:109: Columns: ['test'||action||'xxx'||action||' ~~~ '||status]
    string_concatenation_test.go:115: Row 0: [testloginxxxlogin ~~~ active]
=== RUN   TestSQLEngine_StringConcatenationWithLiterals/Mixed_columns_and_literals
    string_concatenation_test.go:108: Query: SELECT status || '=' || action, 'prefix:' || user_type FROM user_events LIMIT 1
    string_concatenation_test.go:109: Columns: [status||'='||action 'prefix:'||user_type]
    string_concatenation_test.go:115: Row 0: [active=login prefix:premium]
=== RUN   TestSQLEngine_StringConcatenationWithLiterals/Concatenation_with_spaces_in_literals
    string_concatenation_test.go:92: Expected column 0 to be ''['||status||']'', got '' [ '||status||' ] ''
    string_concatenation_test.go:108: Query: SELECT ' [ ' || status || ' ] ' FROM user_events LIMIT 2
    string_concatenation_test.go:109: Columns: [' [ '||status||' ] ']
    string_concatenation_test.go:115: Row 0: [ [ active ] ]
    string_concatenation_test.go:115: Row 1: [ [ pending ] ]
--- PASS: TestSQLEngine_StringConcatenationWithLiterals (0.00s)
    --- PASS: TestSQLEngine_StringConcatenationWithLiterals/Simple_concatenation_with_literals (0.00s)
    --- PASS: TestSQLEngine_StringConcatenationWithLiterals/User's_original_complex_concatenation (0.00s)
    --- PASS: TestSQLEngine_StringConcatenationWithLiterals/Mixed_columns_and_literals (0.00s)
    --- PASS: TestSQLEngine_StringConcatenationWithLiterals/Concatenation_with_spaces_in_literals (0.00s)
=== RUN   TestSQLEngine_StringConcatenationBugReproduction
    string_concatenation_test.go:180: SUCCESS: Complex string concatenation works correctly!
    string_concatenation_test.go:181: Query: SELECT UPPER(status), id*2, 'test' || action || 'xxx' || action || ' ~~~ ' || status FROM user_events LIMIT 2
    string_concatenation_test.go:188: Row 0: [ACTIVE 164920 testloginxxxlogin ~~~ active]
    string_concatenation_test.go:188: Row 1: [PENDING 1682512 testclickxxxclick ~~~ pending]
--- PASS: TestSQLEngine_StringConcatenationBugReproduction (0.00s)
=== RUN   TestStringFunctions
=== RUN   TestStringFunctions/LENGTH_function_tests
=== RUN   TestStringFunctions/LENGTH_function_tests/Length_of_string
=== RUN   TestStringFunctions/LENGTH_function_tests/Length_of_empty_string
=== RUN   TestStringFunctions/LENGTH_function_tests/Length_of_number
=== RUN   TestStringFunctions/LENGTH_function_tests/Length_of_null_value
=== RUN   TestStringFunctions/UPPER/LOWER_function_tests
=== RUN   TestStringFunctions/TRIM_function_tests
=== RUN   TestStringFunctions/TRIM_function_tests/TRIM_whitespace
=== RUN   TestStringFunctions/TRIM_function_tests/LTRIM_whitespace
=== RUN   TestStringFunctions/TRIM_function_tests/RTRIM_whitespace
=== RUN   TestStringFunctions/TRIM_function_tests/TRIM_with_tabs_and_newlines
=== RUN   TestStringFunctions/SUBSTRING_function_tests
=== RUN   TestStringFunctions/CONCAT_function_tests
=== RUN   TestStringFunctions/REPLACE_function_tests
=== RUN   TestStringFunctions/POSITION_function_tests
=== RUN   TestStringFunctions/LEFT/RIGHT_function_tests
=== RUN   TestStringFunctions/REVERSE_function_tests
--- PASS: TestStringFunctions (0.00s)
    --- PASS: TestStringFunctions/LENGTH_function_tests (0.00s)
        --- PASS: TestStringFunctions/LENGTH_function_tests/Length_of_string (0.00s)
        --- PASS: TestStringFunctions/LENGTH_function_tests/Length_of_empty_string (0.00s)
        --- PASS: TestStringFunctions/LENGTH_function_tests/Length_of_number (0.00s)
        --- PASS: TestStringFunctions/LENGTH_function_tests/Length_of_null_value (0.00s)
    --- PASS: TestStringFunctions/UPPER/LOWER_function_tests (0.00s)
    --- PASS: TestStringFunctions/TRIM_function_tests (0.00s)
        --- PASS: TestStringFunctions/TRIM_function_tests/TRIM_whitespace (0.00s)
        --- PASS: TestStringFunctions/TRIM_function_tests/LTRIM_whitespace (0.00s)
        --- PASS: TestStringFunctions/TRIM_function_tests/RTRIM_whitespace (0.00s)
        --- PASS: TestStringFunctions/TRIM_function_tests/TRIM_with_tabs_and_newlines (0.00s)
    --- PASS: TestStringFunctions/SUBSTRING_function_tests (0.00s)
    --- PASS: TestStringFunctions/CONCAT_function_tests (0.00s)
    --- PASS: TestStringFunctions/REPLACE_function_tests (0.00s)
    --- PASS: TestStringFunctions/POSITION_function_tests (0.00s)
    --- PASS: TestStringFunctions/LEFT/RIGHT_function_tests (0.00s)
    --- PASS: TestStringFunctions/REVERSE_function_tests (0.00s)
=== RUN   TestStringFunctionsSQL
=== RUN   TestStringFunctionsSQL/UPPER_function
=== RUN   TestStringFunctionsSQL/LOWER_function
=== RUN   TestStringFunctionsSQL/LENGTH_function
=== RUN   TestStringFunctionsSQL/TRIM_function
=== RUN   TestStringFunctionsSQL/LTRIM_function
=== RUN   TestStringFunctionsSQL/RTRIM_function
=== RUN   TestStringFunctionsSQL/Multiple_string_functions
=== RUN   TestStringFunctionsSQL/String_function_with_wrong_argument_count
=== RUN   TestStringFunctionsSQL/String_function_with_no_arguments
--- PASS: TestStringFunctionsSQL (0.00s)
    --- PASS: TestStringFunctionsSQL/UPPER_function (0.00s)
    --- PASS: TestStringFunctionsSQL/LOWER_function (0.00s)
    --- PASS: TestStringFunctionsSQL/LENGTH_function (0.00s)
    --- PASS: TestStringFunctionsSQL/TRIM_function (0.00s)
    --- PASS: TestStringFunctionsSQL/LTRIM_function (0.00s)
    --- PASS: TestStringFunctionsSQL/RTRIM_function (0.00s)
    --- PASS: TestStringFunctionsSQL/Multiple_string_functions (0.00s)
    --- PASS: TestStringFunctionsSQL/String_function_with_wrong_argument_count (0.00s)
    --- PASS: TestStringFunctionsSQL/String_function_with_no_arguments (0.00s)
=== RUN   TestSQLEngine_StringFunctionsAndLiterals
=== RUN   TestSQLEngine_StringFunctionsAndLiterals/String_functions_-_UPPER_and_LENGTH
    string_literal_function_test.go:48: Status: 'active', UPPER: 'ACTIVE', LENGTH: '6'
    string_literal_function_test.go:160: Query: SELECT status, UPPER(status), LENGTH(status) FROM user_events LIMIT 3
    string_literal_function_test.go:161: Columns: [status UPPER(status) LENGTH(status)]
    string_literal_function_test.go:167: Row 0: [active ACTIVE 6]
    string_literal_function_test.go:167: Row 1: [pending PENDING 7]
    string_literal_function_test.go:167: Row 2: [  ]
=== RUN   TestSQLEngine_StringFunctionsAndLiterals/String_literal_in_SELECT
    string_literal_function_test.go:160: Query: SELECT id, user_id, 'good' FROM user_events LIMIT 2
    string_literal_function_test.go:161: Columns: [id user_id 'good']
    string_literal_function_test.go:167: Row 0: [82460 9465 good]
    string_literal_function_test.go:167: Row 1: [841256 2336 good]
=== RUN   TestSQLEngine_StringFunctionsAndLiterals/Mixed:_columns,_functions,_arithmetic,_and_literals
    string_literal_function_test.go:160: Query: SELECT id, UPPER(status), id*2, 'test' FROM user_events LIMIT 2
    string_literal_function_test.go:161: Columns: [id UPPER(status) id*2 'test']
    string_literal_function_test.go:167: Row 0: [82460 ACTIVE 164920 test]
    string_literal_function_test.go:167: Row 1: [841256 PENDING 1682512 test]
=== RUN   TestSQLEngine_StringFunctionsAndLiterals/User's_original_failing_query_-_fixed
    string_literal_function_test.go:160: Query: SELECT status, action, user_type, UPPER(action), LENGTH(action) FROM user_events LIMIT 2
    string_literal_function_test.go:161: Columns: [status action user_type UPPER(action) LENGTH(action)]
    string_literal_function_test.go:167: Row 0: [active login premium LOGIN 5]
    string_literal_function_test.go:167: Row 1: [pending click standard CLICK 5]
--- PASS: TestSQLEngine_StringFunctionsAndLiterals (0.00s)
    --- PASS: TestSQLEngine_StringFunctionsAndLiterals/String_functions_-_UPPER_and_LENGTH (0.00s)
    --- PASS: TestSQLEngine_StringFunctionsAndLiterals/String_literal_in_SELECT (0.00s)
    --- PASS: TestSQLEngine_StringFunctionsAndLiterals/Mixed:_columns,_functions,_arithmetic,_and_literals (0.00s)
    --- PASS: TestSQLEngine_StringFunctionsAndLiterals/User's_original_failing_query_-_fixed (0.00s)
=== RUN   TestSQLEngine_StringFunctionErrorHandling
    string_literal_function_test.go:186: UPPER function works correctly
    string_literal_function_test.go:197: LENGTH function works correctly
--- PASS: TestSQLEngine_StringFunctionErrorHandling (0.00s)
=== RUN   TestTimestampIntegrationScenarios
=== RUN   TestTimestampIntegrationScenarios/EndToEndTimestampEquality
=== RUN   TestTimestampIntegrationScenarios/EndToEndTimestampEquality/original_failing_1
=== RUN   TestTimestampIntegrationScenarios/EndToEndTimestampEquality/original_failing_2
=== RUN   TestTimestampIntegrationScenarios/EndToEndTimestampEquality/current_data
=== RUN   TestTimestampIntegrationScenarios/ComplexRangeQueries
=== RUN   TestTimestampIntegrationScenarios/ComplexRangeQueries/RangeWithDifferentBounds
=== RUN   TestTimestampIntegrationScenarios/ComplexRangeQueries/RangeWithSameBounds
=== RUN   TestTimestampIntegrationScenarios/ComplexRangeQueries/OpenEndedRange
=== RUN   TestTimestampIntegrationScenarios/ProductionScenarioReproduction
--- PASS: TestTimestampIntegrationScenarios (0.00s)
    --- PASS: TestTimestampIntegrationScenarios/EndToEndTimestampEquality (0.00s)
        --- PASS: TestTimestampIntegrationScenarios/EndToEndTimestampEquality/original_failing_1 (0.00s)
        --- PASS: TestTimestampIntegrationScenarios/EndToEndTimestampEquality/original_failing_2 (0.00s)
        --- PASS: TestTimestampIntegrationScenarios/EndToEndTimestampEquality/current_data (0.00s)
    --- PASS: TestTimestampIntegrationScenarios/ComplexRangeQueries (0.00s)
        --- PASS: TestTimestampIntegrationScenarios/ComplexRangeQueries/RangeWithDifferentBounds (0.00s)
        --- PASS: TestTimestampIntegrationScenarios/ComplexRangeQueries/RangeWithSameBounds (0.00s)
        --- PASS: TestTimestampIntegrationScenarios/ComplexRangeQueries/OpenEndedRange (0.00s)
    --- PASS: TestTimestampIntegrationScenarios/ProductionScenarioReproduction (0.00s)
=== RUN   TestRegressionPrevention
=== RUN   TestRegressionPrevention/SmallTimestamps
=== RUN   TestRegressionPrevention/NonTimestampColumns
=== RUN   TestRegressionPrevention/StringComparisons
--- PASS: TestRegressionPrevention (0.00s)
    --- PASS: TestRegressionPrevention/SmallTimestamps (0.00s)
    --- PASS: TestRegressionPrevention/NonTimestampColumns (0.00s)
    --- PASS: TestRegressionPrevention/StringComparisons (0.00s)
=== RUN   TestTimestampQueryFixes
=== RUN   TestTimestampQueryFixes/Fix1_PrecisionLoss
=== RUN   TestTimestampQueryFixes/Fix2_TimeFilterExtraction
=== RUN   TestTimestampQueryFixes/Fix3_RangeBoundaryFix
=== RUN   TestTimestampQueryFixes/Fix4_DifferentRangeBoundaries
=== RUN   TestTimestampQueryFixes/Fix5_PredicateAccuracy
=== RUN   TestTimestampQueryFixes/Fix6_ComparisonOperators
=== RUN   TestTimestampQueryFixes/Fix7_EdgeCases
--- PASS: TestTimestampQueryFixes (0.00s)
    --- PASS: TestTimestampQueryFixes/Fix1_PrecisionLoss (0.00s)
    --- PASS: TestTimestampQueryFixes/Fix2_TimeFilterExtraction (0.00s)
    --- PASS: TestTimestampQueryFixes/Fix3_RangeBoundaryFix (0.00s)
    --- PASS: TestTimestampQueryFixes/Fix4_DifferentRangeBoundaries (0.00s)
    --- PASS: TestTimestampQueryFixes/Fix5_PredicateAccuracy (0.00s)
    --- PASS: TestTimestampQueryFixes/Fix6_ComparisonOperators (0.00s)
    --- PASS: TestTimestampQueryFixes/Fix7_EdgeCases (0.00s)
=== RUN   TestOriginalFailingQueries
=== RUN   TestOriginalFailingQueries/OriginalQuery1
=== RUN   TestOriginalFailingQueries/OriginalQuery2
=== RUN   TestOriginalFailingQueries/CurrentDataQuery
--- PASS: TestOriginalFailingQueries (0.00s)
    --- PASS: TestOriginalFailingQueries/OriginalQuery1 (0.00s)
    --- PASS: TestOriginalFailingQueries/OriginalQuery2 (0.00s)
    --- PASS: TestOriginalFailingQueries/CurrentDataQuery (0.00s)
=== RUN   TestWhereParsing
=== RUN   TestWhereParsing/Simple_Equals
    where_clause_debug_test.go:78: PASS: WHERE clause parsed successfully for: Simple equality WHERE clause
    where_clause_debug_test.go:79:       WHERE expression type: *engine.ComparisonExpr
=== RUN   TestWhereParsing/Greater_Than
    where_clause_debug_test.go:78: PASS: WHERE clause parsed successfully for: Greater than WHERE clause
    where_clause_debug_test.go:79:       WHERE expression type: *engine.ComparisonExpr
=== RUN   TestWhereParsing/String_Equals
    where_clause_debug_test.go:78: PASS: WHERE clause parsed successfully for: String equality WHERE clause
    where_clause_debug_test.go:79:       WHERE expression type: *engine.ComparisonExpr
=== RUN   TestWhereParsing/Impossible_Condition
    where_clause_debug_test.go:78: PASS: WHERE clause parsed successfully for: Impossible WHERE condition (should parse but return no rows)
    where_clause_debug_test.go:79:       WHERE expression type: *engine.ComparisonExpr
--- PASS: TestWhereParsing (0.00s)
    --- PASS: TestWhereParsing/Simple_Equals (0.00s)
    --- PASS: TestWhereParsing/Greater_Than (0.00s)
    --- PASS: TestWhereParsing/String_Equals (0.00s)
    --- PASS: TestWhereParsing/Impossible_Condition (0.00s)
=== RUN   TestPredicateBuilding
=== RUN   TestPredicateBuilding/Simple_Equals_Match
    where_clause_debug_test.go:172: PASS: Simple equality - should match - Predicate worked correctly (match=true)
=== RUN   TestPredicateBuilding/Simple_Equals_NoMatch
    where_clause_debug_test.go:172: PASS: Simple equality - should not match - Predicate worked correctly (match=false)
=== RUN   TestPredicateBuilding/Greater_Than_Match
    where_clause_debug_test.go:172: PASS: Greater than - should match - Predicate worked correctly (match=true)
=== RUN   TestPredicateBuilding/Greater_Than_NoMatch
    where_clause_debug_test.go:172: PASS: Greater than - should not match - Predicate worked correctly (match=false)
=== RUN   TestPredicateBuilding/String_Equals_Match
    where_clause_debug_test.go:172: PASS: String equality - should match - Predicate worked correctly (match=true)
=== RUN   TestPredicateBuilding/String_Equals_NoMatch
    where_clause_debug_test.go:172: PASS: String equality - should not match - Predicate worked correctly (match=false)
=== RUN   TestPredicateBuilding/Impossible_Condition
    where_clause_debug_test.go:172: PASS: Impossible condition - should never match - Predicate worked correctly (match=false)
--- PASS: TestPredicateBuilding (0.00s)
    --- PASS: TestPredicateBuilding/Simple_Equals_Match (0.00s)
    --- PASS: TestPredicateBuilding/Simple_Equals_NoMatch (0.00s)
    --- PASS: TestPredicateBuilding/Greater_Than_Match (0.00s)
    --- PASS: TestPredicateBuilding/Greater_Than_NoMatch (0.00s)
    --- PASS: TestPredicateBuilding/String_Equals_Match (0.00s)
    --- PASS: TestPredicateBuilding/String_Equals_NoMatch (0.00s)
    --- PASS: TestPredicateBuilding/Impossible_Condition (0.00s)
=== RUN   TestWhereClauseEndToEnd
    where_clause_debug_test.go:185: END-TO-END WHERE CLAUSE VALIDATION
    where_clause_debug_test.go:186: ===================================
    where_clause_debug_test.go:194: Baseline (no WHERE): 10 rows
    where_clause_debug_test.go:202: WHERE 1 = 0: 0 rows
    where_clause_debug_test.go:210: Impossible WHERE condition correctly returns 0 rows
    where_clause_debug_test.go:222: WHERE id = 82460: 1 rows
    where_clause_debug_test.go:227: Specific ID WHERE clause working correctly
    where_clause_debug_test.go:239: WHERE id > 10000000: 0 rows
    where_clause_debug_test.go:256: WHERE id > 10000000 correctly filtered results
--- PASS: TestWhereClauseEndToEnd (0.00s)
=== RUN   TestSpecificWhereClauseBug
    where_clause_debug_test.go:298: REPRODUCING EXACT WHERE CLAUSE BUG
    where_clause_debug_test.go:299: ==================================
    where_clause_debug_test.go:309: Query: SELECT id FROM user_events WHERE id > 10000000 LIMIT 10 OFFSET 5
    where_clause_debug_test.go:310: Returned 0 rows:
    where_clause_debug_test.go:326: WHERE clause working correctly - all IDs > 10,000,000
--- PASS: TestSpecificWhereClauseBug (0.00s)
=== RUN   TestWhereClauseValidation
    where_validation_test.go:13: WHERE CLAUSE VALIDATION TESTS
    where_validation_test.go:14: ==============================
    where_validation_test.go:22: Baseline data - Total rows: 10
    where_validation_test.go:24: Sample IDs: 82460, 841256, 55537
    where_validation_test.go:38: WHERE id = 82460: 1 rows
    where_validation_test.go:40: Specific ID filtering works correctly
    where_validation_test.go:59: Data range: min ID = 55537, max ID = 841256
    where_validation_test.go:69: WHERE id > 448396: 2 rows
    where_validation_test.go:83: Range filtering works correctly - all returned IDs > 448396
    where_validation_test.go:95: WHERE status = 'active': 1 rows
    where_validation_test.go:107: String filtering works correctly
    where_validation_test.go:111: 
        TESTING REAL-WORLD CASE:
    where_validation_test.go:118: Real-world query returned: 0 rows
    where_validation_test.go:131: Real-world case FIXED: No violations found
--- PASS: TestWhereClauseValidation (0.00s)
=== RUN   TestWhereClauseComparisonOperators
    where_validation_test.go:164: Testing comparison operators with ID = 841256
    where_validation_test.go:175: WHERE id = 841256: 1 rows (equals)
    where_validation_test.go:175: WHERE id != 841256: 9 rows (not equals)
    where_validation_test.go:175: WHERE id > 841256: 0 rows (greater than)
    where_validation_test.go:175: WHERE id < 841256: 9 rows (less than)
    where_validation_test.go:175: WHERE id >= 841256: 1 rows (greater or equal)
    where_validation_test.go:175: WHERE id <= 841256: 10 rows (less or equal)
--- PASS: TestWhereClauseComparisonOperators (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/query/engine	0.079s
=== RUN   TestGjson
{
		"quiz": {
			"sport": {
				"q1": {
					"question": "Which one is correct team name in NBA?",
					"options": [
						"New York Bulls",
						"Los Angeles Kings",
						"Golden State Warriros",
						"Huston Rocket"
					],
					"answer": "Huston Rocket"
				}
			},
			"maths": {
				"q1": {
					"question": "5 + 7 = ?",
					"options": [
						"10",
						"11",
						"12",
						"13"
					],
					"answer": "12"
				},
				"q2": {
					"question": "12 - 8 = ?",
					"options": [
						"1",
						"2",
						"3",
						"4"
					],
					"answer": "4"
				}
			}
		}
	}
+++++++++++
12 5 {
			"sport": {
				"q1": {
					"question": "Which one is correct team name in NBA?",
					"options": [
						"New York Bulls",
						"Los Angeles Kings",
						"Golden State Warriros",
						"Huston Rocket"
					],
					"answer": "Huston Rocket"
				}
			},
			"maths": {
				"q1": {
					"question": "5 + 7 = ?",
					"options": [
						"10",
						"11",
						"12",
						"13"
					],
					"answer": "12"
				},
				"q2": {
					"question": "12 - 8 = ?",
					"options": [
						"1",
						"2",
						"3",
						"4"
					],
					"answer": "4"
				}
			}
		}
0 0 
-----------
{
		"fruit": "Apple",
		"size": "Large",
		"quiz": "Red"
	}
+++++++++++
51 3 Red
13 3 Apple
-----------
--- PASS: TestGjson (0.00s)
=== RUN   TestJsonQueryRow
{fruit:"Bl\"ue",size:6}
--- PASS: TestJsonQueryRow (0.00s)
=== RUN   TestJsonQueryNumber
{fruit:"Bl\"ue",quiz:"green"}
--- PASS: TestJsonQueryNumber (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/query/json	0.005s
?   	github.com/seaweedfs/seaweedfs/weed/query/sqltypes	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/remote_storage	[no test files]
=== RUN   TestAzureStorageClientBasic
    azure_storage_client_test.go:24: Skipping Azure storage test: AZURE_STORAGE_ACCOUNT or AZURE_STORAGE_ACCESS_KEY not set
--- SKIP: TestAzureStorageClientBasic (0.00s)
=== RUN   TestToMetadata
=== RUN   TestToMetadata/basic_metadata
=== RUN   TestToMetadata/metadata_with_dashes
=== RUN   TestToMetadata/non-metadata_keys_ignored
=== RUN   TestToMetadata/keys_starting_with_digits
=== RUN   TestToMetadata/uppercase_and_mixed_case_keys
=== RUN   TestToMetadata/keys_with_invalid_characters
=== RUN   TestToMetadata/collision_prevention
=== RUN   TestToMetadata/empty_input
--- PASS: TestToMetadata (0.00s)
    --- PASS: TestToMetadata/basic_metadata (0.00s)
    --- PASS: TestToMetadata/metadata_with_dashes (0.00s)
    --- PASS: TestToMetadata/non-metadata_keys_ignored (0.00s)
    --- PASS: TestToMetadata/keys_starting_with_digits (0.00s)
    --- PASS: TestToMetadata/uppercase_and_mixed_case_keys (0.00s)
    --- PASS: TestToMetadata/keys_with_invalid_characters (0.00s)
    --- PASS: TestToMetadata/collision_prevention (0.00s)
    --- PASS: TestToMetadata/empty_input (0.00s)
=== RUN   TestAzureRemoteStorageMaker
--- PASS: TestAzureRemoteStorageMaker (0.00s)
=== RUN   TestAzureStorageClientErrors
--- PASS: TestAzureStorageClientErrors (407.59s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/remote_storage/azure	407.608s
?   	github.com/seaweedfs/seaweedfs/weed/remote_storage/gcs	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/remote_storage/s3	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/repl_util	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/sink	[no test files]
=== RUN   TestAzureSinkInterface
--- PASS: TestAzureSinkInterface (0.00s)
=== RUN   TestAzureSinkInitialization
    azure_sink_test.go:98: Skipping Azure sink test: AZURE_STORAGE_ACCOUNT or AZURE_STORAGE_ACCESS_KEY not set
--- SKIP: TestAzureSinkInitialization (0.00s)
=== RUN   TestAzureSinkInitializeFromConfig
    azure_sink_test.go:131: Skipping Azure sink config test: AZURE_STORAGE_ACCOUNT or AZURE_STORAGE_ACCESS_KEY not set
--- SKIP: TestAzureSinkInitializeFromConfig (0.00s)
=== RUN   TestCleanKey
=== RUN   TestCleanKey//test/file.txt
=== RUN   TestCleanKey/test/file.txt
=== RUN   TestCleanKey//
=== RUN   TestCleanKey/#00
=== RUN   TestCleanKey//a/b/c
--- PASS: TestCleanKey (0.00s)
    --- PASS: TestCleanKey//test/file.txt (0.00s)
    --- PASS: TestCleanKey/test/file.txt (0.00s)
    --- PASS: TestCleanKey// (0.00s)
    --- PASS: TestCleanKey/#00 (0.00s)
    --- PASS: TestCleanKey//a/b/c (0.00s)
=== RUN   TestAzureSinkEntryOperations
    azure_sink_test.go:185: Skipping Azure sink entry test: credentials not set
--- SKIP: TestAzureSinkEntryOperations (0.00s)
=== RUN   TestAzureSinkPrecondition
    azure_sink_test.go:280: Skipping Azure sink precondition test: credentials not set
--- SKIP: TestAzureSinkPrecondition (0.00s)
=== RUN   TestAzureSinkInvalidCredentials
--- PASS: TestAzureSinkInvalidCredentials (410.09s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/replication/sink/azuresink	410.110s
?   	github.com/seaweedfs/seaweedfs/weed/replication/sink/b2sink	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/sink/filersink	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/sink/gcssink	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/sink/localsink	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/sink/s3sink	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/source	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/sub	[no test files]
=== RUN   TestIdentityListFileFormat
{
  "identities": [
    {
      "name": "some_name",
      "credentials": [
        {
          "accessKey": "some_access_key1",
          "secretKey": "some_secret_key2"
        }
      ],
      "actions": [
        "Admin",
        "Read",
        "Write"
      ],
      "account": null
    },
    {
      "name": "some_read_only_user",
      "credentials": [
        {
          "accessKey": "some_access_key1",
          "secretKey": "some_secret_key1"
        }
      ],
      "actions": [
        "Read"
      ],
      "account": null
    },
    {
      "name": "some_normal_user",
      "credentials": [
        {
          "accessKey": "some_access_key2",
          "secretKey": "some_secret_key2"
        }
      ],
      "actions": [
        "Read",
        "Write"
      ],
      "account": null
    }
  ],
  "accounts": []
}
--- PASS: TestIdentityListFileFormat (0.00s)
=== RUN   TestCanDo
--- PASS: TestCanDo (0.00s)
=== RUN   TestLoadS3ApiConfiguration
--- PASS: TestLoadS3ApiConfiguration (0.00s)
=== RUN   TestNewIdentityAccessManagementWithStoreEnvVars
=== RUN   TestNewIdentityAccessManagementWithStoreEnvVars/Environment_variables_used_as_fallback
I0616 11:57:39.810597 config_loader.go:109 Using explicit credential store: memory
I0616 11:57:39.810991 auth_credentials.go:180 No S3 configuration found, using AWS environment variables as fallback
I0616 11:57:39.811000 auth_credentials.go:212 Added admin identity from AWS environment variables: admin-AKIA1234
=== RUN   TestNewIdentityAccessManagementWithStoreEnvVars/Short_access_key_fallback
I0616 11:57:39.811036 config_loader.go:109 Using explicit credential store: memory
I0616 11:57:39.811040 auth_credentials.go:180 No S3 configuration found, using AWS environment variables as fallback
I0616 11:57:39.811043 auth_credentials.go:212 Added admin identity from AWS environment variables: admin-SHORT
=== RUN   TestNewIdentityAccessManagementWithStoreEnvVars/No_env_vars_means_no_identities
I0616 11:57:39.811066 config_loader.go:109 Using explicit credential store: memory
--- PASS: TestNewIdentityAccessManagementWithStoreEnvVars (0.00s)
    --- PASS: TestNewIdentityAccessManagementWithStoreEnvVars/Environment_variables_used_as_fallback (0.00s)
    --- PASS: TestNewIdentityAccessManagementWithStoreEnvVars/Short_access_key_fallback (0.00s)
    --- PASS: TestNewIdentityAccessManagementWithStoreEnvVars/No_env_vars_means_no_identities (0.00s)
=== RUN   TestBucketLevelListPermissions
=== RUN   TestBucketLevelListPermissions/Bucket_Wildcard_Permissions
=== RUN   TestBucketLevelListPermissions/Bucket_Wildcard_Permissions/exact_bucket_match
=== RUN   TestBucketLevelListPermissions/Bucket_Wildcard_Permissions/bucket_with_suffix
=== RUN   TestBucketLevelListPermissions/Bucket_Wildcard_Permissions/bucket_with_numbers
=== RUN   TestBucketLevelListPermissions/Bucket_Wildcard_Permissions/different_bucket
=== RUN   TestBucketLevelListPermissions/Bucket_Wildcard_Permissions/partial_match
=== RUN   TestBucketLevelListPermissions/Global_List_Permission
=== RUN   TestBucketLevelListPermissions/No_Wildcard_Exact_Match
=== NAME  TestBucketLevelListPermissions
    auth_credentials_test.go:476: This test validates the fix for issue #7066
    auth_credentials_test.go:477: Bucket-level List permissions like 'List:bucket*' work correctly
    auth_credentials_test.go:478: ListBucketsHandler now uses consistent authentication flow
--- PASS: TestBucketLevelListPermissions (0.00s)
    --- PASS: TestBucketLevelListPermissions/Bucket_Wildcard_Permissions (0.00s)
        --- PASS: TestBucketLevelListPermissions/Bucket_Wildcard_Permissions/exact_bucket_match (0.00s)
        --- PASS: TestBucketLevelListPermissions/Bucket_Wildcard_Permissions/bucket_with_suffix (0.00s)
        --- PASS: TestBucketLevelListPermissions/Bucket_Wildcard_Permissions/bucket_with_numbers (0.00s)
        --- PASS: TestBucketLevelListPermissions/Bucket_Wildcard_Permissions/different_bucket (0.00s)
        --- PASS: TestBucketLevelListPermissions/Bucket_Wildcard_Permissions/partial_match (0.00s)
    --- PASS: TestBucketLevelListPermissions/Global_List_Permission (0.00s)
    --- PASS: TestBucketLevelListPermissions/No_Wildcard_Exact_Match (0.00s)
=== RUN   TestListBucketsAuthRequest
=== RUN   TestListBucketsAuthRequest/ListBuckets_special_case_handling
=== RUN   TestListBucketsAuthRequest/Object_listing_maintains_permission_enforcement
=== NAME  TestListBucketsAuthRequest
    auth_credentials_test.go:543: This test validates the fix for the regression identified in PR #7067
    auth_credentials_test.go:544: ListBuckets operation bypasses global permission check when bucket is empty
    auth_credentials_test.go:545: Object listing still properly enforces bucket-level permissions
--- PASS: TestListBucketsAuthRequest (0.00s)
    --- PASS: TestListBucketsAuthRequest/ListBuckets_special_case_handling (0.00s)
    --- PASS: TestListBucketsAuthRequest/Object_listing_maintains_permission_enforcement (0.00s)
=== RUN   TestSignatureVerificationDoesNotCheckPermissions
=== RUN   TestSignatureVerificationDoesNotCheckPermissions/List-only_user_can_authenticate_via_signature
=== NAME  TestSignatureVerificationDoesNotCheckPermissions
    auth_credentials_test.go:598: This test validates the fix for issue #7334
    auth_credentials_test.go:599: Signature verification no longer checks for Write permission
    auth_credentials_test.go:600: This allows list-only and read-only users to authenticate via AWS Signature V4
--- PASS: TestSignatureVerificationDoesNotCheckPermissions (0.00s)
    --- PASS: TestSignatureVerificationDoesNotCheckPermissions/List-only_user_can_authenticate_via_signature (0.00s)
=== RUN   TestBuildPathWithForwardedPrefix
=== RUN   TestBuildPathWithForwardedPrefix/empty_prefix_returns_urlPath
=== RUN   TestBuildPathWithForwardedPrefix/prefix_without_trailing_slash
=== RUN   TestBuildPathWithForwardedPrefix/prefix_with_trailing_slash
=== RUN   TestBuildPathWithForwardedPrefix/prefix_without_leading_slash
=== RUN   TestBuildPathWithForwardedPrefix/prefix_without_leading_slash_and_with_trailing_slash
=== RUN   TestBuildPathWithForwardedPrefix/preserve_double_slashes_in_key
=== RUN   TestBuildPathWithForwardedPrefix/preserve_trailing_slash_in_urlPath
=== RUN   TestBuildPathWithForwardedPrefix/preserve_trailing_slash_with_prefix_having_trailing_slash
=== RUN   TestBuildPathWithForwardedPrefix/root_path
=== RUN   TestBuildPathWithForwardedPrefix/complex_key_with_multiple_slashes
=== RUN   TestBuildPathWithForwardedPrefix/urlPath_without_leading_slash
--- PASS: TestBuildPathWithForwardedPrefix (0.00s)
    --- PASS: TestBuildPathWithForwardedPrefix/empty_prefix_returns_urlPath (0.00s)
    --- PASS: TestBuildPathWithForwardedPrefix/prefix_without_trailing_slash (0.00s)
    --- PASS: TestBuildPathWithForwardedPrefix/prefix_with_trailing_slash (0.00s)
    --- PASS: TestBuildPathWithForwardedPrefix/prefix_without_leading_slash (0.00s)
    --- PASS: TestBuildPathWithForwardedPrefix/prefix_without_leading_slash_and_with_trailing_slash (0.00s)
    --- PASS: TestBuildPathWithForwardedPrefix/preserve_double_slashes_in_key (0.00s)
    --- PASS: TestBuildPathWithForwardedPrefix/preserve_trailing_slash_in_urlPath (0.00s)
    --- PASS: TestBuildPathWithForwardedPrefix/preserve_trailing_slash_with_prefix_having_trailing_slash (0.00s)
    --- PASS: TestBuildPathWithForwardedPrefix/root_path (0.00s)
    --- PASS: TestBuildPathWithForwardedPrefix/complex_key_with_multiple_slashes (0.00s)
    --- PASS: TestBuildPathWithForwardedPrefix/urlPath_without_leading_slash (0.00s)
=== RUN   TestIsRequestPresignedSignatureV4
--- PASS: TestIsRequestPresignedSignatureV4 (0.00s)
=== RUN   TestIsReqAuthenticated
--- PASS: TestIsReqAuthenticated (0.00s)
=== RUN   TestCheckaAnonymousRequestAuthType
--- PASS: TestCheckaAnonymousRequestAuthType (0.00s)
=== RUN   TestCheckAdminRequestAuthType
--- PASS: TestCheckAdminRequestAuthType (0.00s)
=== RUN   TestSignatureV4WithForwardedPrefix
=== RUN   TestSignatureV4WithForwardedPrefix/prefix_without_trailing_slash
=== RUN   TestSignatureV4WithForwardedPrefix/prefix_with_trailing_slash
--- PASS: TestSignatureV4WithForwardedPrefix (0.00s)
    --- PASS: TestSignatureV4WithForwardedPrefix/prefix_without_trailing_slash (0.00s)
    --- PASS: TestSignatureV4WithForwardedPrefix/prefix_with_trailing_slash (0.00s)
=== RUN   TestSignatureV4WithForwardedPrefixTrailingSlash
=== RUN   TestSignatureV4WithForwardedPrefixTrailingSlash/bucket_listObjects_with_trailing_slash
=== RUN   TestSignatureV4WithForwardedPrefixTrailingSlash/prefix_path_with_trailing_slash
=== RUN   TestSignatureV4WithForwardedPrefixTrailingSlash/root_bucket_with_trailing_slash
=== RUN   TestSignatureV4WithForwardedPrefixTrailingSlash/nested_folder_with_trailing_slash
--- PASS: TestSignatureV4WithForwardedPrefixTrailingSlash (0.00s)
    --- PASS: TestSignatureV4WithForwardedPrefixTrailingSlash/bucket_listObjects_with_trailing_slash (0.00s)
    --- PASS: TestSignatureV4WithForwardedPrefixTrailingSlash/prefix_path_with_trailing_slash (0.00s)
    --- PASS: TestSignatureV4WithForwardedPrefixTrailingSlash/root_bucket_with_trailing_slash (0.00s)
    --- PASS: TestSignatureV4WithForwardedPrefixTrailingSlash/nested_folder_with_trailing_slash (0.00s)
=== RUN   TestSignatureV4WithForwardedPort
=== RUN   TestSignatureV4WithForwardedPort/HTTP_with_non-standard_port
=== RUN   TestSignatureV4WithForwardedPort/HTTPS_with_non-standard_port
=== RUN   TestSignatureV4WithForwardedPort/HTTP_with_standard_port_(80)
=== RUN   TestSignatureV4WithForwardedPort/HTTPS_with_standard_port_(443)
=== RUN   TestSignatureV4WithForwardedPort/empty_proto_with_non-standard_port
=== RUN   TestSignatureV4WithForwardedPort/empty_proto_with_standard_http_port
--- PASS: TestSignatureV4WithForwardedPort (0.00s)
    --- PASS: TestSignatureV4WithForwardedPort/HTTP_with_non-standard_port (0.00s)
    --- PASS: TestSignatureV4WithForwardedPort/HTTPS_with_non-standard_port (0.00s)
    --- PASS: TestSignatureV4WithForwardedPort/HTTP_with_standard_port_(80) (0.00s)
    --- PASS: TestSignatureV4WithForwardedPort/HTTPS_with_standard_port_(443) (0.00s)
    --- PASS: TestSignatureV4WithForwardedPort/empty_proto_with_non-standard_port (0.00s)
    --- PASS: TestSignatureV4WithForwardedPort/empty_proto_with_standard_http_port (0.00s)
=== RUN   TestPresignedSignatureV4Basic
--- PASS: TestPresignedSignatureV4Basic (0.00s)
=== RUN   TestPresignedSignatureV4MissingExpires
--- PASS: TestPresignedSignatureV4MissingExpires (0.00s)
=== RUN   TestPresignedSignatureV4WithForwardedPrefix
=== RUN   TestPresignedSignatureV4WithForwardedPrefix/prefix_without_trailing_slash
=== RUN   TestPresignedSignatureV4WithForwardedPrefix/prefix_with_trailing_slash
--- PASS: TestPresignedSignatureV4WithForwardedPrefix (0.00s)
    --- PASS: TestPresignedSignatureV4WithForwardedPrefix/prefix_without_trailing_slash (0.00s)
    --- PASS: TestPresignedSignatureV4WithForwardedPrefix/prefix_with_trailing_slash (0.00s)
=== RUN   TestPresignedSignatureV4WithForwardedPrefixTrailingSlash
=== RUN   TestPresignedSignatureV4WithForwardedPrefixTrailingSlash/bucket_listObjects_with_trailing_slash
=== RUN   TestPresignedSignatureV4WithForwardedPrefixTrailingSlash/prefix_path_with_trailing_slash
=== RUN   TestPresignedSignatureV4WithForwardedPrefixTrailingSlash/api_path_with_trailing_slash
--- PASS: TestPresignedSignatureV4WithForwardedPrefixTrailingSlash (0.00s)
    --- PASS: TestPresignedSignatureV4WithForwardedPrefixTrailingSlash/bucket_listObjects_with_trailing_slash (0.00s)
    --- PASS: TestPresignedSignatureV4WithForwardedPrefixTrailingSlash/prefix_path_with_trailing_slash (0.00s)
    --- PASS: TestPresignedSignatureV4WithForwardedPrefixTrailingSlash/api_path_with_trailing_slash (0.00s)
=== RUN   TestGetStringToSignPUT
--- PASS: TestGetStringToSignPUT (0.00s)
=== RUN   TestGetStringToSignGETEmptyStringHash
--- PASS: TestGetStringToSignGETEmptyStringHash (0.00s)
=== RUN   TestIAMPayloadHashComputation
--- PASS: TestIAMPayloadHashComputation (0.00s)
=== RUN   TestS3PayloadHashNoRegression
--- PASS: TestS3PayloadHashNoRegression (0.00s)
=== RUN   TestIAMEmptyBodyPayloadHash
--- PASS: TestIAMEmptyBodyPayloadHash (0.00s)
=== RUN   TestSTSPayloadHashComputation
--- PASS: TestSTSPayloadHashComputation (0.00s)
=== RUN   TestGitHubIssue7080Scenario
--- PASS: TestGitHubIssue7080Scenario (0.00s)
=== RUN   TestIAMSignatureServiceMatching
--- PASS: TestIAMSignatureServiceMatching (0.00s)
=== RUN   TestStreamingSignatureServiceField
--- PASS: TestStreamingSignatureServiceField (0.00s)
=== RUN   TestIAMLargeBodySecurityLimit
--- PASS: TestIAMLargeBodySecurityLimit (0.03s)
=== RUN   TestStreamHashRequestBody
=== RUN   TestStreamHashRequestBody/empty_body
=== RUN   TestStreamHashRequestBody/small_payload
=== RUN   TestStreamHashRequestBody/medium_payload
=== RUN   TestStreamHashRequestBody/large_payload_within_limit
--- PASS: TestStreamHashRequestBody (0.00s)
    --- PASS: TestStreamHashRequestBody/empty_body (0.00s)
    --- PASS: TestStreamHashRequestBody/small_payload (0.00s)
    --- PASS: TestStreamHashRequestBody/medium_payload (0.00s)
    --- PASS: TestStreamHashRequestBody/large_payload_within_limit (0.00s)
=== RUN   TestStreamingVsNonStreamingConsistency
=== RUN   TestStreamingVsNonStreamingConsistency/payload_0
=== RUN   TestStreamingVsNonStreamingConsistency/payload_1
=== RUN   TestStreamingVsNonStreamingConsistency/payload_2
=== RUN   TestStreamingVsNonStreamingConsistency/payload_3
=== RUN   TestStreamingVsNonStreamingConsistency/payload_4
=== RUN   TestStreamingVsNonStreamingConsistency/payload_5
--- PASS: TestStreamingVsNonStreamingConsistency (0.00s)
    --- PASS: TestStreamingVsNonStreamingConsistency/payload_0 (0.00s)
    --- PASS: TestStreamingVsNonStreamingConsistency/payload_1 (0.00s)
    --- PASS: TestStreamingVsNonStreamingConsistency/payload_2 (0.00s)
    --- PASS: TestStreamingVsNonStreamingConsistency/payload_3 (0.00s)
    --- PASS: TestStreamingVsNonStreamingConsistency/payload_4 (0.00s)
    --- PASS: TestStreamingVsNonStreamingConsistency/payload_5 (0.00s)
=== RUN   TestStreamingWithSizeLimit
--- PASS: TestStreamingWithSizeLimit (0.03s)
=== RUN   TestBuildBucketMetadata
W0616 11:57:39.879016 bucket_metadata.go:106 Invalid ownership: , bucket: ownershipEmptyStr
W0616 11:57:39.879335 bucket_metadata.go:117 owner[id=xxxxx] is invalid, bucket: acpEmptyObject
--- PASS: TestBuildBucketMetadata (0.00s)
=== RUN   TestGetBucketMetadata
--- PASS: TestGetBucketMetadata (1.00s)
=== RUN   TestChunkedEncodingMixedFormat
--- PASS: TestChunkedEncodingMixedFormat (0.00s)
=== RUN   TestNewSignV4ChunkedReaderStreamingUnsignedPayloadTrailer
--- PASS: TestNewSignV4ChunkedReaderStreamingUnsignedPayloadTrailer (0.00s)
=== RUN   TestSignedStreamingUpload
--- PASS: TestSignedStreamingUpload (0.00s)
=== RUN   TestSignedStreamingUploadInvalidSignature
--- PASS: TestSignedStreamingUploadInvalidSignature (0.00s)
=== RUN   TestInitiateMultipartUploadResult
--- PASS: TestInitiateMultipartUploadResult (0.00s)
=== RUN   TestListPartsResult
--- PASS: TestListPartsResult (0.00s)
=== RUN   Test_parsePartNumber
=== RUN   Test_parsePartNumber/first
=== RUN   Test_parsePartNumber/second
--- PASS: Test_parsePartNumber (0.00s)
    --- PASS: Test_parsePartNumber/first (0.00s)
    --- PASS: Test_parsePartNumber/second (0.00s)
=== RUN   TestBucketPolicyValidationBasics
=== RUN   TestBucketPolicyValidationBasics/Valid_bucket_policy
=== RUN   TestBucketPolicyValidationBasics/Policy_without_Principal_(invalid)
=== RUN   TestBucketPolicyValidationBasics/Invalid_version
=== RUN   TestBucketPolicyValidationBasics/Resource_not_matching_bucket
=== RUN   TestBucketPolicyValidationBasics/Non-S3_action
--- PASS: TestBucketPolicyValidationBasics (0.00s)
    --- PASS: TestBucketPolicyValidationBasics/Valid_bucket_policy (0.00s)
    --- PASS: TestBucketPolicyValidationBasics/Policy_without_Principal_(invalid) (0.00s)
    --- PASS: TestBucketPolicyValidationBasics/Invalid_version (0.00s)
    --- PASS: TestBucketPolicyValidationBasics/Resource_not_matching_bucket (0.00s)
    --- PASS: TestBucketPolicyValidationBasics/Non-S3_action (0.00s)
=== RUN   TestBucketResourceValidation
=== RUN   TestBucketResourceValidation/Exact_bucket_ARN
=== RUN   TestBucketResourceValidation/Bucket_wildcard_ARN
=== RUN   TestBucketResourceValidation/Specific_object_ARN
=== RUN   TestBucketResourceValidation/Different_bucket_ARN
=== RUN   TestBucketResourceValidation/Global_S3_wildcard
=== RUN   TestBucketResourceValidation/Invalid_ARN_format
--- PASS: TestBucketResourceValidation (0.00s)
    --- PASS: TestBucketResourceValidation/Exact_bucket_ARN (0.00s)
    --- PASS: TestBucketResourceValidation/Bucket_wildcard_ARN (0.00s)
    --- PASS: TestBucketResourceValidation/Specific_object_ARN (0.00s)
    --- PASS: TestBucketResourceValidation/Different_bucket_ARN (0.00s)
    --- PASS: TestBucketResourceValidation/Global_S3_wildcard (0.00s)
    --- PASS: TestBucketResourceValidation/Invalid_ARN_format (0.00s)
=== RUN   TestBucketPolicyJSONSerialization
--- PASS: TestBucketPolicyJSONSerialization (0.00s)
=== RUN   TestS3EndToEndWithJWT
=== RUN   TestS3EndToEndWithJWT/S3_Read-Only_Role_Complete_Workflow
=== RUN   TestS3EndToEndWithJWT/S3_Read-Only_Role_Complete_Workflow/S3_Read-Only_Role_Complete_Workflow_CreateBucket
    s3_end_to_end_test.go:645: S3 Operation: PUT /test-bucket -> 403 (DENIED)
=== RUN   TestS3EndToEndWithJWT/S3_Read-Only_Role_Complete_Workflow/S3_Read-Only_Role_Complete_Workflow_ListBucket
    s3_end_to_end_test.go:645: S3 Operation: GET /test-bucket -> 200 (ALLOWED)
=== RUN   TestS3EndToEndWithJWT/S3_Read-Only_Role_Complete_Workflow/S3_Read-Only_Role_Complete_Workflow_PutObject
    s3_end_to_end_test.go:645: S3 Operation: PUT /test-bucket/test-file.txt -> 403 (DENIED)
=== RUN   TestS3EndToEndWithJWT/S3_Read-Only_Role_Complete_Workflow/S3_Read-Only_Role_Complete_Workflow_GetObject
    s3_end_to_end_test.go:645: S3 Operation: GET /test-bucket/test-file.txt -> 200 (ALLOWED)
=== RUN   TestS3EndToEndWithJWT/S3_Read-Only_Role_Complete_Workflow/S3_Read-Only_Role_Complete_Workflow_HeadObject
    s3_end_to_end_test.go:645: S3 Operation: HEAD /test-bucket/test-file.txt -> 200 (ALLOWED)
=== RUN   TestS3EndToEndWithJWT/S3_Read-Only_Role_Complete_Workflow/S3_Read-Only_Role_Complete_Workflow_DeleteObject
    s3_end_to_end_test.go:645: S3 Operation: DELETE /test-bucket/test-file.txt -> 403 (DENIED)
=== RUN   TestS3EndToEndWithJWT/S3_Admin_Role_Complete_Workflow
=== RUN   TestS3EndToEndWithJWT/S3_Admin_Role_Complete_Workflow/S3_Admin_Role_Complete_Workflow_CreateBucket
    s3_end_to_end_test.go:645: S3 Operation: PUT /admin-bucket -> 200 (ALLOWED)
=== RUN   TestS3EndToEndWithJWT/S3_Admin_Role_Complete_Workflow/S3_Admin_Role_Complete_Workflow_PutObject
    s3_end_to_end_test.go:645: S3 Operation: PUT /admin-bucket/admin-file.txt -> 200 (ALLOWED)
=== RUN   TestS3EndToEndWithJWT/S3_Admin_Role_Complete_Workflow/S3_Admin_Role_Complete_Workflow_GetObject
    s3_end_to_end_test.go:645: S3 Operation: GET /admin-bucket/admin-file.txt -> 200 (ALLOWED)
=== RUN   TestS3EndToEndWithJWT/S3_Admin_Role_Complete_Workflow/S3_Admin_Role_Complete_Workflow_DeleteObject
    s3_end_to_end_test.go:645: S3 Operation: DELETE /admin-bucket/admin-file.txt -> 200 (ALLOWED)
=== RUN   TestS3EndToEndWithJWT/S3_Admin_Role_Complete_Workflow/S3_Admin_Role_Complete_Workflow_DeleteBucket
    s3_end_to_end_test.go:645: S3 Operation: DELETE /admin-bucket -> 200 (ALLOWED)
=== RUN   TestS3EndToEndWithJWT/S3_IP-Restricted_Role
=== RUN   TestS3EndToEndWithJWT/S3_IP-Restricted_Role/S3_IP-Restricted_Role_GetObject
    s3_end_to_end_test.go:645: S3 Operation: GET /restricted-bucket/file.txt -> 200 (ALLOWED)
=== RUN   TestS3EndToEndWithJWT/S3_IP-Restricted_Role/S3_IP-Restricted_Role_GetObject#01
    s3_end_to_end_test.go:645: S3 Operation: GET /restricted-bucket/file.txt -> 403 (DENIED)
--- PASS: TestS3EndToEndWithJWT (0.00s)
    --- PASS: TestS3EndToEndWithJWT/S3_Read-Only_Role_Complete_Workflow (0.00s)
        --- PASS: TestS3EndToEndWithJWT/S3_Read-Only_Role_Complete_Workflow/S3_Read-Only_Role_Complete_Workflow_CreateBucket (0.00s)
        --- PASS: TestS3EndToEndWithJWT/S3_Read-Only_Role_Complete_Workflow/S3_Read-Only_Role_Complete_Workflow_ListBucket (0.00s)
        --- PASS: TestS3EndToEndWithJWT/S3_Read-Only_Role_Complete_Workflow/S3_Read-Only_Role_Complete_Workflow_PutObject (0.00s)
        --- PASS: TestS3EndToEndWithJWT/S3_Read-Only_Role_Complete_Workflow/S3_Read-Only_Role_Complete_Workflow_GetObject (0.00s)
        --- PASS: TestS3EndToEndWithJWT/S3_Read-Only_Role_Complete_Workflow/S3_Read-Only_Role_Complete_Workflow_HeadObject (0.00s)
        --- PASS: TestS3EndToEndWithJWT/S3_Read-Only_Role_Complete_Workflow/S3_Read-Only_Role_Complete_Workflow_DeleteObject (0.00s)
    --- PASS: TestS3EndToEndWithJWT/S3_Admin_Role_Complete_Workflow (0.00s)
        --- PASS: TestS3EndToEndWithJWT/S3_Admin_Role_Complete_Workflow/S3_Admin_Role_Complete_Workflow_CreateBucket (0.00s)
        --- PASS: TestS3EndToEndWithJWT/S3_Admin_Role_Complete_Workflow/S3_Admin_Role_Complete_Workflow_PutObject (0.00s)
        --- PASS: TestS3EndToEndWithJWT/S3_Admin_Role_Complete_Workflow/S3_Admin_Role_Complete_Workflow_GetObject (0.00s)
        --- PASS: TestS3EndToEndWithJWT/S3_Admin_Role_Complete_Workflow/S3_Admin_Role_Complete_Workflow_DeleteObject (0.00s)
        --- PASS: TestS3EndToEndWithJWT/S3_Admin_Role_Complete_Workflow/S3_Admin_Role_Complete_Workflow_DeleteBucket (0.00s)
    --- PASS: TestS3EndToEndWithJWT/S3_IP-Restricted_Role (0.00s)
        --- PASS: TestS3EndToEndWithJWT/S3_IP-Restricted_Role/S3_IP-Restricted_Role_GetObject (0.00s)
        --- PASS: TestS3EndToEndWithJWT/S3_IP-Restricted_Role/S3_IP-Restricted_Role_GetObject#01 (0.00s)
=== RUN   TestS3MultipartUploadWithJWT
=== RUN   TestS3MultipartUploadWithJWT/Initialize_Multipart_Upload
    s3_end_to_end_test.go:645: S3 Operation: POST /multipart-bucket/large-file.txt?uploads -> 404 (DENIED)
    s3_end_to_end_test.go:651: Non-auth error: Not found
=== RUN   TestS3MultipartUploadWithJWT/Upload_Part
    s3_end_to_end_test.go:645: S3 Operation: PUT /multipart-bucket/large-file.txt?partNumber=1&uploadId=test-upload-id -> 200 (ALLOWED)
=== RUN   TestS3MultipartUploadWithJWT/List_Parts
    s3_end_to_end_test.go:645: S3 Operation: GET /multipart-bucket/large-file.txt?uploadId=test-upload-id -> 200 (ALLOWED)
=== RUN   TestS3MultipartUploadWithJWT/Complete_Multipart_Upload
    s3_end_to_end_test.go:645: S3 Operation: POST /multipart-bucket/large-file.txt?uploadId=test-upload-id -> 404 (DENIED)
    s3_end_to_end_test.go:651: Non-auth error: Not found
--- PASS: TestS3MultipartUploadWithJWT (0.00s)
    --- PASS: TestS3MultipartUploadWithJWT/Initialize_Multipart_Upload (0.00s)
    --- PASS: TestS3MultipartUploadWithJWT/Upload_Part (0.00s)
    --- PASS: TestS3MultipartUploadWithJWT/List_Parts (0.00s)
    --- PASS: TestS3MultipartUploadWithJWT/Complete_Multipart_Upload (0.00s)
=== RUN   TestS3CORSWithJWT
--- PASS: TestS3CORSWithJWT (0.00s)
=== RUN   TestS3PerformanceWithIAM
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-0.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-1.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-2.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-3.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-4.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-5.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-6.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-7.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-8.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-9.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-10.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-11.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-12.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-13.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-14.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-15.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-16.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-17.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-18.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-19.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-20.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-21.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-22.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-23.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-24.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-25.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-26.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-27.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-28.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-29.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-30.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-31.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-32.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-33.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-34.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-35.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-36.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-37.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-38.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-39.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-40.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-41.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-42.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-43.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-44.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-45.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-46.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-47.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-48.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-49.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-50.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-51.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-52.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-53.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-54.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-55.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-56.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-57.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-58.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-59.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-60.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-61.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-62.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-63.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-64.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-65.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-66.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-67.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-68.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-69.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-70.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-71.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-72.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-73.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-74.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-75.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-76.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-77.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-78.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-79.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-80.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-81.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-82.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-83.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-84.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-85.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-86.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-87.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-88.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-89.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-90.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-91.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-92.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-93.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-94.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-95.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-96.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-97.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-98.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:645: S3 Operation: GET /perf-bucket/file-99.txt -> 200 (ALLOWED)
    s3_end_to_end_test.go:284: Performance Results:
    s3_end_to_end_test.go:285: - Total requests: 100
    s3_end_to_end_test.go:286: - Total time: 3.935428ms
    s3_end_to_end_test.go:287: - Average latency: 39.354µs
    s3_end_to_end_test.go:288: - Requests per second: 25410.20
--- PASS: TestS3PerformanceWithIAM (0.00s)
=== RUN   TestGranularActionMappingSecurity
=== RUN   TestGranularActionMappingSecurity/delete_object_security_fix
    s3_granular_action_security_test.go:130: SECURITY IMPROVEMENT: DELETE object operations should map to s3:DeleteObject, not s3:PutObject
    s3_granular_action_security_test.go:131:    Problem Fixed: Old mapping incorrectly mapped DELETE object to s3:PutObject, allowing users with only PUT permissions to delete objects - a critical security flaw
    s3_granular_action_security_test.go:132:    Granular Action: s3:DeleteObject
=== RUN   TestGranularActionMappingSecurity/get_object_acl_precision
    s3_granular_action_security_test.go:130: SECURITY IMPROVEMENT: GET object ACL should map to s3:GetObjectAcl, not generic s3:GetObject
    s3_granular_action_security_test.go:131:    Problem Fixed: Old mapping would allow users with s3:GetObject permission to read ACLs, potentially exposing sensitive permission information
    s3_granular_action_security_test.go:132:    Granular Action: s3:GetObjectAcl
=== RUN   TestGranularActionMappingSecurity/put_object_tagging_precision
    s3_granular_action_security_test.go:130: SECURITY IMPROVEMENT: PUT object tagging should map to s3:PutObjectTagging, not generic s3:PutObject
    s3_granular_action_security_test.go:131:    Problem Fixed: Old mapping couldn't distinguish between actual object uploads and metadata operations like tagging, making fine-grained permissions impossible
    s3_granular_action_security_test.go:132:    Granular Action: s3:PutObjectTagging
=== RUN   TestGranularActionMappingSecurity/multipart_upload_precision
    s3_granular_action_security_test.go:130: SECURITY IMPROVEMENT: Multipart upload initiation should map to s3:CreateMultipartUpload
    s3_granular_action_security_test.go:131:    Problem Fixed: Old mapping would treat multipart operations as generic s3:PutObject, preventing policies that allow regular uploads but restrict large multipart operations
    s3_granular_action_security_test.go:132:    Granular Action: s3:CreateMultipartUpload
=== RUN   TestGranularActionMappingSecurity/bucket_policy_vs_bucket_creation
    s3_granular_action_security_test.go:130: SECURITY IMPROVEMENT: Bucket policy modifications should map to s3:PutBucketPolicy, not s3:CreateBucket
    s3_granular_action_security_test.go:131:    Problem Fixed: Old mapping couldn't distinguish between creating buckets and modifying bucket policies, potentially allowing unauthorized policy changes
    s3_granular_action_security_test.go:132:    Granular Action: s3:PutBucketPolicy
=== RUN   TestGranularActionMappingSecurity/list_vs_read_distinction
    s3_granular_action_security_test.go:130: SECURITY IMPROVEMENT: Listing multipart uploads should map to s3:ListMultipartUploads
    s3_granular_action_security_test.go:131:    Problem Fixed: Old mapping would use generic s3:ListBucket for all bucket operations, preventing fine-grained control over who can see ongoing multipart operations
    s3_granular_action_security_test.go:132:    Granular Action: s3:ListMultipartUploads
=== RUN   TestGranularActionMappingSecurity/delete_object_tagging_precision
    s3_granular_action_security_test.go:130: SECURITY IMPROVEMENT: Delete object tagging should map to s3:DeleteObjectTagging, not s3:DeleteObject
    s3_granular_action_security_test.go:131:    Problem Fixed: Old mapping couldn't distinguish between deleting objects and deleting tags, preventing policies that allow tag management but not object deletion
    s3_granular_action_security_test.go:132:    Granular Action: s3:DeleteObjectTagging
--- PASS: TestGranularActionMappingSecurity (0.00s)
    --- PASS: TestGranularActionMappingSecurity/delete_object_security_fix (0.00s)
    --- PASS: TestGranularActionMappingSecurity/get_object_acl_precision (0.00s)
    --- PASS: TestGranularActionMappingSecurity/put_object_tagging_precision (0.00s)
    --- PASS: TestGranularActionMappingSecurity/multipart_upload_precision (0.00s)
    --- PASS: TestGranularActionMappingSecurity/bucket_policy_vs_bucket_creation (0.00s)
    --- PASS: TestGranularActionMappingSecurity/list_vs_read_distinction (0.00s)
    --- PASS: TestGranularActionMappingSecurity/delete_object_tagging_precision (0.00s)
=== RUN   TestBackwardCompatibilityFallback
=== RUN   TestBackwardCompatibilityFallback/generic_read_fallback
    s3_granular_action_security_test.go:200: COMPATIBILITY: Generic read operations should fall back to s3:GetObject for compatibility - s3:GetObject
=== RUN   TestBackwardCompatibilityFallback/generic_write_fallback
    s3_granular_action_security_test.go:200: COMPATIBILITY: Generic write operations should fall back to s3:PutObject for compatibility - s3:PutObject
=== RUN   TestBackwardCompatibilityFallback/already_granular_passthrough
    s3_granular_action_security_test.go:200: COMPATIBILITY: Already granular actions should pass through unchanged - s3:GetBucketLocation
=== RUN   TestBackwardCompatibilityFallback/unknown_action_conversion
    s3_granular_action_security_test.go:200: COMPATIBILITY: Unknown actions should be converted to S3 format for consistency - s3:CustomAction
--- PASS: TestBackwardCompatibilityFallback (0.00s)
    --- PASS: TestBackwardCompatibilityFallback/generic_read_fallback (0.00s)
    --- PASS: TestBackwardCompatibilityFallback/generic_write_fallback (0.00s)
    --- PASS: TestBackwardCompatibilityFallback/already_granular_passthrough (0.00s)
    --- PASS: TestBackwardCompatibilityFallback/unknown_action_conversion (0.00s)
=== RUN   TestPolicyEnforcementScenarios
=== RUN   TestPolicyEnforcementScenarios/allow_read_deny_acl_access
    s3_granular_action_security_test.go:301: 🔒 SECURITY SCENARIO: allow_read_deny_acl_access
    s3_granular_action_security_test.go:302:    Expected Action: s3:GetObjectAcl
    s3_granular_action_security_test.go:303:    Security Benefit: Policy allows reading objects but denies ACL access - granular actions enable this distinction
    s3_granular_action_security_test.go:304:    Policy Example:
        {
        				"Version": "2012-10-17",
        				"Statement": [
        					{
        						"Effect": "Allow",
        						"Action": "s3:GetObject",
        						"Resource": "arn:aws:s3:::sensitive-bucket/*"
        					}
        				]
        			}
=== RUN   TestPolicyEnforcementScenarios/allow_tagging_deny_object_modification
    s3_granular_action_security_test.go:301: 🔒 SECURITY SCENARIO: allow_tagging_deny_object_modification
    s3_granular_action_security_test.go:302:    Expected Action: s3:PutObjectTagging
    s3_granular_action_security_test.go:303:    Security Benefit: Policy allows tag management but prevents actual object uploads - critical for metadata-only roles
    s3_granular_action_security_test.go:304:    Policy Example:
        {
        				"Version": "2012-10-17",
        				"Statement": [
        					{
        						"Effect": "Allow", 
        						"Action": ["s3:PutObjectTagging", "s3:DeleteObjectTagging"],
        						"Resource": "arn:aws:s3:::data-bucket/*"
        					}
        				]
        			}
=== RUN   TestPolicyEnforcementScenarios/restrict_multipart_uploads
    s3_granular_action_security_test.go:301: 🔒 SECURITY SCENARIO: restrict_multipart_uploads
    s3_granular_action_security_test.go:302:    Expected Action: s3:CreateMultipartUpload
    s3_granular_action_security_test.go:303:    Security Benefit: Policy allows regular uploads but blocks large multipart uploads - prevents resource abuse
    s3_granular_action_security_test.go:304:    Policy Example:
        {
        				"Version": "2012-10-17",
        				"Statement": [
        					{
        						"Effect": "Allow",
        						"Action": "s3:PutObject",
        						"Resource": "arn:aws:s3:::uploads/*"
        					},
        					{
        						"Effect": "Deny",
        						"Action": ["s3:CreateMultipartUpload", "s3:UploadPart"],
        						"Resource": "arn:aws:s3:::uploads/*"
        					}
        				]
        			}
--- PASS: TestPolicyEnforcementScenarios (0.00s)
    --- PASS: TestPolicyEnforcementScenarios/allow_read_deny_acl_access (0.00s)
    --- PASS: TestPolicyEnforcementScenarios/allow_tagging_deny_object_modification (0.00s)
    --- PASS: TestPolicyEnforcementScenarios/restrict_multipart_uploads (0.00s)
=== RUN   TestSelectPrimaryRole
=== RUN   TestSelectPrimaryRole/empty_roles_returns_empty
=== RUN   TestSelectPrimaryRole/single_role_returns_that_role
=== RUN   TestSelectPrimaryRole/multiple_roles_returns_first
=== RUN   TestSelectPrimaryRole/order_matters
=== RUN   TestSelectPrimaryRole/complex_enterprise_roles
--- PASS: TestSelectPrimaryRole (0.00s)
    --- PASS: TestSelectPrimaryRole/empty_roles_returns_empty (0.00s)
    --- PASS: TestSelectPrimaryRole/single_role_returns_that_role (0.00s)
    --- PASS: TestSelectPrimaryRole/multiple_roles_returns_first (0.00s)
    --- PASS: TestSelectPrimaryRole/order_matters (0.00s)
    --- PASS: TestSelectPrimaryRole/complex_enterprise_roles (0.00s)
=== RUN   TestS3IAMMiddleware
--- PASS: TestS3IAMMiddleware (0.00s)
=== RUN   TestS3IAMMiddlewareJWTAuth
    s3_iam_simple_test.go:58: JWT authentication test requires full IAM setup
--- SKIP: TestS3IAMMiddlewareJWTAuth (0.00s)
=== RUN   TestBuildS3ResourceArn
=== RUN   TestBuildS3ResourceArn/empty_bucket_and_object
=== RUN   TestBuildS3ResourceArn/bucket_only
=== RUN   TestBuildS3ResourceArn/bucket_and_object
=== RUN   TestBuildS3ResourceArn/bucket_and_object_with_leading_slash
=== RUN   TestBuildS3ResourceArn/bucket_and_nested_object
--- PASS: TestBuildS3ResourceArn (0.00s)
    --- PASS: TestBuildS3ResourceArn/empty_bucket_and_object (0.00s)
    --- PASS: TestBuildS3ResourceArn/bucket_only (0.00s)
    --- PASS: TestBuildS3ResourceArn/bucket_and_object (0.00s)
    --- PASS: TestBuildS3ResourceArn/bucket_and_object_with_leading_slash (0.00s)
    --- PASS: TestBuildS3ResourceArn/bucket_and_nested_object (0.00s)
=== RUN   TestDetermineGranularS3Action
=== RUN   TestDetermineGranularS3Action/get_object
=== RUN   TestDetermineGranularS3Action/get_object_acl
=== RUN   TestDetermineGranularS3Action/get_object_tagging
=== RUN   TestDetermineGranularS3Action/put_object
=== RUN   TestDetermineGranularS3Action/put_object_acl
=== RUN   TestDetermineGranularS3Action/delete_object
=== RUN   TestDetermineGranularS3Action/delete_object_tagging
=== RUN   TestDetermineGranularS3Action/create_multipart_upload
=== RUN   TestDetermineGranularS3Action/upload_part
=== RUN   TestDetermineGranularS3Action/complete_multipart_upload
=== RUN   TestDetermineGranularS3Action/abort_multipart_upload
=== RUN   TestDetermineGranularS3Action/list_bucket
=== RUN   TestDetermineGranularS3Action/get_bucket_acl
=== RUN   TestDetermineGranularS3Action/put_bucket_policy
=== RUN   TestDetermineGranularS3Action/delete_bucket
=== RUN   TestDetermineGranularS3Action/list_multipart_uploads
=== RUN   TestDetermineGranularS3Action/legacy_read_fallback
=== RUN   TestDetermineGranularS3Action/already_granular_action
--- PASS: TestDetermineGranularS3Action (0.00s)
    --- PASS: TestDetermineGranularS3Action/get_object (0.00s)
    --- PASS: TestDetermineGranularS3Action/get_object_acl (0.00s)
    --- PASS: TestDetermineGranularS3Action/get_object_tagging (0.00s)
    --- PASS: TestDetermineGranularS3Action/put_object (0.00s)
    --- PASS: TestDetermineGranularS3Action/put_object_acl (0.00s)
    --- PASS: TestDetermineGranularS3Action/delete_object (0.00s)
    --- PASS: TestDetermineGranularS3Action/delete_object_tagging (0.00s)
    --- PASS: TestDetermineGranularS3Action/create_multipart_upload (0.00s)
    --- PASS: TestDetermineGranularS3Action/upload_part (0.00s)
    --- PASS: TestDetermineGranularS3Action/complete_multipart_upload (0.00s)
    --- PASS: TestDetermineGranularS3Action/abort_multipart_upload (0.00s)
    --- PASS: TestDetermineGranularS3Action/list_bucket (0.00s)
    --- PASS: TestDetermineGranularS3Action/get_bucket_acl (0.00s)
    --- PASS: TestDetermineGranularS3Action/put_bucket_policy (0.00s)
    --- PASS: TestDetermineGranularS3Action/delete_bucket (0.00s)
    --- PASS: TestDetermineGranularS3Action/list_multipart_uploads (0.00s)
    --- PASS: TestDetermineGranularS3Action/legacy_read_fallback (0.00s)
    --- PASS: TestDetermineGranularS3Action/already_granular_action (0.00s)
=== RUN   TestMapLegacyActionToIAM
=== RUN   TestMapLegacyActionToIAM/read_action_fallback
=== RUN   TestMapLegacyActionToIAM/write_action_fallback
=== RUN   TestMapLegacyActionToIAM/admin_action_fallback
=== RUN   TestMapLegacyActionToIAM/granular_multipart_action
=== RUN   TestMapLegacyActionToIAM/unknown_action_with_s3_prefix
=== RUN   TestMapLegacyActionToIAM/unknown_action_without_prefix
--- PASS: TestMapLegacyActionToIAM (0.00s)
    --- PASS: TestMapLegacyActionToIAM/read_action_fallback (0.00s)
    --- PASS: TestMapLegacyActionToIAM/write_action_fallback (0.00s)
    --- PASS: TestMapLegacyActionToIAM/admin_action_fallback (0.00s)
    --- PASS: TestMapLegacyActionToIAM/granular_multipart_action (0.00s)
    --- PASS: TestMapLegacyActionToIAM/unknown_action_with_s3_prefix (0.00s)
    --- PASS: TestMapLegacyActionToIAM/unknown_action_without_prefix (0.00s)
=== RUN   TestExtractSourceIP
=== RUN   TestExtractSourceIP/X-Forwarded-For_header
=== RUN   TestExtractSourceIP/X-Real-IP_header
=== RUN   TestExtractSourceIP/RemoteAddr_fallback
--- PASS: TestExtractSourceIP (0.00s)
    --- PASS: TestExtractSourceIP/X-Forwarded-For_header (0.00s)
    --- PASS: TestExtractSourceIP/X-Real-IP_header (0.00s)
    --- PASS: TestExtractSourceIP/RemoteAddr_fallback (0.00s)
=== RUN   TestExtractRoleNameFromPrincipal
=== RUN   TestExtractRoleNameFromPrincipal/valid_assumed_role_ARN
=== RUN   TestExtractRoleNameFromPrincipal/invalid_format
=== RUN   TestExtractRoleNameFromPrincipal/missing_session_name
=== RUN   TestExtractRoleNameFromPrincipal/empty_principal
--- PASS: TestExtractRoleNameFromPrincipal (0.00s)
    --- PASS: TestExtractRoleNameFromPrincipal/valid_assumed_role_ARN (0.00s)
    --- PASS: TestExtractRoleNameFromPrincipal/invalid_format (0.00s)
    --- PASS: TestExtractRoleNameFromPrincipal/missing_session_name (0.00s)
    --- PASS: TestExtractRoleNameFromPrincipal/empty_principal (0.00s)
=== RUN   TestIAMIdentityIsAdmin
--- PASS: TestIAMIdentityIsAdmin (0.00s)
=== RUN   TestJWTAuthenticationFlow
=== RUN   TestJWTAuthenticationFlow/Read-Only_JWT_Authentication
=== RUN   TestJWTAuthenticationFlow/Read-Only_JWT_Authentication/Read
=== RUN   TestJWTAuthenticationFlow/Read-Only_JWT_Authentication/Write
=== RUN   TestJWTAuthenticationFlow/Read-Only_JWT_Authentication/List
=== RUN   TestJWTAuthenticationFlow/Admin_JWT_Authentication
=== RUN   TestJWTAuthenticationFlow/Admin_JWT_Authentication/Read
=== RUN   TestJWTAuthenticationFlow/Admin_JWT_Authentication/Write
=== RUN   TestJWTAuthenticationFlow/Admin_JWT_Authentication/DeleteBucket
--- PASS: TestJWTAuthenticationFlow (0.00s)
    --- PASS: TestJWTAuthenticationFlow/Read-Only_JWT_Authentication (0.00s)
        --- PASS: TestJWTAuthenticationFlow/Read-Only_JWT_Authentication/Read (0.00s)
        --- PASS: TestJWTAuthenticationFlow/Read-Only_JWT_Authentication/Write (0.00s)
        --- PASS: TestJWTAuthenticationFlow/Read-Only_JWT_Authentication/List (0.00s)
    --- PASS: TestJWTAuthenticationFlow/Admin_JWT_Authentication (0.00s)
        --- PASS: TestJWTAuthenticationFlow/Admin_JWT_Authentication/Read (0.00s)
        --- PASS: TestJWTAuthenticationFlow/Admin_JWT_Authentication/Write (0.00s)
        --- PASS: TestJWTAuthenticationFlow/Admin_JWT_Authentication/DeleteBucket (0.00s)
=== RUN   TestJWTTokenValidation
=== RUN   TestJWTTokenValidation/Empty_token
=== RUN   TestJWTTokenValidation/Invalid_token_format
=== RUN   TestJWTTokenValidation/Expired_token
--- PASS: TestJWTTokenValidation (0.00s)
    --- PASS: TestJWTTokenValidation/Empty_token (0.00s)
    --- PASS: TestJWTTokenValidation/Invalid_token_format (0.00s)
    --- PASS: TestJWTTokenValidation/Expired_token (0.00s)
=== RUN   TestRequestContextExtraction
=== RUN   TestRequestContextExtraction/Standard_request_with_IP
=== RUN   TestRequestContextExtraction/Request_with_X-Real-IP
--- PASS: TestRequestContextExtraction (0.00s)
    --- PASS: TestRequestContextExtraction/Standard_request_with_IP (0.00s)
    --- PASS: TestRequestContextExtraction/Request_with_X-Real-IP (0.00s)
=== RUN   TestIPBasedPolicyEnforcement
=== RUN   TestIPBasedPolicyEnforcement/Allow_from_office_IP
=== RUN   TestIPBasedPolicyEnforcement/Block_from_external_IP
=== RUN   TestIPBasedPolicyEnforcement/Allow_from_internal_range
--- PASS: TestIPBasedPolicyEnforcement (0.00s)
    --- PASS: TestIPBasedPolicyEnforcement/Allow_from_office_IP (0.00s)
    --- PASS: TestIPBasedPolicyEnforcement/Block_from_external_IP (0.00s)
    --- PASS: TestIPBasedPolicyEnforcement/Allow_from_internal_range (0.00s)
=== RUN   TestListPartsActionMapping
=== RUN   TestListPartsActionMapping/get_object_without_uploadId
=== RUN   TestListPartsActionMapping/get_object_with_uploadId
=== RUN   TestListPartsActionMapping/get_object_with_uploadId_and_other_params
=== RUN   TestListPartsActionMapping/get_object_versions
=== RUN   TestListPartsActionMapping/get_object_acl_without_uploadId
=== RUN   TestListPartsActionMapping/post_multipart_upload_without_uploadId
--- PASS: TestListPartsActionMapping (0.00s)
    --- PASS: TestListPartsActionMapping/get_object_without_uploadId (0.00s)
    --- PASS: TestListPartsActionMapping/get_object_with_uploadId (0.00s)
    --- PASS: TestListPartsActionMapping/get_object_with_uploadId_and_other_params (0.00s)
    --- PASS: TestListPartsActionMapping/get_object_versions (0.00s)
    --- PASS: TestListPartsActionMapping/get_object_acl_without_uploadId (0.00s)
    --- PASS: TestListPartsActionMapping/post_multipart_upload_without_uploadId (0.00s)
=== RUN   TestListPartsActionMappingSecurityScenarios
=== RUN   TestListPartsActionMappingSecurityScenarios/privilege_separation_listparts_vs_getobject
=== RUN   TestListPartsActionMappingSecurityScenarios/policy_enforcement_precision
--- PASS: TestListPartsActionMappingSecurityScenarios (0.00s)
    --- PASS: TestListPartsActionMappingSecurityScenarios/privilege_separation_listparts_vs_getobject (0.00s)
    --- PASS: TestListPartsActionMappingSecurityScenarios/policy_enforcement_precision (0.00s)
=== RUN   TestListPartsActionRealWorldScenarios
=== RUN   TestListPartsActionRealWorldScenarios/large_file_upload_workflow
=== RUN   TestListPartsActionRealWorldScenarios/edge_case_upload_ids
--- PASS: TestListPartsActionRealWorldScenarios (0.00s)
    --- PASS: TestListPartsActionRealWorldScenarios/large_file_upload_workflow (0.00s)
    --- PASS: TestListPartsActionRealWorldScenarios/edge_case_upload_ids (0.00s)
=== RUN   TestMultipartIAMValidation
=== RUN   TestMultipartIAMValidation/Initiate_multipart_upload
=== RUN   TestMultipartIAMValidation/Upload_part
=== RUN   TestMultipartIAMValidation/Complete_multipart_upload
=== RUN   TestMultipartIAMValidation/Abort_multipart_upload
=== RUN   TestMultipartIAMValidation/List_multipart_uploads
=== RUN   TestMultipartIAMValidation/Upload_part_without_session_token
=== RUN   TestMultipartIAMValidation/Upload_part_with_invalid_session_token
--- PASS: TestMultipartIAMValidation (0.00s)
    --- PASS: TestMultipartIAMValidation/Initiate_multipart_upload (0.00s)
    --- PASS: TestMultipartIAMValidation/Upload_part (0.00s)
    --- PASS: TestMultipartIAMValidation/Complete_multipart_upload (0.00s)
    --- PASS: TestMultipartIAMValidation/Abort_multipart_upload (0.00s)
    --- PASS: TestMultipartIAMValidation/List_multipart_uploads (0.00s)
    --- PASS: TestMultipartIAMValidation/Upload_part_without_session_token (0.00s)
    --- PASS: TestMultipartIAMValidation/Upload_part_with_invalid_session_token (0.00s)
=== RUN   TestMultipartUploadPolicy
=== RUN   TestMultipartUploadPolicy/Valid_upload_part_request
=== RUN   TestMultipartUploadPolicy/Part_size_too_large
=== RUN   TestMultipartUploadPolicy/Invalid_part_number_(too_high)
=== RUN   TestMultipartUploadPolicy/Invalid_part_number_(too_low)
=== RUN   TestMultipartUploadPolicy/Content_type_not_allowed
=== RUN   TestMultipartUploadPolicy/Missing_required_header
=== RUN   TestMultipartUploadPolicy/Non-upload_operation_(should_not_validate_size)
--- PASS: TestMultipartUploadPolicy (0.00s)
    --- PASS: TestMultipartUploadPolicy/Valid_upload_part_request (0.00s)
    --- PASS: TestMultipartUploadPolicy/Part_size_too_large (0.00s)
    --- PASS: TestMultipartUploadPolicy/Invalid_part_number_(too_high) (0.00s)
    --- PASS: TestMultipartUploadPolicy/Invalid_part_number_(too_low) (0.00s)
    --- PASS: TestMultipartUploadPolicy/Content_type_not_allowed (0.00s)
    --- PASS: TestMultipartUploadPolicy/Missing_required_header (0.00s)
    --- PASS: TestMultipartUploadPolicy/Non-upload_operation_(should_not_validate_size) (0.00s)
=== RUN   TestMultipartS3ActionMapping
=== RUN   TestMultipartS3ActionMapping/initiate
=== RUN   TestMultipartS3ActionMapping/upload_part
=== RUN   TestMultipartS3ActionMapping/complete
=== RUN   TestMultipartS3ActionMapping/abort
=== RUN   TestMultipartS3ActionMapping/list
=== RUN   TestMultipartS3ActionMapping/list_parts
=== RUN   TestMultipartS3ActionMapping/unknown
E0616 11:57:40.890393 s3_multipart_iam.go:300 unmapped multipart operation: unknown
--- PASS: TestMultipartS3ActionMapping (0.00s)
    --- PASS: TestMultipartS3ActionMapping/initiate (0.00s)
    --- PASS: TestMultipartS3ActionMapping/upload_part (0.00s)
    --- PASS: TestMultipartS3ActionMapping/complete (0.00s)
    --- PASS: TestMultipartS3ActionMapping/abort (0.00s)
    --- PASS: TestMultipartS3ActionMapping/list (0.00s)
    --- PASS: TestMultipartS3ActionMapping/list_parts (0.00s)
    --- PASS: TestMultipartS3ActionMapping/unknown (0.00s)
=== RUN   TestSessionTokenExtraction
=== RUN   TestSessionTokenExtraction/Bearer_token_in_Authorization_header
=== RUN   TestSessionTokenExtraction/X-Amz-Security-Token_header
=== RUN   TestSessionTokenExtraction/X-Amz-Security-Token_query_parameter
=== RUN   TestSessionTokenExtraction/No_token_present
=== RUN   TestSessionTokenExtraction/Authorization_header_without_Bearer
--- PASS: TestSessionTokenExtraction (0.00s)
    --- PASS: TestSessionTokenExtraction/Bearer_token_in_Authorization_header (0.00s)
    --- PASS: TestSessionTokenExtraction/X-Amz-Security-Token_header (0.00s)
    --- PASS: TestSessionTokenExtraction/X-Amz-Security-Token_query_parameter (0.00s)
    --- PASS: TestSessionTokenExtraction/No_token_present (0.00s)
    --- PASS: TestSessionTokenExtraction/Authorization_header_without_Bearer (0.00s)
=== RUN   TestUploadPartValidation
=== RUN   TestUploadPartValidation/Valid_upload_part_request
=== RUN   TestUploadPartValidation/Missing_partNumber_parameter
=== RUN   TestUploadPartValidation/Invalid_partNumber_format
=== RUN   TestUploadPartValidation/Part_size_too_large
--- PASS: TestUploadPartValidation (0.00s)
    --- PASS: TestUploadPartValidation/Valid_upload_part_request (0.00s)
    --- PASS: TestUploadPartValidation/Missing_partNumber_parameter (0.00s)
    --- PASS: TestUploadPartValidation/Invalid_partNumber_format (0.00s)
    --- PASS: TestUploadPartValidation/Part_size_too_large (0.00s)
=== RUN   TestDefaultMultipartUploadPolicy
--- PASS: TestDefaultMultipartUploadPolicy (0.00s)
=== RUN   TestMultipartUploadSession
--- PASS: TestMultipartUploadSession (0.00s)
=== RUN   TestS3PolicyTemplates
=== RUN   TestS3PolicyTemplates/S3ReadOnlyPolicy
=== RUN   TestS3PolicyTemplates/S3WriteOnlyPolicy
=== RUN   TestS3PolicyTemplates/S3AdminPolicy
--- PASS: TestS3PolicyTemplates (0.00s)
    --- PASS: TestS3PolicyTemplates/S3ReadOnlyPolicy (0.00s)
    --- PASS: TestS3PolicyTemplates/S3WriteOnlyPolicy (0.00s)
    --- PASS: TestS3PolicyTemplates/S3AdminPolicy (0.00s)
=== RUN   TestBucketSpecificPolicies
=== RUN   TestBucketSpecificPolicies/BucketSpecificReadPolicy
=== RUN   TestBucketSpecificPolicies/BucketSpecificWritePolicy
--- PASS: TestBucketSpecificPolicies (0.00s)
    --- PASS: TestBucketSpecificPolicies/BucketSpecificReadPolicy (0.00s)
    --- PASS: TestBucketSpecificPolicies/BucketSpecificWritePolicy (0.00s)
=== RUN   TestPathBasedAccessPolicy
--- PASS: TestPathBasedAccessPolicy (0.00s)
=== RUN   TestIPRestrictedPolicy
--- PASS: TestIPRestrictedPolicy (0.00s)
=== RUN   TestTimeBasedAccessPolicy
--- PASS: TestTimeBasedAccessPolicy (0.00s)
=== RUN   TestMultipartUploadPolicyTemplate
--- PASS: TestMultipartUploadPolicyTemplate (0.00s)
=== RUN   TestPresignedURLPolicy
--- PASS: TestPresignedURLPolicy (0.00s)
=== RUN   TestTemporaryAccessPolicy
--- PASS: TestTemporaryAccessPolicy (0.00s)
=== RUN   TestContentTypeRestrictedPolicy
--- PASS: TestContentTypeRestrictedPolicy (0.00s)
=== RUN   TestDenyDeletePolicy
--- PASS: TestDenyDeletePolicy (0.00s)
=== RUN   TestPolicyTemplateMetadata
=== RUN   TestPolicyTemplateMetadata/GetAllPolicyTemplates
=== RUN   TestPolicyTemplateMetadata/GetPolicyTemplateByName
=== RUN   TestPolicyTemplateMetadata/GetPolicyTemplatesByCategory
=== RUN   TestPolicyTemplateMetadata/PolicyTemplateParameters
--- PASS: TestPolicyTemplateMetadata (0.00s)
    --- PASS: TestPolicyTemplateMetadata/GetAllPolicyTemplates (0.00s)
    --- PASS: TestPolicyTemplateMetadata/GetPolicyTemplateByName (0.00s)
    --- PASS: TestPolicyTemplateMetadata/GetPolicyTemplatesByCategory (0.00s)
    --- PASS: TestPolicyTemplateMetadata/PolicyTemplateParameters (0.00s)
=== RUN   TestFormatHourHelper
=== RUN   TestFormatHourHelper/Hour_0
=== RUN   TestFormatHourHelper/Hour_5
=== RUN   TestFormatHourHelper/Hour_9
=== RUN   TestFormatHourHelper/Hour_10
=== RUN   TestFormatHourHelper/Hour_15
=== RUN   TestFormatHourHelper/Hour_23
--- PASS: TestFormatHourHelper (0.00s)
    --- PASS: TestFormatHourHelper/Hour_0 (0.00s)
    --- PASS: TestFormatHourHelper/Hour_5 (0.00s)
    --- PASS: TestFormatHourHelper/Hour_9 (0.00s)
    --- PASS: TestFormatHourHelper/Hour_10 (0.00s)
    --- PASS: TestFormatHourHelper/Hour_15 (0.00s)
    --- PASS: TestFormatHourHelper/Hour_23 (0.00s)
=== RUN   TestPolicyTemplateCategories
--- PASS: TestPolicyTemplateCategories (0.00s)
=== RUN   TestPolicyValidation
=== RUN   TestPolicyValidation/Policy_S3ReadOnlyAccess
=== RUN   TestPolicyValidation/Policy_S3WriteOnlyAccess
=== RUN   TestPolicyValidation/Policy_S3AdminAccess
=== RUN   TestPolicyValidation/Policy_BucketSpecificRead
=== RUN   TestPolicyValidation/Policy_BucketSpecificWrite
=== RUN   TestPolicyValidation/Policy_PathBasedAccess
=== RUN   TestPolicyValidation/Policy_IPRestrictedAccess
=== RUN   TestPolicyValidation/Policy_MultipartUploadOnly
=== RUN   TestPolicyValidation/Policy_PresignedURLAccess
=== RUN   TestPolicyValidation/Policy_ContentTypeRestricted
=== RUN   TestPolicyValidation/Policy_DenyDeleteAccess
--- PASS: TestPolicyValidation (0.00s)
    --- PASS: TestPolicyValidation/Policy_S3ReadOnlyAccess (0.00s)
    --- PASS: TestPolicyValidation/Policy_S3WriteOnlyAccess (0.00s)
    --- PASS: TestPolicyValidation/Policy_S3AdminAccess (0.00s)
    --- PASS: TestPolicyValidation/Policy_BucketSpecificRead (0.00s)
    --- PASS: TestPolicyValidation/Policy_BucketSpecificWrite (0.00s)
    --- PASS: TestPolicyValidation/Policy_PathBasedAccess (0.00s)
    --- PASS: TestPolicyValidation/Policy_IPRestrictedAccess (0.00s)
    --- PASS: TestPolicyValidation/Policy_MultipartUploadOnly (0.00s)
    --- PASS: TestPolicyValidation/Policy_PresignedURLAccess (0.00s)
    --- PASS: TestPolicyValidation/Policy_ContentTypeRestricted (0.00s)
    --- PASS: TestPolicyValidation/Policy_DenyDeleteAccess (0.00s)
=== RUN   TestPresignedURLIAMValidation
=== RUN   TestPresignedURLIAMValidation/GET_object_with_read_permissions
=== RUN   TestPresignedURLIAMValidation/PUT_object_with_read-only_permissions_(should_fail)
=== RUN   TestPresignedURLIAMValidation/GET_object_without_session_token
=== RUN   TestPresignedURLIAMValidation/Invalid_session_token
--- PASS: TestPresignedURLIAMValidation (0.00s)
    --- PASS: TestPresignedURLIAMValidation/GET_object_with_read_permissions (0.00s)
    --- PASS: TestPresignedURLIAMValidation/PUT_object_with_read-only_permissions_(should_fail) (0.00s)
    --- PASS: TestPresignedURLIAMValidation/GET_object_without_session_token (0.00s)
    --- PASS: TestPresignedURLIAMValidation/Invalid_session_token (0.00s)
=== RUN   TestPresignedURLGeneration
=== RUN   TestPresignedURLGeneration/Generate_valid_presigned_GET_URL
=== RUN   TestPresignedURLGeneration/Generate_valid_presigned_PUT_URL
=== RUN   TestPresignedURLGeneration/Generate_URL_with_invalid_session_token
=== RUN   TestPresignedURLGeneration/Generate_URL_without_session_token
--- PASS: TestPresignedURLGeneration (0.00s)
    --- PASS: TestPresignedURLGeneration/Generate_valid_presigned_GET_URL (0.00s)
    --- PASS: TestPresignedURLGeneration/Generate_valid_presigned_PUT_URL (0.00s)
    --- PASS: TestPresignedURLGeneration/Generate_URL_with_invalid_session_token (0.00s)
    --- PASS: TestPresignedURLGeneration/Generate_URL_without_session_token (0.00s)
=== RUN   TestPresignedURLExpiration
=== RUN   TestPresignedURLExpiration/Valid_non-expired_URL
=== RUN   TestPresignedURLExpiration/Expired_URL
=== RUN   TestPresignedURLExpiration/Missing_date_parameter
=== RUN   TestPresignedURLExpiration/Invalid_date_format
--- PASS: TestPresignedURLExpiration (0.00s)
    --- PASS: TestPresignedURLExpiration/Valid_non-expired_URL (0.00s)
    --- PASS: TestPresignedURLExpiration/Expired_URL (0.00s)
    --- PASS: TestPresignedURLExpiration/Missing_date_parameter (0.00s)
    --- PASS: TestPresignedURLExpiration/Invalid_date_format (0.00s)
=== RUN   TestPresignedURLSecurityPolicy
=== RUN   TestPresignedURLSecurityPolicy/Valid_request
=== RUN   TestPresignedURLSecurityPolicy/Expiration_too_long
=== RUN   TestPresignedURLSecurityPolicy/Method_not_allowed
=== RUN   TestPresignedURLSecurityPolicy/Missing_required_header
--- PASS: TestPresignedURLSecurityPolicy (0.00s)
    --- PASS: TestPresignedURLSecurityPolicy/Valid_request (0.00s)
    --- PASS: TestPresignedURLSecurityPolicy/Expiration_too_long (0.00s)
    --- PASS: TestPresignedURLSecurityPolicy/Method_not_allowed (0.00s)
    --- PASS: TestPresignedURLSecurityPolicy/Missing_required_header (0.00s)
=== RUN   TestS3ActionDetermination
=== RUN   TestS3ActionDetermination/GET_object
=== RUN   TestS3ActionDetermination/GET_bucket_(list)
=== RUN   TestS3ActionDetermination/PUT_object
=== RUN   TestS3ActionDetermination/DELETE_object
=== RUN   TestS3ActionDetermination/DELETE_bucket
=== RUN   TestS3ActionDetermination/HEAD_object
=== RUN   TestS3ActionDetermination/POST_object
--- PASS: TestS3ActionDetermination (0.00s)
    --- PASS: TestS3ActionDetermination/GET_object (0.00s)
    --- PASS: TestS3ActionDetermination/GET_bucket_(list) (0.00s)
    --- PASS: TestS3ActionDetermination/PUT_object (0.00s)
    --- PASS: TestS3ActionDetermination/DELETE_object (0.00s)
    --- PASS: TestS3ActionDetermination/DELETE_bucket (0.00s)
    --- PASS: TestS3ActionDetermination/HEAD_object (0.00s)
    --- PASS: TestS3ActionDetermination/POST_object (0.00s)
=== RUN   TestBucketDefaultSSEKMSEnforcement
=== RUN   TestBucketDefaultSSEKMSEnforcement/Bucket_with_SSE-KMS_default_encryption
=== RUN   TestBucketDefaultSSEKMSEnforcement/Default_encryption_headers_generation
=== RUN   TestBucketDefaultSSEKMSEnforcement/Default_encryption_detection
--- PASS: TestBucketDefaultSSEKMSEnforcement (0.00s)
    --- PASS: TestBucketDefaultSSEKMSEnforcement/Bucket_with_SSE-KMS_default_encryption (0.00s)
    --- PASS: TestBucketDefaultSSEKMSEnforcement/Default_encryption_headers_generation (0.00s)
    --- PASS: TestBucketDefaultSSEKMSEnforcement/Default_encryption_detection (0.00s)
=== RUN   TestBucketEncryptionConfigValidation
=== RUN   TestBucketEncryptionConfigValidation/Valid_SSE-S3_configuration
    s3_sse_bucket_test.go:165: Successfully parsed config: Algorithm=AES256, KeyID=
=== RUN   TestBucketEncryptionConfigValidation/Valid_SSE-KMS_configuration
    s3_sse_bucket_test.go:165: Successfully parsed config: Algorithm=aws:kms, KeyID=test-key-id
=== RUN   TestBucketEncryptionConfigValidation/Valid_SSE-KMS_without_key_ID
    s3_sse_bucket_test.go:165: Successfully parsed config: Algorithm=aws:kms, KeyID=
=== RUN   TestBucketEncryptionConfigValidation/Invalid_XML_structure
=== RUN   TestBucketEncryptionConfigValidation/Empty_configuration
=== RUN   TestBucketEncryptionConfigValidation/Invalid_algorithm
--- PASS: TestBucketEncryptionConfigValidation (0.00s)
    --- PASS: TestBucketEncryptionConfigValidation/Valid_SSE-S3_configuration (0.00s)
    --- PASS: TestBucketEncryptionConfigValidation/Valid_SSE-KMS_configuration (0.00s)
    --- PASS: TestBucketEncryptionConfigValidation/Valid_SSE-KMS_without_key_ID (0.00s)
    --- PASS: TestBucketEncryptionConfigValidation/Invalid_XML_structure (0.00s)
    --- PASS: TestBucketEncryptionConfigValidation/Empty_configuration (0.00s)
    --- PASS: TestBucketEncryptionConfigValidation/Invalid_algorithm (0.00s)
=== RUN   TestBucketEncryptionAPIOperations
=== RUN   TestBucketEncryptionAPIOperations/PUT_bucket_encryption
=== RUN   TestBucketEncryptionAPIOperations/GET_bucket_encryption
=== RUN   TestBucketEncryptionAPIOperations/DELETE_bucket_encryption
--- PASS: TestBucketEncryptionAPIOperations (0.00s)
    --- PASS: TestBucketEncryptionAPIOperations/PUT_bucket_encryption (0.00s)
    --- PASS: TestBucketEncryptionAPIOperations/GET_bucket_encryption (0.00s)
    --- PASS: TestBucketEncryptionAPIOperations/DELETE_bucket_encryption (0.00s)
=== RUN   TestBucketEncryptionEdgeCases
=== RUN   TestBucketEncryptionEdgeCases/Large_XML_configuration
=== RUN   TestBucketEncryptionEdgeCases/XML_with_namespaces
=== RUN   TestBucketEncryptionEdgeCases/Malformed_XML
=== RUN   TestBucketEncryptionEdgeCases/Malformed_XML/Malformed_XML_0
=== RUN   TestBucketEncryptionEdgeCases/Malformed_XML/Malformed_XML_1
=== RUN   TestBucketEncryptionEdgeCases/Malformed_XML/Malformed_XML_2
=== RUN   TestBucketEncryptionEdgeCases/Malformed_XML/Malformed_XML_3
--- PASS: TestBucketEncryptionEdgeCases (0.00s)
    --- PASS: TestBucketEncryptionEdgeCases/Large_XML_configuration (0.00s)
    --- PASS: TestBucketEncryptionEdgeCases/XML_with_namespaces (0.00s)
    --- PASS: TestBucketEncryptionEdgeCases/Malformed_XML (0.00s)
        --- PASS: TestBucketEncryptionEdgeCases/Malformed_XML/Malformed_XML_0 (0.00s)
        --- PASS: TestBucketEncryptionEdgeCases/Malformed_XML/Malformed_XML_1 (0.00s)
        --- PASS: TestBucketEncryptionEdgeCases/Malformed_XML/Malformed_XML_2 (0.00s)
        --- PASS: TestBucketEncryptionEdgeCases/Malformed_XML/Malformed_XML_3 (0.00s)
=== RUN   TestGetDefaultEncryptionHeaders
=== RUN   TestGetDefaultEncryptionHeaders/Nil_configuration
=== RUN   TestGetDefaultEncryptionHeaders/SSE-S3_configuration
=== RUN   TestGetDefaultEncryptionHeaders/SSE-KMS_configuration_with_key
=== RUN   TestGetDefaultEncryptionHeaders/SSE-KMS_configuration_without_key
--- PASS: TestGetDefaultEncryptionHeaders (0.00s)
    --- PASS: TestGetDefaultEncryptionHeaders/Nil_configuration (0.00s)
    --- PASS: TestGetDefaultEncryptionHeaders/SSE-S3_configuration (0.00s)
    --- PASS: TestGetDefaultEncryptionHeaders/SSE-KMS_configuration_with_key (0.00s)
    --- PASS: TestGetDefaultEncryptionHeaders/SSE-KMS_configuration_without_key (0.00s)
=== RUN   TestSSECRangeRequestsSupported
E0616 11:57:40.893140 s3api_object_handlers.go:821 SSE-C encrypted single-part object missing IV in metadata
--- PASS: TestSSECRangeRequestsSupported (0.00s)
=== RUN   TestSSECHeaderValidation
--- PASS: TestSSECHeaderValidation (0.00s)
=== RUN   TestSSECCopySourceHeaders
--- PASS: TestSSECCopySourceHeaders (0.00s)
=== RUN   TestSSECHeaderValidationErrors
=== RUN   TestSSECHeaderValidationErrors/invalid_algorithm
=== RUN   TestSSECHeaderValidationErrors/invalid_key_length
=== RUN   TestSSECHeaderValidationErrors/mismatched_MD5
E0616 11:57:40.893263 s3_sse_c.go:112 SSE-C MD5 mismatch: provided='wrong==md5', expected='cLyPS3KoaSFGi/joRB3OUQ=='
=== RUN   TestSSECHeaderValidationErrors/incomplete_headers
--- PASS: TestSSECHeaderValidationErrors (0.00s)
    --- PASS: TestSSECHeaderValidationErrors/invalid_algorithm (0.00s)
    --- PASS: TestSSECHeaderValidationErrors/invalid_key_length (0.00s)
    --- PASS: TestSSECHeaderValidationErrors/mismatched_MD5 (0.00s)
    --- PASS: TestSSECHeaderValidationErrors/incomplete_headers (0.00s)
=== RUN   TestSSECEncryptionDecryption
--- PASS: TestSSECEncryptionDecryption (0.00s)
=== RUN   TestSSECIsSSECRequest
--- PASS: TestSSECIsSSECRequest (0.00s)
=== RUN   TestSSECEncryptionVariousSizes
=== RUN   TestSSECEncryptionVariousSizes/size_1
=== RUN   TestSSECEncryptionVariousSizes/size_13
=== RUN   TestSSECEncryptionVariousSizes/size_1024
=== RUN   TestSSECEncryptionVariousSizes/size_1048576
--- PASS: TestSSECEncryptionVariousSizes (0.00s)
    --- PASS: TestSSECEncryptionVariousSizes/size_1 (0.00s)
    --- PASS: TestSSECEncryptionVariousSizes/size_13 (0.00s)
    --- PASS: TestSSECEncryptionVariousSizes/size_1024 (0.00s)
    --- PASS: TestSSECEncryptionVariousSizes/size_1048576 (0.00s)
=== RUN   TestSSECEncryptionWithNilKey
--- PASS: TestSSECEncryptionWithNilKey (0.00s)
=== RUN   TestSSECEncryptionSmallBuffers
--- PASS: TestSSECEncryptionSmallBuffers (0.00s)
=== RUN   TestSSECObjectCopy
=== RUN   TestSSECObjectCopy/Same_key_copy_(direct_copy)
=== RUN   TestSSECObjectCopy/Different_key_copy_(decrypt-encrypt)
=== RUN   TestSSECObjectCopy/Can_direct_copy_check
=== RUN   TestSSECObjectCopy/Full_copy_operation
--- PASS: TestSSECObjectCopy (0.00s)
    --- PASS: TestSSECObjectCopy/Same_key_copy_(direct_copy) (0.00s)
    --- PASS: TestSSECObjectCopy/Different_key_copy_(decrypt-encrypt) (0.00s)
    --- PASS: TestSSECObjectCopy/Can_direct_copy_check (0.00s)
    --- PASS: TestSSECObjectCopy/Full_copy_operation (0.00s)
=== RUN   TestSSEKMSObjectCopy
=== RUN   TestSSEKMSObjectCopy/Same_KMS_key_copy
--- PASS: TestSSEKMSObjectCopy (0.00s)
    --- PASS: TestSSEKMSObjectCopy/Same_KMS_key_copy (0.00s)
=== RUN   TestSSECToSSEKMSCopy
--- PASS: TestSSECToSSEKMSCopy (0.00s)
=== RUN   TestSSEKMSToSSECCopy
--- PASS: TestSSEKMSToSSECCopy (0.00s)
=== RUN   TestSSECopyWithCorruptedSource
--- PASS: TestSSECopyWithCorruptedSource (0.00s)
=== RUN   TestSSEKMSCopyStrategy
=== RUN   TestSSEKMSCopyStrategy/Unencrypted_to_unencrypted
=== RUN   TestSSEKMSCopyStrategy/Same_KMS_key
=== RUN   TestSSEKMSCopyStrategy/Different_KMS_keys
=== RUN   TestSSEKMSCopyStrategy/Encrypted_to_unencrypted
=== RUN   TestSSEKMSCopyStrategy/Unencrypted_to_encrypted
--- PASS: TestSSEKMSCopyStrategy (0.00s)
    --- PASS: TestSSEKMSCopyStrategy/Unencrypted_to_unencrypted (0.00s)
    --- PASS: TestSSEKMSCopyStrategy/Same_KMS_key (0.00s)
    --- PASS: TestSSEKMSCopyStrategy/Different_KMS_keys (0.00s)
    --- PASS: TestSSEKMSCopyStrategy/Encrypted_to_unencrypted (0.00s)
    --- PASS: TestSSEKMSCopyStrategy/Unencrypted_to_encrypted (0.00s)
=== RUN   TestSSEKMSCopyHeaders
=== RUN   TestSSEKMSCopyHeaders/No_SSE-KMS_headers
=== RUN   TestSSEKMSCopyHeaders/SSE-KMS_with_key_ID
=== RUN   TestSSEKMSCopyHeaders/SSE-KMS_with_all_options
=== RUN   TestSSEKMSCopyHeaders/Invalid_key_ID
=== RUN   TestSSEKMSCopyHeaders/Invalid_encryption_context
--- PASS: TestSSEKMSCopyHeaders (0.00s)
    --- PASS: TestSSEKMSCopyHeaders/No_SSE-KMS_headers (0.00s)
    --- PASS: TestSSEKMSCopyHeaders/SSE-KMS_with_key_ID (0.00s)
    --- PASS: TestSSEKMSCopyHeaders/SSE-KMS_with_all_options (0.00s)
    --- PASS: TestSSEKMSCopyHeaders/Invalid_key_ID (0.00s)
    --- PASS: TestSSEKMSCopyHeaders/Invalid_encryption_context (0.00s)
=== RUN   TestSSEKMSDirectCopy
=== RUN   TestSSEKMSDirectCopy/Both_unencrypted
=== RUN   TestSSEKMSDirectCopy/Same_key_ID
=== RUN   TestSSEKMSDirectCopy/Different_key_IDs
=== RUN   TestSSEKMSDirectCopy/Source_encrypted,_dest_unencrypted
=== RUN   TestSSEKMSDirectCopy/Source_unencrypted,_dest_encrypted
--- PASS: TestSSEKMSDirectCopy (0.00s)
    --- PASS: TestSSEKMSDirectCopy/Both_unencrypted (0.00s)
    --- PASS: TestSSEKMSDirectCopy/Same_key_ID (0.00s)
    --- PASS: TestSSEKMSDirectCopy/Different_key_IDs (0.00s)
    --- PASS: TestSSEKMSDirectCopy/Source_encrypted,_dest_unencrypted (0.00s)
    --- PASS: TestSSEKMSDirectCopy/Source_unencrypted,_dest_encrypted (0.00s)
=== RUN   TestGetSourceSSEKMSInfo
=== RUN   TestGetSourceSSEKMSInfo/No_encryption
=== RUN   TestGetSourceSSEKMSInfo/SSE-KMS_with_key_ID
=== RUN   TestGetSourceSSEKMSInfo/SSE-KMS_without_key_ID_(default_key)
=== RUN   TestGetSourceSSEKMSInfo/Non-KMS_encryption
--- PASS: TestGetSourceSSEKMSInfo (0.00s)
    --- PASS: TestGetSourceSSEKMSInfo/No_encryption (0.00s)
    --- PASS: TestGetSourceSSEKMSInfo/SSE-KMS_with_key_ID (0.00s)
    --- PASS: TestGetSourceSSEKMSInfo/SSE-KMS_without_key_ID_(default_key) (0.00s)
    --- PASS: TestGetSourceSSEKMSInfo/Non-KMS_encryption (0.00s)
=== RUN   TestSSECWrongKeyDecryption
--- PASS: TestSSECWrongKeyDecryption (0.00s)
=== RUN   TestSSEKMSKeyNotFound
    s3_sse_error_test.go:77: Got expected error for empty key ID: invalid KMS key ID format: key ID must be non-empty, without spaces or control characters
--- PASS: TestSSEKMSKeyNotFound (0.00s)
=== RUN   TestSSEHeadersWithoutEncryption
=== RUN   TestSSEHeadersWithoutEncryption/SSE-C_algorithm_without_key
=== RUN   TestSSEHeadersWithoutEncryption/SSE-C_key_without_algorithm
=== RUN   TestSSEHeadersWithoutEncryption/SSE-KMS_key_ID_without_algorithm
--- PASS: TestSSEHeadersWithoutEncryption (0.00s)
    --- PASS: TestSSEHeadersWithoutEncryption/SSE-C_algorithm_without_key (0.00s)
    --- PASS: TestSSEHeadersWithoutEncryption/SSE-C_key_without_algorithm (0.00s)
    --- PASS: TestSSEHeadersWithoutEncryption/SSE-KMS_key_ID_without_algorithm (0.00s)
=== RUN   TestSSECInvalidKeyFormats
=== RUN   TestSSECInvalidKeyFormats/Invalid_algorithm
=== RUN   TestSSECInvalidKeyFormats/Invalid_key_length_(too_short)
=== RUN   TestSSECInvalidKeyFormats/Invalid_key_length_(too_long)
=== RUN   TestSSECInvalidKeyFormats/Invalid_base64_key
=== RUN   TestSSECInvalidKeyFormats/Invalid_base64_MD5
=== RUN   TestSSECInvalidKeyFormats/Mismatched_MD5
--- PASS: TestSSECInvalidKeyFormats (0.00s)
    --- PASS: TestSSECInvalidKeyFormats/Invalid_algorithm (0.00s)
    --- PASS: TestSSECInvalidKeyFormats/Invalid_key_length_(too_short) (0.00s)
    --- PASS: TestSSECInvalidKeyFormats/Invalid_key_length_(too_long) (0.00s)
    --- PASS: TestSSECInvalidKeyFormats/Invalid_base64_key (0.00s)
    --- PASS: TestSSECInvalidKeyFormats/Invalid_base64_MD5 (0.00s)
    --- PASS: TestSSECInvalidKeyFormats/Mismatched_MD5 (0.00s)
=== RUN   TestSSEKMSInvalidConfigurations
=== RUN   TestSSEKMSInvalidConfigurations/Invalid_algorithm
=== RUN   TestSSEKMSInvalidConfigurations/Empty_key_ID
=== RUN   TestSSEKMSInvalidConfigurations/Invalid_key_ID_format
--- PASS: TestSSEKMSInvalidConfigurations (0.00s)
    --- PASS: TestSSEKMSInvalidConfigurations/Invalid_algorithm (0.00s)
    --- PASS: TestSSEKMSInvalidConfigurations/Empty_key_ID (0.00s)
    --- PASS: TestSSEKMSInvalidConfigurations/Invalid_key_ID_format (0.00s)
=== RUN   TestSSEEmptyDataHandling
=== RUN   TestSSEEmptyDataHandling/SSE-C_with_empty_data
=== RUN   TestSSEEmptyDataHandling/SSE-KMS_with_empty_data
--- PASS: TestSSEEmptyDataHandling (0.00s)
    --- PASS: TestSSEEmptyDataHandling/SSE-C_with_empty_data (0.00s)
    --- PASS: TestSSEEmptyDataHandling/SSE-KMS_with_empty_data (0.00s)
=== RUN   TestSSEConcurrentAccess
--- PASS: TestSSEConcurrentAccess (0.00s)
=== RUN   TestPutObjectWithSSEC
--- PASS: TestPutObjectWithSSEC (0.00s)
=== RUN   TestGetObjectWithSSEC
--- PASS: TestGetObjectWithSSEC (0.00s)
=== RUN   TestPutObjectWithSSEKMS
--- PASS: TestPutObjectWithSSEKMS (0.00s)
=== RUN   TestGetObjectWithSSEKMS
--- PASS: TestGetObjectWithSSEKMS (0.00s)
=== RUN   TestSSECRangeRequestSupport
--- PASS: TestSSECRangeRequestSupport (0.00s)
=== RUN   TestSSEHeaderConflicts
=== RUN   TestSSEHeaderConflicts/SSE-C_and_SSE-KMS_conflict
=== RUN   TestSSEHeaderConflicts/Valid_SSE-C_only
=== RUN   TestSSEHeaderConflicts/Valid_SSE-KMS_only
=== RUN   TestSSEHeaderConflicts/No_SSE_headers
--- PASS: TestSSEHeaderConflicts (0.00s)
    --- PASS: TestSSEHeaderConflicts/SSE-C_and_SSE-KMS_conflict (0.00s)
    --- PASS: TestSSEHeaderConflicts/Valid_SSE-C_only (0.00s)
    --- PASS: TestSSEHeaderConflicts/Valid_SSE-KMS_only (0.00s)
    --- PASS: TestSSEHeaderConflicts/No_SSE_headers (0.00s)
=== RUN   TestSSECopySourceHeaders
--- PASS: TestSSECopySourceHeaders (0.00s)
=== RUN   TestSSERequestValidation
=== RUN   TestSSERequestValidation/Valid_PUT_with_SSE-C
=== RUN   TestSSERequestValidation/Valid_GET_with_SSE-C
=== RUN   TestSSERequestValidation/Invalid_SSE-C_key_format
=== RUN   TestSSERequestValidation/Missing_SSE-C_key_MD5
--- PASS: TestSSERequestValidation (0.00s)
    --- PASS: TestSSERequestValidation/Valid_PUT_with_SSE-C (0.00s)
    --- PASS: TestSSERequestValidation/Valid_GET_with_SSE-C (0.00s)
    --- PASS: TestSSERequestValidation/Invalid_SSE-C_key_format (0.00s)
    --- PASS: TestSSERequestValidation/Missing_SSE-C_key_MD5 (0.00s)
=== RUN   TestSSEKMSEncryptionDecryption
--- PASS: TestSSEKMSEncryptionDecryption (0.00s)
=== RUN   TestSSEKMSKeyValidation
=== RUN   TestSSEKMSKeyValidation/Valid_UUID_key_ID
=== RUN   TestSSEKMSKeyValidation/Valid_alias
=== RUN   TestSSEKMSKeyValidation/Valid_ARN
=== RUN   TestSSEKMSKeyValidation/Valid_alias_ARN
=== RUN   TestSSEKMSKeyValidation/Valid_test_key_format
=== RUN   TestSSEKMSKeyValidation/Valid_short_key
=== RUN   TestSSEKMSKeyValidation/Invalid_-_leading_space
=== RUN   TestSSEKMSKeyValidation/Invalid_-_trailing_space
=== RUN   TestSSEKMSKeyValidation/Invalid_-_empty
=== RUN   TestSSEKMSKeyValidation/Invalid_-_internal_spaces
--- PASS: TestSSEKMSKeyValidation (0.00s)
    --- PASS: TestSSEKMSKeyValidation/Valid_UUID_key_ID (0.00s)
    --- PASS: TestSSEKMSKeyValidation/Valid_alias (0.00s)
    --- PASS: TestSSEKMSKeyValidation/Valid_ARN (0.00s)
    --- PASS: TestSSEKMSKeyValidation/Valid_alias_ARN (0.00s)
    --- PASS: TestSSEKMSKeyValidation/Valid_test_key_format (0.00s)
    --- PASS: TestSSEKMSKeyValidation/Valid_short_key (0.00s)
    --- PASS: TestSSEKMSKeyValidation/Invalid_-_leading_space (0.00s)
    --- PASS: TestSSEKMSKeyValidation/Invalid_-_trailing_space (0.00s)
    --- PASS: TestSSEKMSKeyValidation/Invalid_-_empty (0.00s)
    --- PASS: TestSSEKMSKeyValidation/Invalid_-_internal_spaces (0.00s)
=== RUN   TestSSEKMSMetadataSerialization
--- PASS: TestSSEKMSMetadataSerialization (0.00s)
=== RUN   TestBuildEncryptionContext
=== RUN   TestBuildEncryptionContext/Object-level_encryption
=== RUN   TestBuildEncryptionContext/Bucket-level_encryption
=== RUN   TestBuildEncryptionContext/Nested_object_path
--- PASS: TestBuildEncryptionContext (0.00s)
    --- PASS: TestBuildEncryptionContext/Object-level_encryption (0.00s)
    --- PASS: TestBuildEncryptionContext/Bucket-level_encryption (0.00s)
    --- PASS: TestBuildEncryptionContext/Nested_object_path (0.00s)
=== RUN   TestKMSErrorMapping
=== RUN   TestKMSErrorMapping/Key_not_found
=== RUN   TestKMSErrorMapping/Access_denied
=== RUN   TestKMSErrorMapping/Key_unavailable
--- PASS: TestKMSErrorMapping (0.00s)
    --- PASS: TestKMSErrorMapping/Key_not_found (0.00s)
    --- PASS: TestKMSErrorMapping/Access_denied (0.00s)
    --- PASS: TestKMSErrorMapping/Key_unavailable (0.00s)
=== RUN   TestSSEKMSLargeDataEncryption
    s3_sse_kms_test.go:338: Successfully encrypted/decrypted 1040000 bytes of data
--- PASS: TestSSEKMSLargeDataEncryption (0.00s)
=== RUN   TestValidateSSEKMSKey
=== RUN   TestValidateSSEKMSKey/nil_SSE-KMS_key
=== RUN   TestValidateSSEKMSKey/empty_key_ID_(valid_-_represents_default_KMS_key)
=== RUN   TestValidateSSEKMSKey/valid_UUID_key_ID
=== RUN   TestValidateSSEKMSKey/valid_alias
=== RUN   TestValidateSSEKMSKey/valid_flexible_key_ID_format
--- PASS: TestValidateSSEKMSKey (0.00s)
    --- PASS: TestValidateSSEKMSKey/nil_SSE-KMS_key (0.00s)
    --- PASS: TestValidateSSEKMSKey/empty_key_ID_(valid_-_represents_default_KMS_key) (0.00s)
    --- PASS: TestValidateSSEKMSKey/valid_UUID_key_ID (0.00s)
    --- PASS: TestValidateSSEKMSKey/valid_alias (0.00s)
    --- PASS: TestValidateSSEKMSKey/valid_flexible_key_ID_format (0.00s)
=== RUN   TestSSECIsEncrypted
=== RUN   TestSSECIsEncrypted/Empty_metadata
=== RUN   TestSSECIsEncrypted/Valid_SSE-C_metadata
=== RUN   TestSSECIsEncrypted/SSE-C_algorithm_only
=== RUN   TestSSECIsEncrypted/SSE-C_key_MD5_only
=== RUN   TestSSECIsEncrypted/Other_encryption_type_(SSE-KMS)
--- PASS: TestSSECIsEncrypted (0.00s)
    --- PASS: TestSSECIsEncrypted/Empty_metadata (0.00s)
    --- PASS: TestSSECIsEncrypted/Valid_SSE-C_metadata (0.00s)
    --- PASS: TestSSECIsEncrypted/SSE-C_algorithm_only (0.00s)
    --- PASS: TestSSECIsEncrypted/SSE-C_key_MD5_only (0.00s)
    --- PASS: TestSSECIsEncrypted/Other_encryption_type_(SSE-KMS) (0.00s)
=== RUN   TestSSEKMSIsEncrypted
=== RUN   TestSSEKMSIsEncrypted/Empty_metadata
=== RUN   TestSSEKMSIsEncrypted/Valid_SSE-KMS_metadata
=== RUN   TestSSEKMSIsEncrypted/SSE-KMS_algorithm_only
=== RUN   TestSSEKMSIsEncrypted/SSE-KMS_encrypted_data_key_only
=== RUN   TestSSEKMSIsEncrypted/Other_encryption_type_(SSE-C)
=== RUN   TestSSEKMSIsEncrypted/SSE-S3_(AES256)
--- PASS: TestSSEKMSIsEncrypted (0.00s)
    --- PASS: TestSSEKMSIsEncrypted/Empty_metadata (0.00s)
    --- PASS: TestSSEKMSIsEncrypted/Valid_SSE-KMS_metadata (0.00s)
    --- PASS: TestSSEKMSIsEncrypted/SSE-KMS_algorithm_only (0.00s)
    --- PASS: TestSSEKMSIsEncrypted/SSE-KMS_encrypted_data_key_only (0.00s)
    --- PASS: TestSSEKMSIsEncrypted/Other_encryption_type_(SSE-C) (0.00s)
    --- PASS: TestSSEKMSIsEncrypted/SSE-S3_(AES256) (0.00s)
=== RUN   TestSSETypeDiscrimination
=== RUN   TestSSETypeDiscrimination/SSE-C_headers_don't_trigger_SSE-KMS
=== RUN   TestSSETypeDiscrimination/SSE-KMS_headers_don't_trigger_SSE-C
=== RUN   TestSSETypeDiscrimination/Metadata_type_discrimination
--- PASS: TestSSETypeDiscrimination (0.00s)
    --- PASS: TestSSETypeDiscrimination/SSE-C_headers_don't_trigger_SSE-KMS (0.00s)
    --- PASS: TestSSETypeDiscrimination/SSE-KMS_headers_don't_trigger_SSE-C (0.00s)
    --- PASS: TestSSETypeDiscrimination/Metadata_type_discrimination (0.00s)
=== RUN   TestSSECParseCorruptedMetadata
=== RUN   TestSSECParseCorruptedMetadata/Missing_algorithm
    s3_sse_metadata_test.go:202: Detection result for Missing algorithm: true
=== RUN   TestSSECParseCorruptedMetadata/Invalid_key_MD5_format
    s3_sse_metadata_test.go:202: Detection result for Invalid key MD5 format: true
=== RUN   TestSSECParseCorruptedMetadata/Empty_values
    s3_sse_metadata_test.go:202: Detection result for Empty values: true
--- PASS: TestSSECParseCorruptedMetadata (0.00s)
    --- PASS: TestSSECParseCorruptedMetadata/Missing_algorithm (0.00s)
    --- PASS: TestSSECParseCorruptedMetadata/Invalid_key_MD5_format (0.00s)
    --- PASS: TestSSECParseCorruptedMetadata/Empty_values (0.00s)
=== RUN   TestSSEKMSParseCorruptedMetadata
=== RUN   TestSSEKMSParseCorruptedMetadata/Invalid_encrypted_data_key
    s3_sse_metadata_test.go:240: Detection result for Invalid encrypted data key: true
=== RUN   TestSSEKMSParseCorruptedMetadata/Invalid_encryption_context
    s3_sse_metadata_test.go:240: Detection result for Invalid encryption context: true
=== RUN   TestSSEKMSParseCorruptedMetadata/Empty_values
    s3_sse_metadata_test.go:240: Detection result for Empty values: false
--- PASS: TestSSEKMSParseCorruptedMetadata (0.00s)
    --- PASS: TestSSEKMSParseCorruptedMetadata/Invalid_encrypted_data_key (0.00s)
    --- PASS: TestSSEKMSParseCorruptedMetadata/Invalid_encryption_context (0.00s)
    --- PASS: TestSSEKMSParseCorruptedMetadata/Empty_values (0.00s)
=== RUN   TestSSEMetadataDeserialization
=== RUN   TestSSEMetadataDeserialization/Empty_data
=== RUN   TestSSEMetadataDeserialization/Invalid_JSON
=== RUN   TestSSEMetadataDeserialization/Valid_JSON_but_wrong_structure
=== RUN   TestSSEMetadataDeserialization/Null_data
--- PASS: TestSSEMetadataDeserialization (0.00s)
    --- PASS: TestSSEMetadataDeserialization/Empty_data (0.00s)
    --- PASS: TestSSEMetadataDeserialization/Invalid_JSON (0.00s)
    --- PASS: TestSSEMetadataDeserialization/Valid_JSON_but_wrong_structure (0.00s)
    --- PASS: TestSSEMetadataDeserialization/Null_data (0.00s)
=== RUN   TestGeneralSSEDetection
=== RUN   TestGeneralSSEDetection/No_encryption
=== RUN   TestGeneralSSEDetection/SSE-C_encrypted
=== RUN   TestGeneralSSEDetection/SSE-KMS_encrypted
=== RUN   TestGeneralSSEDetection/SSE-S3_encrypted
--- PASS: TestGeneralSSEDetection (0.00s)
    --- PASS: TestGeneralSSEDetection/No_encryption (0.00s)
    --- PASS: TestGeneralSSEDetection/SSE-C_encrypted (0.00s)
    --- PASS: TestGeneralSSEDetection/SSE-KMS_encrypted (0.00s)
    --- PASS: TestGeneralSSEDetection/SSE-S3_encrypted (0.00s)
=== RUN   TestSSECMultipartUpload
=== RUN   TestSSECMultipartUpload/Single_part_encryption/decryption
=== RUN   TestSSECMultipartUpload/Simulated_multipart_upload_parts
=== RUN   TestSSECMultipartUpload/Multipart_with_different_part_sizes
=== RUN   TestSSECMultipartUpload/Multipart_with_different_part_sizes/PartSize_1024
=== RUN   TestSSECMultipartUpload/Multipart_with_different_part_sizes/PartSize_2048
=== RUN   TestSSECMultipartUpload/Multipart_with_different_part_sizes/PartSize_4096
=== RUN   TestSSECMultipartUpload/Multipart_with_different_part_sizes/PartSize_8192
--- PASS: TestSSECMultipartUpload (0.00s)
    --- PASS: TestSSECMultipartUpload/Single_part_encryption/decryption (0.00s)
    --- PASS: TestSSECMultipartUpload/Simulated_multipart_upload_parts (0.00s)
    --- PASS: TestSSECMultipartUpload/Multipart_with_different_part_sizes (0.00s)
        --- PASS: TestSSECMultipartUpload/Multipart_with_different_part_sizes/PartSize_1024 (0.00s)
        --- PASS: TestSSECMultipartUpload/Multipart_with_different_part_sizes/PartSize_2048 (0.00s)
        --- PASS: TestSSECMultipartUpload/Multipart_with_different_part_sizes/PartSize_4096 (0.00s)
        --- PASS: TestSSECMultipartUpload/Multipart_with_different_part_sizes/PartSize_8192 (0.00s)
=== RUN   TestSSEKMSMultipartUpload
=== RUN   TestSSEKMSMultipartUpload/Single_part_encryption/decryption
=== RUN   TestSSEKMSMultipartUpload/Simulated_multipart_upload_parts
=== RUN   TestSSEKMSMultipartUpload/Multipart_consistency_checks
--- PASS: TestSSEKMSMultipartUpload (0.00s)
    --- PASS: TestSSEKMSMultipartUpload/Single_part_encryption/decryption (0.00s)
    --- PASS: TestSSEKMSMultipartUpload/Simulated_multipart_upload_parts (0.00s)
    --- PASS: TestSSEKMSMultipartUpload/Multipart_consistency_checks (0.00s)
=== RUN   TestMultipartSSEMixedScenarios
=== RUN   TestMultipartSSEMixedScenarios/Empty_parts_handling
=== RUN   TestMultipartSSEMixedScenarios/Single_byte_parts
=== RUN   TestMultipartSSEMixedScenarios/Very_large_parts
--- PASS: TestMultipartSSEMixedScenarios (0.00s)
    --- PASS: TestMultipartSSEMixedScenarios/Empty_parts_handling (0.00s)
    --- PASS: TestMultipartSSEMixedScenarios/Single_byte_parts (0.00s)
    --- PASS: TestMultipartSSEMixedScenarios/Very_large_parts (0.00s)
=== RUN   TestMultipartSSEPerformance
=== RUN   TestMultipartSSEPerformance/SSE-C_performance_with_multiple_parts
=== RUN   TestMultipartSSEPerformance/SSE-KMS_performance_with_multiple_parts
--- PASS: TestMultipartSSEPerformance (0.00s)
    --- PASS: TestMultipartSSEPerformance/SSE-C_performance_with_multiple_parts (0.00s)
    --- PASS: TestMultipartSSEPerformance/SSE-KMS_performance_with_multiple_parts (0.00s)
=== RUN   TestSSES3EndToEndSmallFile
=== RUN   TestSSES3EndToEndSmallFile/tiny_file_(10_bytes)
=== RUN   TestSSES3EndToEndSmallFile/small_file_(50_bytes)
=== RUN   TestSSES3EndToEndSmallFile/medium_file_(256_bytes)
--- PASS: TestSSES3EndToEndSmallFile (0.00s)
    --- PASS: TestSSES3EndToEndSmallFile/tiny_file_(10_bytes) (0.00s)
    --- PASS: TestSSES3EndToEndSmallFile/small_file_(50_bytes) (0.00s)
    --- PASS: TestSSES3EndToEndSmallFile/medium_file_(256_bytes) (0.00s)
=== RUN   TestSSES3EndToEndChunkedFile
--- PASS: TestSSES3EndToEndChunkedFile (0.00s)
=== RUN   TestSSES3EndToEndWithDetectPrimaryType
=== RUN   TestSSES3EndToEndWithDetectPrimaryType/Inline_SSE-S3_file_(no_chunks)
=== RUN   TestSSES3EndToEndWithDetectPrimaryType/Single_chunk_SSE-S3_file
=== RUN   TestSSES3EndToEndWithDetectPrimaryType/SSE-KMS_file_(has_KMS_key_ID)
--- PASS: TestSSES3EndToEndWithDetectPrimaryType (0.00s)
    --- PASS: TestSSES3EndToEndWithDetectPrimaryType/Inline_SSE-S3_file_(no_chunks) (0.00s)
    --- PASS: TestSSES3EndToEndWithDetectPrimaryType/Single_chunk_SSE-S3_file (0.00s)
    --- PASS: TestSSES3EndToEndWithDetectPrimaryType/SSE-KMS_file_(has_KMS_key_ID) (0.00s)
=== RUN   TestSSES3EncryptionDecryption
--- PASS: TestSSES3EncryptionDecryption (0.00s)
=== RUN   TestSSES3IsRequestInternal
=== RUN   TestSSES3IsRequestInternal/Valid_SSE-S3_request
=== RUN   TestSSES3IsRequestInternal/No_SSE_headers
=== RUN   TestSSES3IsRequestInternal/SSE-KMS_request
=== RUN   TestSSES3IsRequestInternal/SSE-C_request
--- PASS: TestSSES3IsRequestInternal (0.00s)
    --- PASS: TestSSES3IsRequestInternal/Valid_SSE-S3_request (0.00s)
    --- PASS: TestSSES3IsRequestInternal/No_SSE_headers (0.00s)
    --- PASS: TestSSES3IsRequestInternal/SSE-KMS_request (0.00s)
    --- PASS: TestSSES3IsRequestInternal/SSE-C_request (0.00s)
=== RUN   TestSSES3MetadataSerialization
--- PASS: TestSSES3MetadataSerialization (0.00s)
=== RUN   TestDetectPrimarySSETypeS3
=== RUN   TestDetectPrimarySSETypeS3/Single_SSE-S3_chunk
=== RUN   TestDetectPrimarySSETypeS3/Multiple_SSE-S3_chunks
=== RUN   TestDetectPrimarySSETypeS3/Mixed_SSE-S3_and_SSE-KMS_chunks_(SSE-S3_majority)
=== RUN   TestDetectPrimarySSETypeS3/No_chunks,_SSE-S3_metadata_without_KMS_key_ID
=== RUN   TestDetectPrimarySSETypeS3/No_chunks,_SSE-KMS_metadata_with_KMS_key_ID
=== RUN   TestDetectPrimarySSETypeS3/SSE-C_chunks
=== RUN   TestDetectPrimarySSETypeS3/Unencrypted
--- PASS: TestDetectPrimarySSETypeS3 (0.00s)
    --- PASS: TestDetectPrimarySSETypeS3/Single_SSE-S3_chunk (0.00s)
    --- PASS: TestDetectPrimarySSETypeS3/Multiple_SSE-S3_chunks (0.00s)
    --- PASS: TestDetectPrimarySSETypeS3/Mixed_SSE-S3_and_SSE-KMS_chunks_(SSE-S3_majority) (0.00s)
    --- PASS: TestDetectPrimarySSETypeS3/No_chunks,_SSE-S3_metadata_without_KMS_key_ID (0.00s)
    --- PASS: TestDetectPrimarySSETypeS3/No_chunks,_SSE-KMS_metadata_with_KMS_key_ID (0.00s)
    --- PASS: TestDetectPrimarySSETypeS3/SSE-C_chunks (0.00s)
    --- PASS: TestDetectPrimarySSETypeS3/Unencrypted (0.00s)
=== RUN   TestAddSSES3HeadersToResponse
--- PASS: TestAddSSES3HeadersToResponse (0.00s)
=== RUN   TestSSES3EncryptionWithBaseIV
--- PASS: TestSSES3EncryptionWithBaseIV (0.00s)
=== RUN   TestSSES3WrongKeyDecryption
--- PASS: TestSSES3WrongKeyDecryption (0.00s)
=== RUN   TestSSES3KeyGeneration
--- PASS: TestSSES3KeyGeneration (0.00s)
=== RUN   TestSSES3VariousSizes
=== RUN   TestSSES3VariousSizes/size_1
=== RUN   TestSSES3VariousSizes/size_15
=== RUN   TestSSES3VariousSizes/size_16
=== RUN   TestSSES3VariousSizes/size_17
=== RUN   TestSSES3VariousSizes/size_100
=== RUN   TestSSES3VariousSizes/size_1024
=== RUN   TestSSES3VariousSizes/size_4096
=== RUN   TestSSES3VariousSizes/size_1048576
--- PASS: TestSSES3VariousSizes (0.00s)
    --- PASS: TestSSES3VariousSizes/size_1 (0.00s)
    --- PASS: TestSSES3VariousSizes/size_15 (0.00s)
    --- PASS: TestSSES3VariousSizes/size_16 (0.00s)
    --- PASS: TestSSES3VariousSizes/size_17 (0.00s)
    --- PASS: TestSSES3VariousSizes/size_100 (0.00s)
    --- PASS: TestSSES3VariousSizes/size_1024 (0.00s)
    --- PASS: TestSSES3VariousSizes/size_4096 (0.00s)
    --- PASS: TestSSES3VariousSizes/size_1048576 (0.00s)
=== RUN   TestSSES3ResponseHeaders
--- PASS: TestSSES3ResponseHeaders (0.00s)
=== RUN   TestSSES3IsEncryptedInternal
=== RUN   TestSSES3IsEncryptedInternal/Empty_metadata
=== RUN   TestSSES3IsEncryptedInternal/Valid_SSE-S3_metadata
=== RUN   TestSSES3IsEncryptedInternal/SSE-KMS_metadata
=== RUN   TestSSES3IsEncryptedInternal/SSE-C_metadata
--- PASS: TestSSES3IsEncryptedInternal (0.00s)
    --- PASS: TestSSES3IsEncryptedInternal/Empty_metadata (0.00s)
    --- PASS: TestSSES3IsEncryptedInternal/Valid_SSE-S3_metadata (0.00s)
    --- PASS: TestSSES3IsEncryptedInternal/SSE-KMS_metadata (0.00s)
    --- PASS: TestSSES3IsEncryptedInternal/SSE-C_metadata (0.00s)
=== RUN   TestSSES3InvalidMetadataDeserialization
=== RUN   TestSSES3InvalidMetadataDeserialization/Empty_metadata
=== RUN   TestSSES3InvalidMetadataDeserialization/Invalid_JSON
=== RUN   TestSSES3InvalidMetadataDeserialization/Missing_keyId
=== RUN   TestSSES3InvalidMetadataDeserialization/Invalid_base64_encrypted_DEK
--- PASS: TestSSES3InvalidMetadataDeserialization (0.00s)
    --- PASS: TestSSES3InvalidMetadataDeserialization/Empty_metadata (0.00s)
    --- PASS: TestSSES3InvalidMetadataDeserialization/Invalid_JSON (0.00s)
    --- PASS: TestSSES3InvalidMetadataDeserialization/Missing_keyId (0.00s)
    --- PASS: TestSSES3InvalidMetadataDeserialization/Invalid_base64_encrypted_DEK (0.00s)
=== RUN   TestGetSSES3Headers
--- PASS: TestGetSSES3Headers (0.00s)
=== RUN   TestProcessSSES3Request
--- PASS: TestProcessSSES3Request (0.00s)
=== RUN   TestGetSSES3KeyFromMetadata
--- PASS: TestGetSSES3KeyFromMetadata (0.00s)
=== RUN   TestSSES3EnvelopeEncryption
--- PASS: TestSSES3EnvelopeEncryption (0.00s)
=== RUN   TestValidateSSES3Key
=== RUN   TestValidateSSES3Key/Nil_key
=== RUN   TestValidateSSES3Key/Valid_key
=== RUN   TestValidateSSES3Key/Valid_key_with_IV
=== RUN   TestValidateSSES3Key/Invalid_key_size_(too_small)
=== RUN   TestValidateSSES3Key/Invalid_key_size_(too_large)
=== RUN   TestValidateSSES3Key/Nil_key_bytes
=== RUN   TestValidateSSES3Key/Empty_key_ID
=== RUN   TestValidateSSES3Key/Invalid_algorithm
=== RUN   TestValidateSSES3Key/Invalid_IV_length
=== RUN   TestValidateSSES3Key/Empty_IV_is_allowed_(set_during_encryption)
--- PASS: TestValidateSSES3Key (0.00s)
    --- PASS: TestValidateSSES3Key/Nil_key (0.00s)
    --- PASS: TestValidateSSES3Key/Valid_key (0.00s)
    --- PASS: TestValidateSSES3Key/Valid_key_with_IV (0.00s)
    --- PASS: TestValidateSSES3Key/Invalid_key_size_(too_small) (0.00s)
    --- PASS: TestValidateSSES3Key/Invalid_key_size_(too_large) (0.00s)
    --- PASS: TestValidateSSES3Key/Nil_key_bytes (0.00s)
    --- PASS: TestValidateSSES3Key/Empty_key_ID (0.00s)
    --- PASS: TestValidateSSES3Key/Invalid_algorithm (0.00s)
    --- PASS: TestValidateSSES3Key/Invalid_IV_length (0.00s)
    --- PASS: TestValidateSSES3Key/Empty_IV_is_allowed_(set_during_encryption) (0.00s)
=== RUN   TestS3IAMIntegration_isSTSIssuer
=== RUN   TestS3IAMIntegration_isSTSIssuer/exact_match_with_configured_issuer
=== RUN   TestS3IAMIntegration_isSTSIssuer/similar_but_not_exact_issuer
=== RUN   TestS3IAMIntegration_isSTSIssuer/substring_of_configured_issuer
=== RUN   TestS3IAMIntegration_isSTSIssuer/contains_configured_issuer_as_substring
=== RUN   TestS3IAMIntegration_isSTSIssuer/case_sensitive_-_different_case
=== RUN   TestS3IAMIntegration_isSTSIssuer/Google_OIDC
=== RUN   TestS3IAMIntegration_isSTSIssuer/Azure_AD
=== RUN   TestS3IAMIntegration_isSTSIssuer/Auth0
=== RUN   TestS3IAMIntegration_isSTSIssuer/Keycloak
=== RUN   TestS3IAMIntegration_isSTSIssuer/Empty_string
--- PASS: TestS3IAMIntegration_isSTSIssuer (0.00s)
    --- PASS: TestS3IAMIntegration_isSTSIssuer/exact_match_with_configured_issuer (0.00s)
    --- PASS: TestS3IAMIntegration_isSTSIssuer/similar_but_not_exact_issuer (0.00s)
    --- PASS: TestS3IAMIntegration_isSTSIssuer/substring_of_configured_issuer (0.00s)
    --- PASS: TestS3IAMIntegration_isSTSIssuer/contains_configured_issuer_as_substring (0.00s)
    --- PASS: TestS3IAMIntegration_isSTSIssuer/case_sensitive_-_different_case (0.00s)
    --- PASS: TestS3IAMIntegration_isSTSIssuer/Google_OIDC (0.00s)
    --- PASS: TestS3IAMIntegration_isSTSIssuer/Azure_AD (0.00s)
    --- PASS: TestS3IAMIntegration_isSTSIssuer/Auth0 (0.00s)
    --- PASS: TestS3IAMIntegration_isSTSIssuer/Keycloak (0.00s)
    --- PASS: TestS3IAMIntegration_isSTSIssuer/Empty_string (0.00s)
=== RUN   TestS3IAMIntegration_isSTSIssuer_NoSTSService
--- PASS: TestS3IAMIntegration_isSTSIssuer_NoSTSService (0.00s)
=== RUN   TestGetAccountId
--- PASS: TestGetAccountId (0.00s)
=== RUN   TestExtractAcl
--- PASS: TestExtractAcl (0.00s)
=== RUN   TestParseAndValidateAclHeaders
W0616 11:57:40.906840 s3api_acl_helper.go:293 invalid canonical grantee! account id[notExistsAccount] is not exists
W0616 11:57:40.906848 s3api_acl_helper.go:282 invalid group grantee! group name[http:sfasf] is not valid
--- PASS: TestParseAndValidateAclHeaders (0.00s)
=== RUN   TestDetermineReqGrants
--- PASS: TestDetermineReqGrants (0.00s)
=== RUN   TestAssembleEntryWithAcp
--- PASS: TestAssembleEntryWithAcp (0.00s)
=== RUN   TestGrantEquals
--- PASS: TestGrantEquals (0.00s)
=== RUN   TestSetAcpOwnerHeader
--- PASS: TestSetAcpOwnerHeader (0.00s)
=== RUN   TestSetAcpGrantsHeader
--- PASS: TestSetAcpGrantsHeader (0.00s)
=== RUN   TestPutBucketAclCannedAclSupport
=== RUN   TestPutBucketAclCannedAclSupport/private
    s3api_bucket_handlers_test.go:88: ✓ PASS: private - private ACL should be accepted
=== RUN   TestPutBucketAclCannedAclSupport/public-read
    s3api_bucket_handlers_test.go:88: ✓ PASS: public-read - public-read ACL should be accepted
=== RUN   TestPutBucketAclCannedAclSupport/public-read-write
    s3api_bucket_handlers_test.go:88: ✓ PASS: public-read-write - public-read-write ACL should be accepted
=== RUN   TestPutBucketAclCannedAclSupport/authenticated-read
    s3api_bucket_handlers_test.go:88: ✓ PASS: authenticated-read - authenticated-read ACL should be accepted
=== RUN   TestPutBucketAclCannedAclSupport/bucket-owner-read
    s3api_bucket_handlers_test.go:88: ✓ PASS: bucket-owner-read - bucket-owner-read ACL should be accepted
=== RUN   TestPutBucketAclCannedAclSupport/bucket-owner-full-control
    s3api_bucket_handlers_test.go:88: ✓ PASS: bucket-owner-full-control - bucket-owner-full-control ACL should be accepted
=== RUN   TestPutBucketAclCannedAclSupport/invalid-acl
    s3api_bucket_handlers_test.go:91: ✓ PASS: invalid-acl - invalid ACL should be rejected
--- PASS: TestPutBucketAclCannedAclSupport (0.00s)
    --- PASS: TestPutBucketAclCannedAclSupport/private (0.00s)
    --- PASS: TestPutBucketAclCannedAclSupport/public-read (0.00s)
    --- PASS: TestPutBucketAclCannedAclSupport/public-read-write (0.00s)
    --- PASS: TestPutBucketAclCannedAclSupport/authenticated-read (0.00s)
    --- PASS: TestPutBucketAclCannedAclSupport/bucket-owner-read (0.00s)
    --- PASS: TestPutBucketAclCannedAclSupport/bucket-owner-full-control (0.00s)
    --- PASS: TestPutBucketAclCannedAclSupport/invalid-acl (0.00s)
=== RUN   TestBucketWithoutACLIsNotPublicRead
--- PASS: TestBucketWithoutACLIsNotPublicRead (0.00s)
=== RUN   TestBucketConfigInitialization
--- PASS: TestBucketConfigInitialization (0.00s)
=== RUN   TestUpdateBucketConfigCacheConsistency
=== RUN   TestUpdateBucketConfigCacheConsistency/bucket_without_ACL_should_have_IsPublicRead=false
=== RUN   TestUpdateBucketConfigCacheConsistency/bucket_with_public-read_ACL_should_have_IsPublicRead=true
--- PASS: TestUpdateBucketConfigCacheConsistency (0.00s)
    --- PASS: TestUpdateBucketConfigCacheConsistency/bucket_without_ACL_should_have_IsPublicRead=false (0.00s)
    --- PASS: TestUpdateBucketConfigCacheConsistency/bucket_with_public-read_ACL_should_have_IsPublicRead=true (0.00s)
=== RUN   TestListAllMyBucketsResultNamespace
    s3api_bucket_handlers_test.go:249: Generated XML:
        <ListAllMyBucketsResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/"><Owner><ID>test-owner-id</ID><DisplayName>test-owner</DisplayName></Owner><Buckets><Bucket><Name>test-bucket</Name><CreationDate>2025-01-01T00:00:00Z</CreationDate></Bucket></Buckets></ListAllMyBucketsResult>
--- PASS: TestListAllMyBucketsResultNamespace (0.00s)
=== RUN   TestBucketMetadataStruct
--- PASS: TestBucketMetadataStruct (0.00s)
=== RUN   TestBucketMetadataUpdatePattern
--- PASS: TestBucketMetadataUpdatePattern (0.00s)
=== RUN   TestBucketMetadataHelperFunctions
--- PASS: TestBucketMetadataHelperFunctions (0.00s)
=== RUN   TestLimit
--- PASS: TestLimit (0.00s)
=== RUN   TestConditionalHeadersWithExistingObjects
=== RUN   TestConditionalHeadersWithExistingObjects/IfNoneMatch_ObjectExists
=== RUN   TestConditionalHeadersWithExistingObjects/IfNoneMatch_ObjectExists/Asterisk_ShouldFail
=== RUN   TestConditionalHeadersWithExistingObjects/IfNoneMatch_ObjectExists/MatchingETag_ShouldFail
=== RUN   TestConditionalHeadersWithExistingObjects/IfNoneMatch_ObjectExists/NonMatchingETag_ShouldSucceed
=== RUN   TestConditionalHeadersWithExistingObjects/IfNoneMatch_ObjectExists/MultipleETags_OneMatches_ShouldFail
=== RUN   TestConditionalHeadersWithExistingObjects/IfNoneMatch_ObjectExists/MultipleETags_NoneMatch_ShouldSucceed
=== RUN   TestConditionalHeadersWithExistingObjects/IfMatch_ObjectExists
=== RUN   TestConditionalHeadersWithExistingObjects/IfMatch_ObjectExists/MatchingETag_ShouldSucceed
=== RUN   TestConditionalHeadersWithExistingObjects/IfMatch_ObjectExists/NonMatchingETag_ShouldFail
=== RUN   TestConditionalHeadersWithExistingObjects/IfMatch_ObjectExists/MultipleETags_OneMatches_ShouldSucceed
=== RUN   TestConditionalHeadersWithExistingObjects/IfMatch_ObjectExists/Wildcard_ShouldSucceed
=== RUN   TestConditionalHeadersWithExistingObjects/IfModifiedSince_ObjectExists
=== RUN   TestConditionalHeadersWithExistingObjects/IfModifiedSince_ObjectExists/DateBefore_ShouldSucceed
=== RUN   TestConditionalHeadersWithExistingObjects/IfModifiedSince_ObjectExists/DateAfter_ShouldFail
=== RUN   TestConditionalHeadersWithExistingObjects/IfModifiedSince_ObjectExists/ExactDate_ShouldFail
=== RUN   TestConditionalHeadersWithExistingObjects/IfUnmodifiedSince_ObjectExists
=== RUN   TestConditionalHeadersWithExistingObjects/IfUnmodifiedSince_ObjectExists/DateAfter_ShouldSucceed
=== RUN   TestConditionalHeadersWithExistingObjects/IfUnmodifiedSince_ObjectExists/DateBefore_ShouldFail
--- PASS: TestConditionalHeadersWithExistingObjects (0.00s)
    --- PASS: TestConditionalHeadersWithExistingObjects/IfNoneMatch_ObjectExists (0.00s)
        --- PASS: TestConditionalHeadersWithExistingObjects/IfNoneMatch_ObjectExists/Asterisk_ShouldFail (0.00s)
        --- PASS: TestConditionalHeadersWithExistingObjects/IfNoneMatch_ObjectExists/MatchingETag_ShouldFail (0.00s)
        --- PASS: TestConditionalHeadersWithExistingObjects/IfNoneMatch_ObjectExists/NonMatchingETag_ShouldSucceed (0.00s)
        --- PASS: TestConditionalHeadersWithExistingObjects/IfNoneMatch_ObjectExists/MultipleETags_OneMatches_ShouldFail (0.00s)
        --- PASS: TestConditionalHeadersWithExistingObjects/IfNoneMatch_ObjectExists/MultipleETags_NoneMatch_ShouldSucceed (0.00s)
    --- PASS: TestConditionalHeadersWithExistingObjects/IfMatch_ObjectExists (0.00s)
        --- PASS: TestConditionalHeadersWithExistingObjects/IfMatch_ObjectExists/MatchingETag_ShouldSucceed (0.00s)
        --- PASS: TestConditionalHeadersWithExistingObjects/IfMatch_ObjectExists/NonMatchingETag_ShouldFail (0.00s)
        --- PASS: TestConditionalHeadersWithExistingObjects/IfMatch_ObjectExists/MultipleETags_OneMatches_ShouldSucceed (0.00s)
        --- PASS: TestConditionalHeadersWithExistingObjects/IfMatch_ObjectExists/Wildcard_ShouldSucceed (0.00s)
    --- PASS: TestConditionalHeadersWithExistingObjects/IfModifiedSince_ObjectExists (0.00s)
        --- PASS: TestConditionalHeadersWithExistingObjects/IfModifiedSince_ObjectExists/DateBefore_ShouldSucceed (0.00s)
        --- PASS: TestConditionalHeadersWithExistingObjects/IfModifiedSince_ObjectExists/DateAfter_ShouldFail (0.00s)
        --- PASS: TestConditionalHeadersWithExistingObjects/IfModifiedSince_ObjectExists/ExactDate_ShouldFail (0.00s)
    --- PASS: TestConditionalHeadersWithExistingObjects/IfUnmodifiedSince_ObjectExists (0.00s)
        --- PASS: TestConditionalHeadersWithExistingObjects/IfUnmodifiedSince_ObjectExists/DateAfter_ShouldSucceed (0.00s)
        --- PASS: TestConditionalHeadersWithExistingObjects/IfUnmodifiedSince_ObjectExists/DateBefore_ShouldFail (0.00s)
=== RUN   TestConditionalHeadersForReads
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectExists
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfNoneMatch_ObjectExists_ShouldReturn304
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfNoneMatchAsterisk_ObjectExists_ShouldReturn304
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfNoneMatch_NonMatchingETag_ShouldSucceed
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfMatch_MatchingETag_ShouldSucceed
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfMatch_NonMatchingETag_ShouldReturn412
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfMatchAsterisk_ObjectExists_ShouldSucceed
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfModifiedSince_ObjectModifiedAfter_ShouldSucceed
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfModifiedSince_ObjectNotModified_ShouldReturn304
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfUnmodifiedSince_ObjectNotModified_ShouldSucceed
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfUnmodifiedSince_ObjectModified_ShouldReturn412
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectNotExists
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectNotExists/IfNoneMatch_ObjectNotExists_ShouldSucceed
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectNotExists/IfMatch_ObjectNotExists_ShouldReturn412
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectNotExists/IfModifiedSince_ObjectNotExists_ShouldSucceed
=== RUN   TestConditionalHeadersForReads/ConditionalReads_ObjectNotExists/IfUnmodifiedSince_ObjectNotExists_ShouldReturn412
--- PASS: TestConditionalHeadersForReads (0.00s)
    --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectExists (0.00s)
        --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfNoneMatch_ObjectExists_ShouldReturn304 (0.00s)
        --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfNoneMatchAsterisk_ObjectExists_ShouldReturn304 (0.00s)
        --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfNoneMatch_NonMatchingETag_ShouldSucceed (0.00s)
        --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfMatch_MatchingETag_ShouldSucceed (0.00s)
        --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfMatch_NonMatchingETag_ShouldReturn412 (0.00s)
        --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfMatchAsterisk_ObjectExists_ShouldSucceed (0.00s)
        --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfModifiedSince_ObjectModifiedAfter_ShouldSucceed (0.00s)
        --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfModifiedSince_ObjectNotModified_ShouldReturn304 (0.00s)
        --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfUnmodifiedSince_ObjectNotModified_ShouldSucceed (0.00s)
        --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectExists/IfUnmodifiedSince_ObjectModified_ShouldReturn412 (0.00s)
    --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectNotExists (0.00s)
        --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectNotExists/IfNoneMatch_ObjectNotExists_ShouldSucceed (0.00s)
        --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectNotExists/IfMatch_ObjectNotExists_ShouldReturn412 (0.00s)
        --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectNotExists/IfModifiedSince_ObjectNotExists_ShouldSucceed (0.00s)
        --- PASS: TestConditionalHeadersForReads/ConditionalReads_ObjectNotExists/IfUnmodifiedSince_ObjectNotExists_ShouldReturn412 (0.00s)
=== RUN   TestConditionalHeadersWithNonExistentObjects
=== RUN   TestConditionalHeadersWithNonExistentObjects/IfNoneMatch_ObjectDoesNotExist
=== RUN   TestConditionalHeadersWithNonExistentObjects/IfNoneMatch_ObjectDoesNotExist/Asterisk_ShouldSucceed
=== RUN   TestConditionalHeadersWithNonExistentObjects/IfNoneMatch_ObjectDoesNotExist/SpecificETag_ShouldSucceed
=== RUN   TestConditionalHeadersWithNonExistentObjects/IfMatch_ObjectDoesNotExist
=== RUN   TestConditionalHeadersWithNonExistentObjects/IfMatch_ObjectDoesNotExist/SpecificETag_ShouldFail
=== RUN   TestConditionalHeadersWithNonExistentObjects/IfMatch_ObjectDoesNotExist/Wildcard_ShouldFail
=== RUN   TestConditionalHeadersWithNonExistentObjects/DateFormatValidation
=== RUN   TestConditionalHeadersWithNonExistentObjects/DateFormatValidation/IfModifiedSince_ValidFormat
=== RUN   TestConditionalHeadersWithNonExistentObjects/DateFormatValidation/IfModifiedSince_InvalidFormat
=== RUN   TestConditionalHeadersWithNonExistentObjects/DateFormatValidation/IfUnmodifiedSince_InvalidFormat
=== RUN   TestConditionalHeadersWithNonExistentObjects/NoConditionalHeaders
--- PASS: TestConditionalHeadersWithNonExistentObjects (0.00s)
    --- PASS: TestConditionalHeadersWithNonExistentObjects/IfNoneMatch_ObjectDoesNotExist (0.00s)
        --- PASS: TestConditionalHeadersWithNonExistentObjects/IfNoneMatch_ObjectDoesNotExist/Asterisk_ShouldSucceed (0.00s)
        --- PASS: TestConditionalHeadersWithNonExistentObjects/IfNoneMatch_ObjectDoesNotExist/SpecificETag_ShouldSucceed (0.00s)
    --- PASS: TestConditionalHeadersWithNonExistentObjects/IfMatch_ObjectDoesNotExist (0.00s)
        --- PASS: TestConditionalHeadersWithNonExistentObjects/IfMatch_ObjectDoesNotExist/SpecificETag_ShouldFail (0.00s)
        --- PASS: TestConditionalHeadersWithNonExistentObjects/IfMatch_ObjectDoesNotExist/Wildcard_ShouldFail (0.00s)
    --- PASS: TestConditionalHeadersWithNonExistentObjects/DateFormatValidation (0.00s)
        --- PASS: TestConditionalHeadersWithNonExistentObjects/DateFormatValidation/IfModifiedSince_ValidFormat (0.00s)
        --- PASS: TestConditionalHeadersWithNonExistentObjects/DateFormatValidation/IfModifiedSince_InvalidFormat (0.00s)
        --- PASS: TestConditionalHeadersWithNonExistentObjects/DateFormatValidation/IfUnmodifiedSince_InvalidFormat (0.00s)
    --- PASS: TestConditionalHeadersWithNonExistentObjects/NoConditionalHeaders (0.00s)
=== RUN   TestETagMatching
=== RUN   TestETagMatching/ExactMatch
=== RUN   TestETagMatching/ExactMatchWithQuotes
=== RUN   TestETagMatching/NoMatch
=== RUN   TestETagMatching/MultipleETags_FirstMatch
=== RUN   TestETagMatching/MultipleETags_SecondMatch
=== RUN   TestETagMatching/MultipleETags_NoMatch
=== RUN   TestETagMatching/WithSpaces
--- PASS: TestETagMatching (0.00s)
    --- PASS: TestETagMatching/ExactMatch (0.00s)
    --- PASS: TestETagMatching/ExactMatchWithQuotes (0.00s)
    --- PASS: TestETagMatching/NoMatch (0.00s)
    --- PASS: TestETagMatching/MultipleETags_FirstMatch (0.00s)
    --- PASS: TestETagMatching/MultipleETags_SecondMatch (0.00s)
    --- PASS: TestETagMatching/MultipleETags_NoMatch (0.00s)
    --- PASS: TestETagMatching/WithSpaces (0.00s)
=== RUN   TestGetObjectETagWithMd5AndChunks
    s3api_conditional_headers_test.go:721: Expected ETag "663726330ac254635581be07a2a1def6", got "123294de680f28bde364b81477549f7d-2"
=== RUN   TestGetObjectETagWithMd5AndChunks/IfMatch_WithMd5BasedETag_ShouldSucceed
    s3api_conditional_headers_test.go:737: Expected ErrNone when If-Match uses Md5-based ETag, got 61 (ETag was "123294de680f28bde364b81477549f7d-2")
=== RUN   TestGetObjectETagWithMd5AndChunks/IfMatch_WithChunkBasedETag_ShouldFail
    s3api_conditional_headers_test.go:750: Expected ErrPreconditionFailed when If-Match uses chunk-based ETag format, got 0
--- FAIL: TestGetObjectETagWithMd5AndChunks (0.00s)
    --- FAIL: TestGetObjectETagWithMd5AndChunks/IfMatch_WithMd5BasedETag_ShouldSucceed (0.00s)
    --- FAIL: TestGetObjectETagWithMd5AndChunks/IfMatch_WithChunkBasedETag_ShouldFail (0.00s)
=== RUN   TestConditionalHeadersIntegration
    s3api_conditional_headers_test.go:758: Integration test - requires running SeaweedFS instance
--- SKIP: TestConditionalHeadersIntegration (0.00s)
=== RUN   TestConditionalHeadersMultipartUpload
=== RUN   TestConditionalHeadersMultipartUpload/CompleteMultipartUpload_IfNoneMatchAsterisk_ObjectExists_ShouldFail
=== RUN   TestConditionalHeadersMultipartUpload/CompleteMultipartUpload_IfNoneMatchAsterisk_ObjectNotExists_ShouldSucceed
=== RUN   TestConditionalHeadersMultipartUpload/CompleteMultipartUpload_IfMatch_ETagMatches_ShouldSucceed
=== RUN   TestConditionalHeadersMultipartUpload/CompleteMultipartUpload_IfMatch_ObjectNotExists_ShouldFail
=== RUN   TestConditionalHeadersMultipartUpload/CompleteMultipartUpload_IfMatchWildcard_ObjectExists_ShouldSucceed
--- PASS: TestConditionalHeadersMultipartUpload (0.00s)
    --- PASS: TestConditionalHeadersMultipartUpload/CompleteMultipartUpload_IfNoneMatchAsterisk_ObjectExists_ShouldFail (0.00s)
    --- PASS: TestConditionalHeadersMultipartUpload/CompleteMultipartUpload_IfNoneMatchAsterisk_ObjectNotExists_ShouldSucceed (0.00s)
    --- PASS: TestConditionalHeadersMultipartUpload/CompleteMultipartUpload_IfMatch_ETagMatches_ShouldSucceed (0.00s)
    --- PASS: TestConditionalHeadersMultipartUpload/CompleteMultipartUpload_IfMatch_ObjectNotExists_ShouldFail (0.00s)
    --- PASS: TestConditionalHeadersMultipartUpload/CompleteMultipartUpload_IfMatchWildcard_ObjectExists_ShouldSucceed (0.00s)
=== RUN   TestClassifyDomainNames
=== RUN   TestClassifyDomainNames/Mixed_path-style_and_virtual-host_with_single_parent
=== RUN   TestClassifyDomainNames/Multiple_subdomains_with_same_parent
=== RUN   TestClassifyDomainNames/Subdomain_without_parent_in_list
=== RUN   TestClassifyDomainNames/Only_top-level_domain
=== RUN   TestClassifyDomainNames/Multiple_independent_domains
=== RUN   TestClassifyDomainNames/Mixed_with_nested_levels
=== RUN   TestClassifyDomainNames/Domain_without_dot
=== RUN   TestClassifyDomainNames/Empty_list
=== RUN   TestClassifyDomainNames/Mixed_localhost_and_domain
=== RUN   TestClassifyDomainNames/Three-level_subdomain_hierarchy
=== RUN   TestClassifyDomainNames/Real-world_example_from_issue_#7356
--- PASS: TestClassifyDomainNames (0.00s)
    --- PASS: TestClassifyDomainNames/Mixed_path-style_and_virtual-host_with_single_parent (0.00s)
    --- PASS: TestClassifyDomainNames/Multiple_subdomains_with_same_parent (0.00s)
    --- PASS: TestClassifyDomainNames/Subdomain_without_parent_in_list (0.00s)
    --- PASS: TestClassifyDomainNames/Only_top-level_domain (0.00s)
    --- PASS: TestClassifyDomainNames/Multiple_independent_domains (0.00s)
    --- PASS: TestClassifyDomainNames/Mixed_with_nested_levels (0.00s)
    --- PASS: TestClassifyDomainNames/Domain_without_dot (0.00s)
    --- PASS: TestClassifyDomainNames/Empty_list (0.00s)
    --- PASS: TestClassifyDomainNames/Mixed_localhost_and_domain (0.00s)
    --- PASS: TestClassifyDomainNames/Three-level_subdomain_hierarchy (0.00s)
    --- PASS: TestClassifyDomainNames/Real-world_example_from_issue_#7356 (0.00s)
=== RUN   TestClassifyDomainNamesOrder
=== RUN   TestClassifyDomainNamesOrder/Parent_before_child
=== RUN   TestClassifyDomainNamesOrder/Child_before_parent
=== RUN   TestClassifyDomainNamesOrder/Mixed_order_with_multiple_children
--- PASS: TestClassifyDomainNamesOrder (0.00s)
    --- PASS: TestClassifyDomainNamesOrder/Parent_before_child (0.00s)
    --- PASS: TestClassifyDomainNamesOrder/Child_before_parent (0.00s)
    --- PASS: TestClassifyDomainNamesOrder/Mixed_order_with_multiple_children (0.00s)
=== RUN   TestClassifyDomainNamesEdgeCases
=== RUN   TestClassifyDomainNamesEdgeCases/Duplicate_domains
=== RUN   TestClassifyDomainNamesEdgeCases/Very_long_domain_name
=== RUN   TestClassifyDomainNamesEdgeCases/Similar_but_different_domains
=== RUN   TestClassifyDomainNamesEdgeCases/IP_address_as_domain
--- PASS: TestClassifyDomainNamesEdgeCases (0.00s)
    --- PASS: TestClassifyDomainNamesEdgeCases/Duplicate_domains (0.00s)
    --- PASS: TestClassifyDomainNamesEdgeCases/Very_long_domain_name (0.00s)
    --- PASS: TestClassifyDomainNamesEdgeCases/Similar_but_different_domains (0.00s)
    --- PASS: TestClassifyDomainNamesEdgeCases/IP_address_as_domain (0.00s)
=== RUN   TestClassifyDomainNamesUseCases
=== RUN   TestClassifyDomainNamesUseCases/Issue_#7356_-_Prometheus_blackbox_exporter_scenario
=== RUN   TestClassifyDomainNamesUseCases/Multi-environment_setup
=== RUN   TestClassifyDomainNamesUseCases/Mixed_production_setup
--- PASS: TestClassifyDomainNamesUseCases (0.00s)
    --- PASS: TestClassifyDomainNamesUseCases/Issue_#7356_-_Prometheus_blackbox_exporter_scenario (0.00s)
    --- PASS: TestClassifyDomainNamesUseCases/Multi-environment_setup (0.00s)
    --- PASS: TestClassifyDomainNamesUseCases/Mixed_production_setup (0.00s)
=== RUN   TestCheckGovernanceBypassPermissionResourceGeneration
=== RUN   TestCheckGovernanceBypassPermissionResourceGeneration/simple_object
=== RUN   TestCheckGovernanceBypassPermissionResourceGeneration/object_with_leading_slash
=== RUN   TestCheckGovernanceBypassPermissionResourceGeneration/nested_object
=== RUN   TestCheckGovernanceBypassPermissionResourceGeneration/empty_object
=== RUN   TestCheckGovernanceBypassPermissionResourceGeneration/root_object
--- PASS: TestCheckGovernanceBypassPermissionResourceGeneration (0.00s)
    --- PASS: TestCheckGovernanceBypassPermissionResourceGeneration/simple_object (0.00s)
    --- PASS: TestCheckGovernanceBypassPermissionResourceGeneration/object_with_leading_slash (0.00s)
    --- PASS: TestCheckGovernanceBypassPermissionResourceGeneration/nested_object (0.00s)
    --- PASS: TestCheckGovernanceBypassPermissionResourceGeneration/empty_object (0.00s)
    --- PASS: TestCheckGovernanceBypassPermissionResourceGeneration/root_object (0.00s)
=== RUN   TestCheckGovernanceBypassPermissionActionGeneration
=== RUN   TestCheckGovernanceBypassPermissionActionGeneration/bypass_action_generation
=== RUN   TestCheckGovernanceBypassPermissionActionGeneration/leading_slash_handling
--- PASS: TestCheckGovernanceBypassPermissionActionGeneration (0.00s)
    --- PASS: TestCheckGovernanceBypassPermissionActionGeneration/bypass_action_generation (0.00s)
    --- PASS: TestCheckGovernanceBypassPermissionActionGeneration/leading_slash_handling (0.00s)
=== RUN   TestCheckGovernanceBypassPermissionErrorHandling
=== RUN   TestCheckGovernanceBypassPermissionErrorHandling/empty_bucket
    s3api_governance_permissions_test.go:169: Generated resource path for Empty bucket should be handled gracefully: /test-object.txt
=== RUN   TestCheckGovernanceBypassPermissionErrorHandling/special_characters
    s3api_governance_permissions_test.go:169: Generated resource path for Objects with special characters should be handled: test-bucket/test object with spaces.txt
=== RUN   TestCheckGovernanceBypassPermissionErrorHandling/unicode_characters
    s3api_governance_permissions_test.go:169: Generated resource path for Objects with unicode characters should be handled: test-bucket/测试文件.txt
--- PASS: TestCheckGovernanceBypassPermissionErrorHandling (0.00s)
    --- PASS: TestCheckGovernanceBypassPermissionErrorHandling/empty_bucket (0.00s)
    --- PASS: TestCheckGovernanceBypassPermissionErrorHandling/special_characters (0.00s)
    --- PASS: TestCheckGovernanceBypassPermissionErrorHandling/unicode_characters (0.00s)
=== RUN   TestCheckGovernanceBypassPermissionIntegrationBehavior
    s3api_governance_permissions_test.go:177: Documentation test - describes expected behavior with full IAM integration
--- SKIP: TestCheckGovernanceBypassPermissionIntegrationBehavior (0.00s)
=== RUN   TestGovernanceBypassWithIAMPermission
    s3api_governance_permissions_test.go:206: Integration test requires full IAM setup - demonstrates expected behavior
--- SKIP: TestGovernanceBypassWithIAMPermission (0.00s)
=== RUN   TestGovernancePermissionIntegration
    s3api_governance_permissions_test.go:224: Integration test requires full IAM setup - demonstrates expected behavior
--- SKIP: TestGovernancePermissionIntegration (0.00s)
=== RUN   TestGovernanceBypassHeader
=== RUN   TestGovernanceBypassHeader/bypass_header_true
=== RUN   TestGovernanceBypassHeader/bypass_header_false
=== RUN   TestGovernanceBypassHeader/bypass_header_empty
=== RUN   TestGovernanceBypassHeader/bypass_header_invalid
--- PASS: TestGovernanceBypassHeader (0.00s)
    --- PASS: TestGovernanceBypassHeader/bypass_header_true (0.00s)
    --- PASS: TestGovernanceBypassHeader/bypass_header_false (0.00s)
    --- PASS: TestGovernanceBypassHeader/bypass_header_empty (0.00s)
    --- PASS: TestGovernanceBypassHeader/bypass_header_invalid (0.00s)
=== RUN   TestGovernanceRetentionModeChecking
=== RUN   TestGovernanceRetentionModeChecking/compliance_mode_cannot_bypass
=== RUN   TestGovernanceRetentionModeChecking/governance_mode_without_bypass
=== RUN   TestGovernanceRetentionModeChecking/governance_mode_with_bypass_no_permission
=== RUN   TestGovernanceRetentionModeChecking/governance_mode_with_bypass_and_permission
--- PASS: TestGovernanceRetentionModeChecking (0.00s)
    --- PASS: TestGovernanceRetentionModeChecking/compliance_mode_cannot_bypass (0.00s)
    --- PASS: TestGovernanceRetentionModeChecking/governance_mode_without_bypass (0.00s)
    --- PASS: TestGovernanceRetentionModeChecking/governance_mode_with_bypass_no_permission (0.00s)
    --- PASS: TestGovernanceRetentionModeChecking/governance_mode_with_bypass_and_permission (0.00s)
=== RUN   TestGovernancePermissionActionGeneration
=== RUN   TestGovernancePermissionActionGeneration/bucket_and_object_action
=== RUN   TestGovernancePermissionActionGeneration/bucket_only_action
=== RUN   TestGovernancePermissionActionGeneration/nested_object_action
--- PASS: TestGovernancePermissionActionGeneration (0.00s)
    --- PASS: TestGovernancePermissionActionGeneration/bucket_and_object_action (0.00s)
    --- PASS: TestGovernancePermissionActionGeneration/bucket_only_action (0.00s)
    --- PASS: TestGovernancePermissionActionGeneration/nested_object_action (0.00s)
=== RUN   TestGovernancePermissionEndToEnd
    s3api_governance_permissions_test.go:406: End-to-end testing requires full S3 API server setup - demonstrates expected behavior
--- SKIP: TestGovernancePermissionEndToEnd (0.00s)
=== RUN   TestGovernancePermissionHTTPFlow
=== RUN   TestGovernancePermissionHTTPFlow/bypass_header_true
=== RUN   TestGovernancePermissionHTTPFlow/bypass_header_false
=== RUN   TestGovernancePermissionHTTPFlow/bypass_header_missing
--- PASS: TestGovernancePermissionHTTPFlow (0.00s)
    --- PASS: TestGovernancePermissionHTTPFlow/bypass_header_true (0.00s)
    --- PASS: TestGovernancePermissionHTTPFlow/bypass_header_false (0.00s)
    --- PASS: TestGovernancePermissionHTTPFlow/bypass_header_missing (0.00s)
=== RUN   TestGovernancePermissionMethodCalls
=== RUN   TestGovernancePermissionMethodCalls/delete_object_handler_pattern
    s3api_governance_permissions_test.go:482: Extracted bucket: , object: /
=== RUN   TestGovernancePermissionMethodCalls/put_object_handler_pattern
    s3api_governance_permissions_test.go:503: Extracted bucket: , object: /
--- PASS: TestGovernancePermissionMethodCalls (0.00s)
    --- PASS: TestGovernancePermissionMethodCalls/delete_object_handler_pattern (0.00s)
    --- PASS: TestGovernancePermissionMethodCalls/put_object_handler_pattern (0.00s)
=== RUN   TestGovernanceBypassNotPermittedError
=== RUN   TestGovernanceBypassNotPermittedError/governance_bypass_without_permission
=== RUN   TestGovernanceBypassNotPermittedError/governance_bypass_with_permission
=== RUN   TestGovernanceBypassNotPermittedError/governance_no_bypass
--- PASS: TestGovernanceBypassNotPermittedError (0.00s)
    --- PASS: TestGovernanceBypassNotPermittedError/governance_bypass_without_permission (0.00s)
    --- PASS: TestGovernanceBypassNotPermittedError/governance_bypass_with_permission (0.00s)
    --- PASS: TestGovernanceBypassNotPermittedError/governance_no_bypass (0.00s)
=== RUN   TestProcessMetadata
--- PASS: TestProcessMetadata (0.00s)
=== RUN   TestProcessMetadataBytes
--- PASS: TestProcessMetadataBytes (0.00s)
=== RUN   TestListObjectsHandler
--- PASS: TestListObjectsHandler (0.00s)
=== RUN   Test_normalizePrefixMarker
=== RUN   Test_normalizePrefixMarker/prefix_is_a_directory
=== RUN   Test_normalizePrefixMarker/normal_case
=== RUN   Test_normalizePrefixMarker/empty_prefix
=== RUN   Test_normalizePrefixMarker/empty_directory
--- PASS: Test_normalizePrefixMarker (0.00s)
    --- PASS: Test_normalizePrefixMarker/prefix_is_a_directory (0.00s)
    --- PASS: Test_normalizePrefixMarker/normal_case (0.00s)
    --- PASS: Test_normalizePrefixMarker/empty_prefix (0.00s)
    --- PASS: Test_normalizePrefixMarker/empty_directory (0.00s)
=== RUN   TestAllowUnorderedParameterValidation
=== RUN   TestAllowUnorderedParameterValidation/getListObjectsV1Args_with_allow-unordered
=== RUN   TestAllowUnorderedParameterValidation/getListObjectsV2Args_with_allow-unordered
--- PASS: TestAllowUnorderedParameterValidation (0.00s)
    --- PASS: TestAllowUnorderedParameterValidation/getListObjectsV1Args_with_allow-unordered (0.00s)
    --- PASS: TestAllowUnorderedParameterValidation/getListObjectsV2Args_with_allow-unordered (0.00s)
=== RUN   TestAllowUnorderedWithDelimiterValidation
=== RUN   TestAllowUnorderedWithDelimiterValidation/should_return_error_when_allow-unordered=true_and_delimiter_are_both_present
=== RUN   TestAllowUnorderedWithDelimiterValidation/should_allow_allow-unordered=true_without_delimiter
=== RUN   TestAllowUnorderedWithDelimiterValidation/should_allow_delimiter_without_allow-unordered
--- PASS: TestAllowUnorderedWithDelimiterValidation (0.00s)
    --- PASS: TestAllowUnorderedWithDelimiterValidation/should_return_error_when_allow-unordered=true_and_delimiter_are_both_present (0.00s)
    --- PASS: TestAllowUnorderedWithDelimiterValidation/should_allow_allow-unordered=true_without_delimiter (0.00s)
    --- PASS: TestAllowUnorderedWithDelimiterValidation/should_allow_delimiter_without_allow-unordered (0.00s)
=== RUN   TestMaxKeysParameterValidation
=== RUN   TestMaxKeysParameterValidation/valid_max-keys_values_should_work
=== RUN   TestMaxKeysParameterValidation/invalid_max-keys_values_should_return_error
=== RUN   TestMaxKeysParameterValidation/empty_max-keys_should_use_default
--- PASS: TestMaxKeysParameterValidation (0.00s)
    --- PASS: TestMaxKeysParameterValidation/valid_max-keys_values_should_work (0.00s)
    --- PASS: TestMaxKeysParameterValidation/invalid_max-keys_values_should_return_error (0.00s)
    --- PASS: TestMaxKeysParameterValidation/empty_max-keys_should_use_default (0.00s)
=== RUN   TestDelimiterWithDirectoryKeyObjects
=== RUN   TestDelimiterWithDirectoryKeyObjects/directory_key_object_should_be_grouped_into_common_prefix_with_delimiter
=== RUN   TestDelimiterWithDirectoryKeyObjects/directory_key_object_without_delimiter_should_be_individual_key
--- PASS: TestDelimiterWithDirectoryKeyObjects (0.00s)
    --- PASS: TestDelimiterWithDirectoryKeyObjects/directory_key_object_should_be_grouped_into_common_prefix_with_delimiter (0.00s)
    --- PASS: TestDelimiterWithDirectoryKeyObjects/directory_key_object_without_delimiter_should_be_individual_key (0.00s)
=== RUN   TestObjectLevelListPermissions
=== RUN   TestObjectLevelListPermissions/Identity_CanDo_Object_Level_Permissions
=== RUN   TestObjectLevelListPermissions/Identity_CanDo_Object_Level_Permissions/allowed_prefix_exact_match
=== RUN   TestObjectLevelListPermissions/Identity_CanDo_Object_Level_Permissions/allowed_prefix_subdirectory
=== RUN   TestObjectLevelListPermissions/Identity_CanDo_Object_Level_Permissions/denied_different_prefix
=== RUN   TestObjectLevelListPermissions/Identity_CanDo_Object_Level_Permissions/denied_different_bucket
=== RUN   TestObjectLevelListPermissions/Identity_CanDo_Object_Level_Permissions/denied_root_level
=== RUN   TestObjectLevelListPermissions/Bucket_Level_Permissions_Still_Work
=== RUN   TestObjectLevelListPermissions/Empty_Object_With_Prefix_Logic
=== RUN   TestObjectLevelListPermissions/Empty_Object_With_Prefix_Logic/empty_object_with_prefix
=== RUN   TestObjectLevelListPermissions/Empty_Object_With_Prefix_Logic/slash_object_with_prefix
=== RUN   TestObjectLevelListPermissions/Empty_Object_With_Prefix_Logic/object_already_set
=== RUN   TestObjectLevelListPermissions/Empty_Object_With_Prefix_Logic/no_prefix_provided
=== RUN   TestObjectLevelListPermissions/Issue_7039_Scenario
=== NAME  TestObjectLevelListPermissions
    s3api_object_handlers_list_test.go:492: This test validates the fix for issue #7039
    s3api_object_handlers_list_test.go:493: Object-level List permissions like 'List:bucket/prefix/*' now work correctly
    s3api_object_handlers_list_test.go:494: Middleware properly extracts prefix for permission validation
--- PASS: TestObjectLevelListPermissions (0.00s)
    --- PASS: TestObjectLevelListPermissions/Identity_CanDo_Object_Level_Permissions (0.00s)
        --- PASS: TestObjectLevelListPermissions/Identity_CanDo_Object_Level_Permissions/allowed_prefix_exact_match (0.00s)
        --- PASS: TestObjectLevelListPermissions/Identity_CanDo_Object_Level_Permissions/allowed_prefix_subdirectory (0.00s)
        --- PASS: TestObjectLevelListPermissions/Identity_CanDo_Object_Level_Permissions/denied_different_prefix (0.00s)
        --- PASS: TestObjectLevelListPermissions/Identity_CanDo_Object_Level_Permissions/denied_different_bucket (0.00s)
        --- PASS: TestObjectLevelListPermissions/Identity_CanDo_Object_Level_Permissions/denied_root_level (0.00s)
    --- PASS: TestObjectLevelListPermissions/Bucket_Level_Permissions_Still_Work (0.00s)
    --- PASS: TestObjectLevelListPermissions/Empty_Object_With_Prefix_Logic (0.00s)
        --- PASS: TestObjectLevelListPermissions/Empty_Object_With_Prefix_Logic/empty_object_with_prefix (0.00s)
        --- PASS: TestObjectLevelListPermissions/Empty_Object_With_Prefix_Logic/slash_object_with_prefix (0.00s)
        --- PASS: TestObjectLevelListPermissions/Empty_Object_With_Prefix_Logic/object_already_set (0.00s)
        --- PASS: TestObjectLevelListPermissions/Empty_Object_With_Prefix_Logic/no_prefix_provided (0.00s)
    --- PASS: TestObjectLevelListPermissions/Issue_7039_Scenario (0.00s)
=== RUN   TestFilerErrorToS3Error
=== RUN   TestFilerErrorToS3Error/MD5_mismatch_error
=== RUN   TestFilerErrorToS3Error/Context_canceled_error
=== RUN   TestFilerErrorToS3Error/Context_canceled_error_(simple)
=== RUN   TestFilerErrorToS3Error/Directory_exists_error
=== RUN   TestFilerErrorToS3Error/File_exists_error
=== RUN   TestFilerErrorToS3Error/Unknown_error
--- PASS: TestFilerErrorToS3Error (0.00s)
    --- PASS: TestFilerErrorToS3Error/MD5_mismatch_error (0.00s)
    --- PASS: TestFilerErrorToS3Error/Context_canceled_error (0.00s)
    --- PASS: TestFilerErrorToS3Error/Context_canceled_error_(simple) (0.00s)
    --- PASS: TestFilerErrorToS3Error/Directory_exists_error (0.00s)
    --- PASS: TestFilerErrorToS3Error/File_exists_error (0.00s)
    --- PASS: TestFilerErrorToS3Error/Unknown_error (0.00s)
=== RUN   TestNewListEntryOwnerDisplayName
--- PASS: TestNewListEntryOwnerDisplayName (0.00s)
=== RUN   TestRemoveDuplicateSlashes
=== RUN   TestRemoveDuplicateSlashes/empty
=== RUN   TestRemoveDuplicateSlashes/slash
=== RUN   TestRemoveDuplicateSlashes/object
=== RUN   TestRemoveDuplicateSlashes/correct_path
=== RUN   TestRemoveDuplicateSlashes/path_with_duplicates
--- PASS: TestRemoveDuplicateSlashes (0.00s)
    --- PASS: TestRemoveDuplicateSlashes/empty (0.00s)
    --- PASS: TestRemoveDuplicateSlashes/slash (0.00s)
    --- PASS: TestRemoveDuplicateSlashes/object (0.00s)
    --- PASS: TestRemoveDuplicateSlashes/correct_path (0.00s)
    --- PASS: TestRemoveDuplicateSlashes/path_with_duplicates (0.00s)
=== RUN   TestS3ApiServer_toFilerUrl
=== RUN   TestS3ApiServer_toFilerUrl/simple
=== RUN   TestS3ApiServer_toFilerUrl/double_prefix
=== RUN   TestS3ApiServer_toFilerUrl/triple_prefix
=== RUN   TestS3ApiServer_toFilerUrl/empty_prefix
--- PASS: TestS3ApiServer_toFilerUrl (0.00s)
    --- PASS: TestS3ApiServer_toFilerUrl/simple (0.00s)
    --- PASS: TestS3ApiServer_toFilerUrl/double_prefix (0.00s)
    --- PASS: TestS3ApiServer_toFilerUrl/triple_prefix (0.00s)
    --- PASS: TestS3ApiServer_toFilerUrl/empty_prefix (0.00s)
=== RUN   TestVeeamObjectLockBugFix
=== RUN   TestVeeamObjectLockBugFix/Bug_case:_bucket_with_no_extended_attributes
=== RUN   TestVeeamObjectLockBugFix/Fix_verification:_bucket_with_Object_Lock_enabled_via_boolean_flag
=== RUN   TestVeeamObjectLockBugFix/Fix_verification:_bucket_with_Object_Lock_enabled_via_Enabled_constant
--- PASS: TestVeeamObjectLockBugFix (0.00s)
    --- PASS: TestVeeamObjectLockBugFix/Bug_case:_bucket_with_no_extended_attributes (0.00s)
    --- PASS: TestVeeamObjectLockBugFix/Fix_verification:_bucket_with_Object_Lock_enabled_via_boolean_flag (0.00s)
    --- PASS: TestVeeamObjectLockBugFix/Fix_verification:_bucket_with_Object_Lock_enabled_via_Enabled_constant (0.00s)
=== RUN   TestExtractObjectLockMetadataFromRequest
=== RUN   TestExtractObjectLockMetadataFromRequest/Extract_COMPLIANCE_mode_and_retention_date
=== RUN   TestExtractObjectLockMetadataFromRequest/Extract_GOVERNANCE_mode_and_retention_date
=== RUN   TestExtractObjectLockMetadataFromRequest/Extract_legal_hold_ON
=== RUN   TestExtractObjectLockMetadataFromRequest/Extract_legal_hold_OFF
=== RUN   TestExtractObjectLockMetadataFromRequest/Handle_all_object_lock_headers_together
=== RUN   TestExtractObjectLockMetadataFromRequest/Handle_no_object_lock_headers
=== RUN   TestExtractObjectLockMetadataFromRequest/Handle_invalid_retention_date_-_should_return_error
E0616 11:57:40.912331 s3api_object_handlers_put.go:859 extractObjectLockMetadataFromRequest: failed to parse retention until date, expected format: 2006-01-02T15:04:05Z07:00, error: parsing time "invalid-date" as "2006-01-02T15:04:05Z07:00": cannot parse "invalid-date" as "2006"
=== RUN   TestExtractObjectLockMetadataFromRequest/Handle_invalid_legal_hold_value_-_should_return_error
E0616 11:57:40.912355 s3api_object_handlers_put.go:873 extractObjectLockMetadataFromRequest: unexpected legal hold value provided, expected 'ON' or 'OFF'
--- PASS: TestExtractObjectLockMetadataFromRequest (0.00s)
    --- PASS: TestExtractObjectLockMetadataFromRequest/Extract_COMPLIANCE_mode_and_retention_date (0.00s)
    --- PASS: TestExtractObjectLockMetadataFromRequest/Extract_GOVERNANCE_mode_and_retention_date (0.00s)
    --- PASS: TestExtractObjectLockMetadataFromRequest/Extract_legal_hold_ON (0.00s)
    --- PASS: TestExtractObjectLockMetadataFromRequest/Extract_legal_hold_OFF (0.00s)
    --- PASS: TestExtractObjectLockMetadataFromRequest/Handle_all_object_lock_headers_together (0.00s)
    --- PASS: TestExtractObjectLockMetadataFromRequest/Handle_no_object_lock_headers (0.00s)
    --- PASS: TestExtractObjectLockMetadataFromRequest/Handle_invalid_retention_date_-_should_return_error (0.00s)
    --- PASS: TestExtractObjectLockMetadataFromRequest/Handle_invalid_legal_hold_value_-_should_return_error (0.00s)
=== RUN   TestAddObjectLockHeadersToResponse
=== RUN   TestAddObjectLockHeadersToResponse/Add_COMPLIANCE_mode_and_retention_date_to_response
=== RUN   TestAddObjectLockHeadersToResponse/Add_GOVERNANCE_mode_to_response
=== RUN   TestAddObjectLockHeadersToResponse/Add_legal_hold_ON_to_response
=== RUN   TestAddObjectLockHeadersToResponse/Add_legal_hold_OFF_to_response
=== RUN   TestAddObjectLockHeadersToResponse/Add_all_object_lock_headers_to_response
=== RUN   TestAddObjectLockHeadersToResponse/Handle_entry_with_no_object_lock_metadata
=== RUN   TestAddObjectLockHeadersToResponse/Handle_entry_with_object_lock_mode_but_no_legal_hold_-_should_default_to_OFF
=== RUN   TestAddObjectLockHeadersToResponse/Handle_entry_with_retention_date_but_no_legal_hold_-_should_default_to_OFF
=== RUN   TestAddObjectLockHeadersToResponse/Handle_nil_entry_gracefully
=== RUN   TestAddObjectLockHeadersToResponse/Handle_entry_with_nil_Extended_map_gracefully
=== RUN   TestAddObjectLockHeadersToResponse/Handle_invalid_retention_timestamp_gracefully
E0616 11:57:40.912526 s3api_object_handlers.go:1142 addObjectLockHeadersToResponse: failed to parse retention until date from stored metadata (dateStr: invalid-timestamp): strconv.ParseInt: parsing "invalid-timestamp": invalid syntax
--- PASS: TestAddObjectLockHeadersToResponse (0.00s)
    --- PASS: TestAddObjectLockHeadersToResponse/Add_COMPLIANCE_mode_and_retention_date_to_response (0.00s)
    --- PASS: TestAddObjectLockHeadersToResponse/Add_GOVERNANCE_mode_to_response (0.00s)
    --- PASS: TestAddObjectLockHeadersToResponse/Add_legal_hold_ON_to_response (0.00s)
    --- PASS: TestAddObjectLockHeadersToResponse/Add_legal_hold_OFF_to_response (0.00s)
    --- PASS: TestAddObjectLockHeadersToResponse/Add_all_object_lock_headers_to_response (0.00s)
    --- PASS: TestAddObjectLockHeadersToResponse/Handle_entry_with_no_object_lock_metadata (0.00s)
    --- PASS: TestAddObjectLockHeadersToResponse/Handle_entry_with_object_lock_mode_but_no_legal_hold_-_should_default_to_OFF (0.00s)
    --- PASS: TestAddObjectLockHeadersToResponse/Handle_entry_with_retention_date_but_no_legal_hold_-_should_default_to_OFF (0.00s)
    --- PASS: TestAddObjectLockHeadersToResponse/Handle_nil_entry_gracefully (0.00s)
    --- PASS: TestAddObjectLockHeadersToResponse/Handle_entry_with_nil_Extended_map_gracefully (0.00s)
    --- PASS: TestAddObjectLockHeadersToResponse/Handle_invalid_retention_timestamp_gracefully (0.00s)
=== RUN   TestObjectLockHeaderRoundTrip
=== RUN   TestObjectLockHeaderRoundTrip/Complete_round_trip_for_COMPLIANCE_mode
=== RUN   TestObjectLockHeaderRoundTrip/Complete_round_trip_for_GOVERNANCE_mode
--- PASS: TestObjectLockHeaderRoundTrip (0.00s)
    --- PASS: TestObjectLockHeaderRoundTrip/Complete_round_trip_for_COMPLIANCE_mode (0.00s)
    --- PASS: TestObjectLockHeaderRoundTrip/Complete_round_trip_for_GOVERNANCE_mode (0.00s)
=== RUN   TestValidateObjectLockHeaders
=== RUN   TestValidateObjectLockHeaders/Valid_COMPLIANCE_mode_with_retention_date_on_versioned_bucket
=== RUN   TestValidateObjectLockHeaders/Valid_GOVERNANCE_mode_with_retention_date_on_versioned_bucket
=== RUN   TestValidateObjectLockHeaders/Valid_legal_hold_ON_on_versioned_bucket
=== RUN   TestValidateObjectLockHeaders/Valid_legal_hold_OFF_on_versioned_bucket
=== RUN   TestValidateObjectLockHeaders/Invalid_object_lock_mode
=== RUN   TestValidateObjectLockHeaders/Invalid_legal_hold_status
=== RUN   TestValidateObjectLockHeaders/Object_lock_headers_on_non-versioned_bucket
=== RUN   TestValidateObjectLockHeaders/Invalid_retention_date_format
=== RUN   TestValidateObjectLockHeaders/Retention_date_in_the_past
=== RUN   TestValidateObjectLockHeaders/Mode_without_retention_date
=== RUN   TestValidateObjectLockHeaders/Retention_date_without_mode
=== RUN   TestValidateObjectLockHeaders/Governance_bypass_header_on_non-versioned_bucket
=== RUN   TestValidateObjectLockHeaders/Governance_bypass_header_on_versioned_bucket_should_pass
=== RUN   TestValidateObjectLockHeaders/No_object_lock_headers_should_pass
=== RUN   TestValidateObjectLockHeaders/Mixed_valid_headers_should_pass
--- PASS: TestValidateObjectLockHeaders (0.00s)
    --- PASS: TestValidateObjectLockHeaders/Valid_COMPLIANCE_mode_with_retention_date_on_versioned_bucket (0.00s)
    --- PASS: TestValidateObjectLockHeaders/Valid_GOVERNANCE_mode_with_retention_date_on_versioned_bucket (0.00s)
    --- PASS: TestValidateObjectLockHeaders/Valid_legal_hold_ON_on_versioned_bucket (0.00s)
    --- PASS: TestValidateObjectLockHeaders/Valid_legal_hold_OFF_on_versioned_bucket (0.00s)
    --- PASS: TestValidateObjectLockHeaders/Invalid_object_lock_mode (0.00s)
    --- PASS: TestValidateObjectLockHeaders/Invalid_legal_hold_status (0.00s)
    --- PASS: TestValidateObjectLockHeaders/Object_lock_headers_on_non-versioned_bucket (0.00s)
    --- PASS: TestValidateObjectLockHeaders/Invalid_retention_date_format (0.00s)
    --- PASS: TestValidateObjectLockHeaders/Retention_date_in_the_past (0.00s)
    --- PASS: TestValidateObjectLockHeaders/Mode_without_retention_date (0.00s)
    --- PASS: TestValidateObjectLockHeaders/Retention_date_without_mode (0.00s)
    --- PASS: TestValidateObjectLockHeaders/Governance_bypass_header_on_non-versioned_bucket (0.00s)
    --- PASS: TestValidateObjectLockHeaders/Governance_bypass_header_on_versioned_bucket_should_pass (0.00s)
    --- PASS: TestValidateObjectLockHeaders/No_object_lock_headers_should_pass (0.00s)
    --- PASS: TestValidateObjectLockHeaders/Mixed_valid_headers_should_pass (0.00s)
=== RUN   TestMapValidationErrorToS3Error
=== RUN   TestMapValidationErrorToS3Error/ErrObjectLockVersioningRequired
=== RUN   TestMapValidationErrorToS3Error/ErrInvalidObjectLockMode
=== RUN   TestMapValidationErrorToS3Error/ErrInvalidLegalHoldStatus
=== RUN   TestMapValidationErrorToS3Error/ErrInvalidRetentionDateFormat
=== RUN   TestMapValidationErrorToS3Error/ErrRetentionDateMustBeFuture
=== RUN   TestMapValidationErrorToS3Error/ErrObjectLockModeRequiresDate
=== RUN   TestMapValidationErrorToS3Error/ErrRetentionDateRequiresMode
=== RUN   TestMapValidationErrorToS3Error/ErrGovernanceBypassVersioningRequired
=== RUN   TestMapValidationErrorToS3Error/Unknown_error_defaults_to_ErrInvalidRequest
--- PASS: TestMapValidationErrorToS3Error (0.00s)
    --- PASS: TestMapValidationErrorToS3Error/ErrObjectLockVersioningRequired (0.00s)
    --- PASS: TestMapValidationErrorToS3Error/ErrInvalidObjectLockMode (0.00s)
    --- PASS: TestMapValidationErrorToS3Error/ErrInvalidLegalHoldStatus (0.00s)
    --- PASS: TestMapValidationErrorToS3Error/ErrInvalidRetentionDateFormat (0.00s)
    --- PASS: TestMapValidationErrorToS3Error/ErrRetentionDateMustBeFuture (0.00s)
    --- PASS: TestMapValidationErrorToS3Error/ErrObjectLockModeRequiresDate (0.00s)
    --- PASS: TestMapValidationErrorToS3Error/ErrRetentionDateRequiresMode (0.00s)
    --- PASS: TestMapValidationErrorToS3Error/ErrGovernanceBypassVersioningRequired (0.00s)
    --- PASS: TestMapValidationErrorToS3Error/Unknown_error_defaults_to_ErrInvalidRequest (0.00s)
=== RUN   TestObjectLockPermissionLogic
=== RUN   TestObjectLockPermissionLogic/Non-versioned_bucket_PUT_operation_logic
    s3api_object_lock_headers_test.go:626: For non-versioned buckets:
    s3api_object_lock_headers_test.go:627: - PUT operations overwrite existing objects
    s3api_object_lock_headers_test.go:628: - Must check existing object lock protections before allowing overwrite
    s3api_object_lock_headers_test.go:629: - Governance bypass headers can be used to override GOVERNANCE mode retention
    s3api_object_lock_headers_test.go:630: - COMPLIANCE mode retention and legal holds cannot be bypassed
=== RUN   TestObjectLockPermissionLogic/Versioned_bucket_PUT_operation_logic
    s3api_object_lock_headers_test.go:643: For versioned buckets:
    s3api_object_lock_headers_test.go:644: - PUT operations create new versions without overwriting existing objects
    s3api_object_lock_headers_test.go:645: - No need to check existing object lock protections
    s3api_object_lock_headers_test.go:646: - Only validate object lock headers for the new version being created
    s3api_object_lock_headers_test.go:647: - Each version has independent object lock settings
=== RUN   TestObjectLockPermissionLogic/Governance_bypass_header_validation
    s3api_object_lock_headers_test.go:656: Governance bypass behavior:
    s3api_object_lock_headers_test.go:657: - Only valid on versioned buckets (header validation)
    s3api_object_lock_headers_test.go:658: - For non-versioned buckets: Allows overwriting objects under GOVERNANCE retention
    s3api_object_lock_headers_test.go:659: - For versioned buckets: Not typically needed for PUT operations
    s3api_object_lock_headers_test.go:660: - Must have s3:BypassGovernanceRetention permission
--- PASS: TestObjectLockPermissionLogic (0.00s)
    --- PASS: TestObjectLockPermissionLogic/Non-versioned_bucket_PUT_operation_logic (0.00s)
    --- PASS: TestObjectLockPermissionLogic/Versioned_bucket_PUT_operation_logic (0.00s)
    --- PASS: TestObjectLockPermissionLogic/Governance_bypass_header_validation (0.00s)
=== RUN   TestValidateRetention
=== RUN   TestValidateRetention/Valid_GOVERNANCE_retention
=== RUN   TestValidateRetention/Valid_COMPLIANCE_retention
=== RUN   TestValidateRetention/Missing_Mode
=== RUN   TestValidateRetention/Missing_RetainUntilDate
=== RUN   TestValidateRetention/Invalid_Mode
=== RUN   TestValidateRetention/Past_RetainUntilDate
=== RUN   TestValidateRetention/Empty_retention
--- PASS: TestValidateRetention (0.00s)
    --- PASS: TestValidateRetention/Valid_GOVERNANCE_retention (0.00s)
    --- PASS: TestValidateRetention/Valid_COMPLIANCE_retention (0.00s)
    --- PASS: TestValidateRetention/Missing_Mode (0.00s)
    --- PASS: TestValidateRetention/Missing_RetainUntilDate (0.00s)
    --- PASS: TestValidateRetention/Invalid_Mode (0.00s)
    --- PASS: TestValidateRetention/Past_RetainUntilDate (0.00s)
    --- PASS: TestValidateRetention/Empty_retention (0.00s)
=== RUN   TestValidateLegalHold
=== RUN   TestValidateLegalHold/Valid_ON_status
=== RUN   TestValidateLegalHold/Valid_OFF_status
=== RUN   TestValidateLegalHold/Invalid_status
=== RUN   TestValidateLegalHold/Empty_status
=== RUN   TestValidateLegalHold/Lowercase_on
=== RUN   TestValidateLegalHold/Lowercase_off
--- PASS: TestValidateLegalHold (0.00s)
    --- PASS: TestValidateLegalHold/Valid_ON_status (0.00s)
    --- PASS: TestValidateLegalHold/Valid_OFF_status (0.00s)
    --- PASS: TestValidateLegalHold/Invalid_status (0.00s)
    --- PASS: TestValidateLegalHold/Empty_status (0.00s)
    --- PASS: TestValidateLegalHold/Lowercase_on (0.00s)
    --- PASS: TestValidateLegalHold/Lowercase_off (0.00s)
=== RUN   TestParseObjectRetention
=== RUN   TestParseObjectRetention/Valid_retention_XML
=== RUN   TestParseObjectRetention/Valid_compliance_retention_XML
=== RUN   TestParseObjectRetention/Empty_XML_body
=== RUN   TestParseObjectRetention/Invalid_XML
=== RUN   TestParseObjectRetention/Malformed_XML
=== RUN   TestParseObjectRetention/Missing_Mode
=== RUN   TestParseObjectRetention/Missing_RetainUntilDate
--- PASS: TestParseObjectRetention (0.00s)
    --- PASS: TestParseObjectRetention/Valid_retention_XML (0.00s)
    --- PASS: TestParseObjectRetention/Valid_compliance_retention_XML (0.00s)
    --- PASS: TestParseObjectRetention/Empty_XML_body (0.00s)
    --- PASS: TestParseObjectRetention/Invalid_XML (0.00s)
    --- PASS: TestParseObjectRetention/Malformed_XML (0.00s)
    --- PASS: TestParseObjectRetention/Missing_Mode (0.00s)
    --- PASS: TestParseObjectRetention/Missing_RetainUntilDate (0.00s)
=== RUN   TestParseObjectLegalHold
=== RUN   TestParseObjectLegalHold/Valid_legal_hold_ON
=== RUN   TestParseObjectLegalHold/Valid_legal_hold_OFF
=== RUN   TestParseObjectLegalHold/Empty_XML_body
=== RUN   TestParseObjectLegalHold/Invalid_XML
=== RUN   TestParseObjectLegalHold/Missing_Status
--- PASS: TestParseObjectLegalHold (0.00s)
    --- PASS: TestParseObjectLegalHold/Valid_legal_hold_ON (0.00s)
    --- PASS: TestParseObjectLegalHold/Valid_legal_hold_OFF (0.00s)
    --- PASS: TestParseObjectLegalHold/Empty_XML_body (0.00s)
    --- PASS: TestParseObjectLegalHold/Invalid_XML (0.00s)
    --- PASS: TestParseObjectLegalHold/Missing_Status (0.00s)
=== RUN   TestParseObjectLockConfiguration
=== RUN   TestParseObjectLockConfiguration/Valid_object_lock_configuration
=== RUN   TestParseObjectLockConfiguration/Valid_object_lock_configuration_with_rule
=== RUN   TestParseObjectLockConfiguration/Empty_XML_body
=== RUN   TestParseObjectLockConfiguration/Invalid_XML
--- PASS: TestParseObjectLockConfiguration (0.00s)
    --- PASS: TestParseObjectLockConfiguration/Valid_object_lock_configuration (0.00s)
    --- PASS: TestParseObjectLockConfiguration/Valid_object_lock_configuration_with_rule (0.00s)
    --- PASS: TestParseObjectLockConfiguration/Empty_XML_body (0.00s)
    --- PASS: TestParseObjectLockConfiguration/Invalid_XML (0.00s)
=== RUN   TestValidateObjectLockConfiguration
=== RUN   TestValidateObjectLockConfiguration/Valid_config_with_ObjectLockEnabled_only
=== RUN   TestValidateObjectLockConfiguration/Missing_ObjectLockEnabled
=== RUN   TestValidateObjectLockConfiguration/Valid_config_with_rule_and_days
=== RUN   TestValidateObjectLockConfiguration/Valid_config_with_rule_and_years
=== RUN   TestValidateObjectLockConfiguration/Invalid_ObjectLockEnabled_value
=== RUN   TestValidateObjectLockConfiguration/Invalid_rule_-_missing_mode
=== RUN   TestValidateObjectLockConfiguration/Invalid_rule_-_both_days_and_years
=== RUN   TestValidateObjectLockConfiguration/Invalid_rule_-_neither_days_nor_years
=== RUN   TestValidateObjectLockConfiguration/Invalid_rule_-_invalid_mode
=== RUN   TestValidateObjectLockConfiguration/Invalid_rule_-_days_out_of_range
=== RUN   TestValidateObjectLockConfiguration/Invalid_rule_-_years_out_of_range
=== RUN   TestValidateObjectLockConfiguration/Invalid_rule_-_missing_DefaultRetention
--- PASS: TestValidateObjectLockConfiguration (0.00s)
    --- PASS: TestValidateObjectLockConfiguration/Valid_config_with_ObjectLockEnabled_only (0.00s)
    --- PASS: TestValidateObjectLockConfiguration/Missing_ObjectLockEnabled (0.00s)
    --- PASS: TestValidateObjectLockConfiguration/Valid_config_with_rule_and_days (0.00s)
    --- PASS: TestValidateObjectLockConfiguration/Valid_config_with_rule_and_years (0.00s)
    --- PASS: TestValidateObjectLockConfiguration/Invalid_ObjectLockEnabled_value (0.00s)
    --- PASS: TestValidateObjectLockConfiguration/Invalid_rule_-_missing_mode (0.00s)
    --- PASS: TestValidateObjectLockConfiguration/Invalid_rule_-_both_days_and_years (0.00s)
    --- PASS: TestValidateObjectLockConfiguration/Invalid_rule_-_neither_days_nor_years (0.00s)
    --- PASS: TestValidateObjectLockConfiguration/Invalid_rule_-_invalid_mode (0.00s)
    --- PASS: TestValidateObjectLockConfiguration/Invalid_rule_-_days_out_of_range (0.00s)
    --- PASS: TestValidateObjectLockConfiguration/Invalid_rule_-_years_out_of_range (0.00s)
    --- PASS: TestValidateObjectLockConfiguration/Invalid_rule_-_missing_DefaultRetention (0.00s)
=== RUN   TestValidateDefaultRetention
=== RUN   TestValidateDefaultRetention/Valid_retention_with_days
=== RUN   TestValidateDefaultRetention/Valid_retention_with_years
=== RUN   TestValidateDefaultRetention/Missing_mode
=== RUN   TestValidateDefaultRetention/Invalid_mode
=== RUN   TestValidateDefaultRetention/Both_days_and_years_specified
=== RUN   TestValidateDefaultRetention/Neither_days_nor_years_specified
--- PASS: TestValidateDefaultRetention (0.00s)
    --- PASS: TestValidateDefaultRetention/Valid_retention_with_days (0.00s)
    --- PASS: TestValidateDefaultRetention/Valid_retention_with_years (0.00s)
    --- PASS: TestValidateDefaultRetention/Missing_mode (0.00s)
    --- PASS: TestValidateDefaultRetention/Invalid_mode (0.00s)
    --- PASS: TestValidateDefaultRetention/Both_days_and_years_specified (0.00s)
    --- PASS: TestValidateDefaultRetention/Neither_days_nor_years_specified (0.00s)
=== RUN   TestGetRequestDataReader_ChunkedEncodingWithoutIAM
I0616 11:57:40.913865 config_loader.go:109 Using explicit credential store: memory
=== RUN   TestGetRequestDataReader_ChunkedEncodingWithoutIAM/RegularRequest
    s3api_put_object_helper_test.go:82: Test case: RegularRequest - Regular requests without chunked encoding should pass through unchanged
=== RUN   TestGetRequestDataReader_ChunkedEncodingWithoutIAM/StreamingSignedWithoutIAM
    s3api_put_object_helper_test.go:82: Test case: StreamingSignedWithoutIAM - Streaming signed requests should fail when IAM is disabled
=== RUN   TestGetRequestDataReader_ChunkedEncodingWithoutIAM/StreamingUnsignedWithoutIAM
    s3api_put_object_helper_test.go:82: Test case: StreamingUnsignedWithoutIAM - Streaming unsigned requests should be processed even when IAM is disabled
--- PASS: TestGetRequestDataReader_ChunkedEncodingWithoutIAM (0.00s)
    --- PASS: TestGetRequestDataReader_ChunkedEncodingWithoutIAM/RegularRequest (0.00s)
    --- PASS: TestGetRequestDataReader_ChunkedEncodingWithoutIAM/StreamingSignedWithoutIAM (0.00s)
    --- PASS: TestGetRequestDataReader_ChunkedEncodingWithoutIAM/StreamingUnsignedWithoutIAM (0.00s)
=== RUN   TestGetRequestDataReader_AuthTypeDetection
I0616 11:57:40.913939 config_loader.go:109 Using explicit credential store: memory
=== RUN   TestGetRequestDataReader_AuthTypeDetection/ChunkedDataWithChecksum
--- PASS: TestGetRequestDataReader_AuthTypeDetection (0.00s)
    --- PASS: TestGetRequestDataReader_AuthTypeDetection/ChunkedDataWithChecksum (0.00s)
=== RUN   TestGetRequestDataReader_IAMEnabled
I0616 11:57:40.913971 config_loader.go:109 Using explicit credential store: memory
=== RUN   TestGetRequestDataReader_IAMEnabled/StreamingUnsignedWithIAMEnabled
--- PASS: TestGetRequestDataReader_IAMEnabled (0.00s)
    --- PASS: TestGetRequestDataReader_IAMEnabled/StreamingUnsignedWithIAMEnabled (0.00s)
=== RUN   TestAuthTypeDetection
=== RUN   TestAuthTypeDetection/StreamingUnsigned
=== RUN   TestAuthTypeDetection/StreamingSigned
=== RUN   TestAuthTypeDetection/Regular
--- PASS: TestAuthTypeDetection (0.00s)
    --- PASS: TestAuthTypeDetection/StreamingUnsigned (0.00s)
    --- PASS: TestAuthTypeDetection/StreamingSigned (0.00s)
    --- PASS: TestAuthTypeDetection/Regular (0.00s)
=== RUN   TestCopyObjectResponse
<?xml version="1.0" encoding="UTF-8"?>
<CopyObjectResult><LastModified>2026-06-16T11:57:40.914053671Z</LastModified><ETag>12345678</ETag></CopyObjectResult>
--- PASS: TestCopyObjectResponse (0.00s)
=== RUN   TestCopyPartResponse
<?xml version="1.0" encoding="UTF-8"?>
<CopyPartResult><LastModified>2026-06-16T11:57:40.914075509Z</LastModified><ETag>12345678</ETag></CopyPartResult>
--- PASS: TestCopyPartResponse (0.00s)
=== RUN   TestParseTagsHeader
=== RUN   TestParseTagsHeader/simple_tags
=== RUN   TestParseTagsHeader/URL_encoded_timestamp_-_issue_#7040_scenario
=== RUN   TestParseTagsHeader/URL_encoded_key_and_value
=== RUN   TestParseTagsHeader/empty_value
=== RUN   TestParseTagsHeader/special_characters_encoded
=== RUN   TestParseTagsHeader/invalid_URL_encoding
=== RUN   TestParseTagsHeader/plus_signs_and_equals_in_values
--- PASS: TestParseTagsHeader (0.00s)
    --- PASS: TestParseTagsHeader/simple_tags (0.00s)
    --- PASS: TestParseTagsHeader/URL_encoded_timestamp_-_issue_#7040_scenario (0.00s)
    --- PASS: TestParseTagsHeader/URL_encoded_key_and_value (0.00s)
    --- PASS: TestParseTagsHeader/empty_value (0.00s)
    --- PASS: TestParseTagsHeader/special_characters_encoded (0.00s)
    --- PASS: TestParseTagsHeader/invalid_URL_encoding (0.00s)
    --- PASS: TestParseTagsHeader/plus_signs_and_equals_in_values (0.00s)
FAIL
FAIL	github.com/seaweedfs/seaweedfs/weed/s3api	1.143s
=== RUN   TestValidateConfiguration
=== RUN   TestValidateConfiguration/nil_config
=== RUN   TestValidateConfiguration/empty_rules
=== RUN   TestValidateConfiguration/valid_single_rule
=== RUN   TestValidateConfiguration/too_many_rules
=== RUN   TestValidateConfiguration/invalid_method
=== RUN   TestValidateConfiguration/empty_origins
=== RUN   TestValidateConfiguration/invalid_origin_with_multiple_wildcards
=== RUN   TestValidateConfiguration/negative_MaxAgeSeconds
--- PASS: TestValidateConfiguration (0.00s)
    --- PASS: TestValidateConfiguration/nil_config (0.00s)
    --- PASS: TestValidateConfiguration/empty_rules (0.00s)
    --- PASS: TestValidateConfiguration/valid_single_rule (0.00s)
    --- PASS: TestValidateConfiguration/too_many_rules (0.00s)
    --- PASS: TestValidateConfiguration/invalid_method (0.00s)
    --- PASS: TestValidateConfiguration/empty_origins (0.00s)
    --- PASS: TestValidateConfiguration/invalid_origin_with_multiple_wildcards (0.00s)
    --- PASS: TestValidateConfiguration/negative_MaxAgeSeconds (0.00s)
=== RUN   TestValidateOrigin
=== RUN   TestValidateOrigin/empty_origin
=== RUN   TestValidateOrigin/valid_origin
=== RUN   TestValidateOrigin/wildcard_origin
=== RUN   TestValidateOrigin/valid_wildcard_origin
=== RUN   TestValidateOrigin/https_wildcard_origin
=== RUN   TestValidateOrigin/invalid_wildcard_origin
=== RUN   TestValidateOrigin/multiple_wildcards
--- PASS: TestValidateOrigin (0.00s)
    --- PASS: TestValidateOrigin/empty_origin (0.00s)
    --- PASS: TestValidateOrigin/valid_origin (0.00s)
    --- PASS: TestValidateOrigin/wildcard_origin (0.00s)
    --- PASS: TestValidateOrigin/valid_wildcard_origin (0.00s)
    --- PASS: TestValidateOrigin/https_wildcard_origin (0.00s)
    --- PASS: TestValidateOrigin/invalid_wildcard_origin (0.00s)
    --- PASS: TestValidateOrigin/multiple_wildcards (0.00s)
=== RUN   TestParseRequest
=== RUN   TestParseRequest/simple_GET_request
=== RUN   TestParseRequest/OPTIONS_preflight_request
=== RUN   TestParseRequest/request_without_origin
--- PASS: TestParseRequest (0.00s)
    --- PASS: TestParseRequest/simple_GET_request (0.00s)
    --- PASS: TestParseRequest/OPTIONS_preflight_request (0.00s)
    --- PASS: TestParseRequest/request_without_origin (0.00s)
=== RUN   TestMatchesOrigin
=== RUN   TestMatchesOrigin/wildcard_match
=== RUN   TestMatchesOrigin/exact_match
=== RUN   TestMatchesOrigin/no_match
=== RUN   TestMatchesOrigin/wildcard_subdomain_match
=== RUN   TestMatchesOrigin/wildcard_subdomain_no_match
=== RUN   TestMatchesOrigin/multiple_origins_with_match
--- PASS: TestMatchesOrigin (0.00s)
    --- PASS: TestMatchesOrigin/wildcard_match (0.00s)
    --- PASS: TestMatchesOrigin/exact_match (0.00s)
    --- PASS: TestMatchesOrigin/no_match (0.00s)
    --- PASS: TestMatchesOrigin/wildcard_subdomain_match (0.00s)
    --- PASS: TestMatchesOrigin/wildcard_subdomain_no_match (0.00s)
    --- PASS: TestMatchesOrigin/multiple_origins_with_match (0.00s)
=== RUN   TestMatchesHeader
=== RUN   TestMatchesHeader/empty_allowed_headers
=== RUN   TestMatchesHeader/wildcard_match
=== RUN   TestMatchesHeader/exact_match
=== RUN   TestMatchesHeader/case_insensitive_match
=== RUN   TestMatchesHeader/no_match
=== RUN   TestMatchesHeader/wildcard_prefix_match
--- PASS: TestMatchesHeader (0.00s)
    --- PASS: TestMatchesHeader/empty_allowed_headers (0.00s)
    --- PASS: TestMatchesHeader/wildcard_match (0.00s)
    --- PASS: TestMatchesHeader/exact_match (0.00s)
    --- PASS: TestMatchesHeader/case_insensitive_match (0.00s)
    --- PASS: TestMatchesHeader/no_match (0.00s)
    --- PASS: TestMatchesHeader/wildcard_prefix_match (0.00s)
=== RUN   TestEvaluateRequest
=== RUN   TestEvaluateRequest/matching_first_rule
=== RUN   TestEvaluateRequest/matching_second_rule
=== RUN   TestEvaluateRequest/no_matching_rule
=== RUN   TestEvaluateRequest/preflight_request
=== RUN   TestEvaluateRequest/preflight_request_with_forbidden_header
=== RUN   TestEvaluateRequest/request_without_origin
--- PASS: TestEvaluateRequest (0.00s)
    --- PASS: TestEvaluateRequest/matching_first_rule (0.00s)
    --- PASS: TestEvaluateRequest/matching_second_rule (0.00s)
    --- PASS: TestEvaluateRequest/no_matching_rule (0.00s)
    --- PASS: TestEvaluateRequest/preflight_request (0.00s)
    --- PASS: TestEvaluateRequest/preflight_request_with_forbidden_header (0.00s)
    --- PASS: TestEvaluateRequest/request_without_origin (0.00s)
=== RUN   TestApplyHeaders
=== RUN   TestApplyHeaders/nil_response
=== RUN   TestApplyHeaders/complete_response
=== RUN   TestApplyHeaders/with_credentials
--- PASS: TestApplyHeaders (0.00s)
    --- PASS: TestApplyHeaders/nil_response (0.00s)
    --- PASS: TestApplyHeaders/complete_response (0.00s)
    --- PASS: TestApplyHeaders/with_credentials (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api/cors	0.014s
=== RUN   TestPostPolicyForm
--- PASS: TestPostPolicyForm (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api/policy	0.019s
=== RUN   TestPolicyEngine
--- PASS: TestPolicyEngine (0.00s)
=== RUN   TestConditionEvaluators
=== RUN   TestConditionEvaluators/StringEquals_-_match
=== RUN   TestConditionEvaluators/StringEquals_-_no_match
=== RUN   TestConditionEvaluators/StringLike_-_wildcard_match
=== RUN   TestConditionEvaluators/StringLike_-_wildcard_no_match
=== RUN   TestConditionEvaluators/NumericEquals_-_match
=== RUN   TestConditionEvaluators/NumericLessThan_-_match
=== RUN   TestConditionEvaluators/NumericLessThan_-_no_match
=== RUN   TestConditionEvaluators/IpAddress_-_CIDR_match
=== RUN   TestConditionEvaluators/IpAddress_-_CIDR_no_match
=== RUN   TestConditionEvaluators/Bool_-_true_match
=== RUN   TestConditionEvaluators/Bool_-_false_match
=== RUN   TestConditionEvaluators/Bool_-_no_match
--- PASS: TestConditionEvaluators (0.00s)
    --- PASS: TestConditionEvaluators/StringEquals_-_match (0.00s)
    --- PASS: TestConditionEvaluators/StringEquals_-_no_match (0.00s)
    --- PASS: TestConditionEvaluators/StringLike_-_wildcard_match (0.00s)
    --- PASS: TestConditionEvaluators/StringLike_-_wildcard_no_match (0.00s)
    --- PASS: TestConditionEvaluators/NumericEquals_-_match (0.00s)
    --- PASS: TestConditionEvaluators/NumericLessThan_-_match (0.00s)
    --- PASS: TestConditionEvaluators/NumericLessThan_-_no_match (0.00s)
    --- PASS: TestConditionEvaluators/IpAddress_-_CIDR_match (0.00s)
    --- PASS: TestConditionEvaluators/IpAddress_-_CIDR_no_match (0.00s)
    --- PASS: TestConditionEvaluators/Bool_-_true_match (0.00s)
    --- PASS: TestConditionEvaluators/Bool_-_false_match (0.00s)
    --- PASS: TestConditionEvaluators/Bool_-_no_match (0.00s)
=== RUN   TestConvertIdentityToPolicy
--- PASS: TestConvertIdentityToPolicy (0.00s)
=== RUN   TestPolicyValidation
=== RUN   TestPolicyValidation/Valid_policy
=== RUN   TestPolicyValidation/Invalid_version
=== RUN   TestPolicyValidation/Missing_action
=== RUN   TestPolicyValidation/Invalid_JSON
--- PASS: TestPolicyValidation (0.00s)
    --- PASS: TestPolicyValidation/Valid_policy (0.00s)
    --- PASS: TestPolicyValidation/Invalid_version (0.00s)
    --- PASS: TestPolicyValidation/Missing_action (0.00s)
    --- PASS: TestPolicyValidation/Invalid_JSON (0.00s)
=== RUN   TestPatternMatching
=== RUN   TestPatternMatching/Exact_match
=== RUN   TestPatternMatching/Wildcard_match
=== RUN   TestPatternMatching/Wildcard_no_match
=== RUN   TestPatternMatching/Full_wildcard
=== RUN   TestPatternMatching/Question_mark_wildcard
--- PASS: TestPatternMatching (0.00s)
    --- PASS: TestPatternMatching/Exact_match (0.00s)
    --- PASS: TestPatternMatching/Wildcard_match (0.00s)
    --- PASS: TestPatternMatching/Wildcard_no_match (0.00s)
    --- PASS: TestPatternMatching/Full_wildcard (0.00s)
    --- PASS: TestPatternMatching/Question_mark_wildcard (0.00s)
=== RUN   TestExtractConditionValuesFromRequest
--- PASS: TestExtractConditionValuesFromRequest (0.00s)
=== RUN   TestPolicyEvaluationWithConditions
--- PASS: TestPolicyEvaluationWithConditions (0.00s)
=== RUN   TestResourceArn
=== RUN   TestResourceArn/Bucket_only
=== RUN   TestResourceArn/Bucket_and_object
=== RUN   TestResourceArn/Bucket_and_nested_object
--- PASS: TestResourceArn (0.00s)
    --- PASS: TestResourceArn/Bucket_only (0.00s)
    --- PASS: TestResourceArn/Bucket_and_object (0.00s)
    --- PASS: TestResourceArn/Bucket_and_nested_object (0.00s)
=== RUN   TestActionConversion
=== RUN   TestActionConversion/Already_has_s3_prefix
=== RUN   TestActionConversion/Add_s3_prefix
--- PASS: TestActionConversion (0.00s)
    --- PASS: TestActionConversion/Already_has_s3_prefix (0.00s)
    --- PASS: TestActionConversion/Add_s3_prefix (0.00s)
=== RUN   TestPolicyEngineForRequest
--- PASS: TestPolicyEngineForRequest (0.00s)
=== RUN   TestWildcardMatching
=== RUN   TestWildcardMatching/Exact_match
=== RUN   TestWildcardMatching/Single_wildcard
=== RUN   TestWildcardMatching/Prefix_wildcard
=== RUN   TestWildcardMatching/Suffix_wildcard
=== RUN   TestWildcardMatching/Middle_wildcard
=== RUN   TestWildcardMatching/No_match
=== RUN   TestWildcardMatching/Multiple_wildcards
--- PASS: TestWildcardMatching (0.00s)
    --- PASS: TestWildcardMatching/Exact_match (0.00s)
    --- PASS: TestWildcardMatching/Single_wildcard (0.00s)
    --- PASS: TestWildcardMatching/Prefix_wildcard (0.00s)
    --- PASS: TestWildcardMatching/Suffix_wildcard (0.00s)
    --- PASS: TestWildcardMatching/Middle_wildcard (0.00s)
    --- PASS: TestWildcardMatching/No_match (0.00s)
    --- PASS: TestWildcardMatching/Multiple_wildcards (0.00s)
=== RUN   TestCompilePolicy
--- PASS: TestCompilePolicy (0.00s)
=== RUN   TestNewPolicyBackedIAMWithLegacy
--- PASS: TestNewPolicyBackedIAMWithLegacy (0.00s)
=== RUN   TestMatchesWildcard
=== RUN   TestMatchesWildcard/Exact_match
=== RUN   TestMatchesWildcard/Single_wildcard
=== RUN   TestMatchesWildcard/Empty_string_with_wildcard
=== RUN   TestMatchesWildcard/Prefix_wildcard
=== RUN   TestMatchesWildcard/Suffix_wildcard
=== RUN   TestMatchesWildcard/Middle_wildcard
=== RUN   TestMatchesWildcard/Multiple_wildcards
=== RUN   TestMatchesWildcard/No_match
=== RUN   TestMatchesWildcard/Single_question_mark
=== RUN   TestMatchesWildcard/Multiple_question_marks
=== RUN   TestMatchesWildcard/Question_mark_no_match
=== RUN   TestMatchesWildcard/Mixed_wildcards
=== RUN   TestMatchesWildcard/Empty_pattern
=== RUN   TestMatchesWildcard/Empty_pattern_with_string
=== RUN   TestMatchesWildcard/Pattern_with_string_empty
=== RUN   TestMatchesWildcard/Pattern_with_regex_special_chars
=== RUN   TestMatchesWildcard/Pattern_with_dots
=== RUN   TestMatchesWildcard/Pattern_with_dots_and_wildcard
--- PASS: TestMatchesWildcard (0.00s)
    --- PASS: TestMatchesWildcard/Exact_match (0.00s)
    --- PASS: TestMatchesWildcard/Single_wildcard (0.00s)
    --- PASS: TestMatchesWildcard/Empty_string_with_wildcard (0.00s)
    --- PASS: TestMatchesWildcard/Prefix_wildcard (0.00s)
    --- PASS: TestMatchesWildcard/Suffix_wildcard (0.00s)
    --- PASS: TestMatchesWildcard/Middle_wildcard (0.00s)
    --- PASS: TestMatchesWildcard/Multiple_wildcards (0.00s)
    --- PASS: TestMatchesWildcard/No_match (0.00s)
    --- PASS: TestMatchesWildcard/Single_question_mark (0.00s)
    --- PASS: TestMatchesWildcard/Multiple_question_marks (0.00s)
    --- PASS: TestMatchesWildcard/Question_mark_no_match (0.00s)
    --- PASS: TestMatchesWildcard/Mixed_wildcards (0.00s)
    --- PASS: TestMatchesWildcard/Empty_pattern (0.00s)
    --- PASS: TestMatchesWildcard/Empty_pattern_with_string (0.00s)
    --- PASS: TestMatchesWildcard/Pattern_with_string_empty (0.00s)
    --- PASS: TestMatchesWildcard/Pattern_with_regex_special_chars (0.00s)
    --- PASS: TestMatchesWildcard/Pattern_with_dots (0.00s)
    --- PASS: TestMatchesWildcard/Pattern_with_dots_and_wildcard (0.00s)
=== RUN   TestWildcardMatcher
=== RUN   TestWildcardMatcher/Simple_star_pattern
=== RUN   TestWildcardMatcher/Question_mark_pattern
=== RUN   TestWildcardMatcher/Mixed_pattern
--- PASS: TestWildcardMatcher (0.00s)
    --- PASS: TestWildcardMatcher/Simple_star_pattern (0.00s)
    --- PASS: TestWildcardMatcher/Question_mark_pattern (0.00s)
    --- PASS: TestWildcardMatcher/Mixed_pattern (0.00s)
=== RUN   TestCompileWildcardPattern
=== RUN   TestCompileWildcardPattern/Star_wildcard
=== RUN   TestCompileWildcardPattern/Question_mark_wildcard
=== RUN   TestCompileWildcardPattern/Mixed_wildcards
--- PASS: TestCompileWildcardPattern (0.00s)
    --- PASS: TestCompileWildcardPattern/Star_wildcard (0.00s)
    --- PASS: TestCompileWildcardPattern/Question_mark_wildcard (0.00s)
    --- PASS: TestCompileWildcardPattern/Mixed_wildcards (0.00s)
=== RUN   TestWildcardMatcherCaching
--- PASS: TestWildcardMatcherCaching (0.00s)
=== RUN   TestFastMatchesWildcard
=== RUN   TestFastMatchesWildcard/s3:Get*_s3:GetObject
=== RUN   TestFastMatchesWildcard/s3:Put*_s3:GetObject
=== RUN   TestFastMatchesWildcard/arn:aws:s3:::bucket/*_arn:aws:s3:::bucket/file.txt
=== RUN   TestFastMatchesWildcard/user:admin-*_user:admin-john
=== RUN   TestFastMatchesWildcard/user:admin-*_user:guest-john
--- PASS: TestFastMatchesWildcard (0.00s)
    --- PASS: TestFastMatchesWildcard/s3:Get*_s3:GetObject (0.00s)
    --- PASS: TestFastMatchesWildcard/s3:Put*_s3:GetObject (0.00s)
    --- PASS: TestFastMatchesWildcard/arn:aws:s3:::bucket/*_arn:aws:s3:::bucket/file.txt (0.00s)
    --- PASS: TestFastMatchesWildcard/user:admin-*_user:admin-john (0.00s)
    --- PASS: TestFastMatchesWildcard/user:admin-*_user:guest-john (0.00s)
=== RUN   TestWildcardMatcherCacheBounding
--- PASS: TestWildcardMatcherCacheBounding (0.00s)
=== RUN   TestWildcardMatcherCacheLRU
--- PASS: TestWildcardMatcherCacheLRU (0.00s)
=== RUN   TestWildcardMatcherCacheClear
--- PASS: TestWildcardMatcherCacheClear (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api/policy_engine	0.012s
?   	github.com/seaweedfs/seaweedfs/weed/s3api/s3_constants	[no test files]
=== RUN   Test_verifyBucketName
--- PASS: Test_verifyBucketName (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api/s3bucket	0.003s
?   	github.com/seaweedfs/seaweedfs/weed/s3api/s3err	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/security	[no test files]
=== RUN   TestSequencer
I0616 11:57:39.786543 snowflake_sequencer.go:21 use snowflake seq id generator, nodeid:for_test hex_of_nodeid: 1
1caeef95a2801000
1caeef95a2801001
1caeef95a2801002
1caeef95a2801003
1caeef95a2801004
1caeef95a2801005
1caeef95a2801006
1caeef95a2801007
1caeef95a2801008
1caeef95a2801009
1caeef95a280100a
1caeef95a280100b
1caeef95a280100c
1caeef95a280100d
1caeef95a280100e
1caeef95a280100f
1caeef95a2801010
1caeef95a2801011
1caeef95a2801012
1caeef95a2801013
1caeef95a2801014
1caeef95a2801015
1caeef95a2801016
1caeef95a2801017
1caeef95a2801018
1caeef95a2801019
1caeef95a280101a
1caeef95a280101b
1caeef95a280101c
1caeef95a280101d
1caeef95a280101e
1caeef95a280101f
1caeef95a2801020
1caeef95a2801021
1caeef95a2801022
1caeef95a2801023
1caeef95a2801024
1caeef95a2801025
1caeef95a2801026
1caeef95a2801027
1caeef95a2801028
1caeef95a2801029
1caeef95a280102a
1caeef95a280102b
1caeef95a280102c
1caeef95a280102d
1caeef95a280102e
1caeef95a280102f
1caeef95a2801030
1caeef95a2801031
1caeef95a2801032
1caeef95a2801033
1caeef95a2801034
1caeef95a2801035
1caeef95a2801036
1caeef95a2801037
1caeef95a2801038
1caeef95a2801039
1caeef95a280103a
1caeef95a280103b
1caeef95a280103c
1caeef95a280103d
1caeef95a280103e
1caeef95a280103f
1caeef95a2801040
1caeef95a2801041
1caeef95a2801042
1caeef95a2801043
1caeef95a2801044
1caeef95a2801045
1caeef95a2801046
1caeef95a2801047
1caeef95a2801048
1caeef95a2801049
1caeef95a280104a
1caeef95a280104b
1caeef95a280104c
1caeef95a280104d
1caeef95a280104e
1caeef95a280104f
1caeef95a2801050
1caeef95a2801051
1caeef95a2801052
1caeef95a2801053
1caeef95a2801054
1caeef95a2801055
1caeef95a2801056
1caeef95a2801057
1caeef95a2801058
1caeef95a2801059
1caeef95a280105a
1caeef95a280105b
1caeef95a280105c
1caeef95a280105d
1caeef95a280105e
1caeef95a280105f
1caeef95a2801060
1caeef95a2801061
1caeef95a2801062
1caeef95a2801063
--- PASS: TestSequencer (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/sequence	0.010s
=== RUN   TestParseURL
--- PASS: TestParseURL (0.00s)
=== RUN   TestPtrie
matched1 /topics/abc
matched1 /topics/abc/d
matched2 /topics/abc
matched2 /topics/abc/d
--- PASS: TestPtrie (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/server	0.028s
?   	github.com/seaweedfs/seaweedfs/weed/server/constants	[no test files]
=== RUN   TestToBreadcrumb
=== RUN   TestToBreadcrumb/empty
=== RUN   TestToBreadcrumb/test1
=== RUN   TestToBreadcrumb/test2
=== RUN   TestToBreadcrumb/test3
--- PASS: TestToBreadcrumb (0.00s)
    --- PASS: TestToBreadcrumb/empty (0.00s)
    --- PASS: TestToBreadcrumb/test1 (0.00s)
    --- PASS: TestToBreadcrumb/test2 (0.00s)
    --- PASS: TestToBreadcrumb/test3 (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/server/filer_ui	0.014s
?   	github.com/seaweedfs/seaweedfs/weed/server/master_ui	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/server/postgres	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/server/volume_server_ui	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/sftpd	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/sftpd/auth	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/sftpd/user	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/sftpd/utils	[no test files]
=== RUN   TestCollectCollectionsForVolumeIds
--- PASS: TestCollectCollectionsForVolumeIds (0.00s)
=== RUN   TestParseReplicaPlacementArg
using master default replica placement "123" for EC volumes
using replica placement "021" for EC volumes
--- PASS: TestParseReplicaPlacementArg (0.00s)
=== RUN   TestEcDistribution
=> 192.168.1.5:8080 27010
=> 192.168.1.6:8080 17420
=> 192.168.1.1:8080 17330
=> 192.168.1.4:8080 1900
=> 192.168.1.2:8080 1540
--- PASS: TestEcDistribution (0.00s)
=== RUN   TestPickRackToBalanceShardsInto
--- PASS: TestPickRackToBalanceShardsInto (0.00s)
=== RUN   TestPickEcNodeToBalanceShardsInto
--- PASS: TestPickEcNodeToBalanceShardsInto (0.00s)
=== RUN   TestCountFreeShardSlots
=== RUN   TestCountFreeShardSlots/topology_#1,_free_HDD_shards
=== RUN   TestCountFreeShardSlots/topology_#1,_no_free_SSD_shards_available
=== RUN   TestCountFreeShardSlots/topology_#2,_no_negative_free_HDD_shards
=== RUN   TestCountFreeShardSlots/topology_#2,_no_free_SSD_shards_available
--- PASS: TestCountFreeShardSlots (0.00s)
    --- PASS: TestCountFreeShardSlots/topology_#1,_free_HDD_shards (0.00s)
    --- PASS: TestCountFreeShardSlots/topology_#1,_no_free_SSD_shards_available (0.00s)
    --- PASS: TestCountFreeShardSlots/topology_#2,_no_negative_free_HDD_shards (0.00s)
    --- PASS: TestCountFreeShardSlots/topology_#2,_no_free_SSD_shards_available (0.00s)
=== RUN   TestCommandEcBalanceSmall
balanceEcVolumes c1
dn1 moves ec shard 1.4 to dn2
dn1 moves ec shard 1.5 to dn2
dn1 moves ec shard 1.6 to dn2
dn1 moves ec shard 1.0 to dn2
dn1 moves ec shard 1.1 to dn2
dn1 moves ec shard 1.2 to dn2
dn1 moves ec shard 1.3 to dn2
dn2 moves ec shard 2.2 to dn1
dn2 moves ec shard 2.3 to dn1
dn2 moves ec shard 2.4 to dn1
dn2 moves ec shard 2.5 to dn1
dn2 moves ec shard 2.6 to dn1
dn2 moves ec shard 2.0 to dn1
dn2 moves ec shard 2.1 to dn1
--- PASS: TestCommandEcBalanceSmall (0.00s)
=== RUN   TestCommandEcBalanceNothingToMove
balanceEcVolumes c1
--- PASS: TestCommandEcBalanceNothingToMove (0.00s)
=== RUN   TestCommandEcBalanceAddNewServers
balanceEcVolumes c1
--- PASS: TestCommandEcBalanceAddNewServers (0.00s)
=== RUN   TestCommandEcBalanceAddNewRacks
balanceEcVolumes c1
dn1 moves ec shard 1.0 to dn4
dn2 moves ec shard 1.7 to dn3
dn2 moves ec shard 1.8 to dn3
dn1 moves ec shard 1.1 to dn4
dn1 moves ec shard 1.2 to dn4
dn2 moves ec shard 1.9 to dn3
dn2 moves ec shard 1.10 to dn4
dn1 moves ec shard 2.7 to dn4
dn2 moves ec shard 2.0 to dn3
dn2 moves ec shard 2.1 to dn3
dn1 moves ec shard 2.8 to dn4
dn1 moves ec shard 2.9 to dn3
dn2 moves ec shard 2.2 to dn4
dn2 moves ec shard 2.3 to dn3
--- PASS: TestCommandEcBalanceAddNewRacks (0.00s)
=== RUN   TestCommandEcBalanceVolumeEvenButRackUneven
balanceEcVolumes c1
dn_shared moves ec shards 1.0 to dn3
--- PASS: TestCommandEcBalanceVolumeEvenButRackUneven (0.00s)
=== RUN   TestCircuitBreakerShell
--- PASS: TestCircuitBreakerShell (0.00s)
=== RUN   TestIsGoodMove
replication: 100 expected false name: test 100 move to wrong data centers
replication: 100 expected true name: test 100 move to spread into proper data centers
replication: 001 expected false name: test move to the same node
replication: 001 expected false name: test move to the same rack, but existing node
replication: 001 expected true name: test move to the same rack, a new node
replication: 010 expected false name: test 010 move all to the same rack
replication: 010 expected true name: test 010 move to spread racks
replication: 010 expected true name: test 010 move to spread racks
replication: 011 expected true name: test 011 switch which rack has more replicas
replication: 011 expected true name: test 011 move the lonely replica to another racks
replication: 011 expected false name: test 011 move to wrong racks
replication: 011 expected false name: test 011 move all to the same rack
--- PASS: TestIsGoodMove (0.00s)
=== RUN   TestBalance
hdd 0.10 0.21:0.06	  moving  volume 31 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.20:0.06	  moving  volume 29 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.20:0.06	  moving  volume 30 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.20:0.06	  moving  volume 27 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.19:0.06	  moving  volume 28 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.19:0.06	  moving  volume collection4_7 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.19:0.06	  moving  volume collection0_25 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.18:0.06	  moving  volume collection3_9 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.18:0.06	  moving  volume collection1_80 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.18:0.06	  moving  volume collection1_69 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.18:0.06	  moving  volume 4 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.17:0.06	  moving  volume collection1_84 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.17:0.07	  moving  volume 2 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.17:0.07	  moving  volume collection1_63 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.17:0.07	  moving  volume 6 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.17:0.07	  moving  volume collection1_74 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.16:0.07	  moving  volume 3 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.16:0.07	  moving  volume collection1_85 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.16:0.07	  moving  volume collection1_54 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.16:0.07	  moving  volume collection1_81 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.15:0.07	  moving  volume collection1_97 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.15:0.07	  moving  volume collection1_56 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.15:0.07	  moving  volume collection1_174 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.15:0.07	  moving  volume collection2_380 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.15:0.07	  moving  volume collection1_105 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.14:0.07	  moving  volume collection1_215 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.14:0.07	  moving  volume collection0_24 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.14:0.07	  moving  volume collection1_173 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.14:0.07	  moving  volume collection1_107 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.07	  moving  volume 5 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_136 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_238 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_240 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection0_26 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_167 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_66 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_65 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_57 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_62 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_67 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_138 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_70 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_90 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_72 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_71 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_75 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_58 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_177 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.08	  moving  volume collection1_87 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.13:0.09	  moving  volume collection1_73 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_77 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_116 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_83 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_91 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_79 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_64 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_61 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_76 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_59 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_139 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_96 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_144 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_95 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_92 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_86 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_60 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.09	  moving  volume collection1_55 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.10	  moving  volume collection2_379 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.10	  moving  volume collection1_94 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.10	  moving  volume collection1_82 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.10	  moving  volume collection1_128 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.10	  moving  volume collection1_89 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.10	  moving  volume collection1_53 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.10	  moving  volume collection2_357 192.168.1.2:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.10	  moving  volume collection1_99 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.12:0.10	  moving  volume collection1_111 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.11:0.10	  moving  volume collection1_176 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.11:0.10	  moving  volume collection4_7 192.168.1.1:8080 => 192.168.1.5:8080
hdd 0.10 0.11:0.10	  moving  volume collection3_9 192.168.1.1:8080 => 192.168.1.5:8080
hdd 0.10 0.11:0.10	  moving  volume collection1_169 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.11:0.10	  moving  volume 1 192.168.1.1:8080 => 192.168.1.5:8080
hdd 0.10 0.11:0.10	  moving  volume collection1_197 192.168.1.4:8080 => 192.168.1.6:8080
hdd 0.10 0.11:0.10	  moving  volume 4 192.168.1.1:8080 => 192.168.1.5:8080
hdd 0.10 0.11:0.10	  moving  volume 2 192.168.1.1:8080 => 192.168.1.5:8080
hdd 0.10 0.11:0.10	  moving  volume collection1_126 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.11:0.10	  moving  volume collection2_381 192.168.1.2:8080 => 192.168.1.5:8080
hdd 0.10 0.11:0.10	  moving  volume collection1_165 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.11:0.10	  moving  volume 6 192.168.1.1:8080 => 192.168.1.5:8080
hdd 0.10 0.11:0.10	  moving  volume 3 192.168.1.1:8080 => 192.168.1.5:8080
hdd 0.10 0.11:0.10	  moving  volume collection1_232 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.11:0.10	  moving  volume collection0_25 192.168.1.1:8080 => 192.168.1.5:8080
hdd 0.10 0.11:0.10	  moving  volume collection2_345 192.168.1.4:8080 => 192.168.1.5:8080
hdd 0.10 0.11:0.10	  moving  volume collection1_135 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.11:0.10	  moving  volume collection1_68 192.168.1.1:8080 => 192.168.1.5:8080
hdd 0.10 0.11:0.10	  moving  volume collection1_117 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.11:0.10	  moving  volume collection1_74 192.168.1.1:8080 => 192.168.1.5:8080
hdd 0.10 0.11:0.10	  moving  volume collection2_378 192.168.1.1:8080 => 192.168.1.5:8080
hdd 0.10 0.11:0.10	  moving  volume collection1_194 192.168.1.1:8080 => 192.168.1.6:8080
hdd 0.10 0.11:0.10	  moving  volume collection1_179 192.168.1.2:8080 => 192.168.1.5:8080
--- PASS: TestBalance (0.00s)
=== RUN   TestVolumeSelection
collect  volumes quiet for: 0 seconds
--- PASS: TestVolumeSelection (0.00s)
=== RUN   TestDeleteEmptySelection
--- PASS: TestDeleteEmptySelection (0.00s)
=== RUN   TestShouldSkipVolume
--- PASS: TestShouldSkipVolume (0.00s)
=== RUN   TestSatisfyReplicaPlacementComplicated
replication: 100 expected false name: test 100 negative
replication: 100 expected true name: test 100 positive
replication: 022 expected true name: test 022 positive
replication: 022 expected false name: test 022 negative
replication: 210 expected true name: test 210 moved from 200 positive
replication: 210 expected false name: test 210 moved from 200 negative extra dc
replication: 210 expected false name: test 210 moved from 200 negative extra data node
--- PASS: TestSatisfyReplicaPlacementComplicated (0.00s)
=== RUN   TestSatisfyReplicaPlacement01x
replication: 011 expected true name: test 011 same existing rack
replication: 011 expected false name: test 011 negative
replication: 011 expected true name: test 011 different existing racks
replication: 011 expected false name: test 011 different existing racks negative
--- PASS: TestSatisfyReplicaPlacement01x (0.00s)
=== RUN   TestSatisfyReplicaPlacement00x
replication: 001 expected true name: test 001
replication: 002 expected true name: test 002 positive
replication: 002 expected false name: test 002 negative, repeat the same node
replication: 002 expected false name: test 002 negative, enough node already
--- PASS: TestSatisfyReplicaPlacement00x (0.00s)
=== RUN   TestSatisfyReplicaPlacement100
replication: 100 expected true name: test 100
--- PASS: TestSatisfyReplicaPlacement100 (0.00s)
=== RUN   TestMisplacedChecking
replication: 001 expected true name: test 001
replication: 010 expected false name: test 010
replication: 011 expected false name: test 011
replication: 110 expected true name: test 110
replication: 100 expected true name: test 100
--- PASS: TestMisplacedChecking (0.00s)
=== RUN   TestPickingMisplacedVolumeToDelete
replication: 001 name: test 001
    command_volume_fix_replication_test.go:435: test 001: picked dn2 001
replication: 100 name: test 100
    command_volume_fix_replication_test.go:435: test 100: picked dn2 100
--- PASS: TestPickingMisplacedVolumeToDelete (0.00s)
=== RUN   TestSatisfyReplicaCurrentLocation
=== RUN   TestSatisfyReplicaCurrentLocation/test_001
=== RUN   TestSatisfyReplicaCurrentLocation/test_010
=== RUN   TestSatisfyReplicaCurrentLocation/test_011
=== RUN   TestSatisfyReplicaCurrentLocation/test_110
=== RUN   TestSatisfyReplicaCurrentLocation/test_100
--- PASS: TestSatisfyReplicaCurrentLocation (0.00s)
    --- PASS: TestSatisfyReplicaCurrentLocation/test_001 (0.00s)
    --- PASS: TestSatisfyReplicaCurrentLocation/test_010 (0.00s)
    --- PASS: TestSatisfyReplicaCurrentLocation/test_011 (0.00s)
    --- PASS: TestSatisfyReplicaCurrentLocation/test_110 (0.00s)
    --- PASS: TestSatisfyReplicaCurrentLocation/test_100 (0.00s)
=== RUN   TestParsing
--- PASS: TestParsing (0.07s)
=== RUN   TestVolumeServerEvacuate
  moving  volume collection0_15 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection0_21 192.168.1.4:8080 => 192.168.1.6:8080
  moving  volume collection0_22 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection0_23 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection0_24 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection0_25 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume 27 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume 28 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume 29 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume 30 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume 31 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_33 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_38 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_51 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_52 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_54 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_63 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_69 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_74 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_80 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_84 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_85 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_97 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_98 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_105 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_106 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_112 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_116 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_119 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_128 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_133 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_136 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_138 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_140 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_144 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_161 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_173 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_174 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_197 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection1_219 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection2_263 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection2_272 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection2_291 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection2_299 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection2_301 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection2_302 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection2_339 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection2_345 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection2_355 192.168.1.4:8080 => 192.168.1.2:8080
  moving  volume collection2_373 192.168.1.4:8080 => 192.168.1.2:8080
--- PASS: TestVolumeServerEvacuate (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/shell	0.203s
=== RUN   TestRobinCounter
--- PASS: TestRobinCounter (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/stats	0.009s
=== RUN   TestCalculateExpectedShardSizeWithRealEncoding
=== RUN   TestCalculateExpectedShardSizeWithRealEncoding/5MB_file
I0616 11:57:39.799610 ec_encoder.go:82 encodeDatFile /tmp/TestCalculateExpectedShardSizeWithRealEncoding1898701348/001/test_volume.dat size:5242880
    disk_location_ec_realworld_test.go:118: ✓ SUCCESS: .dat size 5242880 → actual shard size 1048576 matches calculated size (Small file that needs 1 small block per shard)
=== RUN   TestCalculateExpectedShardSizeWithRealEncoding/10MB_file_(exactly_10_small_blocks)
I0616 11:57:39.818016 ec_encoder.go:82 encodeDatFile /tmp/TestCalculateExpectedShardSizeWithRealEncoding1898701348/001/test_volume.dat size:10485760
    disk_location_ec_realworld_test.go:118: ✓ SUCCESS: .dat size 10485760 → actual shard size 1048576 matches calculated size (Exactly fits in 1MB small blocks)
=== RUN   TestCalculateExpectedShardSizeWithRealEncoding/15MB_file
I0616 11:57:39.839286 ec_encoder.go:82 encodeDatFile /tmp/TestCalculateExpectedShardSizeWithRealEncoding1898701348/001/test_volume.dat size:15728640
    disk_location_ec_realworld_test.go:118: ✓ SUCCESS: .dat size 15728640 → actual shard size 2097152 matches calculated size (Requires 2 small blocks per shard)
=== RUN   TestCalculateExpectedShardSizeWithRealEncoding/50MB_file
I0616 11:57:39.888450 ec_encoder.go:82 encodeDatFile /tmp/TestCalculateExpectedShardSizeWithRealEncoding1898701348/001/test_volume.dat size:52428800
    disk_location_ec_realworld_test.go:118: ✓ SUCCESS: .dat size 52428800 → actual shard size 5242880 matches calculated size (Requires 5 small blocks per shard)
=== RUN   TestCalculateExpectedShardSizeWithRealEncoding/100MB_file
I0616 11:57:39.982049 ec_encoder.go:82 encodeDatFile /tmp/TestCalculateExpectedShardSizeWithRealEncoding1898701348/001/test_volume.dat size:104857600
    disk_location_ec_realworld_test.go:118: ✓ SUCCESS: .dat size 104857600 → actual shard size 10485760 matches calculated size (Requires 10 small blocks per shard)
=== RUN   TestCalculateExpectedShardSizeWithRealEncoding/512MB_file
I0616 11:57:40.291456 ec_encoder.go:82 encodeDatFile /tmp/TestCalculateExpectedShardSizeWithRealEncoding1898701348/001/test_volume.dat size:536870912
    disk_location_ec_realworld_test.go:118: ✓ SUCCESS: .dat size 536870912 → actual shard size 54525952 matches calculated size (Requires 52 small blocks per shard (rounded up))
--- PASS: TestCalculateExpectedShardSizeWithRealEncoding (0.90s)
    --- PASS: TestCalculateExpectedShardSizeWithRealEncoding/5MB_file (0.02s)
    --- PASS: TestCalculateExpectedShardSizeWithRealEncoding/10MB_file_(exactly_10_small_blocks) (0.02s)
    --- PASS: TestCalculateExpectedShardSizeWithRealEncoding/15MB_file (0.03s)
    --- PASS: TestCalculateExpectedShardSizeWithRealEncoding/50MB_file (0.07s)
    --- PASS: TestCalculateExpectedShardSizeWithRealEncoding/100MB_file (0.14s)
    --- PASS: TestCalculateExpectedShardSizeWithRealEncoding/512MB_file (0.62s)
=== RUN   TestCalculateExpectedShardSizeEdgeCases
=== RUN   TestCalculateExpectedShardSizeEdgeCases/1_byte_file
I0616 11:57:40.696799 ec_encoder.go:82 encodeDatFile /tmp/TestCalculateExpectedShardSizeEdgeCases1887356632/001/1 byte file.dat size:1
    disk_location_ec_realworld_test.go:188: ✓ File size 1 → shard size 1048576 (correct)
=== RUN   TestCalculateExpectedShardSizeEdgeCases/1KB_file
I0616 11:57:40.708069 ec_encoder.go:82 encodeDatFile /tmp/TestCalculateExpectedShardSizeEdgeCases1887356632/001/1KB file.dat size:1024
    disk_location_ec_realworld_test.go:188: ✓ File size 1024 → shard size 1048576 (correct)
=== RUN   TestCalculateExpectedShardSizeEdgeCases/10KB_file
I0616 11:57:40.720052 ec_encoder.go:82 encodeDatFile /tmp/TestCalculateExpectedShardSizeEdgeCases1887356632/001/10KB file.dat size:10240
    disk_location_ec_realworld_test.go:188: ✓ File size 10240 → shard size 1048576 (correct)
=== RUN   TestCalculateExpectedShardSizeEdgeCases/1MB_file_(1_small_block)
I0616 11:57:40.731149 ec_encoder.go:82 encodeDatFile /tmp/TestCalculateExpectedShardSizeEdgeCases1887356632/001/1MB file (1 small block).dat size:1048576
    disk_location_ec_realworld_test.go:188: ✓ File size 1048576 → shard size 1048576 (correct)
=== RUN   TestCalculateExpectedShardSizeEdgeCases/1MB_+_1_byte
I0616 11:57:40.742060 ec_encoder.go:82 encodeDatFile /tmp/TestCalculateExpectedShardSizeEdgeCases1887356632/001/1MB + 1 byte.dat size:1048577
    disk_location_ec_realworld_test.go:188: ✓ File size 1048577 → shard size 1048576 (correct)
=== RUN   TestCalculateExpectedShardSizeEdgeCases/9.9MB_(almost_1_small_block_per_shard)
I0616 11:57:40.762190 ec_encoder.go:82 encodeDatFile /tmp/TestCalculateExpectedShardSizeEdgeCases1887356632/001/9.9MB (almost 1 small block per shard).dat size:10358784
    disk_location_ec_realworld_test.go:188: ✓ File size 10358784 → shard size 1048576 (correct)
=== RUN   TestCalculateExpectedShardSizeEdgeCases/10.1MB_(just_over_1_small_block_per_shard)
I0616 11:57:40.780746 ec_encoder.go:82 encodeDatFile /tmp/TestCalculateExpectedShardSizeEdgeCases1887356632/001/10.1MB (just over 1 small block per shard).dat size:10588160
    disk_location_ec_realworld_test.go:188: ✓ File size 10588160 → shard size 2097152 (correct)
--- PASS: TestCalculateExpectedShardSizeEdgeCases (0.10s)
    --- PASS: TestCalculateExpectedShardSizeEdgeCases/1_byte_file (0.01s)
    --- PASS: TestCalculateExpectedShardSizeEdgeCases/1KB_file (0.01s)
    --- PASS: TestCalculateExpectedShardSizeEdgeCases/10KB_file (0.01s)
    --- PASS: TestCalculateExpectedShardSizeEdgeCases/1MB_file_(1_small_block) (0.01s)
    --- PASS: TestCalculateExpectedShardSizeEdgeCases/1MB_+_1_byte (0.01s)
    --- PASS: TestCalculateExpectedShardSizeEdgeCases/9.9MB_(almost_1_small_block_per_shard) (0.02s)
    --- PASS: TestCalculateExpectedShardSizeEdgeCases/10.1MB_(just_over_1_small_block_per_shard) (0.03s)
=== RUN   TestCalculateExpectedShardSize
=== RUN   TestCalculateExpectedShardSize/0_bytes_(empty_file)
    disk_location_ec_shard_size_test.go:138: ✓ File size: 0 → Shard size: 0 (Empty file has 0 shard size)
=== RUN   TestCalculateExpectedShardSize/Exact_10GB_(1_large_batch)
    disk_location_ec_shard_size_test.go:138: ✓ File size: 10737418240 → Shard size: 1073741824 (Exactly fits in large blocks)
=== RUN   TestCalculateExpectedShardSize/Exact_20GB_(2_large_batches)
    disk_location_ec_shard_size_test.go:138: ✓ File size: 21474836480 → Shard size: 2147483648 (2 complete large batches)
=== RUN   TestCalculateExpectedShardSize/Just_under_large_batch_(10GB_-_1_byte)
    disk_location_ec_shard_size_test.go:138: ✓ File size: 10737418239 → Shard size: 1073741824 (Just under 10GB needs 1024 small blocks)
=== RUN   TestCalculateExpectedShardSize/Just_over_large_batch_(10GB_+_1_byte)
    disk_location_ec_shard_size_test.go:138: ✓ File size: 10737418241 → Shard size: 1074790400 (Just over 10GB adds 1 small block)
=== RUN   TestCalculateExpectedShardSize/Exact_10MB_(1_small_batch)
    disk_location_ec_shard_size_test.go:138: ✓ File size: 10485760 → Shard size: 1048576 (Exactly fits in 1 small batch)
=== RUN   TestCalculateExpectedShardSize/Exact_20MB_(2_small_batches)
    disk_location_ec_shard_size_test.go:138: ✓ File size: 20971520 → Shard size: 2097152 (2 complete small batches)
=== RUN   TestCalculateExpectedShardSize/Just_under_small_batch_(10MB_-_1_byte)
    disk_location_ec_shard_size_test.go:138: ✓ File size: 10485759 → Shard size: 1048576 (Just under 10MB rounds up to 1 small block)
=== RUN   TestCalculateExpectedShardSize/Just_over_small_batch_(10MB_+_1_byte)
    disk_location_ec_shard_size_test.go:138: ✓ File size: 10485761 → Shard size: 2097152 (Just over 10MB needs 2 small blocks)
=== RUN   TestCalculateExpectedShardSize/10GB_+_1MB
    disk_location_ec_shard_size_test.go:138: ✓ File size: 10738466816 → Shard size: 1074790400 (1 large batch + 1MB needs 1 small block)
=== RUN   TestCalculateExpectedShardSize/10GB_+_5MB
    disk_location_ec_shard_size_test.go:138: ✓ File size: 10742661120 → Shard size: 1074790400 (1 large batch + 5MB rounds up to 1 small block)
=== RUN   TestCalculateExpectedShardSize/10GB_+_15MB
    disk_location_ec_shard_size_test.go:138: ✓ File size: 10753146880 → Shard size: 1075838976 (1 large batch + 15MB needs 2 small blocks)
=== RUN   TestCalculateExpectedShardSize/11GB_(1_large_batch_+_103_small_blocks)
    disk_location_ec_shard_size_test.go:138: ✓ File size: 11811160064 → Shard size: 1181745152 (1GB large + 1GB remaining needs 103 small blocks)
=== RUN   TestCalculateExpectedShardSize/5MB_(requires_1_small_block_per_shard)
    disk_location_ec_shard_size_test.go:138: ✓ File size: 5242880 → Shard size: 1048576 (Small file rounds up to 1MB per shard)
=== RUN   TestCalculateExpectedShardSize/1KB_(minimum_size)
    disk_location_ec_shard_size_test.go:138: ✓ File size: 1024 → Shard size: 1048576 (Tiny file needs 1 small block)
=== RUN   TestCalculateExpectedShardSize/10.5GB_(mixed)
    disk_location_ec_shard_size_test.go:138: ✓ File size: 11274289152 → Shard size: 1128267776 (1GB large + 512MB remaining needs 52 small blocks)
--- PASS: TestCalculateExpectedShardSize (0.00s)
    --- PASS: TestCalculateExpectedShardSize/0_bytes_(empty_file) (0.00s)
    --- PASS: TestCalculateExpectedShardSize/Exact_10GB_(1_large_batch) (0.00s)
    --- PASS: TestCalculateExpectedShardSize/Exact_20GB_(2_large_batches) (0.00s)
    --- PASS: TestCalculateExpectedShardSize/Just_under_large_batch_(10GB_-_1_byte) (0.00s)
    --- PASS: TestCalculateExpectedShardSize/Just_over_large_batch_(10GB_+_1_byte) (0.00s)
    --- PASS: TestCalculateExpectedShardSize/Exact_10MB_(1_small_batch) (0.00s)
    --- PASS: TestCalculateExpectedShardSize/Exact_20MB_(2_small_batches) (0.00s)
    --- PASS: TestCalculateExpectedShardSize/Just_under_small_batch_(10MB_-_1_byte) (0.00s)
    --- PASS: TestCalculateExpectedShardSize/Just_over_small_batch_(10MB_+_1_byte) (0.00s)
    --- PASS: TestCalculateExpectedShardSize/10GB_+_1MB (0.00s)
    --- PASS: TestCalculateExpectedShardSize/10GB_+_5MB (0.00s)
    --- PASS: TestCalculateExpectedShardSize/10GB_+_15MB (0.00s)
    --- PASS: TestCalculateExpectedShardSize/11GB_(1_large_batch_+_103_small_blocks) (0.00s)
    --- PASS: TestCalculateExpectedShardSize/5MB_(requires_1_small_block_per_shard) (0.00s)
    --- PASS: TestCalculateExpectedShardSize/1KB_(minimum_size) (0.00s)
    --- PASS: TestCalculateExpectedShardSize/10.5GB_(mixed) (0.00s)
=== RUN   TestShardSizeValidationScenarios
=== RUN   TestShardSizeValidationScenarios/Valid:_exact_match_for_10GB
=== RUN   TestShardSizeValidationScenarios/Invalid:_1_byte_too_small
=== RUN   TestShardSizeValidationScenarios/Invalid:_1_byte_too_large
=== RUN   TestShardSizeValidationScenarios/Valid:_small_file_exact_match
=== RUN   TestShardSizeValidationScenarios/Invalid:_wrong_size_for_small_file
--- PASS: TestShardSizeValidationScenarios (0.00s)
    --- PASS: TestShardSizeValidationScenarios/Valid:_exact_match_for_10GB (0.00s)
    --- PASS: TestShardSizeValidationScenarios/Invalid:_1_byte_too_small (0.00s)
    --- PASS: TestShardSizeValidationScenarios/Invalid:_1_byte_too_large (0.00s)
    --- PASS: TestShardSizeValidationScenarios/Valid:_small_file_exact_match (0.00s)
    --- PASS: TestShardSizeValidationScenarios/Invalid:_wrong_size_for_small_file (0.00s)
=== RUN   TestIncompleteEcEncodingCleanup
=== RUN   TestIncompleteEcEncodingCleanup/Incomplete_EC:_shards_without_.ecx,_.dat_exists_-_should_cleanup
W0616 11:57:40.799555 disk_location_ec.go:342 Found 14 EC shards without .ecx file for volume 100 (incomplete encoding interrupted before .ecx creation), cleaning up...
=== RUN   TestIncompleteEcEncodingCleanup/Distributed_EC:_shards_without_.ecx,_.dat_deleted_-_should_NOT_cleanup
=== RUN   TestIncompleteEcEncodingCleanup/Incomplete_EC:_shards_with_.ecx_but_<_10_shards,_.dat_exists_-_should_cleanup
W0616 11:57:40.800759 disk_location_ec.go:445 EC volume 102 has .dat file but only 7 shards (need at least 10 for local EC)
W0616 11:57:40.800766 disk_location_ec.go:292 Incomplete or invalid EC volume 102: .dat exists but validation failed, cleaning up EC files...
=== RUN   TestIncompleteEcEncodingCleanup/Valid_local_EC:_shards_with_.ecx,_>=_10_shards,_.dat_exists_-_should_load
W0616 11:57:40.801478 ec_volume.go:77 vif file not found,volumeId:103, filename:/tmp/TestIncompleteEcEncodingCleanupValid_local_EC_shards_with_.ecx154834745/001/103
=== RUN   TestIncompleteEcEncodingCleanup/Distributed_EC:_shards_with_.ecx,_.dat_deleted_-_should_load
W0616 11:57:40.825259 ec_volume.go:77 vif file not found,volumeId:104, filename:/tmp/TestIncompleteEcEncodingCleanupDistributed_EC_shards_with_.ecx205847881/001/104
=== RUN   TestIncompleteEcEncodingCleanup/Incomplete_EC_with_collection:_shards_without_.ecx,_.dat_exists_-_should_cleanup
W0616 11:57:40.838320 disk_location_ec.go:342 Found 14 EC shards without .ecx file for volume 105 (incomplete encoding interrupted before .ecx creation), cleaning up...
--- PASS: TestIncompleteEcEncodingCleanup (0.04s)
    --- PASS: TestIncompleteEcEncodingCleanup/Incomplete_EC:_shards_without_.ecx,_.dat_exists_-_should_cleanup (0.00s)
    --- PASS: TestIncompleteEcEncodingCleanup/Distributed_EC:_shards_without_.ecx,_.dat_deleted_-_should_NOT_cleanup (0.00s)
    --- PASS: TestIncompleteEcEncodingCleanup/Incomplete_EC:_shards_with_.ecx_but_<_10_shards,_.dat_exists_-_should_cleanup (0.00s)
    --- PASS: TestIncompleteEcEncodingCleanup/Valid_local_EC:_shards_with_.ecx,_>=_10_shards,_.dat_exists_-_should_load (0.02s)
    --- PASS: TestIncompleteEcEncodingCleanup/Distributed_EC:_shards_with_.ecx,_.dat_deleted_-_should_load (0.01s)
    --- PASS: TestIncompleteEcEncodingCleanup/Incomplete_EC_with_collection:_shards_without_.ecx,_.dat_exists_-_should_cleanup (0.00s)
=== RUN   TestValidateEcVolume
=== RUN   TestValidateEcVolume/Valid:_.dat_exists_with_10+_shards
=== RUN   TestValidateEcVolume/Invalid:_.dat_exists_with_<_10_shards
W0616 11:57:40.839238 disk_location_ec.go:445 EC volume 201 has .dat file but only 9 shards (need at least 10 for local EC)
=== RUN   TestValidateEcVolume/Valid:_.dat_deleted_(distributed_EC)_with_any_shards
=== RUN   TestValidateEcVolume/Valid:_.dat_deleted_(distributed_EC)_with_no_shards
=== RUN   TestValidateEcVolume/Invalid:_zero-byte_shard_files_should_not_count
W0616 11:57:40.839832 disk_location_ec.go:445 EC volume 204 has .dat file but only 0 shards (need at least 10 for local EC)
=== RUN   TestValidateEcVolume/Invalid:_.dat_exists_with_different_size_shards
W0616 11:57:40.874056 disk_location_ec.go:413 EC volume 205 shard 1 has size 110, expected 100 (all EC shards must be same size)
--- PASS: TestValidateEcVolume (0.04s)
    --- PASS: TestValidateEcVolume/Valid:_.dat_exists_with_10+_shards (0.00s)
    --- PASS: TestValidateEcVolume/Invalid:_.dat_exists_with_<_10_shards (0.00s)
    --- PASS: TestValidateEcVolume/Valid:_.dat_deleted_(distributed_EC)_with_any_shards (0.00s)
    --- PASS: TestValidateEcVolume/Valid:_.dat_deleted_(distributed_EC)_with_no_shards (0.00s)
    --- PASS: TestValidateEcVolume/Invalid:_zero-byte_shard_files_should_not_count (0.00s)
    --- PASS: TestValidateEcVolume/Invalid:_.dat_exists_with_different_size_shards (0.03s)
=== RUN   TestRemoveEcVolumeFiles
=== RUN   TestRemoveEcVolumeFiles/Same_directory_for_data_and_index
=== RUN   TestRemoveEcVolumeFiles/Separate_idx_directory
--- PASS: TestRemoveEcVolumeFiles (0.00s)
    --- PASS: TestRemoveEcVolumeFiles/Same_directory_for_data_and_index (0.00s)
    --- PASS: TestRemoveEcVolumeFiles/Separate_idx_directory (0.00s)
=== RUN   TestEcCleanupWithSeparateIdxDirectory
W0616 11:57:40.877455 disk_location_ec.go:342 Found 14 EC shards without .ecx file for volume 400 (incomplete encoding interrupted before .ecx creation), cleaning up...
--- PASS: TestEcCleanupWithSeparateIdxDirectory (0.00s)
=== RUN   TestDistributedEcVolumeNoFileDeletion
W0616 11:57:40.878123 ec_volume.go:77 vif file not found,volumeId:500, filename:/tmp/TestDistributedEcVolumeNoFileDeletion3640144302/001/500
    disk_location_ec_test.go:642: SUCCESS: Distributed EC volume files preserved (not deleted)
--- PASS: TestDistributedEcVolumeNoFileDeletion (0.01s)
=== RUN   TestUnUsedSpace
--- PASS: TestUnUsedSpace (0.00s)
=== RUN   TestFirstInvalidIndex
I0616 11:57:40.887051 volume_loading.go:152 checking volume data integrity for volume 1
I0616 11:57:40.887064 volume_loading.go:170 loading memory index /tmp/TestFirstInvalidIndex542446904/001/1.idx to memory
--- PASS: TestFirstInvalidIndex (0.01s)
=== RUN   TestFastLoadingNeedleMapMetrics
I0616 11:57:40.909252 needle_map_metric_test.go:26 FileCount expected 10000 actual 12057
I0616 11:57:40.909263 needle_map_metric_test.go:27 DeletedSize expected 1725 actual 1725
I0616 11:57:40.909266 needle_map_metric_test.go:28 ContentSize expected 10000 actual 10000
I0616 11:57:40.909269 needle_map_metric_test.go:29 DeletedCount expected 1725 actual 3782
I0616 11:57:40.909272 needle_map_metric_test.go:30 MaxFileKey expected 10000 actual 10000
--- PASS: TestFastLoadingNeedleMapMetrics (0.01s)
=== RUN   TestHasFreeDiskLocation
=== RUN   TestHasFreeDiskLocation/low_disk_space_prevents_allocation
=== RUN   TestHasFreeDiskLocation/normal_disk_space_and_available_volume_count_allows_allocation
=== RUN   TestHasFreeDiskLocation/volume_count_at_max_prevents_allocation
=== RUN   TestHasFreeDiskLocation/volume_count_over_max_prevents_allocation
=== RUN   TestHasFreeDiskLocation/volume_count_just_under_max_allows_allocation
=== RUN   TestHasFreeDiskLocation/max_volume_count_is_0_allows_allocation
=== RUN   TestHasFreeDiskLocation/max_volume_count_is_0_but_low_disk_space_prevents_allocation
--- PASS: TestHasFreeDiskLocation (0.00s)
    --- PASS: TestHasFreeDiskLocation/low_disk_space_prevents_allocation (0.00s)
    --- PASS: TestHasFreeDiskLocation/normal_disk_space_and_available_volume_count_allows_allocation (0.00s)
    --- PASS: TestHasFreeDiskLocation/volume_count_at_max_prevents_allocation (0.00s)
    --- PASS: TestHasFreeDiskLocation/volume_count_over_max_prevents_allocation (0.00s)
    --- PASS: TestHasFreeDiskLocation/volume_count_just_under_max_allows_allocation (0.00s)
    --- PASS: TestHasFreeDiskLocation/max_volume_count_is_0_allows_allocation (0.00s)
    --- PASS: TestHasFreeDiskLocation/max_volume_count_is_0_but_low_disk_space_prevents_allocation (0.00s)
=== RUN   TestLoadBalancingDistribution
I0616 11:57:40.934226 disk_location.go:260 Store started on dir: /tmp/TestLoadBalancingDistribution2962330553/001/dir0 with 0 volumes max 100 (disk ID: 0)
I0616 11:57:40.934293 disk_location.go:263 Store started on dir: /tmp/TestLoadBalancingDistribution2962330553/001/dir0 with 0 ec shards (disk ID: 0)
I0616 11:57:40.944279 disk_location.go:260 Store started on dir: /tmp/TestLoadBalancingDistribution2962330553/001/dir1 with 0 volumes max 100 (disk ID: 1)
I0616 11:57:40.944331 disk_location.go:263 Store started on dir: /tmp/TestLoadBalancingDistribution2962330553/001/dir1 with 0 ec shards (disk ID: 1)
I0616 11:57:40.962798 disk_location.go:260 Store started on dir: /tmp/TestLoadBalancingDistribution2962330553/001/dir2 with 0 volumes max 100 (disk ID: 2)
I0616 11:57:40.962817 disk_location.go:263 Store started on dir: /tmp/TestLoadBalancingDistribution2962330553/001/dir2 with 0 ec shards (disk ID: 2)
I0616 11:57:40.962833 store.go:184 In dir /tmp/TestLoadBalancingDistribution2962330553/001/dir0 (disk ID 0) adds volume:1 collection: replicaPlacement:000 ttl:
I0616 11:57:40.962934 volume_loading.go:152 checking volume data integrity for volume 1
I0616 11:57:40.962943 volume_loading.go:170 loading memory index /tmp/TestLoadBalancingDistribution2962330553/001/dir0/1.idx to memory
I0616 11:57:40.978596 store.go:189 add volume 1 on disk ID 0
I0616 11:57:40.978603 store.go:184 In dir /tmp/TestLoadBalancingDistribution2962330553/001/dir1 (disk ID 1) adds volume:2 collection: replicaPlacement:000 ttl:
I0616 11:57:40.978673 volume_loading.go:152 checking volume data integrity for volume 2
I0616 11:57:40.978680 volume_loading.go:170 loading memory index /tmp/TestLoadBalancingDistribution2962330553/001/dir1/2.idx to memory
I0616 11:57:40.983262 store.go:189 add volume 2 on disk ID 1
I0616 11:57:40.983286 store.go:184 In dir /tmp/TestLoadBalancingDistribution2962330553/001/dir2 (disk ID 2) adds volume:3 collection: replicaPlacement:000 ttl:
I0616 11:57:40.983432 volume_loading.go:152 checking volume data integrity for volume 3
I0616 11:57:40.983442 volume_loading.go:170 loading memory index /tmp/TestLoadBalancingDistribution2962330553/001/dir2/3.idx to memory
I0616 11:57:41.005175 store.go:189 add volume 3 on disk ID 2
I0616 11:57:41.005186 store.go:184 In dir /tmp/TestLoadBalancingDistribution2962330553/001/dir0 (disk ID 0) adds volume:4 collection: replicaPlacement:000 ttl:
I0616 11:57:41.005295 volume_loading.go:152 checking volume data integrity for volume 4
I0616 11:57:41.005304 volume_loading.go:170 loading memory index /tmp/TestLoadBalancingDistribution2962330553/001/dir0/4.idx to memory
I0616 11:57:41.035580 store.go:189 add volume 4 on disk ID 0
I0616 11:57:41.035588 store.go:184 In dir /tmp/TestLoadBalancingDistribution2962330553/001/dir1 (disk ID 1) adds volume:5 collection: replicaPlacement:000 ttl:
I0616 11:57:41.035693 volume_loading.go:152 checking volume data integrity for volume 5
I0616 11:57:41.035711 volume_loading.go:170 loading memory index /tmp/TestLoadBalancingDistribution2962330553/001/dir1/5.idx to memory
I0616 11:57:41.055034 store.go:189 add volume 5 on disk ID 1
I0616 11:57:41.055049 store.go:184 In dir /tmp/TestLoadBalancingDistribution2962330553/001/dir2 (disk ID 2) adds volume:6 collection: replicaPlacement:000 ttl:
I0616 11:57:41.055180 volume_loading.go:152 checking volume data integrity for volume 6
I0616 11:57:41.055190 volume_loading.go:170 loading memory index /tmp/TestLoadBalancingDistribution2962330553/001/dir2/6.idx to memory
I0616 11:57:41.113866 store.go:189 add volume 6 on disk ID 2
I0616 11:57:41.113873 store.go:184 In dir /tmp/TestLoadBalancingDistribution2962330553/001/dir0 (disk ID 0) adds volume:7 collection: replicaPlacement:000 ttl:
I0616 11:57:41.113970 volume_loading.go:152 checking volume data integrity for volume 7
I0616 11:57:41.113977 volume_loading.go:170 loading memory index /tmp/TestLoadBalancingDistribution2962330553/001/dir0/7.idx to memory
I0616 11:57:41.176246 store.go:189 add volume 7 on disk ID 0
I0616 11:57:41.176261 store.go:184 In dir /tmp/TestLoadBalancingDistribution2962330553/001/dir1 (disk ID 1) adds volume:8 collection: replicaPlacement:000 ttl:
I0616 11:57:41.176383 volume_loading.go:152 checking volume data integrity for volume 8
I0616 11:57:41.176393 volume_loading.go:170 loading memory index /tmp/TestLoadBalancingDistribution2962330553/001/dir1/8.idx to memory
I0616 11:57:41.196400 store.go:189 add volume 8 on disk ID 1
I0616 11:57:41.196407 store.go:184 In dir /tmp/TestLoadBalancingDistribution2962330553/001/dir2 (disk ID 2) adds volume:9 collection: replicaPlacement:000 ttl:
I0616 11:57:41.196480 volume_loading.go:152 checking volume data integrity for volume 9
I0616 11:57:41.196487 volume_loading.go:170 loading memory index /tmp/TestLoadBalancingDistribution2962330553/001/dir2/9.idx to memory
I0616 11:57:41.220849 store.go:189 add volume 9 on disk ID 2
--- PASS: TestLoadBalancingDistribution (0.31s)
=== RUN   TestLocalVolumesLen
=== RUN   TestLocalVolumesLen/all_local_volumes
=== RUN   TestLocalVolumesLen/all_remote_volumes
=== RUN   TestLocalVolumesLen/mixed_local_and_remote
=== RUN   TestLocalVolumesLen/no_volumes
--- PASS: TestLocalVolumesLen (0.00s)
    --- PASS: TestLocalVolumesLen/all_local_volumes (0.00s)
    --- PASS: TestLocalVolumesLen/all_remote_volumes (0.00s)
    --- PASS: TestLocalVolumesLen/mixed_local_and_remote (0.00s)
    --- PASS: TestLocalVolumesLen/no_volumes (0.00s)
=== RUN   TestVolumeLoadBalancing
=== RUN   TestVolumeLoadBalancing/even_distribution_across_empty_locations
I0616 11:57:41.248153 disk_location.go:260 Store started on dir: /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir0 with 0 volumes max 100 (disk ID: 0)
I0616 11:57:41.248173 disk_location.go:263 Store started on dir: /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir0 with 0 ec shards (disk ID: 0)
I0616 11:57:41.261880 disk_location.go:260 Store started on dir: /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir1 with 0 volumes max 100 (disk ID: 1)
I0616 11:57:41.261914 disk_location.go:263 Store started on dir: /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir1 with 0 ec shards (disk ID: 1)
I0616 11:57:41.273006 disk_location.go:260 Store started on dir: /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir2 with 0 volumes max 100 (disk ID: 2)
I0616 11:57:41.273027 disk_location.go:263 Store started on dir: /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir2 with 0 ec shards (disk ID: 2)
I0616 11:57:41.273044 store.go:184 In dir /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir0 (disk ID 0) adds volume:1 collection: replicaPlacement:000 ttl:
I0616 11:57:41.273160 volume_loading.go:152 checking volume data integrity for volume 1
I0616 11:57:41.273169 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir0/1.idx to memory
I0616 11:57:41.289406 store.go:189 add volume 1 on disk ID 0
I0616 11:57:41.289415 store.go:184 In dir /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir1 (disk ID 1) adds volume:2 collection: replicaPlacement:000 ttl:
I0616 11:57:41.289487 volume_loading.go:152 checking volume data integrity for volume 2
I0616 11:57:41.289495 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir1/2.idx to memory
I0616 11:57:41.300781 store.go:189 add volume 2 on disk ID 1
I0616 11:57:41.300798 store.go:184 In dir /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir2 (disk ID 2) adds volume:3 collection: replicaPlacement:000 ttl:
I0616 11:57:41.300908 volume_loading.go:152 checking volume data integrity for volume 3
I0616 11:57:41.300918 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir2/3.idx to memory
I0616 11:57:41.319931 store.go:189 add volume 3 on disk ID 2
I0616 11:57:41.319939 store.go:184 In dir /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir0 (disk ID 0) adds volume:4 collection: replicaPlacement:000 ttl:
I0616 11:57:41.320007 volume_loading.go:152 checking volume data integrity for volume 4
I0616 11:57:41.320015 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir0/4.idx to memory
I0616 11:57:41.327201 store.go:189 add volume 4 on disk ID 0
I0616 11:57:41.327214 store.go:184 In dir /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir1 (disk ID 1) adds volume:5 collection: replicaPlacement:000 ttl:
I0616 11:57:41.327355 volume_loading.go:152 checking volume data integrity for volume 5
I0616 11:57:41.327364 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir1/5.idx to memory
I0616 11:57:41.335725 store.go:189 add volume 5 on disk ID 1
I0616 11:57:41.335734 store.go:184 In dir /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir2 (disk ID 2) adds volume:6 collection: replicaPlacement:000 ttl:
I0616 11:57:41.335822 volume_loading.go:152 checking volume data integrity for volume 6
I0616 11:57:41.335830 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingeven_distribution_across_empty_locations4169750067/001/dir2/6.idx to memory
I0616 11:57:41.341330 store.go:189 add volume 6 on disk ID 2
=== RUN   TestVolumeLoadBalancing/prefers_location_with_fewer_local_volumes
I0616 11:57:41.348592 disk_location.go:260 Store started on dir: /tmp/TestVolumeLoadBalancingprefers_location_with_fewer_local_volume3093524483/001/dir0 with 0 volumes max 100 (disk ID: 0)
I0616 11:57:41.348655 disk_location.go:263 Store started on dir: /tmp/TestVolumeLoadBalancingprefers_location_with_fewer_local_volume3093524483/001/dir0 with 0 ec shards (disk ID: 0)
I0616 11:57:41.359402 disk_location.go:260 Store started on dir: /tmp/TestVolumeLoadBalancingprefers_location_with_fewer_local_volume3093524483/001/dir1 with 0 volumes max 100 (disk ID: 1)
I0616 11:57:41.359448 disk_location.go:263 Store started on dir: /tmp/TestVolumeLoadBalancingprefers_location_with_fewer_local_volume3093524483/001/dir1 with 0 ec shards (disk ID: 1)
I0616 11:57:41.365469 disk_location.go:260 Store started on dir: /tmp/TestVolumeLoadBalancingprefers_location_with_fewer_local_volume3093524483/001/dir2 with 0 volumes max 100 (disk ID: 2)
I0616 11:57:41.365499 disk_location.go:263 Store started on dir: /tmp/TestVolumeLoadBalancingprefers_location_with_fewer_local_volume3093524483/001/dir2 with 0 ec shards (disk ID: 2)
I0616 11:57:41.365526 store.go:184 In dir /tmp/TestVolumeLoadBalancingprefers_location_with_fewer_local_volume3093524483/001/dir1 (disk ID 1) adds volume:1 collection: replicaPlacement:000 ttl:
I0616 11:57:41.365641 volume_loading.go:152 checking volume data integrity for volume 1
I0616 11:57:41.365649 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingprefers_location_with_fewer_local_volume3093524483/001/dir1/1.idx to memory
I0616 11:57:41.377157 store.go:189 add volume 1 on disk ID 1
I0616 11:57:41.377165 store.go:184 In dir /tmp/TestVolumeLoadBalancingprefers_location_with_fewer_local_volume3093524483/001/dir1 (disk ID 1) adds volume:2 collection: replicaPlacement:000 ttl:
I0616 11:57:41.377235 volume_loading.go:152 checking volume data integrity for volume 2
I0616 11:57:41.377242 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingprefers_location_with_fewer_local_volume3093524483/001/dir1/2.idx to memory
I0616 11:57:41.400663 store.go:189 add volume 2 on disk ID 1
I0616 11:57:41.400675 store.go:184 In dir /tmp/TestVolumeLoadBalancingprefers_location_with_fewer_local_volume3093524483/001/dir1 (disk ID 1) adds volume:3 collection: replicaPlacement:000 ttl:
I0616 11:57:41.400780 volume_loading.go:152 checking volume data integrity for volume 3
I0616 11:57:41.400789 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingprefers_location_with_fewer_local_volume3093524483/001/dir1/3.idx to memory
I0616 11:57:41.430320 store.go:189 add volume 3 on disk ID 1
=== RUN   TestVolumeLoadBalancing/ignores_remote_volumes_in_count
I0616 11:57:41.465061 disk_location.go:260 Store started on dir: /tmp/TestVolumeLoadBalancingignores_remote_volumes_in_count4098643620/001/dir0 with 0 volumes max 100 (disk ID: 0)
I0616 11:57:41.465094 disk_location.go:263 Store started on dir: /tmp/TestVolumeLoadBalancingignores_remote_volumes_in_count4098643620/001/dir0 with 0 ec shards (disk ID: 0)
I0616 11:57:41.491525 disk_location.go:260 Store started on dir: /tmp/TestVolumeLoadBalancingignores_remote_volumes_in_count4098643620/001/dir1 with 0 volumes max 100 (disk ID: 1)
I0616 11:57:41.491538 disk_location.go:263 Store started on dir: /tmp/TestVolumeLoadBalancingignores_remote_volumes_in_count4098643620/001/dir1 with 0 ec shards (disk ID: 1)
I0616 11:57:41.531748 disk_location.go:260 Store started on dir: /tmp/TestVolumeLoadBalancingignores_remote_volumes_in_count4098643620/001/dir2 with 0 volumes max 100 (disk ID: 2)
I0616 11:57:41.531781 disk_location.go:263 Store started on dir: /tmp/TestVolumeLoadBalancingignores_remote_volumes_in_count4098643620/001/dir2 with 0 ec shards (disk ID: 2)
I0616 11:57:41.531822 store.go:184 In dir /tmp/TestVolumeLoadBalancingignores_remote_volumes_in_count4098643620/001/dir0 (disk ID 0) adds volume:1 collection: replicaPlacement:000 ttl:
I0616 11:57:41.531941 volume_loading.go:152 checking volume data integrity for volume 1
I0616 11:57:41.531951 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingignores_remote_volumes_in_count4098643620/001/dir0/1.idx to memory
I0616 11:57:41.579990 store.go:189 add volume 1 on disk ID 0
I0616 11:57:41.580019 store.go:184 In dir /tmp/TestVolumeLoadBalancingignores_remote_volumes_in_count4098643620/001/dir0 (disk ID 0) adds volume:2 collection: replicaPlacement:000 ttl:
I0616 11:57:41.580168 volume_loading.go:152 checking volume data integrity for volume 2
I0616 11:57:41.580177 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingignores_remote_volumes_in_count4098643620/001/dir0/2.idx to memory
I0616 11:57:41.688908 store.go:189 add volume 2 on disk ID 0
I0616 11:57:41.688919 store.go:184 In dir /tmp/TestVolumeLoadBalancingignores_remote_volumes_in_count4098643620/001/dir2 (disk ID 2) adds volume:3 collection: replicaPlacement:000 ttl:
I0616 11:57:41.689021 volume_loading.go:152 checking volume data integrity for volume 3
I0616 11:57:41.689029 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingignores_remote_volumes_in_count4098643620/001/dir2/3.idx to memory
I0616 11:57:41.852659 store.go:189 add volume 3 on disk ID 2
=== RUN   TestVolumeLoadBalancing/balances_when_some_locations_have_remote_volumes
I0616 11:57:41.998448 disk_location.go:260 Store started on dir: /tmp/TestVolumeLoadBalancingbalances_when_some_locations_have_remote3812755803/001/dir0 with 0 volumes max 100 (disk ID: 0)
I0616 11:57:41.998482 disk_location.go:263 Store started on dir: /tmp/TestVolumeLoadBalancingbalances_when_some_locations_have_remote3812755803/001/dir0 with 0 ec shards (disk ID: 0)
I0616 11:57:42.144053 disk_location.go:260 Store started on dir: /tmp/TestVolumeLoadBalancingbalances_when_some_locations_have_remote3812755803/001/dir1 with 0 volumes max 100 (disk ID: 1)
I0616 11:57:42.144072 disk_location.go:263 Store started on dir: /tmp/TestVolumeLoadBalancingbalances_when_some_locations_have_remote3812755803/001/dir1 with 0 ec shards (disk ID: 1)
I0616 11:57:42.329145 disk_location.go:260 Store started on dir: /tmp/TestVolumeLoadBalancingbalances_when_some_locations_have_remote3812755803/001/dir2 with 0 volumes max 100 (disk ID: 2)
I0616 11:57:42.329181 disk_location.go:263 Store started on dir: /tmp/TestVolumeLoadBalancingbalances_when_some_locations_have_remote3812755803/001/dir2 with 0 ec shards (disk ID: 2)
I0616 11:57:42.329210 store.go:184 In dir /tmp/TestVolumeLoadBalancingbalances_when_some_locations_have_remote3812755803/001/dir2 (disk ID 2) adds volume:1 collection: replicaPlacement:000 ttl:
I0616 11:57:42.329360 volume_loading.go:152 checking volume data integrity for volume 1
I0616 11:57:42.329372 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingbalances_when_some_locations_have_remote3812755803/001/dir2/1.idx to memory
I0616 11:57:42.472843 store.go:189 add volume 1 on disk ID 2
I0616 11:57:42.472870 store.go:184 In dir /tmp/TestVolumeLoadBalancingbalances_when_some_locations_have_remote3812755803/001/dir0 (disk ID 0) adds volume:2 collection: replicaPlacement:000 ttl:
I0616 11:57:42.473018 volume_loading.go:152 checking volume data integrity for volume 2
I0616 11:57:42.473028 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingbalances_when_some_locations_have_remote3812755803/001/dir0/2.idx to memory
I0616 11:57:42.618362 store.go:189 add volume 2 on disk ID 0
I0616 11:57:42.618381 store.go:184 In dir /tmp/TestVolumeLoadBalancingbalances_when_some_locations_have_remote3812755803/001/dir1 (disk ID 1) adds volume:3 collection: replicaPlacement:000 ttl:
I0616 11:57:42.618527 volume_loading.go:152 checking volume data integrity for volume 3
I0616 11:57:42.618544 volume_loading.go:170 loading memory index /tmp/TestVolumeLoadBalancingbalances_when_some_locations_have_remote3812755803/001/dir1/3.idx to memory
I0616 11:57:42.819724 store.go:189 add volume 3 on disk ID 1
--- PASS: TestVolumeLoadBalancing (1.60s)
    --- PASS: TestVolumeLoadBalancing/even_distribution_across_empty_locations (0.12s)
    --- PASS: TestVolumeLoadBalancing/prefers_location_with_fewer_local_volumes (0.09s)
    --- PASS: TestVolumeLoadBalancing/ignores_remote_volumes_in_count (0.42s)
    --- PASS: TestVolumeLoadBalancing/balances_when_some_locations_have_remote_volumes (0.97s)
=== RUN   TestSpaceCalculation
=== RUN   TestSpaceCalculation/Large_volume,_small_preallocate
    store_vacuum_test.go:47: Volume size: 261993005056 bytes, Space needed: 288193458995 bytes (110.00% of volume size)
=== RUN   TestSpaceCalculation/Small_volume,_large_preallocate
    store_vacuum_test.go:47: Volume size: 104857600 bytes, Space needed: 1181116006 bytes (1126.40% of volume size)
--- PASS: TestSpaceCalculation (0.00s)
    --- PASS: TestSpaceCalculation/Large_volume,_small_preallocate (0.00s)
    --- PASS: TestSpaceCalculation/Small_volume,_large_preallocate (0.00s)
=== RUN   TestBinarySearch
--- PASS: TestBinarySearch (0.00s)
=== RUN   TestSortVolumeInfos
--- PASS: TestSortVolumeInfos (0.00s)
=== RUN   TestReadNeedMetaWithWritesAndUpdates
I0616 11:57:42.820359 volume_loading.go:152 checking volume data integrity for volume 1
I0616 11:57:42.820369 volume_loading.go:170 loading memory index /tmp/TestReadNeedMetaWithWritesAndUpdates3996516974/001/1.idx to memory
--- PASS: TestReadNeedMetaWithWritesAndUpdates (0.18s)
=== RUN   TestReadNeedMetaWithDeletesThenWrites
I0616 11:57:43.002177 volume_loading.go:152 checking volume data integrity for volume 1
I0616 11:57:43.002189 volume_loading.go:170 loading memory index /tmp/TestReadNeedMetaWithDeletesThenWrites3617964386/001/1.idx to memory
--- PASS: TestReadNeedMetaWithDeletesThenWrites (0.24s)
=== RUN   TestMakeDiff
--- PASS: TestMakeDiff (0.00s)
=== RUN   TestMemIndexCompaction
I0616 11:57:43.238782 volume_loading.go:152 checking volume data integrity for volume 1
I0616 11:57:43.238799 volume_loading.go:170 loading memory index /tmp/TestMemIndexCompaction3156067700/001/1.idx to memory
I0616 11:57:43.806557 needle_map_memory.go:111 loading idx from offset 0 for file: /tmp/TestMemIndexCompaction3156067700/001/1.cpx
    volume_vacuum_test.go:92: compaction speed: 12140820.05 bytes/s
I0616 11:57:43.930740 volume_vacuum.go:114 Committing volume 1 vacuuming...
I0616 11:58:53.065446 needle_map_memory.go:111 loading idx from offset 9734 for file: /tmp/TestMemIndexCompaction3156067700/001/1.cpx
I0616 11:58:53.078139 volume_loading.go:111 readSuperBlock volume 1 version 3
I0616 11:58:53.078165 volume_loading.go:152 checking volume data integrity for volume 1
I0616 11:58:53.078181 volume_loading.go:167 updating memory compact index /tmp/TestMemIndexCompaction3156067700/001/1.idx 
    volume_vacuum_test.go:110: realRecordCount:29734, v.FileCount():29734 mm.DeletedCount():9840
I0616 11:58:53.080070 volume_loading.go:111 readSuperBlock volume 1 version 3
I0616 11:58:53.080082 volume_loading.go:152 checking volume data integrity for volume 1
I0616 11:58:53.080092 volume_loading.go:170 loading memory index /tmp/TestMemIndexCompaction3156067700/001/1.idx to memory
--- PASS: TestMemIndexCompaction (69.87s)
=== RUN   TestLDBIndexCompaction
I0616 11:58:53.110243 volume_loading.go:152 checking volume data integrity for volume 1
I0616 11:58:53.110257 volume_loading.go:185 loading leveldb index /tmp/TestLDBIndexCompaction2810842225/001/1.ldb
I0616 11:58:53.117489 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestLDBIndexCompaction2810842225/001/1.ldb, watermark 0, num of entries:0
I0616 11:58:53.127411 needle_map_leveldb.go:66 Loading /tmp/TestLDBIndexCompaction2810842225/001/1.ldb... , watermark: 0
I0616 11:58:53.298824 needle_map_leveldb.go:338 loading idx to leveldb from offset 0 for file: /tmp/TestLDBIndexCompaction2810842225/001/1.cpx
    volume_vacuum_test.go:92: compaction speed: 45239954.15 bytes/s
I0616 11:58:53.593459 volume_vacuum.go:114 Committing volume 1 vacuuming...
I0616 12:00:05.669783 needle_map_leveldb.go:338 loading idx to leveldb from offset 9709 for file: /tmp/TestLDBIndexCompaction2810842225/001/1.cpx
I0616 12:00:05.758832 volume_loading.go:111 readSuperBlock volume 1 version 3
I0616 12:00:05.758857 volume_loading.go:152 checking volume data integrity for volume 1
I0616 12:00:05.758871 volume_loading.go:182 updating leveldb index /tmp/TestLDBIndexCompaction2810842225/001/1.ldb
    volume_vacuum_test.go:105: watermark from levelDB: 20000, realWatermark: 20000, nm.recordCount: 29709, realRecordCount:29709, fileCount=29709, deletedcount:9695
I0616 12:00:05.784062 volume_loading.go:111 readSuperBlock volume 1 version 3
I0616 12:00:05.784080 volume_loading.go:152 checking volume data integrity for volume 1
I0616 12:00:05.784095 volume_loading.go:185 loading leveldb index /tmp/TestLDBIndexCompaction2810842225/001/1.ldb
I0616 12:00:05.792335 needle_map_leveldb.go:66 Loading /tmp/TestLDBIndexCompaction2810842225/001/1.ldb... , watermark: 20000
--- PASS: TestLDBIndexCompaction (72.75s)
=== RUN   TestSearchVolumesWithDeletedNeedles
I0616 12:00:05.856343 volume_loading.go:152 checking volume data integrity for volume 1
I0616 12:00:05.856357 volume_loading.go:170 loading memory index /tmp/TestSearchVolumesWithDeletedNeedles803360725/001/1.idx to memory
offset: 8256, isLast: false
--- PASS: TestSearchVolumesWithDeletedNeedles (0.00s)
=== RUN   TestDestroyEmptyVolumeWithOnlyEmpty
I0616 12:00:05.859266 volume_loading.go:152 checking volume data integrity for volume 1
I0616 12:00:05.859275 volume_loading.go:170 loading memory index /tmp/TestDestroyEmptyVolumeWithOnlyEmpty2032549378/001/1.idx to memory
--- PASS: TestDestroyEmptyVolumeWithOnlyEmpty (0.00s)
=== RUN   TestDestroyEmptyVolumeWithoutOnlyEmpty
I0616 12:00:05.863570 volume_loading.go:152 checking volume data integrity for volume 1
I0616 12:00:05.863580 volume_loading.go:170 loading memory index /tmp/TestDestroyEmptyVolumeWithoutOnlyEmpty934597181/001/1.idx to memory
--- PASS: TestDestroyEmptyVolumeWithoutOnlyEmpty (0.00s)
=== RUN   TestDestroyNonemptyVolumeWithOnlyEmpty
I0616 12:00:05.867783 volume_loading.go:152 checking volume data integrity for volume 1
I0616 12:00:05.867791 volume_loading.go:170 loading memory index /tmp/TestDestroyNonemptyVolumeWithOnlyEmpty4162604968/001/1.idx to memory
--- PASS: TestDestroyNonemptyVolumeWithOnlyEmpty (0.00s)
=== RUN   TestDestroyNonemptyVolumeWithoutOnlyEmpty
I0616 12:00:05.869998 volume_loading.go:152 checking volume data integrity for volume 1
I0616 12:00:05.870007 volume_loading.go:170 loading memory index /tmp/TestDestroyNonemptyVolumeWithoutOnlyEmpty3927382716/001/1.idx to memory
--- PASS: TestDestroyNonemptyVolumeWithoutOnlyEmpty (0.01s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage	146.104s
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend	[no test files]
=== RUN   TestMemoryMapMaxSizeReadWrite
--- PASS: TestMemoryMapMaxSizeReadWrite (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage/backend/memory_map	0.003s
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend/rclone_backend	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend/s3_backend	[no test files]
=== RUN   TestShardSizeHelpers
--- PASS: TestShardSizeHelpers (0.00s)
=== RUN   TestShardBitsHelpers
--- PASS: TestShardBitsHelpers (0.00s)
=== RUN   TestEncodingDecoding
I0616 11:57:39.797155 ec_encoder.go:82 encodeDatFile 1.dat size:2590912
--- PASS: TestEncodingDecoding (0.09s)
=== RUN   TestLocateData
[{BlockIndex:5 InnerBlockOffset:100 Size:9900 IsLargeBlock:true LargeBlockRowsCount:1} {BlockIndex:6 InnerBlockOffset:0 Size:10000 IsLargeBlock:true LargeBlockRowsCount:1} {BlockIndex:7 InnerBlockOffset:0 Size:10000 IsLargeBlock:true LargeBlockRowsCount:1} {BlockIndex:8 InnerBlockOffset:0 Size:10000 IsLargeBlock:true LargeBlockRowsCount:1} {BlockIndex:9 InnerBlockOffset:0 Size:10000 IsLargeBlock:true LargeBlockRowsCount:1} {BlockIndex:0 InnerBlockOffset:0 Size:1 IsLargeBlock:false LargeBlockRowsCount:1}]
--- PASS: TestLocateData (0.00s)
=== RUN   TestLocateData2
--- PASS: TestLocateData2 (0.00s)
=== RUN   TestLocateData3
{BlockIndex:8876 InnerBlockOffset:912752 Size:112568 IsLargeBlock:false LargeBlockRowsCount:2}
--- PASS: TestLocateData3 (0.00s)
=== RUN   TestPositioning
offset: 31300679656 size: 1167
offset: 11513014944 size: 66044
offset: 26311863528 size: 26823
interval: {BlockIndex:14852 InnerBlockOffset:994536 Size:26856 IsLargeBlock:false LargeBlockRowsCount:1}, shardId: 2, shardOffset: 2631871720
--- PASS: TestPositioning (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage/erasure_coding	0.109s
?   	github.com/seaweedfs/seaweedfs/weed/storage/idx	[no test files]
=== RUN   TestParseFileIdFromString
--- PASS: TestParseFileIdFromString (0.00s)
=== RUN   TestParseKeyHash
--- PASS: TestParseKeyHash (0.00s)
=== RUN   TestAppend
--- PASS: TestAppend (0.06s)
=== RUN   TestWriteNeedle_CompatibilityWithLegacy
=== RUN   TestWriteNeedle_CompatibilityWithLegacy/Version1
=== RUN   TestWriteNeedle_CompatibilityWithLegacy/Version2
=== RUN   TestWriteNeedle_CompatibilityWithLegacy/Version3
--- PASS: TestWriteNeedle_CompatibilityWithLegacy (0.00s)
    --- PASS: TestWriteNeedle_CompatibilityWithLegacy/Version1 (0.00s)
    --- PASS: TestWriteNeedle_CompatibilityWithLegacy/Version2 (0.00s)
    --- PASS: TestWriteNeedle_CompatibilityWithLegacy/Version3 (0.00s)
=== RUN   TestNewVolumeId
    volume_id_test.go:11: a is not legal volume id, strconv.ParseUint: parsing "a": invalid syntax
--- PASS: TestNewVolumeId (0.00s)
=== RUN   TestVolumeId_String
--- PASS: TestVolumeId_String (0.00s)
=== RUN   TestVolumeId_Next
--- PASS: TestVolumeId_Next (0.00s)
=== RUN   TestTTLReadWrite
--- PASS: TestTTLReadWrite (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage/needle	0.070s
=== RUN   TestMemoryUsage
Each 13.42 Bytes	Alloc = 21 MiB	TotalAlloc = 47 MiB	Sys = 52 MiB	NumGC = 8	CompactMap = 1539351/1749659 elements on 2198 segments, 87.98% efficiency	Taken = 1.475668968s
Each 12.95 Bytes	Alloc = 41 MiB	TotalAlloc = 92 MiB	Sys = 80 MiB	NumGC = 10	CompactMap = 1539351/1749659 elements on 2198 segments, 87.98% efficiency	Taken = 1.15653405s
Each 12.80 Bytes	Alloc = 62 MiB	TotalAlloc = 138 MiB	Sys = 105 MiB	NumGC = 12	CompactMap = 1539351/1749659 elements on 2198 segments, 87.98% efficiency	Taken = 1.137878773s
Each 12.72 Bytes	Alloc = 82 MiB	TotalAlloc = 184 MiB	Sys = 129 MiB	NumGC = 13	CompactMap = 1539351/1749659 elements on 2198 segments, 87.98% efficiency	Taken = 1.155602691s
Each 12.67 Bytes	Alloc = 102 MiB	TotalAlloc = 229 MiB	Sys = 153 MiB	NumGC = 14	CompactMap = 1539351/1749659 elements on 2198 segments, 87.98% efficiency	Taken = 1.165669483s
Each 12.64 Bytes	Alloc = 122 MiB	TotalAlloc = 275 MiB	Sys = 169 MiB	NumGC = 15	CompactMap = 1539351/1749659 elements on 2198 segments, 87.98% efficiency	Taken = 1.152391136s
Each 12.62 Bytes	Alloc = 142 MiB	TotalAlloc = 320 MiB	Sys = 194 MiB	NumGC = 16	CompactMap = 1539351/1749659 elements on 2198 segments, 87.98% efficiency	Taken = 1.123363828s
Each 12.60 Bytes	Alloc = 163 MiB	TotalAlloc = 366 MiB	Sys = 210 MiB	NumGC = 17	CompactMap = 1539351/1749659 elements on 2198 segments, 87.98% efficiency	Taken = 1.140002679s
Each 12.59 Bytes	Alloc = 183 MiB	TotalAlloc = 411 MiB	Sys = 234 MiB	NumGC = 18	CompactMap = 1539351/1749659 elements on 2198 segments, 87.98% efficiency	Taken = 1.143231019s
Each 12.58 Bytes	Alloc = 203 MiB	TotalAlloc = 457 MiB	Sys = 250 MiB	NumGC = 19	CompactMap = 1539351/1749659 elements on 2198 segments, 87.98% efficiency	Taken = 1.101973711s
--- PASS: TestMemoryUsage (11.75s)
=== RUN   TestSegmentBsearchKey
=== RUN   TestSegmentBsearchKey/empty_segment
=== RUN   TestSegmentBsearchKey/new_key,_insert_at_beggining
=== RUN   TestSegmentBsearchKey/new_key,_insert_at_end
=== RUN   TestSegmentBsearchKey/new_key,_insert_second
=== RUN   TestSegmentBsearchKey/new_key,_insert_in_middle
=== RUN   TestSegmentBsearchKey/key_#1
=== RUN   TestSegmentBsearchKey/key_#2
=== RUN   TestSegmentBsearchKey/key_#3
=== RUN   TestSegmentBsearchKey/key_#4
=== RUN   TestSegmentBsearchKey/key_#5
--- PASS: TestSegmentBsearchKey (0.00s)
    --- PASS: TestSegmentBsearchKey/empty_segment (0.00s)
    --- PASS: TestSegmentBsearchKey/new_key,_insert_at_beggining (0.00s)
    --- PASS: TestSegmentBsearchKey/new_key,_insert_at_end (0.00s)
    --- PASS: TestSegmentBsearchKey/new_key,_insert_second (0.00s)
    --- PASS: TestSegmentBsearchKey/new_key,_insert_in_middle (0.00s)
    --- PASS: TestSegmentBsearchKey/key_#1 (0.00s)
    --- PASS: TestSegmentBsearchKey/key_#2 (0.00s)
    --- PASS: TestSegmentBsearchKey/key_#3 (0.00s)
    --- PASS: TestSegmentBsearchKey/key_#4 (0.00s)
    --- PASS: TestSegmentBsearchKey/key_#5 (0.00s)
=== RUN   TestSegmentSet
--- PASS: TestSegmentSet (0.00s)
=== RUN   TestSegmentSetOrdering
--- PASS: TestSegmentSetOrdering (0.13s)
=== RUN   TestSegmentGet
=== RUN   TestSegmentGet/invalid_key
=== RUN   TestSegmentGet/key_#1
=== RUN   TestSegmentGet/key_#2
=== RUN   TestSegmentGet/key_#3
--- PASS: TestSegmentGet (0.00s)
    --- PASS: TestSegmentGet/invalid_key (0.00s)
    --- PASS: TestSegmentGet/key_#1 (0.00s)
    --- PASS: TestSegmentGet/key_#2 (0.00s)
    --- PASS: TestSegmentGet/key_#3 (0.00s)
=== RUN   TestSegmentDelete
--- PASS: TestSegmentDelete (0.00s)
=== RUN   TestSegmentForKey
=== RUN   TestSegmentForKey/first_segment
=== RUN   TestSegmentForKey/second_segment,_gapless
=== RUN   TestSegmentForKey/gapped_segment
--- PASS: TestSegmentForKey (0.00s)
    --- PASS: TestSegmentForKey/first_segment (0.00s)
    --- PASS: TestSegmentForKey/second_segment,_gapless (0.00s)
    --- PASS: TestSegmentForKey/gapped_segment (0.00s)
=== RUN   TestAscendingVisit
--- PASS: TestAscendingVisit (0.00s)
=== RUN   TestRandomInsert
--- PASS: TestRandomInsert (1.18s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage/needle_map	13.087s
=== RUN   TestMemoryUsage
Each 15.61 Bytes	Alloc = 25 MiB	TotalAlloc = 115 MiB	Sys = 52 MiB	NumGC = 16	Taken = 1.473648694s
Each 15.14 Bytes	Alloc = 48 MiB	TotalAlloc = 228 MiB	Sys = 85 MiB	NumGC = 20	Taken = 1.135746177s
Each 14.99 Bytes	Alloc = 72 MiB	TotalAlloc = 342 MiB	Sys = 129 MiB	NumGC = 23	Taken = 1.117911741s
Each 14.91 Bytes	Alloc = 96 MiB	TotalAlloc = 455 MiB	Sys = 161 MiB	NumGC = 25	Taken = 1.125119413s
Each 14.86 Bytes	Alloc = 120 MiB	TotalAlloc = 569 MiB	Sys = 205 MiB	NumGC = 27	Taken = 1.1338143s
Each 14.83 Bytes	Alloc = 143 MiB	TotalAlloc = 682 MiB	Sys = 249 MiB	NumGC = 28	Taken = 1.124853107s
Each 14.81 Bytes	Alloc = 167 MiB	TotalAlloc = 796 MiB	Sys = 277 MiB	NumGC = 29	Taken = 1.102578829s
Each 14.79 Bytes	Alloc = 191 MiB	TotalAlloc = 909 MiB	Sys = 301 MiB	NumGC = 30	Taken = 1.113676026s
Each 14.78 Bytes	Alloc = 215 MiB	TotalAlloc = 1022 MiB	Sys = 326 MiB	NumGC = 31	Taken = 1.135167031s
Each 14.77 Bytes	Alloc = 238 MiB	TotalAlloc = 1136 MiB	Sys = 350 MiB	NumGC = 32	Taken = 1.116875406s
--- PASS: TestMemoryUsage (11.58s)
=== RUN   TestSnowflakeSequencer
I0616 11:57:51.370314 snowflake_sequencer.go:21 use snowflake seq id generator, nodeid:for_test hex_of_nodeid: 1
--- PASS: TestSnowflakeSequencer (0.05s)
=== RUN   TestOverflow2
needle key: 150073
needle key: 150076
needle key: 150088
needle key: 150089
needle key: 150124
needle key: 150137
needle key: 150145
needle key: 150147
needle key: 150158
needle key: 150162
--- PASS: TestOverflow2 (0.00s)
=== RUN   TestIssue52
key 10002 ok true 10002, 1250, 10002
key 10002 ok true 10002, 1250, 10002
--- PASS: TestIssue52 (0.00s)
=== RUN   TestCompactMap
--- PASS: TestCompactMap (0.08s)
=== RUN   TestOverflow
overflow[ 0 ]: 1
overflow[ 1 ]: 2
overflow[ 2 ]: 3
overflow[ 3 ]: 4
overflow[ 4 ]: 5

overflow[ 0 ]: 1 size -12
overflow[ 1 ]: 2 size 12
overflow[ 2 ]: 3 size 24
overflow[ 3 ]: 4 size -12
overflow[ 4 ]: 5 size 12

overflow[ 0 ]: 1
overflow[ 1 ]: 2
overflow[ 2 ]: 3
overflow[ 3 ]: 4
overflow[ 4 ]: 5

overflow[ 0 ]: 1
overflow[ 1 ]: 2
overflow[ 2 ]: 3
overflow[ 3 ]: 4
overflow[ 4 ]: 5

--- PASS: TestOverflow (0.00s)
=== RUN   TestCompactSection_Get
    compact_map_test.go:204: 1574318345753513987
    compact_map_test.go:215: 1574318350048481283
--- PASS: TestCompactSection_Get (0.90s)
=== RUN   TestCompactSection_PutOutOfOrderItemBeyondLookBackWindow
--- PASS: TestCompactSection_PutOutOfOrderItemBeyondLookBackWindow (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage/needle_map/old	12.641s
=== RUN   TestReplicaPlacementSerialDeserial
--- PASS: TestReplicaPlacementSerialDeserial (0.00s)
=== RUN   TestReplicaPlacementHasReplication
=== RUN   TestReplicaPlacementHasReplication/empty_replica_placement
=== RUN   TestReplicaPlacementHasReplication/no_replication
=== RUN   TestReplicaPlacementHasReplication/same_rack_replication
=== RUN   TestReplicaPlacementHasReplication/diff_rack_replication
=== RUN   TestReplicaPlacementHasReplication/DC_replication
=== RUN   TestReplicaPlacementHasReplication/full_replication
--- PASS: TestReplicaPlacementHasReplication (0.00s)
    --- PASS: TestReplicaPlacementHasReplication/empty_replica_placement (0.00s)
    --- PASS: TestReplicaPlacementHasReplication/no_replication (0.00s)
    --- PASS: TestReplicaPlacementHasReplication/same_rack_replication (0.00s)
    --- PASS: TestReplicaPlacementHasReplication/diff_rack_replication (0.00s)
    --- PASS: TestReplicaPlacementHasReplication/DC_replication (0.00s)
    --- PASS: TestReplicaPlacementHasReplication/full_replication (0.00s)
=== RUN   TestSuperBlockReadWrite
--- PASS: TestSuperBlockReadWrite (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage/super_block	0.011s
?   	github.com/seaweedfs/seaweedfs/weed/storage/types	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/storage/volume_info	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/telemetry	[no test files]
=== RUN   TestCapacityReservations_BasicOperations
--- PASS: TestCapacityReservations_BasicOperations (0.00s)
=== RUN   TestCapacityReservations_ExpiredCleaning
--- PASS: TestCapacityReservations_ExpiredCleaning (0.00s)
=== RUN   TestCapacityReservations_DifferentDiskTypes
--- PASS: TestCapacityReservations_DifferentDiskTypes (0.00s)
=== RUN   TestNodeImpl_ReservationMethods
--- PASS: TestNodeImpl_ReservationMethods (0.00s)
=== RUN   TestNodeImpl_ConcurrentReservations
    capacity_reservation_test.go:181: goroutine 9: Successfully reserved -1-1781611059800669512-7435399855188089385
    capacity_reservation_test.go:181: goroutine 1: Successfully reserved -1-1781611059800691431-1684507244440150661
    capacity_reservation_test.go:181: goroutine 6: Successfully reserved -1-1781611059800720718-2964166776212979215
    capacity_reservation_test.go:181: goroutine 4: Successfully reserved -1-1781611059800723382-2399925863392282704
    capacity_reservation_test.go:181: goroutine 3: Successfully reserved -1-1781611059800706341-497084121200018523
    capacity_reservation_test.go:181: goroutine 8: Successfully reserved -1-1781611059800727220-2263093858001095623
    capacity_reservation_test.go:181: goroutine 2: Successfully reserved -1-1781611059800832453-2209541686543320598
    capacity_reservation_test.go:181: goroutine 7: Successfully reserved -1-1781611059800841359-7303448300904084526
    capacity_reservation_test.go:181: goroutine 5: Successfully reserved -1-1781611059800849898-8654841315795179440
    capacity_reservation_test.go:181: goroutine 0: Successfully reserved -1-1781611059800860719-2969317907033366213
--- PASS: TestNodeImpl_ConcurrentReservations (0.00s)
=== RUN   TestRaceConditionStress
I0616 11:57:39.800905 node.go:427 weedfs adds child dc1
I0616 11:57:39.801278 node.go:427 weedfs:dc1 adds child rack1
I0616 11:57:39.801291 node.go:427 weedfs:dc1:rack1 adds child server1
I0616 11:57:39.801296 node.go:427 weedfs:dc1:rack1:server1 adds child 
I0616 11:57:39.801299 node.go:427 weedfs:dc1:rack1 adds child server2
I0616 11:57:39.801301 node.go:427 weedfs:dc1:rack1:server2 adds child 
I0616 11:57:39.801303 node.go:427 weedfs:dc1:rack1 adds child server3
I0616 11:57:39.801305 node.go:427 weedfs:dc1:rack1:server3 adds child 
    race_condition_stress_test.go:106: Test completed in 57.933134ms
    race_condition_stress_test.go:107: Successful allocations: 50
    race_condition_stress_test.go:108: Failed allocations: 0
    race_condition_stress_test.go:109: Total volumes created: 50
    race_condition_stress_test.go:118: Server 1: 17 volumes (max: 40)
    race_condition_stress_test.go:118: Server 2: 17 volumes (max: 40)
    race_condition_stress_test.go:118: Server 3: 16 volumes (max: 40)
    race_condition_stress_test.go:146: Race condition test passed: Capacity limits respected with 50 concurrent requests
--- PASS: TestRaceConditionStress (0.06s)
=== RUN   TestCapacityJudgmentAccuracy
I0616 11:57:39.859394 node.go:427 weedfs adds child dc1
I0616 11:57:39.859405 node.go:427 weedfs:dc1 adds child rack1
I0616 11:57:39.859409 node.go:427 weedfs:dc1:rack1 adds child server1
I0616 11:57:39.859415 node.go:427 weedfs:dc1:rack1:server1 adds child 
    race_condition_stress_test.go:224: Step 0: Volume count after update: 1
    race_condition_stress_test.go:224: Step 1: Volume count after update: 2
    race_condition_stress_test.go:224: Step 2: Volume count after update: 3
    race_condition_stress_test.go:224: Step 3: Volume count after update: 4
    race_condition_stress_test.go:224: Step 4: Volume count after update: 5
    race_condition_stress_test.go:224: Step 5: Volume count after update: 6
    race_condition_stress_test.go:224: Step 6: Volume count after update: 7
    race_condition_stress_test.go:224: Step 7: Volume count after update: 8
    race_condition_stress_test.go:224: Step 8: Volume count after update: 9
    race_condition_stress_test.go:224: Step 9: Volume count after update: 10
I0616 11:57:39.859530 node.go:192 weedfs failed to pick 1 from  0 node candidates
    race_condition_stress_test.go:250: Capacity judgment accuracy test passed
--- PASS: TestCapacityJudgmentAccuracy (0.00s)
=== RUN   TestReservationSystemPerformance
I0616 11:57:39.859551 node.go:427 weedfs adds child dc1
I0616 11:57:39.859554 node.go:427 weedfs:dc1 adds child rack1
I0616 11:57:39.859559 node.go:427 weedfs:dc1:rack1 adds child server1
I0616 11:57:39.859565 node.go:427 weedfs:dc1:rack1:server1 adds child 
    race_condition_stress_test.go:297: Performance: 1000 reservations in 2.788232ms (avg: 2.788µs per reservation)
    race_condition_stress_test.go:304: Performance test passed: 2.788µs per reservation
--- PASS: TestReservationSystemPerformance (0.00s)
=== RUN   TestRemoveDataCenter
data: map[dc1:map[rack1:map[server111:map[limit:3 volumes:[map[id:1 size:12312] map[id:2 size:12312] map[id:3 size:12312]]] server112:map[limit:10 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]]] rack2:map[server121:map[limit:4 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server122:map[limit:4 volumes:[]] server123:map[limit:5 volumes:[map[id:2 size:12312] map[id:3 size:12312] map[id:4 size:12312]]]]] dc2:map[] dc3:map[rack2:map[server321:map[limit:4 volumes:[map[id:1 size:12312] map[id:3 size:12312] map[id:5 size:12312]]]]]]
I0616 11:57:39.862473 node.go:427 weedfs adds child dc1
I0616 11:57:39.862476 node.go:427 weedfs:dc1 adds child rack1
I0616 11:57:39.862480 node.go:427 weedfs:dc1:rack1 adds child server111
I0616 11:57:39.862486 node.go:427 weedfs:dc1:rack1:server111 adds child 
I0616 11:57:39.862495 node.go:427 weedfs:dc1:rack1 adds child server112
I0616 11:57:39.862498 node.go:427 weedfs:dc1:rack1:server112 adds child 
I0616 11:57:39.862503 node.go:427 weedfs:dc1 adds child rack2
I0616 11:57:39.862507 node.go:427 weedfs:dc1:rack2 adds child server122
I0616 11:57:39.862509 node.go:427 weedfs:dc1:rack2:server122 adds child 
I0616 11:57:39.862512 node.go:427 weedfs:dc1:rack2 adds child server123
I0616 11:57:39.862514 node.go:427 weedfs:dc1:rack2:server123 adds child 
I0616 11:57:39.862519 node.go:427 weedfs:dc1:rack2 adds child server121
I0616 11:57:39.862521 node.go:427 weedfs:dc1:rack2:server121 adds child 
I0616 11:57:39.862525 node.go:427 weedfs adds child dc2
I0616 11:57:39.862531 node.go:427 weedfs adds child dc3
I0616 11:57:39.862533 node.go:427 weedfs:dc3 adds child rack2
I0616 11:57:39.862536 node.go:427 weedfs:dc3:rack2 adds child server321
I0616 11:57:39.862538 node.go:427 weedfs:dc3:rack2:server321 adds child 
I0616 11:57:39.862543 node.go:441 weedfs removes dc2
I0616 11:57:39.862546 node.go:441 weedfs removes dc3
--- PASS: TestRemoveDataCenter (0.00s)
=== RUN   TestHandlingVolumeServerHeartbeat
I0616 11:57:39.862558 node.go:427 weedfs adds child dc1
I0616 11:57:39.862563 node.go:427 weedfs:dc1 adds child rack1
I0616 11:57:39.862566 node.go:427 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0616 11:57:39.862570 node.go:427 weedfs:dc1:rack1:127.0.0.1:34534 adds child 
I0616 11:57:39.862577 node.go:427 weedfs:dc1:rack1:127.0.0.1:34534 adds child ssd
I0616 11:57:39.862614 volume_layout.go:417 Volume 1 becomes writable
I0616 11:57:39.862620 volume_layout.go:417 Volume 2 becomes writable
I0616 11:57:39.862626 volume_layout.go:417 Volume 3 becomes writable
I0616 11:57:39.862628 volume_layout.go:417 Volume 4 becomes writable
I0616 11:57:39.862631 volume_layout.go:417 Volume 5 becomes writable
I0616 11:57:39.862633 volume_layout.go:417 Volume 6 becomes writable
I0616 11:57:39.862635 volume_layout.go:417 Volume 7 becomes writable
I0616 11:57:39.862638 volume_layout.go:417 Volume 8 becomes writable
I0616 11:57:39.862640 volume_layout.go:417 Volume 9 becomes writable
I0616 11:57:39.862642 volume_layout.go:417 Volume 10 becomes writable
I0616 11:57:39.862644 volume_layout.go:417 Volume 11 becomes writable
I0616 11:57:39.862647 volume_layout.go:417 Volume 12 becomes writable
I0616 11:57:39.862649 volume_layout.go:417 Volume 13 becomes writable
I0616 11:57:39.862651 volume_layout.go:417 Volume 14 becomes writable
I0616 11:57:39.862675 data_node.go:82 Deleting volume id: 7
I0616 11:57:39.862680 data_node.go:82 Deleting volume id: 13
I0616 11:57:39.862683 data_node.go:82 Deleting volume id: 14
I0616 11:57:39.862685 data_node.go:82 Deleting volume id: 8
I0616 11:57:39.862687 data_node.go:82 Deleting volume id: 9
I0616 11:57:39.862689 data_node.go:82 Deleting volume id: 10
I0616 11:57:39.862691 data_node.go:82 Deleting volume id: 11
I0616 11:57:39.862694 data_node.go:82 Deleting volume id: 12
I0616 11:57:39.862698 topology.go:330 removing volume info: Id:7, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:57:39.862721 volume_layout.go:229 volume 7 does not have enough copies
I0616 11:57:39.862724 volume_layout.go:237 volume 7 remove from writable
I0616 11:57:39.862726 volume_layout.go:405 Volume 7 becomes unwritable
I0616 11:57:39.862729 topology.go:330 removing volume info: Id:13, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:57:39.862732 volume_layout.go:229 volume 13 does not have enough copies
I0616 11:57:39.862735 volume_layout.go:237 volume 13 remove from writable
I0616 11:57:39.862736 volume_layout.go:405 Volume 13 becomes unwritable
I0616 11:57:39.862738 topology.go:330 removing volume info: Id:14, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:57:39.862741 volume_layout.go:229 volume 14 does not have enough copies
I0616 11:57:39.862743 volume_layout.go:237 volume 14 remove from writable
I0616 11:57:39.862745 volume_layout.go:405 Volume 14 becomes unwritable
I0616 11:57:39.862747 topology.go:330 removing volume info: Id:8, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:57:39.862752 volume_layout.go:229 volume 8 does not have enough copies
I0616 11:57:39.862754 volume_layout.go:237 volume 8 remove from writable
I0616 11:57:39.862756 volume_layout.go:405 Volume 8 becomes unwritable
I0616 11:57:39.862757 topology.go:330 removing volume info: Id:9, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:57:39.862761 volume_layout.go:229 volume 9 does not have enough copies
I0616 11:57:39.862763 volume_layout.go:237 volume 9 remove from writable
I0616 11:57:39.862765 volume_layout.go:405 Volume 9 becomes unwritable
I0616 11:57:39.862767 topology.go:330 removing volume info: Id:10, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:57:39.862770 volume_layout.go:229 volume 10 does not have enough copies
I0616 11:57:39.862772 volume_layout.go:237 volume 10 remove from writable
I0616 11:57:39.862773 volume_layout.go:405 Volume 10 becomes unwritable
I0616 11:57:39.862775 topology.go:330 removing volume info: Id:11, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:57:39.862778 volume_layout.go:229 volume 11 does not have enough copies
I0616 11:57:39.862780 volume_layout.go:237 volume 11 remove from writable
I0616 11:57:39.862781 volume_layout.go:405 Volume 11 becomes unwritable
I0616 11:57:39.862783 topology.go:330 removing volume info: Id:12, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:57:39.862791 volume_layout.go:229 volume 12 does not have enough copies
I0616 11:57:39.862793 volume_layout.go:237 volume 12 remove from writable
I0616 11:57:39.862795 volume_layout.go:405 Volume 12 becomes unwritable
I0616 11:57:39.862802 topology.go:330 removing volume info: Id:3, Size:0, ReplicaPlacement:000, Collection:, Version:3, FileCount:0, DeleteCount:0, DeletedByteCount:0, ReadOnly:false from 127.0.0.1:34534
I0616 11:57:39.862806 volume_layout.go:229 volume 3 does not have enough copies
I0616 11:57:39.862808 volume_layout.go:237 volume 3 remove from writable
I0616 11:57:39.862809 volume_layout.go:405 Volume 3 becomes unwritable
I0616 11:57:39.862814 volume_layout.go:417 Volume 3 becomes writable
after add volume id 6
after add volume id 1
after add volume id 2
after add volume id 3
after add volume id 4
after add volume id 5
after add writable volume id 1
after add writable volume id 2
after add writable volume id 4
after add writable volume id 5
after add writable volume id 6
after add writable volume id 3
I0616 11:57:39.862839 topology_event_handling.go:86 Removing Volume 1 from the dead volume server 127.0.0.1:34534
I0616 11:57:39.862847 volume_layout.go:456 Volume 1 has 0 replica, less than required 1
I0616 11:57:39.862849 volume_layout.go:405 Volume 1 becomes unwritable
I0616 11:57:39.862851 topology_event_handling.go:86 Removing Volume 2 from the dead volume server 127.0.0.1:34534
I0616 11:57:39.862853 volume_layout.go:456 Volume 2 has 0 replica, less than required 1
I0616 11:57:39.862855 volume_layout.go:405 Volume 2 becomes unwritable
I0616 11:57:39.862857 topology_event_handling.go:86 Removing Volume 3 from the dead volume server 127.0.0.1:34534
I0616 11:57:39.862859 volume_layout.go:456 Volume 3 has 0 replica, less than required 1
I0616 11:57:39.862861 volume_layout.go:405 Volume 3 becomes unwritable
I0616 11:57:39.862865 topology_event_handling.go:86 Removing Volume 4 from the dead volume server 127.0.0.1:34534
I0616 11:57:39.862872 volume_layout.go:456 Volume 4 has 0 replica, less than required 1
I0616 11:57:39.862873 volume_layout.go:405 Volume 4 becomes unwritable
I0616 11:57:39.862875 topology_event_handling.go:86 Removing Volume 5 from the dead volume server 127.0.0.1:34534
I0616 11:57:39.862877 volume_layout.go:456 Volume 5 has 0 replica, less than required 1
I0616 11:57:39.862878 volume_layout.go:405 Volume 5 becomes unwritable
I0616 11:57:39.862880 topology_event_handling.go:86 Removing Volume 6 from the dead volume server 127.0.0.1:34534
I0616 11:57:39.862882 volume_layout.go:456 Volume 6 has 0 replica, less than required 1
I0616 11:57:39.862884 volume_layout.go:405 Volume 6 becomes unwritable
I0616 11:57:39.862893 node.go:441 weedfs:dc1:rack1 removes 127.0.0.1:34534
--- PASS: TestHandlingVolumeServerHeartbeat (0.00s)
=== RUN   TestAddRemoveVolume
I0616 11:57:39.862907 node.go:427 weedfs adds child dc1
I0616 11:57:39.862913 node.go:427 weedfs:dc1 adds child rack1
I0616 11:57:39.862915 node.go:427 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0616 11:57:39.862919 node.go:427 weedfs:dc1:rack1:127.0.0.1:34534 adds child 
I0616 11:57:39.862921 node.go:427 weedfs:dc1:rack1:127.0.0.1:34534 adds child ssd
I0616 11:57:39.862930 volume_layout.go:417 Volume 1 becomes writable
I0616 11:57:39.862936 topology.go:330 removing volume info: Id:1, Size:100, ReplicaPlacement:000, Collection:xcollection, Version:3, FileCount:123, DeleteCount:23, DeletedByteCount:45, ReadOnly:false from 127.0.0.1:34534
I0616 11:57:39.862939 volume_layout.go:229 volume 1 does not have enough copies
I0616 11:57:39.862941 volume_layout.go:237 volume 1 remove from writable
I0616 11:57:39.862943 volume_layout.go:405 Volume 1 becomes unwritable
--- PASS: TestAddRemoveVolume (0.00s)
=== RUN   TestListCollections
I0616 11:57:39.862953 node.go:427 weedfs adds child dc1
I0616 11:57:39.862958 node.go:427 weedfs:dc1 adds child rack1
I0616 11:57:39.862961 node.go:427 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0616 11:57:39.862969 volume_layout.go:229 volume 1111 does not have enough copies
I0616 11:57:39.862974 volume_layout.go:237 volume 1111 remove from writable
I0616 11:57:39.862977 volume_layout.go:229 volume 2222 does not have enough copies
I0616 11:57:39.862979 volume_layout.go:237 volume 2222 remove from writable
I0616 11:57:39.862982 volume_layout.go:229 volume 3333 does not have enough copies
I0616 11:57:39.862984 volume_layout.go:237 volume 3333 remove from writable
=== RUN   TestListCollections/no_volume_types_selected
=== RUN   TestListCollections/normal_volumes
=== RUN   TestListCollections/EC_volumes
=== RUN   TestListCollections/normal_+_EC_volumes
--- PASS: TestListCollections (0.00s)
    --- PASS: TestListCollections/no_volume_types_selected (0.00s)
    --- PASS: TestListCollections/normal_volumes (0.00s)
    --- PASS: TestListCollections/EC_volumes (0.00s)
    --- PASS: TestListCollections/normal_+_EC_volumes (0.00s)
=== RUN   TestVolumeGrowth_ReservationBasedAllocation
I0616 11:57:39.863049 node.go:427 weedfs adds child dc1
I0616 11:57:39.863051 node.go:427 weedfs:dc1 adds child rack1
I0616 11:57:39.863053 node.go:427 weedfs:dc1:rack1 adds child server1
I0616 11:57:39.863056 node.go:427 weedfs:dc1:rack1:server1 adds child 
I0616 11:57:39.863080 node.go:192 weedfs failed to pick 1 from  0 node candidates
--- PASS: TestVolumeGrowth_ReservationBasedAllocation (0.00s)
=== RUN   TestVolumeGrowth_ConcurrentAllocationPreventsRaceCondition
I0616 11:57:39.863097 node.go:427 weedfs adds child dc1
I0616 11:57:39.863102 node.go:427 weedfs:dc1 adds child rack1
I0616 11:57:39.863104 node.go:427 weedfs:dc1:rack1 adds child server1
I0616 11:57:39.863107 node.go:427 weedfs:dc1:rack1:server1 adds child 
    volume_growth_reservation_test.go:156: Request 9 succeeded, got reservation
    volume_growth_reservation_test.go:156: Request 0 succeeded, got reservation
    volume_growth_reservation_test.go:156: Request 1 succeeded, got reservation
    volume_growth_reservation_test.go:156: Request 2 succeeded, got reservation
    volume_growth_reservation_test.go:156: Request 3 succeeded, got reservation
I0616 11:57:39.863184 node.go:192 weedfs failed to pick 1 from  0 node candidates
    volume_growth_reservation_test.go:153: Request 4 failed as expected: Not enough data nodes found!
I0616 11:57:39.863191 node.go:192 weedfs failed to pick 1 from  0 node candidates
    volume_growth_reservation_test.go:153: Request 5 failed as expected: Not enough data nodes found!
I0616 11:57:39.863199 node.go:192 weedfs failed to pick 1 from  0 node candidates
    volume_growth_reservation_test.go:153: Request 6 failed as expected: Not enough data nodes found!
I0616 11:57:39.863205 node.go:192 weedfs failed to pick 1 from  0 node candidates
    volume_growth_reservation_test.go:153: Request 7 failed as expected: Not enough data nodes found!
I0616 11:57:39.863212 node.go:192 weedfs failed to pick 1 from  0 node candidates
    volume_growth_reservation_test.go:153: Request 8 failed as expected: Not enough data nodes found!
    volume_growth_reservation_test.go:212: Concurrent test completed: 5 successes, 5 failures
--- PASS: TestVolumeGrowth_ConcurrentAllocationPreventsRaceCondition (0.00s)
=== RUN   TestVolumeGrowth_ReservationFailureRollback
I0616 11:57:39.863239 node.go:427 weedfs adds child dc1
I0616 11:57:39.863245 node.go:427 weedfs:dc1 adds child rack1
I0616 11:57:39.863247 node.go:427 weedfs:dc1:rack1 adds child server1
I0616 11:57:39.863251 node.go:427 weedfs:dc1:rack1 adds child server2
I0616 11:57:39.863254 node.go:427 weedfs:dc1:rack1:server1 adds child 
I0616 11:57:39.863256 node.go:427 weedfs:dc1:rack1:server2 adds child 
--- PASS: TestVolumeGrowth_ReservationFailureRollback (0.00s)
=== RUN   TestVolumeGrowth_ReservationTimeout
--- PASS: TestVolumeGrowth_ReservationTimeout (0.00s)
=== RUN   TestFindEmptySlotsForOneVolume
data: map[dc1:map[rack1:map[server111:map[limit:3 volumes:[map[id:1 size:12312] map[id:2 size:12312] map[id:3 size:12312]]] server112:map[limit:10 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]]] rack2:map[server121:map[limit:4 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server122:map[limit:4 volumes:[]] server123:map[limit:5 volumes:[map[id:2 size:12312] map[id:3 size:12312] map[id:4 size:12312]]]]] dc2:map[] dc3:map[rack2:map[server321:map[limit:4 volumes:[map[id:1 size:12312] map[id:3 size:12312] map[id:5 size:12312]]]]]]
I0616 11:57:39.863335 node.go:427 weedfs adds child dc1
I0616 11:57:39.863337 node.go:427 weedfs:dc1 adds child rack1
I0616 11:57:39.863339 node.go:427 weedfs:dc1:rack1 adds child server112
I0616 11:57:39.863342 node.go:427 weedfs:dc1:rack1:server112 adds child 
I0616 11:57:39.863347 node.go:427 weedfs:dc1:rack1 adds child server111
I0616 11:57:39.863353 node.go:427 weedfs:dc1:rack1:server111 adds child 
I0616 11:57:39.863357 node.go:427 weedfs:dc1 adds child rack2
I0616 11:57:39.863378 node.go:427 weedfs:dc1:rack2 adds child server121
I0616 11:57:39.863383 node.go:427 weedfs:dc1:rack2:server121 adds child 
I0616 11:57:39.863388 node.go:427 weedfs:dc1:rack2 adds child server122
I0616 11:57:39.863393 node.go:427 weedfs:dc1:rack2:server122 adds child 
I0616 11:57:39.863395 node.go:427 weedfs:dc1:rack2 adds child server123
I0616 11:57:39.863399 node.go:427 weedfs:dc1:rack2:server123 adds child 
I0616 11:57:39.863404 node.go:427 weedfs adds child dc2
I0616 11:57:39.863406 node.go:427 weedfs adds child dc3
I0616 11:57:39.863408 node.go:427 weedfs:dc3 adds child rack2
I0616 11:57:39.863410 node.go:427 weedfs:dc3:rack2 adds child server321
I0616 11:57:39.863412 node.go:427 weedfs:dc3:rack2:server321 adds child 
assigned node : server122
assigned node : server121
assigned node : server123
--- PASS: TestFindEmptySlotsForOneVolume (0.00s)
=== RUN   TestReplication011
data: map[dc1:map[rack1:map[server111:map[limit:300 volumes:[map[id:1 size:12312] map[id:2 size:12312] map[id:3 size:12312]]] server112:map[limit:300 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server113:map[limit:300 volumes:[]] server114:map[limit:300 volumes:[]] server115:map[limit:300 volumes:[]] server116:map[limit:300 volumes:[]]] rack2:map[server121:map[limit:300 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server122:map[limit:300 volumes:[]] server123:map[limit:300 volumes:[map[id:2 size:12312] map[id:3 size:12312] map[id:4 size:12312]]] server124:map[limit:300 volumes:[]] server125:map[limit:300 volumes:[]] server126:map[limit:300 volumes:[]]] rack3:map[server131:map[limit:300 volumes:[]] server132:map[limit:300 volumes:[]] server133:map[limit:300 volumes:[]] server134:map[limit:300 volumes:[]] server135:map[limit:300 volumes:[]] server136:map[limit:300 volumes:[]]]]]
I0616 11:57:39.863496 node.go:427 weedfs adds child dc1
I0616 11:57:39.863498 node.go:427 weedfs:dc1 adds child rack1
I0616 11:57:39.863500 node.go:427 weedfs:dc1:rack1 adds child server111
I0616 11:57:39.863502 node.go:427 weedfs:dc1:rack1:server111 adds child 
I0616 11:57:39.863507 node.go:427 weedfs:dc1:rack1 adds child server112
I0616 11:57:39.863509 node.go:427 weedfs:dc1:rack1:server112 adds child 
I0616 11:57:39.863514 node.go:427 weedfs:dc1:rack1 adds child server113
I0616 11:57:39.863516 node.go:427 weedfs:dc1:rack1:server113 adds child 
I0616 11:57:39.863519 node.go:427 weedfs:dc1:rack1 adds child server114
I0616 11:57:39.863521 node.go:427 weedfs:dc1:rack1:server114 adds child 
I0616 11:57:39.863524 node.go:427 weedfs:dc1:rack1 adds child server115
I0616 11:57:39.863526 node.go:427 weedfs:dc1:rack1:server115 adds child 
I0616 11:57:39.863529 node.go:427 weedfs:dc1:rack1 adds child server116
I0616 11:57:39.863535 node.go:427 weedfs:dc1:rack1:server116 adds child 
I0616 11:57:39.863541 node.go:427 weedfs:dc1 adds child rack2
I0616 11:57:39.863543 node.go:427 weedfs:dc1:rack2 adds child server124
I0616 11:57:39.863545 node.go:427 weedfs:dc1:rack2:server124 adds child 
I0616 11:57:39.863547 node.go:427 weedfs:dc1:rack2 adds child server125
I0616 11:57:39.863549 node.go:427 weedfs:dc1:rack2:server125 adds child 
I0616 11:57:39.863552 node.go:427 weedfs:dc1:rack2 adds child server126
I0616 11:57:39.863554 node.go:427 weedfs:dc1:rack2:server126 adds child 
I0616 11:57:39.863557 node.go:427 weedfs:dc1:rack2 adds child server121
I0616 11:57:39.863559 node.go:427 weedfs:dc1:rack2:server121 adds child 
I0616 11:57:39.863564 node.go:427 weedfs:dc1:rack2 adds child server122
I0616 11:57:39.863566 node.go:427 weedfs:dc1:rack2:server122 adds child 
I0616 11:57:39.863568 node.go:427 weedfs:dc1:rack2 adds child server123
I0616 11:57:39.863570 node.go:427 weedfs:dc1:rack2:server123 adds child 
I0616 11:57:39.863575 node.go:427 weedfs:dc1 adds child rack3
I0616 11:57:39.863580 node.go:427 weedfs:dc1:rack3 adds child server136
I0616 11:57:39.863581 node.go:427 weedfs:dc1:rack3:server136 adds child 
I0616 11:57:39.863584 node.go:427 weedfs:dc1:rack3 adds child server131
I0616 11:57:39.863587 node.go:427 weedfs:dc1:rack3:server131 adds child 
I0616 11:57:39.863590 node.go:427 weedfs:dc1:rack3 adds child server132
I0616 11:57:39.863592 node.go:427 weedfs:dc1:rack3:server132 adds child 
I0616 11:57:39.863595 node.go:427 weedfs:dc1:rack3 adds child server133
I0616 11:57:39.863597 node.go:427 weedfs:dc1:rack3:server133 adds child 
I0616 11:57:39.863600 node.go:427 weedfs:dc1:rack3 adds child server134
I0616 11:57:39.863601 node.go:427 weedfs:dc1:rack3:server134 adds child 
I0616 11:57:39.863604 node.go:427 weedfs:dc1:rack3 adds child server135
I0616 11:57:39.863606 node.go:427 weedfs:dc1:rack3:server135 adds child 
assigned node : server134
assigned node : server133
assigned node : server116
--- PASS: TestReplication011 (0.00s)
=== RUN   TestFindEmptySlotsForOneVolumeScheduleByWeight
data: map[dc1:map[rack1:map[server111:map[limit:2000 volumes:[]]]] dc2:map[rack2:map[server222:map[limit:2000 volumes:[]]]] dc3:map[rack3:map[server333:map[limit:1000 volumes:[]]]] dc4:map[rack4:map[server444:map[limit:1000 volumes:[]]]] dc5:map[rack5:map[server555:map[limit:500 volumes:[]]]] dc6:map[rack6:map[server666:map[limit:500 volumes:[]]]]]
I0616 11:57:39.863666 node.go:427 weedfs adds child dc4
I0616 11:57:39.863669 node.go:427 weedfs:dc4 adds child rack4
I0616 11:57:39.863671 node.go:427 weedfs:dc4:rack4 adds child server444
I0616 11:57:39.863673 node.go:427 weedfs:dc4:rack4:server444 adds child 
I0616 11:57:39.863677 node.go:427 weedfs adds child dc5
I0616 11:57:39.863679 node.go:427 weedfs:dc5 adds child rack5
I0616 11:57:39.863681 node.go:427 weedfs:dc5:rack5 adds child server555
I0616 11:57:39.863683 node.go:427 weedfs:dc5:rack5:server555 adds child 
I0616 11:57:39.863686 node.go:427 weedfs adds child dc6
I0616 11:57:39.863688 node.go:427 weedfs:dc6 adds child rack6
I0616 11:57:39.863690 node.go:427 weedfs:dc6:rack6 adds child server666
I0616 11:57:39.863692 node.go:427 weedfs:dc6:rack6:server666 adds child 
I0616 11:57:39.863694 node.go:427 weedfs adds child dc1
I0616 11:57:39.863697 node.go:427 weedfs:dc1 adds child rack1
I0616 11:57:39.863699 node.go:427 weedfs:dc1:rack1 adds child server111
I0616 11:57:39.863700 node.go:427 weedfs:dc1:rack1:server111 adds child 
I0616 11:57:39.863703 node.go:427 weedfs adds child dc2
I0616 11:57:39.863705 node.go:427 weedfs:dc2 adds child rack2
I0616 11:57:39.863707 node.go:427 weedfs:dc2:rack2 adds child server222
I0616 11:57:39.863709 node.go:427 weedfs:dc2:rack2:server222 adds child 
I0616 11:57:39.863713 node.go:427 weedfs adds child dc3
I0616 11:57:39.863715 node.go:427 weedfs:dc3 adds child rack3
I0616 11:57:39.863717 node.go:427 weedfs:dc3:rack3 adds child server333
I0616 11:57:39.863719 node.go:427 weedfs:dc3:rack3:server333 adds child 
server666 : 154
server444 : 304
server222 : 553
server555 : 155
server333 : 291
server111 : 543
--- PASS: TestFindEmptySlotsForOneVolumeScheduleByWeight (0.00s)
=== RUN   TestPickForWrite
data: map[dc1:map[rack1:map[serverdc111:map[ip:127.0.0.1 limit:100 volumes:[map[collection:test id:1 replication:001 size:12312] map[collection:test id:2 replication:100 size:12312] map[collection:test id:4 replication:100 size:12312] map[collection:test id:6 replication:010 size:12312]]]]] dc2:map[rack1:map[serverdc211:map[ip:127.0.0.2 limit:100 volumes:[map[collection:test id:2 replication:100 size:12312] map[collection:test id:3 replication:010 size:12312] map[collection:test id:5 replication:001 size:12312] map[collection:test id:6 replication:010 size:12312]]]]] dc3:map[rack1:map[serverdc311:map[ip:127.0.0.3 limit:100 volumes:[map[collection:test id:1 replication:001 size:12312] map[collection:test id:3 replication:010 size:12312] map[collection:test id:4 replication:100 size:12312] map[collection:test id:5 replication:001 size:12312]]]]]]
I0616 11:57:39.867031 node.go:427 weedfs adds child dc1
I0616 11:57:39.867034 node.go:427 weedfs:dc1 adds child rack1
I0616 11:57:39.867037 node.go:427 weedfs:dc1:rack1 adds child serverdc111
I0616 11:57:39.867042 volume_layout.go:417 Volume 1 becomes writable
I0616 11:57:39.867047 node.go:427 weedfs:dc1:rack1:serverdc111 adds child 
I0616 11:57:39.867052 volume_layout.go:417 Volume 2 becomes writable
I0616 11:57:39.867056 volume_layout.go:417 Volume 4 becomes writable
I0616 11:57:39.867060 volume_layout.go:417 Volume 6 becomes writable
I0616 11:57:39.867063 node.go:427 weedfs adds child dc2
I0616 11:57:39.867067 node.go:427 weedfs:dc2 adds child rack1
I0616 11:57:39.867069 node.go:427 weedfs:dc2:rack1 adds child serverdc211
I0616 11:57:39.867072 volume_layout.go:405 Volume 2 becomes unwritable
I0616 11:57:39.867074 volume_layout.go:417 Volume 2 becomes writable
I0616 11:57:39.867076 node.go:427 weedfs:dc2:rack1:serverdc211 adds child 
I0616 11:57:39.867079 volume_layout.go:417 Volume 3 becomes writable
I0616 11:57:39.867082 volume_layout.go:417 Volume 5 becomes writable
I0616 11:57:39.867085 volume_layout.go:405 Volume 6 becomes unwritable
I0616 11:57:39.867086 volume_layout.go:417 Volume 6 becomes writable
I0616 11:57:39.867089 node.go:427 weedfs adds child dc3
I0616 11:57:39.867096 node.go:427 weedfs:dc3 adds child rack1
I0616 11:57:39.867099 node.go:427 weedfs:dc3:rack1 adds child serverdc311
I0616 11:57:39.867102 volume_layout.go:405 Volume 1 becomes unwritable
I0616 11:57:39.867103 volume_layout.go:417 Volume 1 becomes writable
I0616 11:57:39.867108 node.go:427 weedfs:dc3:rack1:serverdc311 adds child 
I0616 11:57:39.867113 volume_layout.go:405 Volume 3 becomes unwritable
I0616 11:57:39.867115 volume_layout.go:417 Volume 3 becomes writable
I0616 11:57:39.867118 volume_layout.go:405 Volume 4 becomes unwritable
I0616 11:57:39.867121 volume_layout.go:417 Volume 4 becomes writable
I0616 11:57:39.867123 volume_layout.go:405 Volume 5 becomes unwritable
I0616 11:57:39.867125 volume_layout.go:417 Volume 5 becomes writable
--- PASS: TestPickForWrite (0.00s)
=== RUN   TestVolumesBinaryState
=== RUN   TestVolumesBinaryState/mark_true_when_copies_exist
=== RUN   TestVolumesBinaryState/mark_true_when_no_copies_exist
--- PASS: TestVolumesBinaryState (0.00s)
    --- PASS: TestVolumesBinaryState/mark_true_when_copies_exist (0.00s)
    --- PASS: TestVolumesBinaryState/mark_true_when_no_copies_exist (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/topology	0.084s
=== RUN   TestByteParsing
--- PASS: TestByteParsing (0.00s)
=== RUN   TestSameAsJavaImplementation
Now we need to generate a 256-bit key for AES 256 GCM
--- PASS: TestSameAsJavaImplementation (0.00s)
=== RUN   TestToShortFileName
--- PASS: TestToShortFileName (0.00s)
=== RUN   TestHumanReadableIntsMax
--- PASS: TestHumanReadableIntsMax (0.00s)
=== RUN   TestHumanReadableInts
--- PASS: TestHumanReadableInts (0.00s)
=== RUN   TestAsyncPool
-- Executing third function --
-- Executing first function --
-- Executing second function --
-- Third Function finished --
-- Executing fourth function --
-- Second Function finished --
-- Executing fifth function --
-- First Function finished --
1
2
3
-- Fourth fifth finished --
-- Fourth Function finished --
4
5
--- PASS: TestAsyncPool (0.12s)
=== RUN   TestOrderedLock
ActiveLock 1 acquired lock 0
ActiveLock 2 acquired lock 1
ActiveLock 1 released lock 0
ActiveLock 2 released lock 1
ActiveLock 4 acquired lock 0
ActiveLock 5 acquired lock 0
ActiveLock 6 acquired lock 0
ActiveLock 3 acquired lock 0
ActiveLock 9 acquired lock 0
ActiveLock 7 acquired lock 0
ActiveLock 8 acquired lock 0
ActiveLock 9 released lock 0
ActiveLock 6 released lock 0
ActiveLock 3 released lock 0
ActiveLock 8 released lock 0
ActiveLock 4 released lock 0
ActiveLock 7 released lock 0
ActiveLock 5 released lock 0
ActiveLock 10 acquired lock 1
ActiveLock 10 released lock 1
ActiveLock 11 acquired lock 0
ActiveLock 12 acquired lock 0
ActiveLock 13 acquired lock 0
ActiveLock 15 acquired lock 0
ActiveLock 12 released lock 0
ActiveLock 13 released lock 0
ActiveLock 15 released lock 0
ActiveLock 11 released lock 0
ActiveLock 16 acquired lock 1
ActiveLock 16 released lock 1
ActiveLock 17 acquired lock 0
ActiveLock 18 acquired lock 0
ActiveLock 19 acquired lock 0
ActiveLock 18 released lock 0
ActiveLock 20 acquired lock 0
ActiveLock 21 acquired lock 0
ActiveLock 20 released lock 0
ActiveLock 21 released lock 0
ActiveLock 19 released lock 0
ActiveLock 17 released lock 0
ActiveLock 22 acquired lock 1
ActiveLock 22 released lock 1
ActiveLock 23 acquired lock 0
ActiveLock 24 acquired lock 0
ActiveLock 25 acquired lock 0
ActiveLock 23 released lock 0
ActiveLock 25 released lock 0
ActiveLock 24 released lock 0
ActiveLock 27 acquired lock 1
ActiveLock 27 released lock 1
ActiveLock 14 acquired lock 0
ActiveLock 14 released lock 0
ActiveLock 28 acquired lock 0
ActiveLock 29 acquired lock 0
ActiveLock 29 released lock 0
ActiveLock 28 released lock 0
ActiveLock 30 acquired lock 1
ActiveLock 30 released lock 1
ActiveLock 31 acquired lock 0
ActiveLock 32 acquired lock 0
ActiveLock 32 released lock 0
ActiveLock 31 released lock 0
ActiveLock 33 acquired lock 1
ActiveLock 33 released lock 1
ActiveLock 34 acquired lock 0
ActiveLock 34 released lock 0
ActiveLock 35 acquired lock 1
ActiveLock 35 released lock 1
ActiveLock 36 acquired lock 1
ActiveLock 36 released lock 1
ActiveLock 37 acquired lock 0
ActiveLock 38 acquired lock 0
ActiveLock 41 acquired lock 0
ActiveLock 40 acquired lock 0
ActiveLock 44 acquired lock 0
ActiveLock 42 acquired lock 0
ActiveLock 45 acquired lock 0
ActiveLock 39 acquired lock 0
ActiveLock 47 acquired lock 0
ActiveLock 43 acquired lock 0
ActiveLock 43 released lock 0
ActiveLock 42 released lock 0
ActiveLock 48 acquired lock 0
ActiveLock 49 acquired lock 0
ActiveLock 46 acquired lock 0
ActiveLock 46 released lock 0
ActiveLock 44 released lock 0
ActiveLock 37 released lock 0
ActiveLock 41 released lock 0
ActiveLock 47 released lock 0
ActiveLock 39 released lock 0
ActiveLock 49 released lock 0
ActiveLock 38 released lock 0
ActiveLock 45 released lock 0
ActiveLock 48 released lock 0
ActiveLock 40 released lock 0
ActiveLock 26 acquired lock 1
ActiveLock 26 released lock 1
ActiveLock 50 acquired lock 0
ActiveLock 50 released lock 0
--- PASS: TestOrderedLock (0.97s)
=== RUN   TestParseMinFreeSpace
--- PASS: TestParseMinFreeSpace (0.00s)
=== RUN   TestNewQueue
--- PASS: TestNewQueue (0.00s)
=== RUN   TestEnqueueAndConsume
1
2
3
-----------------------
4
5
6
7
-----------------------
--- PASS: TestEnqueueAndConsume (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util	1.096s
?   	github.com/seaweedfs/seaweedfs/weed/util/buffer_pool	[no test files]
=== RUN   TestJobQueue
enqueued 5 items
dequeue 1
dequeue 2
enqueue 6
enqueue 7
dequeue ...
dequeued 3
dequeue ...
dequeued 4
dequeue ...
dequeued 5
dequeue ...
dequeued 6
dequeue ...
dequeued 7
enqueue 8
enqueue 9
enqueue 10
enqueue 11
enqueue 12
dequeued 8
dequeued 9
dequeued 10
dequeued 11
dequeued 12
--- PASS: TestJobQueue (0.00s)
=== RUN   TestJobQueueClose
dequeued 1
dequeued 2
dequeued 3
dequeued 4
dequeued 5
dequeued 6
dequeued 7
--- PASS: TestJobQueueClose (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/buffered_queue	0.002s
?   	github.com/seaweedfs/seaweedfs/weed/util/buffered_writer	[no test files]
=== RUN   TestOnDisk
I0616 11:57:39.919901 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1213236351/001/c0_2_0.ldb, watermark 0, num of entries:0
I0616 11:57:39.951176 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c0_2_0.ldb... , watermark: 0
I0616 11:57:39.982246 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1213236351/001/c0_2_1.ldb, watermark 0, num of entries:0
I0616 11:57:40.012574 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c0_2_1.ldb... , watermark: 0
I0616 11:57:40.027148 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1213236351/001/c1_3_0.ldb, watermark 0, num of entries:0
I0616 11:57:40.037215 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c1_3_0.ldb... , watermark: 0
I0616 11:57:40.044080 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1213236351/001/c1_3_1.ldb, watermark 0, num of entries:0
I0616 11:57:40.051435 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c1_3_1.ldb... , watermark: 0
I0616 11:57:40.062621 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1213236351/001/c1_3_2.ldb, watermark 0, num of entries:0
I0616 11:57:40.072733 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c1_3_2.ldb... , watermark: 0
I0616 11:57:40.083102 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1213236351/001/c2_2_0.ldb, watermark 0, num of entries:0
I0616 11:57:40.112236 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c2_2_0.ldb... , watermark: 0
I0616 11:57:40.145318 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1213236351/001/c2_2_1.ldb, watermark 0, num of entries:0
I0616 11:57:40.182388 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c2_2_1.ldb... , watermark: 0
I0616 11:57:40.236859 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1213236351/001/c0_2_0.ldb, watermark 0, num of entries:0
I0616 11:57:40.289309 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c0_2_0.ldb... , watermark: 0
I0616 11:57:40.343878 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1213236351/001/c0_2_1.ldb, watermark 0, num of entries:0
I0616 11:57:40.402988 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c0_2_1.ldb... , watermark: 0
I0616 11:57:40.504303 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1213236351/001/c0_2_0.ldb, watermark 0, num of entries:0
I0616 11:57:40.533060 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c0_2_0.ldb... , watermark: 0
I0616 11:57:40.569411 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1213236351/001/c0_2_1.ldb, watermark 0, num of entries:0
I0616 11:57:40.583143 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c0_2_1.ldb... , watermark: 0
    chunk_cache_on_disk_test.go:73: cache miss for entry 2 (acceptable with size constraints)
I0616 11:57:40.615429 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c0_2_0.ldb... , watermark: 0
I0616 11:57:40.654271 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c0_2_1.ldb... , watermark: 0
I0616 11:57:40.695384 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c1_3_0.ldb... , watermark: 0
I0616 11:57:40.778304 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c1_3_1.ldb... , watermark: 0
I0616 11:57:40.839675 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c1_3_2.ldb... , watermark: 0
I0616 11:57:40.867162 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c2_2_0.ldb... , watermark: 0
I0616 11:57:40.897742 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1213236351/001/c2_2_1.ldb... , watermark: 0
    chunk_cache_on_disk_test.go:126: cache miss for entry 2 after restart (acceptable)
--- PASS: TestOnDisk (1.10s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/chunk_cache	1.117s
?   	github.com/seaweedfs/seaweedfs/weed/util/constants	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/fla9	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/grace	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/http	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/http/client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/httpdown	[no test files]
=== RUN   TestFlushOffsetGap_ReproduceDataLoss
    log_buffer_flush_gap_test.go:68: Sending 100 messages...
    log_buffer_flush_gap_test.go:79: Forcing flush...
    log_buffer_flush_gap_test.go:32: FLUSH: minOffset=0 maxOffset=99 size=4434 bytes
    log_buffer_flush_gap_test.go:60:   Parsed 100 messages from flush buffer
    log_buffer_flush_gap_test.go:32: FLUSH: minOffset=100 maxOffset=149 size=2352 bytes
    log_buffer_flush_gap_test.go:60:   Parsed 50 messages from flush buffer
    log_buffer_flush_gap_test.go:112: 
        BUFFER STATE AFTER FLUSH:
    log_buffer_flush_gap_test.go:113:   bufferStartOffset: 150
    log_buffer_flush_gap_test.go:114:   currentOffset (HWM): 150
    log_buffer_flush_gap_test.go:115:   pos (bytes in buffer): 0
    log_buffer_flush_gap_test.go:116:   Messages sent: 150 (offsets 0-149)
    log_buffer_flush_gap_test.go:117:   Messages flushed to disk: 150 (offsets 0-149)
    log_buffer_flush_gap_test.go:123: 
        OFFSET CONTINUITY CHECK:
    log_buffer_flush_gap_test.go:124:   Last flushed offset: 149
    log_buffer_flush_gap_test.go:125:   Buffer starts at: 150
    log_buffer_flush_gap_test.go:126:   Gap: 0 offsets
    log_buffer_flush_gap_test.go:138: ✅ PASS: No gap detected - offsets are continuous
    log_buffer_flush_gap_test.go:142: 
        READABILITY CHECK:
    log_buffer_flush_gap_test.go:154:   Offset 0: ✅ (buf=false, err=resumeFromDisk)
    log_buffer_flush_gap_test.go:154:   Offset 10: ✅ (buf=true, err=<nil>)
    log_buffer_flush_gap_test.go:154:   Offset 20: ✅ (buf=true, err=<nil>)
    log_buffer_flush_gap_test.go:154:   Offset 30: ✅ (buf=true, err=<nil>)
    log_buffer_flush_gap_test.go:154:   Offset 40: ✅ (buf=true, err=<nil>)
    log_buffer_flush_gap_test.go:154:   Offset 50: ✅ (buf=true, err=<nil>)
    log_buffer_flush_gap_test.go:154:   Offset 60: ✅ (buf=true, err=<nil>)
    log_buffer_flush_gap_test.go:154:   Offset 70: ✅ (buf=true, err=<nil>)
    log_buffer_flush_gap_test.go:154:   Offset 80: ✅ (buf=true, err=<nil>)
    log_buffer_flush_gap_test.go:154:   Offset 90: ✅ (buf=true, err=<nil>)
    log_buffer_flush_gap_test.go:154:   Offset 100: ✅ (buf=true, err=<nil>)
    log_buffer_flush_gap_test.go:154:   Offset 110: ✅ (buf=true, err=<nil>)
    log_buffer_flush_gap_test.go:154:   Offset 120: ✅ (buf=true, err=<nil>)
    log_buffer_flush_gap_test.go:154:   Offset 130: ✅ (buf=true, err=<nil>)
    log_buffer_flush_gap_test.go:154:   Offset 140: ✅ (buf=true, err=<nil>)
    log_buffer_flush_gap_test.go:172: 
        MESSAGE ACCOUNTING:
    log_buffer_flush_gap_test.go:173:   Expected: 150 messages
    log_buffer_flush_gap_test.go:174:   Flushed to disk: 150
    log_buffer_flush_gap_test.go:175:   In memory buffer: 0 (offset range 150-149)
    log_buffer_flush_gap_test.go:176:   Total accounted for: 150
    log_buffer_flush_gap_test.go:177:   Missing: 0 messages
    log_buffer_flush_gap_test.go:182: ✅ All messages accounted for
--- PASS: TestFlushOffsetGap_ReproduceDataLoss (0.21s)
=== RUN   TestFlushOffsetGap_CheckPrevBuffers
    log_buffer_flush_gap_test.go:206: 
        Batch 0:
    log_buffer_flush_gap_test.go:198: FLUSH #1: minOffset=0 maxOffset=19 size=872 bytes
    log_buffer_flush_gap_test.go:235:   Before flush: offset=20, bufferStartOffset=0
    log_buffer_flush_gap_test.go:236:   After flush: offset=20, bufferStartOffset=20, prevBuffers=32
    log_buffer_flush_gap_test.go:242:     prevBuffer[31]: offsets 0-19, size=872 bytes (NOT FLUSHED!)
    log_buffer_flush_gap_test.go:206: 
        Batch 1:
    log_buffer_flush_gap_test.go:198: FLUSH #2: minOffset=20 maxOffset=39 size=874 bytes
    log_buffer_flush_gap_test.go:235:   Before flush: offset=40, bufferStartOffset=20
    log_buffer_flush_gap_test.go:236:   After flush: offset=40, bufferStartOffset=40, prevBuffers=32
    log_buffer_flush_gap_test.go:242:     prevBuffer[30]: offsets 0-19, size=872 bytes (NOT FLUSHED!)
    log_buffer_flush_gap_test.go:242:     prevBuffer[31]: offsets 20-39, size=874 bytes (NOT FLUSHED!)
    log_buffer_flush_gap_test.go:206: 
        Batch 2:
    log_buffer_flush_gap_test.go:198: FLUSH #3: minOffset=40 maxOffset=59 size=879 bytes
    log_buffer_flush_gap_test.go:235:   Before flush: offset=60, bufferStartOffset=40
    log_buffer_flush_gap_test.go:236:   After flush: offset=60, bufferStartOffset=60, prevBuffers=32
    log_buffer_flush_gap_test.go:242:     prevBuffer[29]: offsets 0-19, size=872 bytes (NOT FLUSHED!)
    log_buffer_flush_gap_test.go:242:     prevBuffer[30]: offsets 20-39, size=874 bytes (NOT FLUSHED!)
    log_buffer_flush_gap_test.go:242:     prevBuffer[31]: offsets 40-59, size=879 bytes (NOT FLUSHED!)
    log_buffer_flush_gap_test.go:206: 
        Batch 3:
    log_buffer_flush_gap_test.go:198: FLUSH #4: minOffset=60 maxOffset=79 size=904 bytes
    log_buffer_flush_gap_test.go:235:   Before flush: offset=80, bufferStartOffset=60
    log_buffer_flush_gap_test.go:236:   After flush: offset=80, bufferStartOffset=80, prevBuffers=32
    log_buffer_flush_gap_test.go:242:     prevBuffer[28]: offsets 0-19, size=872 bytes (NOT FLUSHED!)
    log_buffer_flush_gap_test.go:242:     prevBuffer[29]: offsets 20-39, size=874 bytes (NOT FLUSHED!)
    log_buffer_flush_gap_test.go:242:     prevBuffer[30]: offsets 40-59, size=879 bytes (NOT FLUSHED!)
    log_buffer_flush_gap_test.go:242:     prevBuffer[31]: offsets 60-79, size=904 bytes (NOT FLUSHED!)
    log_buffer_flush_gap_test.go:206: 
        Batch 4:
    log_buffer_flush_gap_test.go:198: FLUSH #5: minOffset=80 maxOffset=99 size=905 bytes
    log_buffer_flush_gap_test.go:235:   Before flush: offset=100, bufferStartOffset=80
    log_buffer_flush_gap_test.go:236:   After flush: offset=100, bufferStartOffset=100, prevBuffers=32
    log_buffer_flush_gap_test.go:242:     prevBuffer[27]: offsets 0-19, size=872 bytes (NOT FLUSHED!)
    log_buffer_flush_gap_test.go:242:     prevBuffer[28]: offsets 20-39, size=874 bytes (NOT FLUSHED!)
    log_buffer_flush_gap_test.go:242:     prevBuffer[29]: offsets 40-59, size=879 bytes (NOT FLUSHED!)
    log_buffer_flush_gap_test.go:242:     prevBuffer[30]: offsets 60-79, size=904 bytes (NOT FLUSHED!)
    log_buffer_flush_gap_test.go:242:     prevBuffer[31]: offsets 80-99, size=905 bytes (NOT FLUSHED!)
--- PASS: TestFlushOffsetGap_CheckPrevBuffers (0.25s)
=== RUN   TestFlushOffsetGap_ConcurrentWriteAndFlush
    log_buffer_flush_gap_test.go:266: FLUSH: offsets 0-102 (4571 bytes)
    log_buffer_flush_gap_test.go:266: FLUSH: offsets 103-199 (4576 bytes)
    log_buffer_flush_gap_test.go:325: 
        FINAL STATE:
    log_buffer_flush_gap_test.go:326:   Total messages sent: 200 (offsets 0-199)
    log_buffer_flush_gap_test.go:327:   Flushed to disk: 200
    log_buffer_flush_gap_test.go:328:   In memory: 0 (offsets 200-199)
    log_buffer_flush_gap_test.go:329:   Total accounted: 200
    log_buffer_flush_gap_test.go:330:   Missing: 0
--- PASS: TestFlushOffsetGap_ConcurrentWriteAndFlush (0.35s)
=== RUN   TestFlushOffsetGap_ProductionScenario
    log_buffer_flush_gap_test.go:383: 
        === ROUND 1: Adding messages 0-49 ===
    log_buffer_flush_gap_test.go:400: Before flush: logBuffer.offset=50, bufferStartOffset=0, nextKafkaOffset=50
    log_buffer_flush_gap_test.go:372: FLUSH: minOffset=0 maxOffset=49, parsed 50 messages
    log_buffer_flush_gap_test.go:412: After flush: logBuffer.offset=50, bufferStartOffset=50
    log_buffer_flush_gap_test.go:416: 
        === ROUND 2: Adding messages 50-99 ===
    log_buffer_flush_gap_test.go:372: FLUSH: minOffset=50 maxOffset=99, parsed 50 messages
    log_buffer_flush_gap_test.go:433: 
        === VERIFICATION ===
    log_buffer_flush_gap_test.go:434: Expected Kafka offsets: 0-99
    log_buffer_flush_gap_test.go:438: Flush #0: minOffset=0, maxOffset=49, messages=50
    log_buffer_flush_gap_test.go:438: Flush #1: minOffset=50, maxOffset=99, messages=50
    log_buffer_flush_gap_test.go:467: 
        ✅ SUCCESS: All 100 Kafka offsets accounted for (0-99)
    log_buffer_flush_gap_test.go:476: 
        Final buffer state:
    log_buffer_flush_gap_test.go:477:   logBuffer.offset: 100
    log_buffer_flush_gap_test.go:478:   bufferStartOffset: 100
    log_buffer_flush_gap_test.go:479:   Expected (nextKafkaOffset): 100
--- PASS: TestFlushOffsetGap_ProductionScenario (0.24s)
=== RUN   TestFlushOffsetGap_ConcurrentReadDuringFlush
    log_buffer_flush_gap_test.go:540: Adding 100 messages...
    log_buffer_flush_gap_test.go:552: Flushing...
    log_buffer_flush_gap_test.go:532: FLUSH: Stored 100 offsets to disk (minOffset=0, maxOffset=99)
    log_buffer_flush_gap_test.go:557: 
        Reading messages from offset 0...
E0616 11:57:41.012269 log_read_stateless.go:169 [StatelessRead] CASE 1: Historical data - offset 0 < bufferStart 100
    log_buffer_flush_gap_test.go:560: Read result: messages=100, nextOffset=100, hwm=100, endOfPartition=true, err=<nil>
    log_buffer_flush_gap_test.go:584: ✅ All 100 offsets can be read after flush
--- PASS: TestFlushOffsetGap_ConcurrentReadDuringFlush (0.16s)
=== RUN   TestFlushOffsetGap_ForceFlushAdvancesBuffer
    log_buffer_flush_gap_test.go:606: 
        === ROUND 0 ===
    log_buffer_flush_gap_test.go:614: Before adding: offset=0, bufferStartOffset=0
    log_buffer_flush_gap_test.go:631: After adding: offset=10, bufferStartOffset=0
    log_buffer_flush_gap_test.go:634: Forcing flush...
    log_buffer_flush_gap_test.go:598: FLUSH: offsets 0-9
    log_buffer_flush_gap_test.go:644: After flush: offset=10, bufferStartOffset=10
    log_buffer_flush_gap_test.go:653: ✅ bufferStartOffset correctly advanced to 10
    log_buffer_flush_gap_test.go:606: 
        === ROUND 1 ===
    log_buffer_flush_gap_test.go:614: Before adding: offset=10, bufferStartOffset=10
    log_buffer_flush_gap_test.go:631: After adding: offset=20, bufferStartOffset=10
    log_buffer_flush_gap_test.go:634: Forcing flush...
    log_buffer_flush_gap_test.go:598: FLUSH: offsets 10-19
    log_buffer_flush_gap_test.go:644: After flush: offset=20, bufferStartOffset=20
    log_buffer_flush_gap_test.go:653: ✅ bufferStartOffset correctly advanced to 20
    log_buffer_flush_gap_test.go:606: 
        === ROUND 2 ===
    log_buffer_flush_gap_test.go:614: Before adding: offset=20, bufferStartOffset=20
    log_buffer_flush_gap_test.go:631: After adding: offset=30, bufferStartOffset=20
    log_buffer_flush_gap_test.go:634: Forcing flush...
    log_buffer_flush_gap_test.go:598: FLUSH: offsets 20-29
    log_buffer_flush_gap_test.go:644: After flush: offset=30, bufferStartOffset=30
    log_buffer_flush_gap_test.go:653: ✅ bufferStartOffset correctly advanced to 30
    log_buffer_flush_gap_test.go:659: 
        === FLUSHED RANGES ===
    log_buffer_flush_gap_test.go:661: Flush #0: offsets 0-9
    log_buffer_flush_gap_test.go:661: Flush #1: offsets 10-19
    log_buffer_flush_gap_test.go:674:   ✅ Continuous with previous flush
    log_buffer_flush_gap_test.go:661: Flush #2: offsets 20-29
    log_buffer_flush_gap_test.go:674:   ✅ Continuous with previous flush
--- PASS: TestFlushOffsetGap_ForceFlushAdvancesBuffer (0.36s)
=== RUN   TestBufferQueryability
    log_buffer_queryability_test.go:102: Buffer queryability test passed - data is immediately readable
--- PASS: TestBufferQueryability (0.02s)
=== RUN   TestMultipleEntriesQueryability
    log_buffer_queryability_test.go:164: Entry 1: Key=test-key-1, Data=test-data-1, Offset=1
    log_buffer_queryability_test.go:164: Entry 2: Key=test-key-2, Data=test-data-2, Offset=2
    log_buffer_queryability_test.go:164: Entry 3: Key=test-key-3, Data=test-data-3, Offset=3
    log_buffer_queryability_test.go:171: Multiple entries queryability test passed - found 3 entries
--- PASS: TestMultipleEntriesQueryability (0.00s)
=== RUN   TestSchemaRegistryScenario
    log_buffer_queryability_test.go:237: Schema registry scenario test passed - schema value preserved: 109 bytes
--- PASS: TestSchemaRegistryScenario (0.00s)
=== RUN   TestTimeBasedFirstReadBeforeEarliest
--- PASS: TestTimeBasedFirstReadBeforeEarliest (0.00s)
=== RUN   TestEarliestTimeExactRead
--- PASS: TestEarliestTimeExactRead (0.00s)
=== RUN   TestNewLogBufferFirstBuffer
processed all messages
E0616 11:57:41.488976 log_read.go:162 LoopProcessLogData: test process log entry 1 ts_ns:1781611061488926840 partition_key_hash:-736260903 data:":}\x8d\x12\xa0\x8a\xa5\x1b5\xbdY\xc3\x1d\xa2lõr\xcbA5\xf6\x97\x1d\x9f\xaa\xb2\x9e\xd25\xe7\xf19']\x192\xb3\xc2\x01\x19\x06;6\x898w\xf4\x11\x18x+*\xa6w\x98\x948\x10Ƨ3\xfb\"\xfaL\xee@\xa6\xb2e\x8dFΝ,\x08ktû3\xaa9g\xe0Bt\x8d?p\xc5\xd3\xdfE!1\xab8\xf1\xf4\x05z\x80\x13\xcb\xd1\x03\xa1\xb3\x91y\xfb2\x16\xfe\xd4\x10'Z\x85\xdaZ\xe3\x88A\x12|\xaeH7$WLB<\xef\x99l\x0c\x16$\xe6\x1cV\x8f\xd9\xcb\"k|ǉt\xbfGA74\x87\xeb\xf6m9\x0b\xbe\xb9\xee\x05\x08\x89MnV\x0c&\x90pf\xc4\xe0\x1bGC\xbe]\xa2W\xbac\xd5\x04C{Eq>\xcc\xcd\xf7\x82ߘa\xaa:\xa6\xa9\xb9\xc2\xe8\xf0_%\x9f\x13۫\xe2)\xc4~ǀF\x16\xfbW\r\x1e\xbfŃ\xb9\x89\xe5jg\xee\xe3\xdch5\x12Ē\x94\xfc\x05֙r>wf\x98\x8b\xfb\x9a\xac\x89\xeb \xa5\x84\xcf\xf6\x1d)\x9b\xcdܝ,\x19\xbdB\x85\xa9\x15z\x94Ǆ!Ğ\xc6%\xc0\xd8\xe9\xf2[\xad\xbcޛ6{±\xa5\x1d\xe8̇\x86\x08\x03Г\xc4\xeey\x1f\x7f\xfd\xbdB\xffYT\xd3\"\xd5I\x85\x96\xe5ߊ\xcc\x05Y\x1e+$\xeb\x03\xdf\xf5\x95\x06%\xe7F\xf2:\x93x9YvT\x9d\xd3^G\nRTtH\xc8g,\xf4?\xa0;\xba\x80I\xc9\xfa,\xfflN\x85\x17$\x8b\xee\xa0N\x8eJ\x1b\x0b1\x16RA\xb7\x1dpo\x10\xf8\xd1W\xa7\xedQV\xb3:i\xe9\xfe?\x1a\xb7\x94ۥ\xf9V2\xaf\"\xa63\xed\x9a+\xf6\xcc\x02\x0f\xb7\xc7Ku\xe5\xadc\"\xe4\xfc\xedi\xe62\xcbMV\x8f\xb5%Aw+e\xac\x19\xf0\xac\x90\xea\x19\xb5w\xff\x98\xe3m\xcd\xdb\x1a\xf6n\x90c\xac\x1ay\x96M\xe3\r\x1d\xd4{\x15e3YŸ.WPч\x11\xef6\xcc7\xf7\xad\xef\x86\xcd\x7f\x9f%)Yi\xaf\xf7墛[t\x9b\x87\x97\xa7\xe8\\\x9b\xe0\x87\xabiβ\xe9Y\x19\xd3d\xba\x1f\xb9B\xe3[\xe0qpN0\x07\xe3mzX\xf0\xe3\xfc\xe6bMn\xa1\x065ʭ\xfe\xec\xfd:\x0ep\xe4\x94\x19\xe1n\xcc\x11\x87\xb6,\xa1\xb1/$\"\xb6Ԥ\x87zm\xc3;H\x0cy\x82\x19_b\x17|vL\x1f\xa6c\xc1P\xbf\x1a\xb1\xc2\xca\xd8\xf7r\x11)\xa4#˧L\x8b\xfas\xce\xd4\x1f\xb8\xd0&|`\xbfe\xd0!t'\xb5\x0buqx7*\xa7؞Ն/\xf5\x88\x03\x8b=\x83\xbf\x97\x93az\xccy-\xe5\xf8\xc2X\x9dVU\x11?\xe8\xbeIz\xc8*)\x84\xbcW\\\xfc\xb6\xb0\xb7A\xd4k\xc4\x0f\xb8#\x00hQZ\x8f\xf7Q \x9a剼UZ\xda\xf9s\xcd\xeaCfne\xb3\xc0\xa8%bc\x08gcɬ\xf5\x90\x8f\x90\xef\xfa\xa3\x9d\x113\xf6\x85\x90\xbfܩ\xf4/Ѓz\x98;h\xbaCb\xaf\x86\x8c[\xd1\xe48\x1d\x99y\x89\xf9e\xa3\x96\xd0g\xd5\xf7\xde>J\x12\x15R\xa7\x8a\xd7\x07>\xe3\x01\xe5\x10p\x03\xbf\xfb\xfd\x1d&L\x9c \x02\x90vB\x9dg\x17=\x00a\xe1\x08\x81\xb3t\xb4h]P潲y\xe3}\x1f%\x1c\xd6v\x1d\xd7\xcft\x92\xafV/ \x99\xa9A\xdb\xcaV\x15\xb5\xc0B\xf8\xfa\xc2{c\x02H\x05ݩ\x9b\xa1>\x10\x19=\xef7\x7f\x13'\xb8\x0e\xba\xbc.\xc56@\xf1:\xf7\x90\xee\xdc:\x15\xbb6\xa5\xa6\x87\xf7l\x8d*D\xf8ʌ1\xf05\x82\x05*l\" \xbf$8\xaao\xdd\xe5\xfeR\x18\x92\x9c\x9bU쭦`'\x88w\x94\x02\x12\"\xcf\x11\xf5\xfa\x9aK$\xf0-\x8dDw\x02|\xd2\xfc\xf2\x0c\x85\x8eE\x90\x00\xc75\xa4\xf87\x10\xed\x082\x82&1\x8fV\xcd\xdb9\x14F~u\xadշ\x8eh\x05e\x7f^[\x08\xb8\xf6\xff\xda\xe5\xd79\xdf\x114[]1\x05\x1b\xdb~D\xa4\xe1E?\x0f\xf0" offset:4999: EOF
before flush: sent 5000 received 5000
lastProcessedTime {2026-06-16 11:57:41.48892684 +0000 UTC 5000 false} isDone true err: EOF
--- PASS: TestNewLogBufferFirstBuffer (0.10s)
=== RUN   TestReadFromBuffer_OldOffsetReturnsResumeFromDiskError
=== RUN   TestReadFromBuffer_OldOffsetReturnsResumeFromDiskError/Request_offset_0_when_buffer_starts_at_4_(Schema_Registry_bug_scenario)
    log_buffer_test.go:164: ✓ When Schema Registry tries to read from offset 0, but data has been flushed to disk: correctly returned resumeFromDisk
=== RUN   TestReadFromBuffer_OldOffsetReturnsResumeFromDiskError/Request_offset_before_buffer_start_with_empty_buffer
    log_buffer_test.go:164: ✓ Old offset with no data in memory should trigger disk read: correctly returned resumeFromDisk
=== RUN   TestReadFromBuffer_OldOffsetReturnsResumeFromDiskError/Request_offset_before_buffer_start_with_data
    log_buffer_test.go:164: ✓ Old offset with current data in memory should still trigger disk read: correctly returned resumeFromDisk
=== RUN   TestReadFromBuffer_OldOffsetReturnsResumeFromDiskError/Request_current_offset_(no_disk_read_needed)
    log_buffer_test.go:171: ✓ Current offset should return data from memory without error: correctly returned data without error
=== RUN   TestReadFromBuffer_OldOffsetReturnsResumeFromDiskError/Request_offset_within_buffer_range
    log_buffer_test.go:171: ✓ Offset within buffer range should return data without error: correctly returned data without error
--- PASS: TestReadFromBuffer_OldOffsetReturnsResumeFromDiskError (0.01s)
    --- PASS: TestReadFromBuffer_OldOffsetReturnsResumeFromDiskError/Request_offset_0_when_buffer_starts_at_4_(Schema_Registry_bug_scenario) (0.00s)
    --- PASS: TestReadFromBuffer_OldOffsetReturnsResumeFromDiskError/Request_offset_before_buffer_start_with_empty_buffer (0.00s)
    --- PASS: TestReadFromBuffer_OldOffsetReturnsResumeFromDiskError/Request_offset_before_buffer_start_with_data (0.00s)
    --- PASS: TestReadFromBuffer_OldOffsetReturnsResumeFromDiskError/Request_current_offset_(no_disk_read_needed) (0.01s)
    --- PASS: TestReadFromBuffer_OldOffsetReturnsResumeFromDiskError/Request_offset_within_buffer_range (0.00s)
=== RUN   TestReadFromBuffer_OldOffsetWithNoPrevBuffers
    log_buffer_test.go:215: DEBUG: ReadFromBuffer returned: buf=false, batchIdx=-2, err=resumeFromDisk
    log_buffer_test.go:216: DEBUG: Buffer state: bufferStartOffset=10, offset=15, pos=100
    log_buffer_test.go:218: DEBUG: Requested offset 5, prevBuffers[0] range: [20-25]
    log_buffer_test.go:227: ✓ BUG FIX VERIFIED: Correctly returns ResumeFromDiskError when requesting old offset 5
    log_buffer_test.go:228:   This allows the subscriber to read from disk instead of waiting forever
--- PASS: TestReadFromBuffer_OldOffsetWithNoPrevBuffers (0.00s)
=== RUN   TestReadFromBuffer_EmptyBufferAtCurrentOffset
    log_buffer_test.go:253: DEBUG: ReadFromBuffer returned: buf=false, batchIdx=-2, err=resumeFromDisk
    log_buffer_test.go:254: DEBUG: Buffer state: bufferStartOffset=0, offset=4, pos=0
    log_buffer_test.go:264: ✓ BUG #2 FIX VERIFIED: Empty buffer correctly returns ResumeFromDiskError to check disk
--- PASS: TestReadFromBuffer_EmptyBufferAtCurrentOffset (0.00s)
=== RUN   TestReadFromBuffer_OffsetRanges
=== RUN   TestReadFromBuffer_OffsetRanges/Before_buffer_start
    log_buffer_test.go:324: ✓ Offset 5 < bufferStartOffset 10 → read from disk
=== RUN   TestReadFromBuffer_OffsetRanges/At_buffer_start
    log_buffer_test.go:332: ✓ Offset 10 == bufferStartOffset 10 → read from buffer
=== RUN   TestReadFromBuffer_OffsetRanges/Within_buffer_range
    log_buffer_test.go:332: ✓ Offset 15 is within [10, 20] → read from buffer
=== RUN   TestReadFromBuffer_OffsetRanges/At_buffer_end
    log_buffer_test.go:332: ✓ Offset 20 == offset 20 → read from buffer
=== RUN   TestReadFromBuffer_OffsetRanges/After_buffer_end
    log_buffer_test.go:332: ✓ Offset 25 > offset 20 → future data, return nil without error
--- PASS: TestReadFromBuffer_OffsetRanges (0.00s)
    --- PASS: TestReadFromBuffer_OffsetRanges/Before_buffer_start (0.00s)
    --- PASS: TestReadFromBuffer_OffsetRanges/At_buffer_start (0.00s)
    --- PASS: TestReadFromBuffer_OffsetRanges/Within_buffer_range (0.00s)
    --- PASS: TestReadFromBuffer_OffsetRanges/At_buffer_end (0.00s)
    --- PASS: TestReadFromBuffer_OffsetRanges/After_buffer_end (0.00s)
=== RUN   TestReadFromBuffer_InitializedFromDisk
I0616 11:57:41.502369 log_buffer.go:246 Initialized LogBuffer _schemas offset to 4 (highest existing: 3), buffer starts at 4, lastFlushedOffset=3, lastFlushedTime=2026-06-16 11:57:41.50236276 +0000 UTC m=+1.709191131
    log_buffer_test.go:363: After InitializeOffsetFromExistingData(highestOffset=3):
    log_buffer_test.go:364:   offset=4 (should be 4), bufferStartOffset=4 (FIX: should be 4, not 0)
    log_buffer_test.go:380: After writing new message:
    log_buffer_test.go:381:   bufferStartOffset=4, offset=5, pos=56
    log_buffer_test.go:382:   Requested offset 0, got: buf=false, batchIdx=-2, err=resumeFromDisk
    log_buffer_test.go:400: ✓ BUG #3 FIX VERIFIED: Reading old offset 0 correctly returns ResumeFromDiskError
    log_buffer_test.go:401:   This ensures Schema Registry reads correct data from disk instead of getting new messages
--- PASS: TestReadFromBuffer_InitializedFromDisk (0.00s)
=== RUN   TestLoopProcessLogDataWithOffset_DiskReadRetry
    log_buffer_test.go:423: DISK READ #1: startOffset=0, dataFlushedToDisk=false
    log_buffer_test.go:427:   → No data found (flush not completed yet)
    log_buffer_test.go:423: DISK READ #2: startOffset=0, dataFlushedToDisk=false
    log_buffer_test.go:427:   → No data found (flush not completed yet)
    log_buffer_test.go:423: DISK READ #3: startOffset=0, dataFlushedToDisk=false
    log_buffer_test.go:427:   → No data found (flush not completed yet)
    log_buffer_test.go:423: DISK READ #4: startOffset=0, dataFlushedToDisk=false
    log_buffer_test.go:427:   → No data found (flush not completed yet)
    log_buffer_test.go:423: DISK READ #5: startOffset=0, dataFlushedToDisk=false
    log_buffer_test.go:427:   → No data found (flush not completed yet)
    log_buffer_test.go:423: DISK READ #6: startOffset=0, dataFlushedToDisk=false
    log_buffer_test.go:427:   → No data found (flush not completed yet)
    log_buffer_test.go:505: ➕ Adding message to buffer...
    log_buffer_test.go:513: Force flushing...
    log_buffer_test.go:445: FLUSH: minOffset=0 maxOffset=0 size=43 bytes
    log_buffer_test.go:423: DISK READ #7: startOffset=0, dataFlushedToDisk=true
    log_buffer_test.go:432:   → Found 1 entries on disk
    log_buffer_test.go:487: ✉️  RECEIVED: offset=0 key=key-0
    log_buffer_test.go:498: 📋 Reader finished: isDone=true, err=<nil>
    log_buffer_test.go:529: 
        RESULTS:
    log_buffer_test.go:530:   Disk reads: 7
    log_buffer_test.go:531:   Received messages: 1
    log_buffer_test.go:532:   Loop iterations: 6
    log_buffer_test.go:544: ✓ SUCCESS: Message received after 7 disk read attempts
--- PASS: TestLoopProcessLogDataWithOffset_DiskReadRetry (0.05s)
=== RUN   TestConcurrentProducerConsumer
flush from 2026-06-16 11:57:41.393749389 +0000 UTC m=+1.600577756 to 2026-06-16 11:57:41.48892684 +0000 UTC m=+1.695755210 5274870 bytes
    log_read_integration_test.go:105: Consumer 0 consumed 500 messages
    log_read_integration_test.go:105: Consumer 1 consumed 500 messages
--- PASS: TestConcurrentProducerConsumer (1.07s)
=== RUN   TestBackwardSeeksWhileProducing
    log_read_integration_test.go:177: Seeking backward from 100 to 80
    log_read_integration_test.go:177: Seeking backward from 100 to 80
    log_read_integration_test.go:177: Seeking backward from 100 to 80
    log_read_integration_test.go:177: Seeking backward from 100 to 80
    log_read_integration_test.go:177: Seeking backward from 100 to 80
    log_read_integration_test.go:177: Seeking backward from 100 to 80
    log_read_integration_test.go:177: Seeking backward from 100 to 80
    log_read_integration_test.go:177: Seeking backward from 100 to 80
    log_read_integration_test.go:177: Seeking backward from 100 to 80
    log_read_integration_test.go:177: Seeking backward from 100 to 80
    log_read_integration_test.go:199: Total unique offsets read: 500 out of 500
--- PASS: TestBackwardSeeksWhileProducing (0.53s)
=== RUN   TestHighConcurrencyReads
--- PASS: TestHighConcurrencyReads (0.00s)
=== RUN   TestRepeatedReadsAtSameOffset
--- PASS: TestRepeatedReadsAtSameOffset (0.00s)
=== RUN   TestEmptyPartitionPolling
--- PASS: TestEmptyPartitionPolling (0.00s)
=== RUN   TestReadMessagesAtOffset_EmptyBuffer
--- PASS: TestReadMessagesAtOffset_EmptyBuffer (0.00s)
=== RUN   TestReadMessagesAtOffset_SingleMessage
--- PASS: TestReadMessagesAtOffset_SingleMessage (0.01s)
=== RUN   TestReadMessagesAtOffset_MultipleMessages
--- PASS: TestReadMessagesAtOffset_MultipleMessages (0.00s)
=== RUN   TestReadMessagesAtOffset_StartFromMiddle
--- PASS: TestReadMessagesAtOffset_StartFromMiddle (0.00s)
=== RUN   TestReadMessagesAtOffset_MaxBytesLimit
--- PASS: TestReadMessagesAtOffset_MaxBytesLimit (0.00s)
=== RUN   TestReadMessagesAtOffset_ConcurrentReads
--- PASS: TestReadMessagesAtOffset_ConcurrentReads (0.00s)
=== RUN   TestReadMessagesAtOffset_FutureOffset
--- PASS: TestReadMessagesAtOffset_FutureOffset (0.00s)
=== RUN   TestWaitForDataWithTimeout_DataAvailable
--- PASS: TestWaitForDataWithTimeout_DataAvailable (0.00s)
=== RUN   TestWaitForDataWithTimeout_NoData
    log_read_stateless_test.go:300: Waited 50.128044ms for timeout
--- PASS: TestWaitForDataWithTimeout_NoData (0.05s)
=== RUN   TestWaitForDataWithTimeout_DataArrives
--- PASS: TestWaitForDataWithTimeout_DataArrives (0.05s)
=== RUN   TestGetHighWaterMark
--- PASS: TestGetHighWaterMark (0.00s)
=== RUN   TestGetLogStartOffset
--- PASS: TestGetLogStartOffset (0.00s)
=== RUN   TestLoopProcessLogDataWithOffset_ClientDisconnect
    log_read_test.go:53: Loop exited cleanly in 101.232362ms after client disconnect
--- PASS: TestLoopProcessLogDataWithOffset_ClientDisconnect (0.10s)
=== RUN   TestLoopProcessLogDataWithOffset_EmptyBuffer
    log_read_test.go:110: Loop exited cleanly in 91.178856ms after 10 iterations (no busy-waiting detected)
--- PASS: TestLoopProcessLogDataWithOffset_EmptyBuffer (0.09s)
=== RUN   TestLoopProcessLogDataWithOffset_NoDataResumeFromDisk
    log_read_test.go:157: Loop exited cleanly in 40.489834ms after 5 iterations (proper sleep detected)
--- PASS: TestLoopProcessLogDataWithOffset_NoDataResumeFromDisk (0.04s)
=== RUN   TestLoopProcessLogDataWithOffset_WithData
I0616 11:57:43.503365 log_read.go:389 LoopProcessLogDataWithOffset: test-client process log entry 1
    log_read_test.go:218: Successfully processed 1 message(s) in 28.655µs
--- PASS: TestLoopProcessLogDataWithOffset_WithData (0.00s)
=== RUN   TestLoopProcessLogDataWithOffset_ConcurrentDisconnect
    log_read_test.go:266: All 10 concurrent clients exited cleanly
--- PASS: TestLoopProcessLogDataWithOffset_ConcurrentDisconnect (0.05s)
=== RUN   TestLoopProcessLogDataWithOffset_StopTime
    log_read_test.go:305: Loop correctly exited for past stopTsNs in 1.876µs (waitForDataFn called 0 times)
--- PASS: TestLoopProcessLogDataWithOffset_StopTime (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/log_buffer	3.835s
=== RUN   TestAllocateFree
--- PASS: TestAllocateFree (0.00s)
=== RUN   TestAllocateFreeEdgeCases
--- PASS: TestAllocateFreeEdgeCases (0.00s)
=== RUN   TestBitCount
--- PASS: TestBitCount (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/mem	0.003s
?   	github.com/seaweedfs/seaweedfs/weed/util/request_id	[no test files]
=== RUN   TestNameList
0 1 10 11 12 13 14 15 16 17 18 19 2 20 21 22 23 24 25 26 27 28 29 3 30 31 32 33 34 35 36 37 38 39 4 40 41 42 43 44 45 46 47 48 49 5 50 51 52 53 54 55 56 57 58 59 6 60 61 62 63 64 65 66 67 68 69 7 70 71 72 73 74 75 76 77 78 79 8 80 81 82 83 84 85 86 87 88 89 9 90 91 92 93 94 95 96 97 98 99 --- PASS: TestNameList (0.09s)
=== RUN   TestReverseInsert
--- PASS: TestReverseInsert (0.00s)
=== RUN   TestInsertAndFind
--- PASS: TestInsertAndFind (0.06s)
=== RUN   TestDelete
--- PASS: TestDelete (0.07s)
=== RUN   TestNext
--- PASS: TestNext (0.01s)
=== RUN   TestPrev
--- PASS: TestPrev (0.01s)
=== RUN   TestFindGreaterOrEqual
--- PASS: TestFindGreaterOrEqual (0.03s)
=== RUN   TestChangeValue
--- PASS: TestChangeValue (0.02s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/skiplist	0.297s
=== RUN   TestSplitStatements
=== RUN   TestSplitStatements/Simple_single_statement
=== RUN   TestSplitStatements/Multiple_statements
=== RUN   TestSplitStatements/Semicolon_in_single_quotes
=== RUN   TestSplitStatements/Semicolon_in_double_quotes
=== RUN   TestSplitStatements/Escaped_quotes_in_strings
=== RUN   TestSplitStatements/Escaped_quotes_in_identifiers
=== RUN   TestSplitStatements/Single_line_comment
=== RUN   TestSplitStatements/Single_line_comment_with_semicolon
=== RUN   TestSplitStatements/Multi-line_comment
=== RUN   TestSplitStatements/Multi-line_comment_with_semicolon
=== RUN   TestSplitStatements/Complex_mixed_case
=== RUN   TestSplitStatements/Empty_statements_filtered
=== RUN   TestSplitStatements/Whitespace_handling
=== RUN   TestSplitStatements/Single_statement_without_semicolon
=== RUN   TestSplitStatements/Empty_query
=== RUN   TestSplitStatements/Only_whitespace
--- PASS: TestSplitStatements (0.00s)
    --- PASS: TestSplitStatements/Simple_single_statement (0.00s)
    --- PASS: TestSplitStatements/Multiple_statements (0.00s)
    --- PASS: TestSplitStatements/Semicolon_in_single_quotes (0.00s)
    --- PASS: TestSplitStatements/Semicolon_in_double_quotes (0.00s)
    --- PASS: TestSplitStatements/Escaped_quotes_in_strings (0.00s)
    --- PASS: TestSplitStatements/Escaped_quotes_in_identifiers (0.00s)
    --- PASS: TestSplitStatements/Single_line_comment (0.00s)
    --- PASS: TestSplitStatements/Single_line_comment_with_semicolon (0.00s)
    --- PASS: TestSplitStatements/Multi-line_comment (0.00s)
    --- PASS: TestSplitStatements/Multi-line_comment_with_semicolon (0.00s)
    --- PASS: TestSplitStatements/Complex_mixed_case (0.00s)
    --- PASS: TestSplitStatements/Empty_statements_filtered (0.00s)
    --- PASS: TestSplitStatements/Whitespace_handling (0.00s)
    --- PASS: TestSplitStatements/Single_statement_without_semicolon (0.00s)
    --- PASS: TestSplitStatements/Empty_query (0.00s)
    --- PASS: TestSplitStatements/Only_whitespace (0.00s)
=== RUN   TestSplitStatements_EdgeCases
=== RUN   TestSplitStatements_EdgeCases/Nested_comments_are_not_supported_but_handled_gracefully
=== RUN   TestSplitStatements_EdgeCases/Unterminated_string_(malformed_SQL)
=== RUN   TestSplitStatements_EdgeCases/Unterminated_comment_(malformed_SQL)
=== RUN   TestSplitStatements_EdgeCases/Multiple_semicolons_in_quotes
--- PASS: TestSplitStatements_EdgeCases (0.00s)
    --- PASS: TestSplitStatements_EdgeCases/Nested_comments_are_not_supported_but_handled_gracefully (0.00s)
    --- PASS: TestSplitStatements_EdgeCases/Unterminated_string_(malformed_SQL) (0.00s)
    --- PASS: TestSplitStatements_EdgeCases/Unterminated_comment_(malformed_SQL) (0.00s)
    --- PASS: TestSplitStatements_EdgeCases/Multiple_semicolons_in_quotes (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/sqlutil	0.005s
?   	github.com/seaweedfs/seaweedfs/weed/util/version	[no test files]
=== RUN   TestLocationIndex
--- PASS: TestLocationIndex (0.00s)
=== RUN   TestLookupFileId
--- PASS: TestLookupFileId (0.00s)
=== RUN   TestConcurrentGetLocations
--- PASS: TestConcurrentGetLocations (0.07s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/wdclient	0.089s
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/exclusive_locks	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/net2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/resource_pool	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/worker	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/worker/tasks	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/worker/tasks/balance	[no test files]
=== RUN   TestStructToMap_WithEmbeddedStruct
--- PASS: TestStructToMap_WithEmbeddedStruct (0.00s)
=== RUN   TestStructToMap_WithNestedStruct
--- PASS: TestStructToMap_WithNestedStruct (0.00s)
=== RUN   TestMapToStruct_WithEmbeddedStruct
--- PASS: TestMapToStruct_WithEmbeddedStruct (0.00s)
=== RUN   TestMapToStruct_PartialData
--- PASS: TestMapToStruct_PartialData (0.00s)
=== RUN   TestRoundTripSerialization
--- PASS: TestRoundTripSerialization (0.00s)
=== RUN   TestStructToMap_EmptyStruct
--- PASS: TestStructToMap_EmptyStruct (0.00s)
=== RUN   TestStructToMap_NilPointer
--- PASS: TestStructToMap_NilPointer (0.00s)
=== RUN   TestMapToStruct_InvalidInput
--- PASS: TestMapToStruct_InvalidInput (0.00s)
=== RUN   TestMapToStruct_NonPointer
--- PASS: TestMapToStruct_NonPointer (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/worker/tasks/base	0.015s
?   	github.com/seaweedfs/seaweedfs/weed/worker/tasks/erasure_coding	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/worker/tasks/vacuum	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/worker/types	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/worker/types/base	[no test files]
FAIL
