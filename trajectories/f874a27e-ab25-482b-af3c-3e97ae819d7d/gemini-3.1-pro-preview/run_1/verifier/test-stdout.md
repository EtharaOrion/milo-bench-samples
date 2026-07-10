patching file .github/workflows/container_latest.yml
patching file .github/workflows/test-s3-over-https-using-awscli.yml
patching file weed/topology/topology_test.go
patching file .github/workflows/depsreview.yml
patching file .github/workflows/e2e.yml
patching file .github/workflows/go.yml
patching file docker/Dockerfile.go_build
patching file docker/Dockerfile.rocksdb_dev_env
patching file docker/Dockerfile.rocksdb_large
patching file weed/command/filer.go
patching file weed/command/s3.go
patching file weed/command/server.go
patching file weed/filer/redis2/redis_store.go
patching file weed/s3api/chunked_reader_v4.go
patching file weed/s3api/s3api_object_handlers_multipart.go
patching file weed/s3api/s3api_object_handlers_put.go
patching file weed/shell/command_volume_list.go
patching file weed/topology/topology.go
?   	github.com/seaweedfs/seaweedfs/other/mq_client_example/agent_pub_record	[no test files]
?   	github.com/seaweedfs/seaweedfs/other/mq_client_example/agent_sub_record	[no test files]
?   	github.com/seaweedfs/seaweedfs/other/mq_client_example/example	[no test files]
=== RUN   TestCreateBucket
RequestError: send request failed
caused by: Put "http://localhost:8333/theBucket": dial tcp 127.0.0.1:8333: connect: connection refused
--- PASS: TestCreateBucket (0.32s)
=== RUN   TestPutObject
RequestError: send request failed
caused by: Put "http://localhost:8333/theBucket/exampleobject": dial tcp 127.0.0.1:8333: connect: connection refused
--- PASS: TestPutObject (0.30s)
=== RUN   TestListBucket
Unable to list buckets, RequestError: send request failed
caused by: Get "http://localhost:8333/": dial tcp 127.0.0.1:8333: connect: connection refused
FAIL	github.com/seaweedfs/seaweedfs/test/s3/basic	1.000s
?   	github.com/seaweedfs/seaweedfs/test/s3/multipart	[no test files]
?   	github.com/seaweedfs/seaweedfs/test/s3/s3client	[no test files]
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
=== RUN   TestConcurrentAddRemoveNodes
--- PASS: TestConcurrentAddRemoveNodes (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/cluster	0.005s
=== RUN   TestAddServer
I0625 04:20:40.631194 lock_ring.go:43 add server localhost:8080
I0625 04:20:40.631486 lock_ring.go:43 add server localhost:8081
I0625 04:20:40.631494 lock_ring.go:43 add server localhost:8082
I0625 04:20:40.631497 lock_ring.go:43 add server localhost:8083
I0625 04:20:40.631499 lock_ring.go:43 add server localhost:8084
I0625 04:20:40.631502 lock_ring.go:59 remove server localhost:8084
I0625 04:20:40.631505 lock_ring.go:59 remove server localhost:8082
I0625 04:20:40.631508 lock_ring.go:59 remove server localhost:8080
--- PASS: TestAddServer (0.11s)
=== RUN   TestLockRing
--- PASS: TestLockRing (0.22s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/cluster/lock_manager	0.337s
=== RUN   TestReadingTomlConfiguration
database is map[connection_max:5000 enabled:true ports:[8001 8001 8002] server:192.168.1.1]
servers is map[alpha:map[dc:eqdc10 ip:10.0.0.1] beta:map[dc:eqdc10 ip:10.0.0.2]]
alpha ip is 10.0.0.1
--- PASS: TestReadingTomlConfiguration (0.00s)
=== RUN   TestXYZ
I0625 04:20:43.796598 volume_test.go:12 Last-Modified Mon, 08 Jul 2013 08:53:16 GMT
--- PASS: TestXYZ (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/command	0.023s
?   	github.com/seaweedfs/seaweedfs/weed/command/scaffold	[no test files]
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
2026/06/25 04:20:43 first deleted chunks: [file_id:"1"  size:3  modified_ts_ns:100  source_file_id:"11" file_id:"2"  offset:3  size:3  modified_ts_ns:200 file_id:"3"  offset:6  size:3  modified_ts_ns:300  source_file_id:"33"]
2026/06/25 04:20:43 clusterA synced empty chunks event result: []
--- PASS: TestDoMinusChunks (0.00s)
=== RUN   TestCompactFileChunksRealCase
I0625 04:20:43.786157 filechunks2_test.go:83 before chunk 2,512f31f2c0700a [         0,        25)
I0625 04:20:43.786489 filechunks2_test.go:83 before chunk 6,512f2c2e24e9e8 [    868352,    917585)
I0625 04:20:43.786492 filechunks2_test.go:83 before chunk 7,514468dd5954ca [    884736,    901120)
I0625 04:20:43.786494 filechunks2_test.go:83 before chunk 5,5144463173fe77 [    917504,   2297856)
I0625 04:20:43.786495 filechunks2_test.go:83 before chunk 4,51444c7ab54e2d [   2301952,   2367488)
I0625 04:20:43.786497 filechunks2_test.go:83 before chunk 4,514450e643ad22 [   2371584,   2420736)
I0625 04:20:43.786499 filechunks2_test.go:83 before chunk 6,514456a5e9e4d7 [   2449408,   2490368)
I0625 04:20:43.786500 filechunks2_test.go:83 before chunk 3,51444f8d53eebe [   2494464,   2555904)
I0625 04:20:43.786501 filechunks2_test.go:83 before chunk 4,5144578b097c7e [   2560000,   2596864)
I0625 04:20:43.786503 filechunks2_test.go:83 before chunk 3,51445500b6b4ac [   2637824,   2678784)
I0625 04:20:43.786504 filechunks2_test.go:83 before chunk 1,51446285e52a61 [   2695168,   2715648)
I0625 04:20:43.786513 filechunks2_test.go:83 compacted chunk 2,512f31f2c0700a [         0,        25)
I0625 04:20:43.786515 filechunks2_test.go:83 compacted chunk 6,512f2c2e24e9e8 [    868352,    917585)
I0625 04:20:43.786516 filechunks2_test.go:83 compacted chunk 7,514468dd5954ca [    884736,    901120)
I0625 04:20:43.786518 filechunks2_test.go:83 compacted chunk 5,5144463173fe77 [    917504,   2297856)
I0625 04:20:43.786519 filechunks2_test.go:83 compacted chunk 4,51444c7ab54e2d [   2301952,   2367488)
I0625 04:20:43.786520 filechunks2_test.go:83 compacted chunk 4,514450e643ad22 [   2371584,   2420736)
I0625 04:20:43.786521 filechunks2_test.go:83 compacted chunk 6,514456a5e9e4d7 [   2449408,   2490368)
I0625 04:20:43.786523 filechunks2_test.go:83 compacted chunk 3,51444f8d53eebe [   2494464,   2555904)
I0625 04:20:43.786524 filechunks2_test.go:83 compacted chunk 4,5144578b097c7e [   2560000,   2596864)
I0625 04:20:43.786525 filechunks2_test.go:83 compacted chunk 3,51445500b6b4ac [   2637824,   2678784)
I0625 04:20:43.786526 filechunks2_test.go:83 compacted chunk 1,51446285e52a61 [   2695168,   2715648)
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
2026/06/25 04:20:43 ++++++++++ merged test case 0 ++++++++++++++++++++
2026/06/25 04:20:43 test case 0, interval start=0, stop=100, fileId=abc
2026/06/25 04:20:43 test case 0, interval start=100, stop=200, fileId=asdf
2026/06/25 04:20:43 test case 0, interval start=200, stop=300, fileId=fsad
2026/06/25 04:20:43 ++++++++++ merged test case 1 ++++++++++++++++++++
2026/06/25 04:20:43 test case 1, interval start=0, stop=200, fileId=asdf
2026/06/25 04:20:43 ++++++++++ merged test case 2 ++++++++++++++++++++
2026/06/25 04:20:43 test case 2, interval start=0, stop=70, fileId=b
2026/06/25 04:20:43 test case 2, interval start=70, stop=100, fileId=a
2026/06/25 04:20:43 ++++++++++ merged test case 3 ++++++++++++++++++++
2026/06/25 04:20:43 test case 3, interval start=0, stop=50, fileId=asdf
2026/06/25 04:20:43 test case 3, interval start=50, stop=300, fileId=xxxx
2026/06/25 04:20:43 ++++++++++ merged test case 4 ++++++++++++++++++++
2026/06/25 04:20:43 test case 4, interval start=0, stop=200, fileId=asdf
2026/06/25 04:20:43 test case 4, interval start=250, stop=500, fileId=xxxx
2026/06/25 04:20:43 ++++++++++ merged test case 5 ++++++++++++++++++++
2026/06/25 04:20:43 test case 5, interval start=0, stop=200, fileId=d
2026/06/25 04:20:43 test case 5, interval start=200, stop=220, fileId=c
2026/06/25 04:20:43 ++++++++++ merged test case 6 ++++++++++++++++++++
2026/06/25 04:20:43 test case 6, interval start=0, stop=100, fileId=xyz
2026/06/25 04:20:43 ++++++++++ merged test case 7 ++++++++++++++++++++
2026/06/25 04:20:43 test case 7, interval start=0, stop=2097152, fileId=3,029565bf3092
2026/06/25 04:20:43 test case 7, interval start=2097152, stop=5242880, fileId=6,029632f47ae2
2026/06/25 04:20:43 test case 7, interval start=5242880, stop=8388608, fileId=2,029734c5aa10
2026/06/25 04:20:43 test case 7, interval start=8388608, stop=11534336, fileId=5,02982f80de50
2026/06/25 04:20:43 test case 7, interval start=11534336, stop=14376529, fileId=7,0299ad723803
2026/06/25 04:20:43 ++++++++++ merged test case 8 ++++++++++++++++++++
2026/06/25 04:20:43 test case 8, interval start=0, stop=77824, fileId=4,0b3df938e301
2026/06/25 04:20:43 test case 8, interval start=77824, stop=208896, fileId=4,0b3f0c7202f0
2026/06/25 04:20:43 test case 8, interval start=208896, stop=339968, fileId=2,0b4031a72689
2026/06/25 04:20:43 test case 8, interval start=339968, stop=471040, fileId=3,0b416a557362
2026/06/25 04:20:43 test case 8, interval start=471040, stop=472225, fileId=6,0b3e0650019c
--- PASS: TestIntervalMerging (0.00s)
=== RUN   TestChunksReading
2026/06/25 04:20:43 ++++++++++ read test case 0 ++++++++++++++++++++
2026/06/25 04:20:43 read case 0, chunk 0, offset=0, size=100, fileId=abc
2026/06/25 04:20:43 read case 0, chunk 1, offset=0, size=100, fileId=asdf
2026/06/25 04:20:43 read case 0, chunk 2, offset=0, size=50, fileId=fsad
2026/06/25 04:20:43 ++++++++++ read test case 1 ++++++++++++++++++++
2026/06/25 04:20:43 read case 1, chunk 0, offset=50, size=100, fileId=asdf
2026/06/25 04:20:43 ++++++++++ read test case 2 ++++++++++++++++++++
2026/06/25 04:20:43 read case 2, chunk 0, offset=20, size=30, fileId=b
2026/06/25 04:20:43 read case 2, chunk 1, offset=57, size=10, fileId=a
2026/06/25 04:20:43 ++++++++++ read test case 3 ++++++++++++++++++++
2026/06/25 04:20:43 read case 3, chunk 0, offset=0, size=50, fileId=asdf
2026/06/25 04:20:43 read case 3, chunk 1, offset=0, size=150, fileId=xxxx
2026/06/25 04:20:43 ++++++++++ read test case 4 ++++++++++++++++++++
2026/06/25 04:20:43 read case 4, chunk 0, offset=0, size=200, fileId=asdf
2026/06/25 04:20:43 read case 4, chunk 1, offset=0, size=150, fileId=xxxx
2026/06/25 04:20:43 ++++++++++ read test case 5 ++++++++++++++++++++
2026/06/25 04:20:43 read case 5, chunk 0, offset=0, size=200, fileId=c
2026/06/25 04:20:43 read case 5, chunk 1, offset=130, size=20, fileId=b
2026/06/25 04:20:43 ++++++++++ read test case 6 ++++++++++++++++++++
2026/06/25 04:20:43 read case 6, chunk 0, offset=0, size=100, fileId=xyz
2026/06/25 04:20:43 ++++++++++ read test case 7 ++++++++++++++++++++
2026/06/25 04:20:43 read case 7, chunk 0, offset=0, size=100, fileId=abc
2026/06/25 04:20:43 read case 7, chunk 1, offset=0, size=100, fileId=asdf
2026/06/25 04:20:43 ++++++++++ read test case 8 ++++++++++++++++++++
2026/06/25 04:20:43 read case 8, chunk 0, offset=0, size=90, fileId=abc
2026/06/25 04:20:43 read case 8, chunk 1, offset=0, size=100, fileId=asdf
2026/06/25 04:20:43 read case 8, chunk 2, offset=0, size=110, fileId=fsad
2026/06/25 04:20:43 ++++++++++ read test case 9 ++++++++++++++++++++
2026/06/25 04:20:43 read case 9, chunk 0, offset=0, size=43175936, fileId=2,111fc2cbfac1
2026/06/25 04:20:43 read case 9, chunk 1, offset=0, size=9805824, fileId=2,112a36ea7f85
2026/06/25 04:20:43 read case 9, chunk 2, offset=0, size=19582976, fileId=4,112d5f31c5e7
2026/06/25 04:20:43 read case 9, chunk 3, offset=0, size=60690432, fileId=1,113245f0cdb6
2026/06/25 04:20:43 read case 9, chunk 4, offset=0, size=4014080, fileId=3,1141a70733b5
2026/06/25 04:20:43 read case 9, chunk 5, offset=0, size=16309588, fileId=1,114201d5bbdb
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
ok  	github.com/seaweedfs/seaweedfs/weed/filer	0.019s
?   	github.com/seaweedfs/seaweedfs/weed/filer/abstract_sql	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/arangodb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/cassandra	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/cassandra2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/elastic/v7	[no test files]
=== RUN   TestStore
--- PASS: TestStore (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/etcd	0.014s
?   	github.com/seaweedfs/seaweedfs/weed/filer/hbase	[no test files]
=== RUN   TestCreateAndFind
I0625 04:20:43.790475 leveldb_store.go:47 filer store dir: /tmp/TestCreateAndFind1344714637/001
I0625 04:20:43.790737 file_util.go:27 Folder /tmp/TestCreateAndFind1344714637/001 Permission: -rwxr-xr-x
I0625 04:20:43.805010 filer.go:155 create filer.store.id to -1174097841
--- PASS: TestCreateAndFind (0.02s)
=== RUN   TestEmptyRoot
I0625 04:20:43.816983 leveldb_store.go:47 filer store dir: /tmp/TestEmptyRoot3208349644/001
I0625 04:20:43.817003 file_util.go:27 Folder /tmp/TestEmptyRoot3208349644/001 Permission: -rwxr-xr-x
I0625 04:20:43.828347 filer.go:155 create filer.store.id to 1227183376
--- PASS: TestEmptyRoot (0.02s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb	0.054s
=== RUN   TestCreateAndFind
I0625 04:20:43.796563 leveldb2_store.go:43 filer store leveldb2 dir: /tmp/TestCreateAndFind3252940003/001
I0625 04:20:43.796989 file_util.go:27 Folder /tmp/TestCreateAndFind3252940003/001 Permission: -rwxr-xr-x
I0625 04:20:43.816936 filer.go:155 create filer.store.id to 53552542
--- PASS: TestCreateAndFind (0.03s)
=== RUN   TestEmptyRoot
I0625 04:20:43.819497 leveldb2_store.go:43 filer store leveldb2 dir: /tmp/TestEmptyRoot2980252648/001
I0625 04:20:43.819516 file_util.go:27 Folder /tmp/TestEmptyRoot2980252648/001 Permission: -rwxr-xr-x
I0625 04:20:43.838338 filer.go:155 create filer.store.id to -1453523697
--- PASS: TestEmptyRoot (0.02s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb2	0.064s
=== RUN   TestCreateAndFind
I0625 04:20:43.795865 leveldb3_store.go:50 filer store leveldb3 dir: /tmp/TestCreateAndFind679926498/001
I0625 04:20:43.796149 file_util.go:27 Folder /tmp/TestCreateAndFind679926498/001 Permission: -rwxr-xr-x
I0625 04:20:43.807688 filer.go:155 create filer.store.id to 1792663027
--- PASS: TestCreateAndFind (0.02s)
=== RUN   TestEmptyRoot
I0625 04:20:43.824184 leveldb3_store.go:50 filer store leveldb3 dir: /tmp/TestEmptyRoot28975823/001
I0625 04:20:43.824207 file_util.go:27 Folder /tmp/TestEmptyRoot28975823/001 Permission: -rwxr-xr-x
I0625 04:20:43.837131 filer.go:155 create filer.store.id to -1314563825
--- PASS: TestEmptyRoot (0.03s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb3	0.063s
?   	github.com/seaweedfs/seaweedfs/weed/filer/mongodb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/mysql	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/mysql2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/postgres	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/postgres2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/redis	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/redis2	[no test files]
testing: warning: no tests to run
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/redis3	0.012s [no tests to run]
?   	github.com/seaweedfs/seaweedfs/weed/filer/redis_lua	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/redis_lua/stored_procedure	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/sqlite	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/store_test	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/tarantool	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/tikv	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/ydb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/ftpd	[no test files]
=== RUN   TestShortHostname
--- PASS: TestShortHostname (0.00s)
=== RUN   TestInfo
I0625 04:20:43.776545 glog_test.go:92 test
--- PASS: TestInfo (0.00s)
=== RUN   TestInfoDepth
I0625 04:20:43.776563 glog_test.go:109 depth-test0
I0625 04:20:43.776565 glog_test.go:110 depth-test1
--- PASS: TestInfoDepth (0.00s)
=== RUN   TestCopyStandardLogToPanic
--- PASS: TestCopyStandardLogToPanic (0.00s)
=== RUN   TestStandardLog
I0625 04:20:43.776597 glog_test.go:163 test
--- PASS: TestStandardLog (0.00s)
=== RUN   TestHeader
I0102 15:04:05.067890 glog_test.go:181 test
--- PASS: TestHeader (0.00s)
=== RUN   TestError
E0625 04:20:43.776636 glog_test.go:202 test
--- PASS: TestError (0.00s)
=== RUN   TestWarning
W0625 04:20:43.776645 glog_test.go:224 test
--- PASS: TestWarning (0.00s)
=== RUN   TestV
I0625 04:20:43.776657 glog_test.go:243 test
--- PASS: TestV (0.00s)
=== RUN   TestVmoduleOn
I0625 04:20:43.776673 glog_test.go:267 test
--- PASS: TestVmoduleOn (0.00s)
=== RUN   TestVmoduleOff
--- PASS: TestVmoduleOff (0.00s)
=== RUN   TestVmoduleGlob
--- PASS: TestVmoduleGlob (0.00s)
=== RUN   TestRollover
I0625 04:20:43.776720 glog_test.go:339 x
I0625 04:20:43.777063 glog_test.go:348 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
I0625 04:20:44.777255 glog_test.go:361 x
--- PASS: TestRollover (1.00s)
=== RUN   TestLogBacktraceAt
I0625 04:20:44.778204 glog_test.go:395 we want a stack trace here
goroutine 21 [running]:
github.com/seaweedfs/seaweedfs/weed/glog.stacks(0x0)
	/home/seaweedfs/weed/glog/glog.go:768 +0x8c
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).output(0x3047a0, 0x0, 0x2ad7326d2230, {0x1ddd80?, 0x1?}, 0x0?, 0x0)
	/home/seaweedfs/weed/glog/glog.go:677 +0xec
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).printDepth(0x3047a0, 0x0, 0x2ad7326bae88?, {0x2ad7326bae28, 0x1, 0x1})
	/home/seaweedfs/weed/glog/glog.go:648 +0xc4
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).print(...)
	/home/seaweedfs/weed/glog/glog.go:639
github.com/seaweedfs/seaweedfs/weed/glog.Info(...)
	/home/seaweedfs/weed/glog/glog.go:1061
github.com/seaweedfs/seaweedfs/weed/glog.TestLogBacktraceAt(0x2ad7327c4008)
	/home/seaweedfs/weed/glog/glog_test.go:395 +0x2e8
testing.tRunner(0x2ad7327c4008, 0x1a95e0)
	/usr/local/go/src/testing/testing.go:2036 +0xc4
created by testing.(*T).Run in goroutine 1
	/usr/local/go/src/testing/testing.go:2101 +0x3a8
--- PASS: TestLogBacktraceAt (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/glog	1.004s
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
E0625 04:20:43.793324 iamapi_management_handlers.go:508 PutUserPolicy:  the user with name InvalidUser cannot be found
E0625 04:20:43.793953 iamapi_handlers.go:29 Response the user with name InvalidUser cannot be found
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
ok  	github.com/seaweedfs/seaweedfs/weed/iamapi	0.021s
=== RUN   TestCropping
--- PASS: TestCropping (0.09s)
=== RUN   TestXYZ
--- PASS: TestXYZ (0.45s)
=== RUN   TestResizing
--- PASS: TestResizing (0.03s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/images	0.586s
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
ok  	github.com/seaweedfs/seaweedfs/weed/mount	0.011s
?   	github.com/seaweedfs/seaweedfs/weed/mount/meta_cache	[no test files]
=== RUN   Test_PageChunkWrittenIntervalList
--- PASS: Test_PageChunkWrittenIntervalList (0.00s)
=== RUN   Test_PageChunkWrittenIntervalList1
--- PASS: Test_PageChunkWrittenIntervalList1 (0.00s)
=== RUN   TestUploadPipeline
--- PASS: TestUploadPipeline (46.24s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mount/page_writer	46.246s
?   	github.com/seaweedfs/seaweedfs/weed/mount/unmount	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/agent	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/broker	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/agent_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/pub_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/sub_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/logstore	[no test files]
=== RUN   Test_allocateOneBroker
=== RUN   Test_allocateOneBroker/test_only_one_broker
I0625 04:20:43.786676 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 1, assignments: [partition:{ring_size:2520 range_stop:2520 unix_time_ns:1782361243786666534}]
I0625 04:20:43.787544 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 1, assignments: [partition:{ring_size:2520 range_stop:2520 unix_time_ns:1782361243786666534} leader_broker:"localhost:17777"] hasChanges: true
I0625 04:20:43.787584 allocate.go:33 allocate topic partitions 1: [partition:{ring_size:2520 range_stop:2520 unix_time_ns:1782361243786666534} leader_broker:"localhost:17777"]
--- PASS: Test_allocateOneBroker (0.00s)
    --- PASS: Test_allocateOneBroker/test_only_one_broker (0.00s)
=== RUN   TestEnsureAssignmentsToActiveBrokersX
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_empty_leader
test empty leader before [partition:{} follower_broker:"localhost:2"]
I0625 04:20:43.787673 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} follower_broker:"localhost:2"]
I0625 04:20:43.787769 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:4" follower_broker:"localhost:2"] hasChanges: true
test empty leader after [partition:{} leader_broker:"localhost:4" follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_empty_follower
test empty follower before [partition:{} leader_broker:"localhost:1"]
I0625 04:20:43.787869 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1"]
I0625 04:20:43.787919 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:4"] hasChanges: true
test empty follower after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:4"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_dead_follower
test dead follower before [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:200"]
I0625 04:20:43.787943 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:200"]
I0625 04:20:43.787972 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:3"] hasChanges: true
test dead follower after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:3"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_dead_leader_and_follower
test dead leader and follower before [partition:{} leader_broker:"localhost:100" follower_broker:"localhost:200"]
I0625 04:20:43.787995 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:100" follower_broker:"localhost:200"]
I0625 04:20:43.788031 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:2" follower_broker:"localhost:4"] hasChanges: true
test dead leader and follower after [partition:{} leader_broker:"localhost:2" follower_broker:"localhost:4"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_low_active_brokers
test low active brokers before [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0625 04:20:43.788054 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0625 04:20:43.788078 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"] hasChanges: false
test low active brokers after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_low_active_brokers_with_one_follower
test low active brokers with one follower before [partition:{} leader_broker:"localhost:1"]
I0625 04:20:43.788096 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1"]
I0625 04:20:43.788131 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:1"] hasChanges: true
test low active brokers with one follower after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:1"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_single_active_broker
test single active broker before [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0625 04:20:43.788152 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0625 04:20:43.788180 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:1"] hasChanges: true
test single active broker after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:1"]
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
ok  	github.com/seaweedfs/seaweedfs/weed/mq/pub_balancer	0.029s
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
=== RUN   TestWriteReadParquet
RecordType: fields:{name:"Address" type:{record_type:{fields:{name:"City" type:{scalar_type:STRING}} fields:{name:"Street" type:{scalar_type:STRING}}}}} fields:{name:"Company" type:{scalar_type:STRING}} fields:{name:"CreatedAt" type:{scalar_type:INT64}} fields:{name:"ID" type:{scalar_type:INT64}} fields:{name:"Person" type:{record_type:{fields:{name:"emails" type:{list_type:{element_type:{scalar_type:STRING}}}} fields:{name:"zName" type:{scalar_type:STRING}}}}}
ParquetSchema: message example {
	optional group Address {
		optional binary City;
		optional binary Street;
	}
	optional binary Company;
	optional int64 CreatedAt;
	optional int64 ID;
	optional group Person {
		repeated binary emails;
		optional binary zName;
	}
}
Go Type: struct { Address *struct { City *[]uint8; Street *[]uint8 }; Company *[]uint8; CreatedAt *int64; ID *int64; Person *struct { Emails []*[]uint8; ZName *[]uint8 } }
Write RecordValue: fields:{key:"Company" value:{string_value:"company_0"}} fields:{key:"CreatedAt" value:{int64_value:2}} fields:{key:"ID" value:{int64_value:1}} fields:{key:"Person" value:{record_value:{fields:{key:"emails" value:{list_value:{values:{string_value:"john_0@a.com"} values:{string_value:"john_0@b.com"} values:{string_value:"john_0@c.com"} values:{string_value:"john_0@d.com"} values:{string_value:"john_0@e.com"}}}} fields:{key:"zName" value:{string_value:"john_0"}}}}}
Build Row: [C:0 D:0 R:0 V:<null> C:1 D:0 R:0 V:<null> C:2 D:1 R:0 V:company_0 C:3 D:1 R:0 V:2 C:4 D:1 R:0 V:1 C:5 D:2 R:0 V:john_0@a.com C:5 D:2 R:1 V:john_0@b.com C:5 D:2 R:1 V:john_0@c.com C:5 D:2 R:1 V:john_0@d.com C:5 D:2 R:1 V:john_0@e.com C:6 D:2 R:0 V:john_0]
Write RecordValue: fields:{key:"Company" value:{string_value:"company_1"}} fields:{key:"CreatedAt" value:{int64_value:4}} fields:{key:"ID" value:{int64_value:2}} fields:{key:"Person" value:{record_value:{fields:{key:"emails" value:{list_value:{values:{string_value:"john_1@a.com"} values:{string_value:"john_1@b.com"} values:{string_value:"john_1@c.com"} values:{string_value:"john_1@d.com"} values:{string_value:"john_1@e.com"}}}} fields:{key:"zName" value:{string_value:"john_1"}}}}}
Build Row: [C:0 D:0 R:0 V:<null> C:1 D:0 R:0 V:<null> C:2 D:1 R:0 V:company_1 C:3 D:1 R:0 V:4 C:4 D:1 R:0 V:2 C:5 D:2 R:0 V:john_1@a.com C:5 D:2 R:1 V:john_1@b.com C:5 D:2 R:1 V:john_1@c.com C:5 D:2 R:1 V:john_1@d.com C:5 D:2 R:1 V:john_1@e.com C:6 D:2 R:0 V:john_1]
Write RecordValue: fields:{key:"Company" value:{string_value:"company_2"}} fields:{key:"CreatedAt" value:{int64_value:6}} fields:{key:"ID" value:{int64_value:3}} fields:{key:"Person" value:{record_value:{fields:{key:"emails" value:{list_value:{values:{string_value:"john_2@a.com"} values:{string_value:"john_2@b.com"} values:{string_value:"john_2@c.com"} values:{string_value:"john_2@d.com"} values:{string_value:"john_2@e.com"}}}} fields:{key:"zName" value:{string_value:"john_2"}}}}}
Build Row: [C:0 D:0 R:0 V:<null> C:1 D:0 R:0 V:<null> C:2 D:1 R:0 V:company_2 C:3 D:1 R:0 V:6 C:4 D:1 R:0 V:3 C:5 D:2 R:0 V:john_2@a.com C:5 D:2 R:1 V:john_2@b.com C:5 D:2 R:1 V:john_2@c.com C:5 D:2 R:1 V:john_2@d.com C:5 D:2 R:1 V:john_2@e.com C:6 D:2 R:0 V:john_2]
Read RecordValue: fields:{key:"Address" value:{record_value:{fields:{key:"City" value:{string_value:""}} fields:{key:"Street" value:{string_value:""}}}}} fields:{key:"Company" value:{string_value:"company_0"}} fields:{key:"CreatedAt" value:{int64_value:2}} fields:{key:"ID" value:{int64_value:1}} fields:{key:"Person" value:{record_value:{fields:{key:"emails" value:{list_value:{values:{string_value:"john_0@a.com"} values:{string_value:"john_0@b.com"} values:{string_value:"john_0@c.com"} values:{string_value:"john_0@d.com"} values:{string_value:"john_0@e.com"}}}} fields:{key:"zName" value:{string_value:"john_0"}}}}}
Read RecordValue: fields:{key:"Address" value:{record_value:{fields:{key:"City" value:{string_value:""}} fields:{key:"Street" value:{string_value:""}}}}} fields:{key:"Company" value:{string_value:"company_1"}} fields:{key:"CreatedAt" value:{int64_value:4}} fields:{key:"ID" value:{int64_value:2}} fields:{key:"Person" value:{record_value:{fields:{key:"emails" value:{list_value:{values:{string_value:"john_1@a.com"} values:{string_value:"john_1@b.com"} values:{string_value:"john_1@c.com"} values:{string_value:"john_1@d.com"} values:{string_value:"john_1@e.com"}}}} fields:{key:"zName" value:{string_value:"john_1"}}}}}
Read RecordValue: fields:{key:"Address" value:{record_value:{fields:{key:"City" value:{string_value:""}} fields:{key:"Street" value:{string_value:""}}}}} fields:{key:"Company" value:{string_value:"company_2"}} fields:{key:"CreatedAt" value:{int64_value:6}} fields:{key:"ID" value:{int64_value:3}} fields:{key:"Person" value:{record_value:{fields:{key:"emails" value:{list_value:{values:{string_value:"john_2@a.com"} values:{string_value:"john_2@b.com"} values:{string_value:"john_2@c.com"} values:{string_value:"john_2@d.com"} values:{string_value:"john_2@e.com"}}}} fields:{key:"zName" value:{string_value:"john_2"}}}}}
total: 3
--- PASS: TestWriteReadParquet (0.01s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/schema	0.010s
=== RUN   TestMessageSerde
serialized size 368
--- PASS: TestMessageSerde (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/segment	0.002s
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
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14017252659914416997 ext:509921106 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:1 RangeStop:2 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14017252659914420325 ext:509924432 loc:0x15957e0}}
--- PASS: TestAddConsumerInstance (1.00s)
=== RUN   TestMultipleConsumerInstances
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14017252660988473385 ext:1510235671 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:1 RangeStop:2 RingSize:3 UnixTimeNs:0} consumer:second ts:{wall:14017252660988477453 ext:1510239737 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:third ts:{wall:14017252660988478440 ext:1510240724 loc:0x15957e0}}
--- PASS: TestMultipleConsumerInstances (1.00s)
=== RUN   TestConfirmAdjustment
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:third ts:{wall:14017252662062381932 ext:2510402394 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:1 RangeStop:2 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14017252662062389775 ext:2510410236 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:second ts:{wall:14017252662062390558 ext:2510411019 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14017252664210063903 ext:4510600714 loc:0x15957e0}}
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
ok  	github.com/seaweedfs/seaweedfs/weed/mq/sub_coordinator	7.014s
?   	github.com/seaweedfs/seaweedfs/weed/mq/topic	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/notification	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/notification/aws_sqs	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/notification/gocdk_pub_sub	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/notification/google_pub_sub	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/notification/kafka	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/notification/log	[no test files]
=== RUN   TestCaching
vid 123 locations = [{a.com:8080   0}]
--- PASS: TestCaching (2.00s)
=== RUN   TestCreateNeedleFromRequest
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain; charset=utf-8 Compressed:true, originalSize: 1422
W0625 04:20:45.785251 upload_content.go:190 uploading 0 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain; charset=utf-8 Compressed:true, originalSize: 1422
W0625 04:20:46.260592 upload_content.go:190 uploading 1 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain; charset=utf-8 Compressed:true, originalSize: 1422
W0625 04:20:46.972644 upload_content.go:190 uploading 2 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
err: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
uploadResult: <nil>
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0625 04:20:46.972772 upload_content.go:190 uploading 0 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0625 04:20:47.447592 upload_content.go:190 uploading 1 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0625 04:20:48.159613 upload_content.go:190 uploading 2 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
--- PASS: TestCreateNeedleFromRequest (2.38s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/operation	4.386s
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
ok  	github.com/seaweedfs/seaweedfs/weed/pb	0.006s
=== RUN   TestFileIdSize
24
14
--- PASS: TestFileIdSize (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/pb/filer_pb	0.007s
?   	github.com/seaweedfs/seaweedfs/weed/pb/iam_pb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/master_pb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/message_fbs	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/mount_pb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/mq_agent_pb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/mq_pb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/remote_pb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/s3_pb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/schema_pb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/pb/volume_server_pb	[no test files]
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
ok  	github.com/seaweedfs/seaweedfs/weed/query/json	0.002s
?   	github.com/seaweedfs/seaweedfs/weed/query/sqltypes	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/remote_storage	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/remote_storage/azure	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/remote_storage/gcs	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/remote_storage/s3	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/repl_util	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/sink	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/sink/azuresink	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/sink/b2sink	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/sink/filersink	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/sink/gcssink	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/sink/localsink	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/sink/s3sink	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/source	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/replication/sub	[no test files]
=== RUN   TestIdentityListFileFormat
{
  "identities":  [
    {
      "name":  "some_name",
      "credentials":  [
        {
          "accessKey":  "some_access_key1",
          "secretKey":  "some_secret_key2"
        }
      ],
      "actions":  [
        "Admin",
        "Read",
        "Write"
      ],
      "account":  null
    },
    {
      "name":  "some_read_only_user",
      "credentials":  [
        {
          "accessKey":  "some_access_key1",
          "secretKey":  "some_secret_key1"
        }
      ],
      "actions":  [
        "Read"
      ],
      "account":  null
    },
    {
      "name":  "some_normal_user",
      "credentials":  [
        {
          "accessKey":  "some_access_key2",
          "secretKey":  "some_secret_key2"
        }
      ],
      "actions":  [
        "Read",
        "Write"
      ],
      "account":  null
    }
  ],
  "accounts":  []
}
--- PASS: TestIdentityListFileFormat (0.00s)
=== RUN   TestCanDo
--- PASS: TestCanDo (0.00s)
=== RUN   TestLoadS3ApiConfiguration
--- PASS: TestLoadS3ApiConfiguration (0.00s)
=== RUN   TestIsRequestPresignedSignatureV4
--- PASS: TestIsRequestPresignedSignatureV4 (0.00s)
=== RUN   TestIsReqAuthenticated
--- PASS: TestIsReqAuthenticated (0.00s)
=== RUN   TestCheckaAnonymousRequestAuthType
--- PASS: TestCheckaAnonymousRequestAuthType (0.00s)
=== RUN   TestCheckAdminRequestAuthType
--- PASS: TestCheckAdminRequestAuthType (0.00s)
=== RUN   TestGetStringToSignPUT
--- PASS: TestGetStringToSignPUT (0.00s)
=== RUN   TestGetStringToSignGETEmptyStringHash
--- PASS: TestGetStringToSignGETEmptyStringHash (0.00s)
=== RUN   TestBuildBucketMetadata
W0625 04:20:43.797533 bucket_metadata.go:105 Invalid ownership: , bucket: ownershipEmptyStr
W0625 04:20:43.797988 bucket_metadata.go:116 owner[id=xxxxx] is invalid, bucket: acpEmptyObject
--- PASS: TestBuildBucketMetadata (0.00s)
=== RUN   TestGetBucketMetadata
--- PASS: TestGetBucketMetadata (1.00s)
=== RUN   TestNewSignV4ChunkedReaderstreamingAws4HmacSha256Payload
--- PASS: TestNewSignV4ChunkedReaderstreamingAws4HmacSha256Payload (0.00s)
=== RUN   TestNewSignV4ChunkedReaderStreamingUnsignedPayloadTrailer
--- PASS: TestNewSignV4ChunkedReaderStreamingUnsignedPayloadTrailer (0.00s)
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
=== RUN   TestGetAccountId
--- PASS: TestGetAccountId (0.00s)
=== RUN   TestExtractAcl
--- PASS: TestExtractAcl (0.00s)
=== RUN   TestParseAndValidateAclHeaders
W0625 04:20:44.799109 s3api_acl_helper.go:292 invalid canonical grantee! account id[notExistsAccount] is not exists
W0625 04:20:44.799118 s3api_acl_helper.go:281 invalid group grantee! group name[http:sfasf] is not valid
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
=== RUN   TestListBucketsHandler
--- PASS: TestListBucketsHandler (0.00s)
=== RUN   TestLimit
--- PASS: TestLimit (0.00s)
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
=== RUN   TestCopyObjectResponse
<?xml version="1.0" encoding="UTF-8"?>
<CopyObjectResult><LastModified>2026-06-25T04:20:44.803142601Z</LastModified><ETag>12345678</ETag></CopyObjectResult>
--- PASS: TestCopyObjectResponse (0.00s)
=== RUN   TestCopyPartResponse
<?xml version="1.0" encoding="UTF-8"?>
<CopyPartResult><LastModified>2026-06-25T04:20:44.803172742Z</LastModified><ETag>12345678</ETag></CopyPartResult>
--- PASS: TestCopyPartResponse (0.00s)
=== RUN   TestXMLUnmarshall
--- PASS: TestXMLUnmarshall (0.00s)
=== RUN   TestXMLMarshall
--- PASS: TestXMLMarshall (0.00s)
=== RUN   TestValidateTags
--- PASS: TestValidateTags (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api	1.031s
=== RUN   TestPostPolicyForm
--- PASS: TestPostPolicyForm (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api/policy	0.008s
?   	github.com/seaweedfs/seaweedfs/weed/s3api/s3_constants	[no test files]
=== RUN   Test_verifyBucketName
--- PASS: Test_verifyBucketName (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api/s3bucket	0.003s
?   	github.com/seaweedfs/seaweedfs/weed/s3api/s3err	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/security	[no test files]
=== RUN   TestSequencer
I0625 04:20:43.781241 snowflake_sequencer.go:21 use snowflake seq id generator, nodeid:for_test hex_of_nodeid: 1
1cba1d4f31001000
1cba1d4f31001001
1cba1d4f31001002
1cba1d4f31001003
1cba1d4f31001004
1cba1d4f31001005
1cba1d4f31001006
1cba1d4f31001007
1cba1d4f31001008
1cba1d4f31001009
1cba1d4f3100100a
1cba1d4f3100100b
1cba1d4f3100100c
1cba1d4f3100100d
1cba1d4f3100100e
1cba1d4f3100100f
1cba1d4f31001010
1cba1d4f31001011
1cba1d4f31001012
1cba1d4f31001013
1cba1d4f31001014
1cba1d4f31001015
1cba1d4f31001016
1cba1d4f31001017
1cba1d4f31001018
1cba1d4f31001019
1cba1d4f3100101a
1cba1d4f3100101b
1cba1d4f3100101c
1cba1d4f3100101d
1cba1d4f3100101e
1cba1d4f3100101f
1cba1d4f31001020
1cba1d4f31001021
1cba1d4f31001022
1cba1d4f31001023
1cba1d4f31001024
1cba1d4f31001025
1cba1d4f31001026
1cba1d4f31001027
1cba1d4f31001028
1cba1d4f31001029
1cba1d4f3100102a
1cba1d4f3100102b
1cba1d4f3100102c
1cba1d4f3100102d
1cba1d4f3100102e
1cba1d4f3100102f
1cba1d4f31001030
1cba1d4f31001031
1cba1d4f31001032
1cba1d4f31001033
1cba1d4f31001034
1cba1d4f31001035
1cba1d4f31001036
1cba1d4f31001037
1cba1d4f31001038
1cba1d4f31001039
1cba1d4f3100103a
1cba1d4f3100103b
1cba1d4f3100103c
1cba1d4f3100103d
1cba1d4f3100103e
1cba1d4f3100103f
1cba1d4f31001040
1cba1d4f31001041
1cba1d4f31001042
1cba1d4f31001043
1cba1d4f31001044
1cba1d4f31001045
1cba1d4f31001046
1cba1d4f31001047
1cba1d4f31001048
1cba1d4f31001049
1cba1d4f3100104a
1cba1d4f3100104b
1cba1d4f3100104c
1cba1d4f3100104d
1cba1d4f3100104e
1cba1d4f3100104f
1cba1d4f31001050
1cba1d4f31001051
1cba1d4f31001052
1cba1d4f31001053
1cba1d4f31001054
1cba1d4f31001055
1cba1d4f31001056
1cba1d4f31001057
1cba1d4f31001058
1cba1d4f31001059
1cba1d4f3100105a
1cba1d4f3100105b
1cba1d4f3100105c
1cba1d4f3100105d
1cba1d4f3100105e
1cba1d4f3100105f
1cba1d4f31001060
1cba1d4f31001061
1cba1d4f31001062
1cba1d4f31001063
--- PASS: TestSequencer (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/sequence	0.006s
=== RUN   TestParseURL
--- PASS: TestParseURL (0.00s)
=== RUN   TestPtrie
matched1 /topics/abc
matched1 /topics/abc/d
matched2 /topics/abc
matched2 /topics/abc/d
--- PASS: TestPtrie (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/server	0.020s
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
ok  	github.com/seaweedfs/seaweedfs/weed/server/filer_ui	0.006s
?   	github.com/seaweedfs/seaweedfs/weed/server/master_ui	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/server/volume_server_ui	[no test files]
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
dn1 moves ec shard 1.2 to dn2
dn1 moves ec shard 1.3 to dn2
dn1 moves ec shard 1.4 to dn2
dn1 moves ec shard 1.5 to dn2
dn1 moves ec shard 1.6 to dn2
dn1 moves ec shard 1.0 to dn2
dn1 moves ec shard 1.1 to dn2
dn2 moves ec shard 2.3 to dn1
dn2 moves ec shard 2.4 to dn1
dn2 moves ec shard 2.5 to dn1
dn2 moves ec shard 2.6 to dn1
dn2 moves ec shard 2.0 to dn1
dn2 moves ec shard 2.1 to dn1
dn2 moves ec shard 2.2 to dn1
--- PASS: TestCommandEcBalanceSmall (0.00s)
=== RUN   TestCommandEcBalanceNothingToMove
balanceEcVolumes c1
--- PASS: TestCommandEcBalanceNothingToMove (0.00s)
=== RUN   TestCommandEcBalanceAddNewServers
balanceEcVolumes c1
--- PASS: TestCommandEcBalanceAddNewServers (0.00s)
=== RUN   TestCommandEcBalanceAddNewRacks
balanceEcVolumes c1
dn1 moves ec shard 1.0 to dn3
dn2 moves ec shard 1.7 to dn4
dn2 moves ec shard 1.8 to dn3
dn1 moves ec shard 1.1 to dn4
dn1 moves ec shard 1.2 to dn3
dn2 moves ec shard 1.9 to dn4
dn2 moves ec shard 1.10 to dn3
dn2 moves ec shard 2.0 to dn4
dn2 moves ec shard 2.1 to dn3
dn1 moves ec shard 2.8 to dn3
dn1 moves ec shard 2.9 to dn4
dn2 moves ec shard 2.2 to dn3
dn2 moves ec shard 2.3 to dn4
dn1 moves ec shard 2.7 to dn3
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
ok  	github.com/seaweedfs/seaweedfs/weed/shell	0.197s
=== RUN   TestRobinCounter
--- PASS: TestRobinCounter (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/stats	0.006s
=== RUN   TestUnUsedSpace
--- PASS: TestUnUsedSpace (0.00s)
=== RUN   TestFirstInvalidIndex
I0625 04:20:43.787186 volume_loading.go:139 checking volume data integrity for volume 1
I0625 04:20:43.787717 volume_loading.go:157 loading memory index /tmp/TestFirstInvalidIndex1279581008/001/1.idx to memory
--- PASS: TestFirstInvalidIndex (0.01s)
=== RUN   TestFastLoadingNeedleMapMetrics
I0625 04:20:43.805662 needle_map_metric_test.go:26 FileCount expected 10000 actual 12004
I0625 04:20:43.805674 needle_map_metric_test.go:27 DeletedSize expected 1702 actual 1777
I0625 04:20:43.805678 needle_map_metric_test.go:28 ContentSize expected 10000 actual 10000
I0625 04:20:43.805680 needle_map_metric_test.go:29 DeletedCount expected 1702 actual 3781
I0625 04:20:43.805683 needle_map_metric_test.go:30 MaxFileKey expected 10000 actual 10000
--- PASS: TestFastLoadingNeedleMapMetrics (0.01s)
=== RUN   TestBinarySearch
--- PASS: TestBinarySearch (0.00s)
=== RUN   TestSortVolumeInfos
--- PASS: TestSortVolumeInfos (0.00s)
=== RUN   TestReadNeedMetaWithWritesAndUpdates
I0625 04:20:43.805921 volume_loading.go:139 checking volume data integrity for volume 1
I0625 04:20:43.805934 volume_loading.go:157 loading memory index /tmp/TestReadNeedMetaWithWritesAndUpdates2424327927/001/1.idx to memory
--- PASS: TestReadNeedMetaWithWritesAndUpdates (0.00s)
=== RUN   TestReadNeedMetaWithDeletesThenWrites
I0625 04:20:43.809190 volume_loading.go:139 checking volume data integrity for volume 1
I0625 04:20:43.809203 volume_loading.go:157 loading memory index /tmp/TestReadNeedMetaWithDeletesThenWrites4168582217/001/1.idx to memory
--- PASS: TestReadNeedMetaWithDeletesThenWrites (0.00s)
=== RUN   TestMakeDiff
--- PASS: TestMakeDiff (0.00s)
=== RUN   TestMemIndexCompaction
I0625 04:20:43.813073 volume_loading.go:139 checking volume data integrity for volume 1
I0625 04:20:43.813087 volume_loading.go:157 loading memory index /tmp/TestMemIndexCompaction53742914/001/1.idx to memory
I0625 04:20:43.928187 needle_map_memory.go:111 loading idx from offset 0 for file: /tmp/TestMemIndexCompaction53742914/001/1.cpx
    volume_vacuum_test.go:92: compaction speed: 64043925.21 bytes/s
I0625 04:20:44.019585 volume_vacuum.go:114 Committing volume 1 vacuuming...
I0625 04:21:23.961206 needle_map_memory.go:111 loading idx from offset 9727 for file: /tmp/TestMemIndexCompaction53742914/001/1.cpx
I0625 04:21:23.995614 volume_loading.go:98 readSuperBlock volume 1 version 3
I0625 04:21:23.995642 volume_loading.go:139 checking volume data integrity for volume 1
I0625 04:21:23.995654 volume_loading.go:154 updating memory compact index /tmp/TestMemIndexCompaction53742914/001/1.idx 
    volume_vacuum_test.go:110: realRecordCount:29727, v.FileCount():29727 mm.DeletedCount():9846
I0625 04:21:23.996731 volume_loading.go:98 readSuperBlock volume 1 version 3
I0625 04:21:23.996746 volume_loading.go:139 checking volume data integrity for volume 1
I0625 04:21:23.996756 volume_loading.go:157 loading memory index /tmp/TestMemIndexCompaction53742914/001/1.idx to memory
--- PASS: TestMemIndexCompaction (40.24s)
=== RUN   TestLDBIndexCompaction
I0625 04:21:24.050937 volume_loading.go:139 checking volume data integrity for volume 1
I0625 04:21:24.050953 volume_loading.go:172 loading leveldb index /tmp/TestLDBIndexCompaction3258092758/001/1.ldb
I0625 04:21:24.056504 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestLDBIndexCompaction3258092758/001/1.ldb, watermark 0, num of entries:0
I0625 04:21:24.062653 needle_map_leveldb.go:66 Loading /tmp/TestLDBIndexCompaction3258092758/001/1.ldb... , watermark: 0
I0625 04:21:24.219999 needle_map_leveldb.go:338 loading idx to leveldb from offset 0 for file: /tmp/TestLDBIndexCompaction3258092758/001/1.cpx
    volume_vacuum_test.go:92: compaction speed: 55199997.18 bytes/s
I0625 04:21:24.507092 volume_vacuum.go:114 Committing volume 1 vacuuming...
I0625 04:22:02.389512 needle_map_leveldb.go:338 loading idx to leveldb from offset 9681 for file: /tmp/TestLDBIndexCompaction3258092758/001/1.cpx
I0625 04:22:02.479246 volume_loading.go:98 readSuperBlock volume 1 version 3
I0625 04:22:02.479278 volume_loading.go:139 checking volume data integrity for volume 1
I0625 04:22:02.479293 volume_loading.go:169 updating leveldb index /tmp/TestLDBIndexCompaction3258092758/001/1.ldb
    volume_vacuum_test.go:105: watermark from levelDB: 20000, realWatermark: 20000, nm.recordCount: 29681, realRecordCount:29681, fileCount=29681, deletedcount:9671
I0625 04:22:02.505392 volume_loading.go:98 readSuperBlock volume 1 version 3
I0625 04:22:02.505411 volume_loading.go:139 checking volume data integrity for volume 1
I0625 04:22:02.505423 volume_loading.go:172 loading leveldb index /tmp/TestLDBIndexCompaction3258092758/001/1.ldb
I0625 04:22:02.512961 needle_map_leveldb.go:66 Loading /tmp/TestLDBIndexCompaction3258092758/001/1.ldb... , watermark: 20000
--- PASS: TestLDBIndexCompaction (38.53s)
=== RUN   TestSearchVolumesWithDeletedNeedles
I0625 04:22:02.580779 volume_loading.go:139 checking volume data integrity for volume 1
I0625 04:22:02.580792 volume_loading.go:157 loading memory index /tmp/TestSearchVolumesWithDeletedNeedles255124583/001/1.idx to memory
offset: 13592, isLast: false
--- PASS: TestSearchVolumesWithDeletedNeedles (0.01s)
=== RUN   TestDestroyEmptyVolumeWithOnlyEmpty
I0625 04:22:02.586260 volume_loading.go:139 checking volume data integrity for volume 1
I0625 04:22:02.586271 volume_loading.go:157 loading memory index /tmp/TestDestroyEmptyVolumeWithOnlyEmpty418784947/001/1.idx to memory
--- PASS: TestDestroyEmptyVolumeWithOnlyEmpty (0.00s)
=== RUN   TestDestroyEmptyVolumeWithoutOnlyEmpty
I0625 04:22:02.590723 volume_loading.go:139 checking volume data integrity for volume 1
I0625 04:22:02.590735 volume_loading.go:157 loading memory index /tmp/TestDestroyEmptyVolumeWithoutOnlyEmpty2414949070/001/1.idx to memory
--- PASS: TestDestroyEmptyVolumeWithoutOnlyEmpty (0.00s)
=== RUN   TestDestroyNonemptyVolumeWithOnlyEmpty
I0625 04:22:02.595208 volume_loading.go:139 checking volume data integrity for volume 1
I0625 04:22:02.595221 volume_loading.go:157 loading memory index /tmp/TestDestroyNonemptyVolumeWithOnlyEmpty4019990354/001/1.idx to memory
--- PASS: TestDestroyNonemptyVolumeWithOnlyEmpty (0.00s)
=== RUN   TestDestroyNonemptyVolumeWithoutOnlyEmpty
I0625 04:22:02.597721 volume_loading.go:139 checking volume data integrity for volume 1
I0625 04:22:02.597733 volume_loading.go:157 loading memory index /tmp/TestDestroyNonemptyVolumeWithoutOnlyEmpty3640728580/001/1.idx to memory
--- PASS: TestDestroyNonemptyVolumeWithoutOnlyEmpty (0.01s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage	78.835s
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend	[no test files]
=== RUN   TestMemoryMapMaxSizeReadWrite
--- PASS: TestMemoryMapMaxSizeReadWrite (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage/backend/memory_map	0.003s
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend/rclone_backend	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend/s3_backend	[no test files]
=== RUN   TestEncodingDecoding
I0625 04:20:43.787314 ec_encoder.go:81 encodeDatFile 1.dat size:2590912
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
ok  	github.com/seaweedfs/seaweedfs/weed/storage/erasure_coding	0.104s
?   	github.com/seaweedfs/seaweedfs/weed/storage/idx	[no test files]
=== RUN   TestParseFileIdFromString
--- PASS: TestParseFileIdFromString (0.00s)
=== RUN   TestParseKeyHash
--- PASS: TestParseKeyHash (0.00s)
=== RUN   TestAppend
--- PASS: TestAppend (0.01s)
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
ok  	github.com/seaweedfs/seaweedfs/weed/storage/needle	0.019s
=== RUN   TestMemoryUsage
Each 16.16 Bytes	Alloc = 19 MiB	TotalAlloc = 26 MiB	Sys = 44 MiB	NumGC = 5	Taken = 886.566695ms
Each 15.61 Bytes	Alloc = 38 MiB	TotalAlloc = 50 MiB	Sys = 52 MiB	NumGC = 7	Taken = 869.065462ms
Each 15.43 Bytes	Alloc = 56 MiB	TotalAlloc = 74 MiB	Sys = 80 MiB	NumGC = 8	Taken = 866.597238ms
Each 15.34 Bytes	Alloc = 74 MiB	TotalAlloc = 99 MiB	Sys = 100 MiB	NumGC = 9	Taken = 865.754528ms
Each 15.28 Bytes	Alloc = 93 MiB	TotalAlloc = 123 MiB	Sys = 112 MiB	NumGC = 10	Taken = 867.503161ms
Each 15.24 Bytes	Alloc = 111 MiB	TotalAlloc = 147 MiB	Sys = 132 MiB	NumGC = 11	Taken = 868.259576ms
Each 15.22 Bytes	Alloc = 129 MiB	TotalAlloc = 172 MiB	Sys = 148 MiB	NumGC = 12	Taken = 865.138209ms
Each 15.20 Bytes	Alloc = 148 MiB	TotalAlloc = 196 MiB	Sys = 169 MiB	NumGC = 13	Taken = 866.539818ms
Each 15.18 Bytes	Alloc = 166 MiB	TotalAlloc = 221 MiB	Sys = 185 MiB	NumGC = 14	Taken = 877.594529ms
Each 15.17 Bytes	Alloc = 185 MiB	TotalAlloc = 245 MiB	Sys = 209 MiB	NumGC = 15	Taken = 867.865221ms
--- PASS: TestMemoryUsage (8.70s)
=== RUN   TestSnowflakeSequencer
I0625 04:20:52.482472 snowflake_sequencer.go:21 use snowflake seq id generator, nodeid:for_test hex_of_nodeid: 1
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
--- PASS: TestCompactMap (0.10s)
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
    compact_map_test.go:201: 1574318345753513987
    compact_map_test.go:212: 1574318350048481283
--- PASS: TestCompactSection_Get (0.87s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage/needle_map	9.748s
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
ok  	github.com/seaweedfs/seaweedfs/weed/storage/super_block	0.006s
?   	github.com/seaweedfs/seaweedfs/weed/storage/types	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/storage/volume_info	[no test files]
=== RUN   TestRemoveDataCenter
data: map[dc1:map[rack1:map[server111:map[limit:3 volumes:[map[id:1 size:12312] map[id:2 size:12312] map[id:3 size:12312]]] server112:map[limit:10 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]]] rack2:map[server121:map[limit:4 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server122:map[limit:4 volumes:[]] server123:map[limit:5 volumes:[map[id:2 size:12312] map[id:3 size:12312] map[id:4 size:12312]]]]] dc2:map[] dc3:map[rack2:map[server321:map[limit:4 volumes:[map[id:1 size:12312] map[id:3 size:12312] map[id:5 size:12312]]]]]]
I0625 04:20:43.786898 node.go:250 weedfs adds child dc1
I0625 04:20:43.787590 node.go:250 weedfs:dc1 adds child rack1
I0625 04:20:43.787599 node.go:250 weedfs:dc1:rack1 adds child server111
I0625 04:20:43.787604 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0625 04:20:43.787612 node.go:250 weedfs:dc1:rack1 adds child server112
I0625 04:20:43.787616 node.go:250 weedfs:dc1:rack1:server112 adds child 
I0625 04:20:43.787622 node.go:250 weedfs:dc1 adds child rack2
I0625 04:20:43.787624 node.go:250 weedfs:dc1:rack2 adds child server121
I0625 04:20:43.787626 node.go:250 weedfs:dc1:rack2:server121 adds child 
I0625 04:20:43.787634 node.go:250 weedfs:dc1:rack2 adds child server122
I0625 04:20:43.787637 node.go:250 weedfs:dc1:rack2:server122 adds child 
I0625 04:20:43.787639 node.go:250 weedfs:dc1:rack2 adds child server123
I0625 04:20:43.787641 node.go:250 weedfs:dc1:rack2:server123 adds child 
I0625 04:20:43.787646 node.go:250 weedfs adds child dc2
I0625 04:20:43.787648 node.go:250 weedfs adds child dc3
I0625 04:20:43.787650 node.go:250 weedfs:dc3 adds child rack2
I0625 04:20:43.787652 node.go:250 weedfs:dc3:rack2 adds child server321
I0625 04:20:43.787653 node.go:250 weedfs:dc3:rack2:server321 adds child 
I0625 04:20:43.787659 node.go:264 weedfs removes dc2
I0625 04:20:43.787661 node.go:264 weedfs removes dc3
--- PASS: TestRemoveDataCenter (0.00s)
=== RUN   TestHandlingVolumeServerHeartbeat
I0625 04:20:43.787692 node.go:250 weedfs adds child dc1
I0625 04:20:43.787696 node.go:250 weedfs:dc1 adds child rack1
I0625 04:20:43.787700 node.go:250 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0625 04:20:43.787702 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child 
I0625 04:20:43.787705 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child ssd
I0625 04:20:43.787745 volume_layout.go:417 Volume 1 becomes writable
I0625 04:20:43.787751 volume_layout.go:417 Volume 2 becomes writable
I0625 04:20:43.787754 volume_layout.go:417 Volume 3 becomes writable
I0625 04:20:43.787756 volume_layout.go:417 Volume 4 becomes writable
I0625 04:20:43.787759 volume_layout.go:417 Volume 5 becomes writable
I0625 04:20:43.787766 volume_layout.go:417 Volume 6 becomes writable
I0625 04:20:43.787769 volume_layout.go:417 Volume 7 becomes writable
I0625 04:20:43.787781 volume_layout.go:417 Volume 8 becomes writable
I0625 04:20:43.787785 volume_layout.go:417 Volume 9 becomes writable
I0625 04:20:43.787787 volume_layout.go:417 Volume 10 becomes writable
I0625 04:20:43.787789 volume_layout.go:417 Volume 11 becomes writable
I0625 04:20:43.787792 volume_layout.go:417 Volume 12 becomes writable
I0625 04:20:43.787794 volume_layout.go:417 Volume 13 becomes writable
I0625 04:20:43.787796 volume_layout.go:417 Volume 14 becomes writable
I0625 04:20:43.787805 data_node.go:81 Deleting volume id: 7
I0625 04:20:43.787809 data_node.go:81 Deleting volume id: 14
I0625 04:20:43.787811 data_node.go:81 Deleting volume id: 8
I0625 04:20:43.787813 data_node.go:81 Deleting volume id: 9
I0625 04:20:43.787814 data_node.go:81 Deleting volume id: 10
I0625 04:20:43.787816 data_node.go:81 Deleting volume id: 11
I0625 04:20:43.787818 data_node.go:81 Deleting volume id: 12
I0625 04:20:43.787824 data_node.go:81 Deleting volume id: 13
I0625 04:20:43.787830 topology.go:323 removing volume info: Id:7, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 04:20:43.787849 volume_layout.go:229 volume 7 does not have enough copies
I0625 04:20:43.787852 volume_layout.go:237 volume 7 remove from writable
I0625 04:20:43.787854 volume_layout.go:405 Volume 7 becomes unwritable
I0625 04:20:43.787857 topology.go:323 removing volume info: Id:14, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 04:20:43.787860 volume_layout.go:229 volume 14 does not have enough copies
I0625 04:20:43.787863 volume_layout.go:237 volume 14 remove from writable
I0625 04:20:43.787864 volume_layout.go:405 Volume 14 becomes unwritable
I0625 04:20:43.787868 topology.go:323 removing volume info: Id:8, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 04:20:43.787871 volume_layout.go:229 volume 8 does not have enough copies
I0625 04:20:43.787873 volume_layout.go:237 volume 8 remove from writable
I0625 04:20:43.787875 volume_layout.go:405 Volume 8 becomes unwritable
I0625 04:20:43.787877 topology.go:323 removing volume info: Id:9, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 04:20:43.787879 volume_layout.go:229 volume 9 does not have enough copies
I0625 04:20:43.787881 volume_layout.go:237 volume 9 remove from writable
I0625 04:20:43.787883 volume_layout.go:405 Volume 9 becomes unwritable
I0625 04:20:43.787887 topology.go:323 removing volume info: Id:10, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 04:20:43.787891 volume_layout.go:229 volume 10 does not have enough copies
I0625 04:20:43.787893 volume_layout.go:237 volume 10 remove from writable
I0625 04:20:43.787895 volume_layout.go:405 Volume 10 becomes unwritable
I0625 04:20:43.787897 topology.go:323 removing volume info: Id:11, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 04:20:43.787899 volume_layout.go:229 volume 11 does not have enough copies
I0625 04:20:43.787901 volume_layout.go:237 volume 11 remove from writable
I0625 04:20:43.787903 volume_layout.go:405 Volume 11 becomes unwritable
I0625 04:20:43.787905 topology.go:323 removing volume info: Id:12, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 04:20:43.787908 volume_layout.go:229 volume 12 does not have enough copies
I0625 04:20:43.787910 volume_layout.go:237 volume 12 remove from writable
I0625 04:20:43.787911 volume_layout.go:405 Volume 12 becomes unwritable
I0625 04:20:43.787913 topology.go:323 removing volume info: Id:13, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 04:20:43.787916 volume_layout.go:229 volume 13 does not have enough copies
I0625 04:20:43.787917 volume_layout.go:237 volume 13 remove from writable
I0625 04:20:43.787919 volume_layout.go:405 Volume 13 becomes unwritable
I0625 04:20:43.787925 topology.go:323 removing volume info: Id:3, Size:0, ReplicaPlacement:000, Collection:, Version:3, FileCount:0, DeleteCount:0, DeletedByteCount:0, ReadOnly:false from 127.0.0.1:34534
I0625 04:20:43.787928 volume_layout.go:229 volume 3 does not have enough copies
I0625 04:20:43.787929 volume_layout.go:237 volume 3 remove from writable
I0625 04:20:43.787931 volume_layout.go:405 Volume 3 becomes unwritable
I0625 04:20:43.787934 volume_layout.go:417 Volume 3 becomes writable
after add volume id 2
after add volume id 3
after add volume id 4
after add volume id 5
after add volume id 6
after add volume id 1
after add writable volume id 1
after add writable volume id 2
after add writable volume id 4
after add writable volume id 5
after add writable volume id 6
after add writable volume id 3
I0625 04:20:43.787967 topology_event_handling.go:86 Removing Volume 4 from the dead volume server 127.0.0.1:34534
I0625 04:20:43.787973 volume_layout.go:456 Volume 4 has 0 replica, less than required 1
I0625 04:20:43.787974 volume_layout.go:405 Volume 4 becomes unwritable
I0625 04:20:43.787976 topology_event_handling.go:86 Removing Volume 5 from the dead volume server 127.0.0.1:34534
I0625 04:20:43.787978 volume_layout.go:456 Volume 5 has 0 replica, less than required 1
I0625 04:20:43.787980 volume_layout.go:405 Volume 5 becomes unwritable
I0625 04:20:43.787981 topology_event_handling.go:86 Removing Volume 6 from the dead volume server 127.0.0.1:34534
I0625 04:20:43.787983 volume_layout.go:456 Volume 6 has 0 replica, less than required 1
I0625 04:20:43.787985 volume_layout.go:405 Volume 6 becomes unwritable
I0625 04:20:43.787987 topology_event_handling.go:86 Removing Volume 1 from the dead volume server 127.0.0.1:34534
I0625 04:20:43.787989 volume_layout.go:456 Volume 1 has 0 replica, less than required 1
I0625 04:20:43.787991 volume_layout.go:405 Volume 1 becomes unwritable
I0625 04:20:43.787994 topology_event_handling.go:86 Removing Volume 2 from the dead volume server 127.0.0.1:34534
I0625 04:20:43.787997 volume_layout.go:456 Volume 2 has 0 replica, less than required 1
I0625 04:20:43.787998 volume_layout.go:405 Volume 2 becomes unwritable
I0625 04:20:43.788000 topology_event_handling.go:86 Removing Volume 3 from the dead volume server 127.0.0.1:34534
I0625 04:20:43.788002 volume_layout.go:456 Volume 3 has 0 replica, less than required 1
I0625 04:20:43.788004 volume_layout.go:405 Volume 3 becomes unwritable
I0625 04:20:43.788013 node.go:264 weedfs:dc1:rack1 removes 127.0.0.1:34534
--- PASS: TestHandlingVolumeServerHeartbeat (0.00s)
=== RUN   TestAddRemoveVolume
I0625 04:20:43.788036 node.go:250 weedfs adds child dc1
I0625 04:20:43.788039 node.go:250 weedfs:dc1 adds child rack1
I0625 04:20:43.788041 node.go:250 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0625 04:20:43.788047 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child ssd
I0625 04:20:43.788050 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child 
I0625 04:20:43.788059 volume_layout.go:417 Volume 1 becomes writable
I0625 04:20:43.788062 topology.go:323 removing volume info: Id:1, Size:100, ReplicaPlacement:000, Collection:xcollection, Version:3, FileCount:123, DeleteCount:23, DeletedByteCount:45, ReadOnly:false from 127.0.0.1:34534
I0625 04:20:43.788065 volume_layout.go:229 volume 1 does not have enough copies
I0625 04:20:43.788068 volume_layout.go:237 volume 1 remove from writable
I0625 04:20:43.788069 volume_layout.go:405 Volume 1 becomes unwritable
--- PASS: TestAddRemoveVolume (0.00s)
=== RUN   TestListCollections
I0625 04:20:43.788087 node.go:250 weedfs adds child dc1
I0625 04:20:43.788089 node.go:250 weedfs:dc1 adds child rack1
I0625 04:20:43.788091 node.go:250 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0625 04:20:43.788100 volume_layout.go:229 volume 1111 does not have enough copies
I0625 04:20:43.788102 volume_layout.go:237 volume 1111 remove from writable
I0625 04:20:43.788106 volume_layout.go:229 volume 2222 does not have enough copies
I0625 04:20:43.788110 volume_layout.go:237 volume 2222 remove from writable
I0625 04:20:43.788112 volume_layout.go:229 volume 3333 does not have enough copies
I0625 04:20:43.788114 volume_layout.go:237 volume 3333 remove from writable
=== RUN   TestListCollections/no_volume_types_selected
=== RUN   TestListCollections/normal_volumes
=== RUN   TestListCollections/EC_volumes
=== RUN   TestListCollections/normal_+_EC_volumes
    topology_test.go:280: got [ vol_collection_a vol_collection_b ec_collection_a ec_collection_b], want [ ec_collection_a ec_collection_b vol_collection_a vol_collection_b]
--- FAIL: TestListCollections (0.00s)
    --- PASS: TestListCollections/no_volume_types_selected (0.00s)
    --- PASS: TestListCollections/normal_volumes (0.00s)
    --- PASS: TestListCollections/EC_volumes (0.00s)
    --- FAIL: TestListCollections/normal_+_EC_volumes (0.00s)
=== RUN   TestFindEmptySlotsForOneVolume
data: map[dc1:map[rack1:map[server111:map[limit:3 volumes:[map[id:1 size:12312] map[id:2 size:12312] map[id:3 size:12312]]] server112:map[limit:10 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]]] rack2:map[server121:map[limit:4 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server122:map[limit:4 volumes:[]] server123:map[limit:5 volumes:[map[id:2 size:12312] map[id:3 size:12312] map[id:4 size:12312]]]]] dc2:map[] dc3:map[rack2:map[server321:map[limit:4 volumes:[map[id:1 size:12312] map[id:3 size:12312] map[id:5 size:12312]]]]]]
I0625 04:20:43.788281 node.go:250 weedfs adds child dc1
I0625 04:20:43.788283 node.go:250 weedfs:dc1 adds child rack1
I0625 04:20:43.788285 node.go:250 weedfs:dc1:rack1 adds child server111
I0625 04:20:43.788288 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0625 04:20:43.788293 node.go:250 weedfs:dc1:rack1 adds child server112
I0625 04:20:43.788295 node.go:250 weedfs:dc1:rack1:server112 adds child 
I0625 04:20:43.788299 node.go:250 weedfs:dc1 adds child rack2
I0625 04:20:43.788304 node.go:250 weedfs:dc1:rack2 adds child server121
I0625 04:20:43.788306 node.go:250 weedfs:dc1:rack2:server121 adds child 
I0625 04:20:43.788310 node.go:250 weedfs:dc1:rack2 adds child server122
I0625 04:20:43.788312 node.go:250 weedfs:dc1:rack2:server122 adds child 
I0625 04:20:43.788315 node.go:250 weedfs:dc1:rack2 adds child server123
I0625 04:20:43.788318 node.go:250 weedfs:dc1:rack2:server123 adds child 
I0625 04:20:43.788323 node.go:250 weedfs adds child dc2
I0625 04:20:43.788324 node.go:250 weedfs adds child dc3
I0625 04:20:43.788326 node.go:250 weedfs:dc3 adds child rack2
I0625 04:20:43.788328 node.go:250 weedfs:dc3:rack2 adds child server321
I0625 04:20:43.788333 node.go:250 weedfs:dc3:rack2:server321 adds child 
assigned node : server122
assigned node : server123
assigned node : server121
--- PASS: TestFindEmptySlotsForOneVolume (0.00s)
=== RUN   TestReplication011
data: map[dc1:map[rack1:map[server111:map[limit:300 volumes:[map[id:1 size:12312] map[id:2 size:12312] map[id:3 size:12312]]] server112:map[limit:300 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server113:map[limit:300 volumes:[]] server114:map[limit:300 volumes:[]] server115:map[limit:300 volumes:[]] server116:map[limit:300 volumes:[]]] rack2:map[server121:map[limit:300 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server122:map[limit:300 volumes:[]] server123:map[limit:300 volumes:[map[id:2 size:12312] map[id:3 size:12312] map[id:4 size:12312]]] server124:map[limit:300 volumes:[]] server125:map[limit:300 volumes:[]] server126:map[limit:300 volumes:[]]] rack3:map[server131:map[limit:300 volumes:[]] server132:map[limit:300 volumes:[]] server133:map[limit:300 volumes:[]] server134:map[limit:300 volumes:[]] server135:map[limit:300 volumes:[]] server136:map[limit:300 volumes:[]]]]]
I0625 04:20:43.788433 node.go:250 weedfs adds child dc1
I0625 04:20:43.788435 node.go:250 weedfs:dc1 adds child rack1
I0625 04:20:43.788437 node.go:250 weedfs:dc1:rack1 adds child server114
I0625 04:20:43.788439 node.go:250 weedfs:dc1:rack1:server114 adds child 
I0625 04:20:43.788441 node.go:250 weedfs:dc1:rack1 adds child server115
I0625 04:20:43.788443 node.go:250 weedfs:dc1:rack1:server115 adds child 
I0625 04:20:43.788445 node.go:250 weedfs:dc1:rack1 adds child server116
I0625 04:20:43.788447 node.go:250 weedfs:dc1:rack1:server116 adds child 
I0625 04:20:43.788449 node.go:250 weedfs:dc1:rack1 adds child server111
I0625 04:20:43.788451 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0625 04:20:43.788461 node.go:250 weedfs:dc1:rack1 adds child server112
I0625 04:20:43.788463 node.go:250 weedfs:dc1:rack1:server112 adds child 
I0625 04:20:43.788467 node.go:250 weedfs:dc1:rack1 adds child server113
I0625 04:20:43.788471 node.go:250 weedfs:dc1:rack1:server113 adds child 
I0625 04:20:43.788473 node.go:250 weedfs:dc1 adds child rack2
I0625 04:20:43.788475 node.go:250 weedfs:dc1:rack2 adds child server125
I0625 04:20:43.788477 node.go:250 weedfs:dc1:rack2:server125 adds child 
I0625 04:20:43.788481 node.go:250 weedfs:dc1:rack2 adds child server126
I0625 04:20:43.788495 node.go:250 weedfs:dc1:rack2:server126 adds child 
I0625 04:20:43.788497 node.go:250 weedfs:dc1:rack2 adds child server121
I0625 04:20:43.788499 node.go:250 weedfs:dc1:rack2:server121 adds child 
I0625 04:20:43.788503 node.go:250 weedfs:dc1:rack2 adds child server122
I0625 04:20:43.788505 node.go:250 weedfs:dc1:rack2:server122 adds child 
I0625 04:20:43.788507 node.go:250 weedfs:dc1:rack2 adds child server123
I0625 04:20:43.788509 node.go:250 weedfs:dc1:rack2:server123 adds child 
I0625 04:20:43.788513 node.go:250 weedfs:dc1:rack2 adds child server124
I0625 04:20:43.788515 node.go:250 weedfs:dc1:rack2:server124 adds child 
I0625 04:20:43.788520 node.go:250 weedfs:dc1 adds child rack3
I0625 04:20:43.788522 node.go:250 weedfs:dc1:rack3 adds child server134
I0625 04:20:43.788523 node.go:250 weedfs:dc1:rack3:server134 adds child 
I0625 04:20:43.788526 node.go:250 weedfs:dc1:rack3 adds child server135
I0625 04:20:43.788529 node.go:250 weedfs:dc1:rack3:server135 adds child 
I0625 04:20:43.788532 node.go:250 weedfs:dc1:rack3 adds child server136
I0625 04:20:43.788533 node.go:250 weedfs:dc1:rack3:server136 adds child 
I0625 04:20:43.788535 node.go:250 weedfs:dc1:rack3 adds child server131
I0625 04:20:43.788537 node.go:250 weedfs:dc1:rack3:server131 adds child 
I0625 04:20:43.788539 node.go:250 weedfs:dc1:rack3 adds child server132
I0625 04:20:43.788541 node.go:250 weedfs:dc1:rack3:server132 adds child 
I0625 04:20:43.788543 node.go:250 weedfs:dc1:rack3 adds child server133
I0625 04:20:43.788545 node.go:250 weedfs:dc1:rack3:server133 adds child 
assigned node : server116
assigned node : server111
assigned node : server132
--- PASS: TestReplication011 (0.00s)
=== RUN   TestFindEmptySlotsForOneVolumeScheduleByWeight
data: map[dc1:map[rack1:map[server111:map[limit:2000 volumes:[]]]] dc2:map[rack2:map[server222:map[limit:2000 volumes:[]]]] dc3:map[rack3:map[server333:map[limit:1000 volumes:[]]]] dc4:map[rack4:map[server444:map[limit:1000 volumes:[]]]] dc5:map[rack5:map[server555:map[limit:500 volumes:[]]]] dc6:map[rack6:map[server666:map[limit:500 volumes:[]]]]]
I0625 04:20:43.788595 node.go:250 weedfs adds child dc6
I0625 04:20:43.788597 node.go:250 weedfs:dc6 adds child rack6
I0625 04:20:43.788602 node.go:250 weedfs:dc6:rack6 adds child server666
I0625 04:20:43.788604 node.go:250 weedfs:dc6:rack6:server666 adds child 
I0625 04:20:43.788606 node.go:250 weedfs adds child dc1
I0625 04:20:43.788610 node.go:250 weedfs:dc1 adds child rack1
I0625 04:20:43.788612 node.go:250 weedfs:dc1:rack1 adds child server111
I0625 04:20:43.788614 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0625 04:20:43.788616 node.go:250 weedfs adds child dc2
I0625 04:20:43.788617 node.go:250 weedfs:dc2 adds child rack2
I0625 04:20:43.788619 node.go:250 weedfs:dc2:rack2 adds child server222
I0625 04:20:43.788620 node.go:250 weedfs:dc2:rack2:server222 adds child 
I0625 04:20:43.788623 node.go:250 weedfs adds child dc3
I0625 04:20:43.788624 node.go:250 weedfs:dc3 adds child rack3
I0625 04:20:43.788626 node.go:250 weedfs:dc3:rack3 adds child server333
I0625 04:20:43.788628 node.go:250 weedfs:dc3:rack3:server333 adds child 
I0625 04:20:43.788633 node.go:250 weedfs adds child dc4
I0625 04:20:43.788634 node.go:250 weedfs:dc4 adds child rack4
I0625 04:20:43.788636 node.go:250 weedfs:dc4:rack4 adds child server444
I0625 04:20:43.788637 node.go:250 weedfs:dc4:rack4:server444 adds child 
I0625 04:20:43.788640 node.go:250 weedfs adds child dc5
I0625 04:20:43.788641 node.go:250 weedfs:dc5 adds child rack5
I0625 04:20:43.788643 node.go:250 weedfs:dc5:rack5 adds child server555
I0625 04:20:43.788644 node.go:250 weedfs:dc5:rack5:server555 adds child 
server111 : 543
server555 : 141
server222 : 549
server444 : 312
server333 : 312
server666 : 143
--- PASS: TestFindEmptySlotsForOneVolumeScheduleByWeight (0.00s)
=== RUN   TestPickForWrite
data: map[dc1:map[rack1:map[serverdc111:map[ip:127.0.0.1 limit:100 volumes:[map[collection:test id:1 replication:001 size:12312] map[collection:test id:2 replication:100 size:12312] map[collection:test id:4 replication:100 size:12312] map[collection:test id:6 replication:010 size:12312]]]]] dc2:map[rack1:map[serverdc211:map[ip:127.0.0.2 limit:100 volumes:[map[collection:test id:2 replication:100 size:12312] map[collection:test id:3 replication:010 size:12312] map[collection:test id:5 replication:001 size:12312] map[collection:test id:6 replication:010 size:12312]]]]] dc3:map[rack1:map[serverdc311:map[ip:127.0.0.3 limit:100 volumes:[map[collection:test id:1 replication:001 size:12312] map[collection:test id:3 replication:010 size:12312] map[collection:test id:4 replication:100 size:12312] map[collection:test id:5 replication:001 size:12312]]]]]]
I0625 04:20:43.791733 node.go:250 weedfs adds child dc1
I0625 04:20:43.791736 node.go:250 weedfs:dc1 adds child rack1
I0625 04:20:43.791738 node.go:250 weedfs:dc1:rack1 adds child serverdc111
I0625 04:20:43.791743 volume_layout.go:417 Volume 1 becomes writable
I0625 04:20:43.791745 node.go:250 weedfs:dc1:rack1:serverdc111 adds child 
I0625 04:20:43.791750 volume_layout.go:417 Volume 2 becomes writable
I0625 04:20:43.791755 volume_layout.go:417 Volume 4 becomes writable
I0625 04:20:43.791759 volume_layout.go:417 Volume 6 becomes writable
I0625 04:20:43.791762 node.go:250 weedfs adds child dc2
I0625 04:20:43.791764 node.go:250 weedfs:dc2 adds child rack1
I0625 04:20:43.791765 node.go:250 weedfs:dc2:rack1 adds child serverdc211
I0625 04:20:43.791768 volume_layout.go:405 Volume 2 becomes unwritable
I0625 04:20:43.791770 volume_layout.go:417 Volume 2 becomes writable
I0625 04:20:43.791774 node.go:250 weedfs:dc2:rack1:serverdc211 adds child 
I0625 04:20:43.791779 volume_layout.go:417 Volume 3 becomes writable
I0625 04:20:43.791782 volume_layout.go:417 Volume 5 becomes writable
I0625 04:20:43.791785 volume_layout.go:405 Volume 6 becomes unwritable
I0625 04:20:43.791787 volume_layout.go:417 Volume 6 becomes writable
I0625 04:20:43.791792 node.go:250 weedfs adds child dc3
I0625 04:20:43.791798 node.go:250 weedfs:dc3 adds child rack1
I0625 04:20:43.791800 node.go:250 weedfs:dc3:rack1 adds child serverdc311
I0625 04:20:43.791802 volume_layout.go:405 Volume 1 becomes unwritable
I0625 04:20:43.791804 volume_layout.go:417 Volume 1 becomes writable
I0625 04:20:43.791806 node.go:250 weedfs:dc3:rack1:serverdc311 adds child 
I0625 04:20:43.791809 volume_layout.go:405 Volume 3 becomes unwritable
I0625 04:20:43.791811 volume_layout.go:417 Volume 3 becomes writable
I0625 04:20:43.791814 volume_layout.go:405 Volume 4 becomes unwritable
I0625 04:20:43.791815 volume_layout.go:417 Volume 4 becomes writable
I0625 04:20:43.791818 volume_layout.go:405 Volume 5 becomes unwritable
I0625 04:20:43.791819 volume_layout.go:417 Volume 5 becomes writable
--- PASS: TestPickForWrite (0.00s)
=== RUN   TestVolumesBinaryState
=== RUN   TestVolumesBinaryState/mark_true_when_copies_exist
=== RUN   TestVolumesBinaryState/mark_true_when_no_copies_exist
--- PASS: TestVolumesBinaryState (0.00s)
    --- PASS: TestVolumesBinaryState/mark_true_when_copies_exist (0.00s)
    --- PASS: TestVolumesBinaryState/mark_true_when_no_copies_exist (0.00s)
FAIL
FAIL	github.com/seaweedfs/seaweedfs/weed/topology	0.019s
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
ActiveLock 3 acquired lock 0
ActiveLock 2 acquired lock 0
ActiveLock 2 released lock 0
ActiveLock 4 acquired lock 0
ActiveLock 4 released lock 0
ActiveLock 1 released lock 0
ActiveLock 3 released lock 0
ActiveLock 5 acquired lock 1
ActiveLock 5 released lock 1
ActiveLock 7 acquired lock 1
ActiveLock 7 released lock 1
ActiveLock 8 acquired lock 1
ActiveLock 8 released lock 1
ActiveLock 10 acquired lock 0
ActiveLock 10 released lock 0
ActiveLock 11 acquired lock 0
ActiveLock 12 acquired lock 0
ActiveLock 6 acquired lock 0
ActiveLock 11 released lock 0
ActiveLock 15 acquired lock 0
ActiveLock 16 acquired lock 0
ActiveLock 15 released lock 0
ActiveLock 12 released lock 0
ActiveLock 6 released lock 0
ActiveLock 16 released lock 0
ActiveLock 17 acquired lock 1
ActiveLock 17 released lock 1
ActiveLock 18 acquired lock 0
ActiveLock 19 acquired lock 0
ActiveLock 19 released lock 0
ActiveLock 20 acquired lock 0
ActiveLock 21 acquired lock 0
ActiveLock 22 acquired lock 0
ActiveLock 18 released lock 0
ActiveLock 21 released lock 0
ActiveLock 20 released lock 0
ActiveLock 22 released lock 0
ActiveLock 23 acquired lock 1
ActiveLock 23 released lock 1
ActiveLock 24 acquired lock 1
ActiveLock 24 released lock 1
ActiveLock 25 acquired lock 0
ActiveLock 26 acquired lock 0
ActiveLock 27 acquired lock 0
ActiveLock 29 acquired lock 0
ActiveLock 28 acquired lock 0
ActiveLock 30 acquired lock 0
ActiveLock 27 released lock 0
ActiveLock 25 released lock 0
ActiveLock 29 released lock 0
ActiveLock 28 released lock 0
ActiveLock 26 released lock 0
ActiveLock 30 released lock 0
ActiveLock 31 acquired lock 1
ActiveLock 31 released lock 1
ActiveLock 32 acquired lock 1
ActiveLock 32 released lock 1
ActiveLock 33 acquired lock 0
ActiveLock 34 acquired lock 0
ActiveLock 35 acquired lock 0
ActiveLock 37 acquired lock 0
ActiveLock 36 acquired lock 0
ActiveLock 33 released lock 0
ActiveLock 35 released lock 0
ActiveLock 36 released lock 0
ActiveLock 37 released lock 0
ActiveLock 34 released lock 0
ActiveLock 38 acquired lock 1
ActiveLock 38 released lock 1
ActiveLock 39 acquired lock 0
ActiveLock 40 acquired lock 0
ActiveLock 41 acquired lock 0
ActiveLock 42 acquired lock 0
ActiveLock 41 released lock 0
ActiveLock 40 released lock 0
ActiveLock 39 released lock 0
ActiveLock 42 released lock 0
ActiveLock 43 acquired lock 1
ActiveLock 43 released lock 1
ActiveLock 44 acquired lock 0
ActiveLock 44 released lock 0
ActiveLock 46 acquired lock 0
ActiveLock 45 acquired lock 0
ActiveLock 47 acquired lock 0
ActiveLock 48 acquired lock 0
ActiveLock 49 acquired lock 0
ActiveLock 13 acquired lock 0
ActiveLock 9 acquired lock 0
ActiveLock 14 acquired lock 0
ActiveLock 50 acquired lock 0
ActiveLock 45 released lock 0
ActiveLock 48 released lock 0
ActiveLock 47 released lock 0
ActiveLock 14 released lock 0
ActiveLock 49 released lock 0
ActiveLock 46 released lock 0
ActiveLock 50 released lock 0
ActiveLock 13 released lock 0
ActiveLock 9 released lock 0
--- PASS: TestOrderedLock (1.22s)
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
ok  	github.com/seaweedfs/seaweedfs/weed/util	1.344s
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
I0625 04:20:43.801597 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2326669104/001/c0_2_0.ldb, watermark 0, num of entries:0
I0625 04:20:43.812208 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c0_2_0.ldb... , watermark: 0
I0625 04:20:43.825106 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2326669104/001/c0_2_1.ldb, watermark 0, num of entries:0
I0625 04:20:43.838327 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c0_2_1.ldb... , watermark: 0
I0625 04:20:43.851897 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2326669104/001/c1_3_0.ldb, watermark 0, num of entries:0
I0625 04:20:43.868780 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c1_3_0.ldb... , watermark: 0
I0625 04:20:43.876240 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2326669104/001/c1_3_1.ldb, watermark 0, num of entries:0
I0625 04:20:43.883365 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c1_3_1.ldb... , watermark: 0
I0625 04:20:43.888736 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2326669104/001/c1_3_2.ldb, watermark 0, num of entries:0
I0625 04:20:43.894323 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c1_3_2.ldb... , watermark: 0
I0625 04:20:43.900793 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2326669104/001/c2_2_0.ldb, watermark 0, num of entries:0
I0625 04:20:43.906064 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c2_2_0.ldb... , watermark: 0
I0625 04:20:43.912116 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2326669104/001/c2_2_1.ldb, watermark 0, num of entries:0
I0625 04:20:43.917436 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c2_2_1.ldb... , watermark: 0
I0625 04:20:43.923262 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2326669104/001/c0_2_0.ldb, watermark 0, num of entries:0
I0625 04:20:43.929150 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c0_2_0.ldb... , watermark: 0
I0625 04:20:43.940286 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2326669104/001/c0_2_1.ldb, watermark 0, num of entries:0
I0625 04:20:43.945099 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c0_2_1.ldb... , watermark: 0
I0625 04:20:43.959623 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c0_2_0.ldb... , watermark: 0
I0625 04:20:43.968121 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2326669104/001/c0_2_1.ldb, watermark 0, num of entries:1
I0625 04:20:43.976431 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c0_2_1.ldb... , watermark: 0
I0625 04:20:43.983778 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c1_3_0.ldb... , watermark: 0
I0625 04:20:43.991061 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c1_3_1.ldb... , watermark: 0
I0625 04:20:43.998181 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c1_3_2.ldb... , watermark: 0
I0625 04:20:44.005468 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c2_2_0.ldb... , watermark: 0
I0625 04:20:44.013417 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2326669104/001/c2_2_1.ldb... , watermark: 0
--- PASS: TestOnDisk (0.23s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/chunk_cache	0.240s
?   	github.com/seaweedfs/seaweedfs/weed/util/fla9	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/grace	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/http	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/http/client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/httpdown	[no test files]
=== RUN   TestNewLogBufferFirstBuffer
processed all messages
E0625 04:20:43.871653 log_read.go:115 LoopProcessLogData: test process log entry 1 ts_ns:1782361243871610124  partition_key_hash:-736260903  data:"\xf0\x95\x9c\xcb\x1fQf|\xce\xcbE!'Mb\xc3\x01E\xda\"-\xb2\xe1\x87\x12\xd3\x06\xdd6\x96\x07\xb8\x0e=,ɾ\xfcz^<\x95\xa6\x0f\xaf\xd2\t\xb7V\xec\x1e\xfa\x9f\x9ch\xb0\x98`D\xaf{\xa6\xb7$\xbc=\xb7\x04\x08\x8d\xe2\x13<-\x92\x8bFN\x8cs\x91\xda4\x1d֢\xf1E=k\x03\xc0z\xf2\xb4\xd4\xc9wG\xd1(\x9fC\xa1V\xa5\xe9iU\xb3N31\x9cu\xf6kvE\xfb\x02\x98\xdc\xcf\xcf\x02\xc9\x0f\x13\xbfM\x1cSG\x11Gi:\x16tЎ\xfd\xb4t?\x1d\x82\xd1\xeb\xf8\xea\xa59\xc7$\x133ex\xcf\xf1\xe0\x98\x97h0\xc8ނɱ#\xf5\xab\x9e\xbd\xba\xe3B\xa7fuf\xc7\xcfܕ\x97\xc1z\xa7\x85]\xc1?\xe7c\x8f\\\xed#t\xb6\x17\xee\xe3Bۃ\n\xed~ڌ\xa0\tt\x92_\r\xdb\x02E93\x1dy\x02JH\xe3\x8d_\xe0\xd7\xf1\x97\x05u\xddX\x98HR<\x9av\xe6\xdcHUi#\t\x88\x9c\x94\x95\x87%\nr&\x7f\xba\xc4\xc7\xd2\xc6\x15\x82Z\xaf\x93\x12ƶ\xe6\xefT\xbc\x0f>\xff\x81\xbb\xf1*5\xf0\xddO\x9b\x1a\xd4j\xfc{l\xc2x\xe8\x9a\xc5|\xe5#\xe055\x9e\xc2_6\xa6#m%\xaa\xe2$\x82\x8c\xd4q\x96tvl\x02$\xdc\xcc\xfd\xed`ү=D\xbeN\xb4*\xefv\x03\x8c\x87\xac\xa7\xf8A\xcbO\xcb\xe6(!\x89\x1d\x1b\xfd|\xcdq\x893}.\x01%\xd6\xed\xbe\xd1\x1c\xf8\x8bb=\xc4a\xba\xaa\x08\xc1\x85\x19\x9a\xcd\xe0\xb1\xec\x8aED\x8e\x97\xb8\x00\x86՜<\x176]C\xe6\xa7P\xadݝ\xa2ݦA\x93_\xfc\x01wp\xee%\x908\x97\x1e\xd1\x03l\xdfJ_4\xa0\x87\xf5`oTD\xfa3\xfcI\xa8\xd2Mс\x9c\x04\xcf\xf4!ܽ\xb7\x8eٻ\x82\xfd\xcewM\xf4=\x92\x1d\x1elS\x98du6\x14\xd2 \x88\xc6\xdf\x14\xd7\x06\x93|\xec\xc3\xd3$b\xd4s\xfb\xb6\xc4\xf0\xfa\x1c\x08\x04a+\xd2\xcd%\x8e\xa6\xb0%\xfc\xe8U\xe4\xdfѮ\xcbŃ\xd4f\x04\x8d\x14\xc6\xe5\xeb2K/\xe8\xf8.\xc1\xdf\xc8\xe3\xc4e,\xf2Vf\xb5\x8a\xf8Βa첂m\xd9\xc9f\x1d\x9f\xcfTi@\xa32j\xe5\x07e\x07\x84\xed\x8e췦t%\xbbC\x8f\xbf\x8f\xe2;Ke\x08\x1c\xeb\x9fӥ\x87\x9b̼\t~Y\xe8M\x1f\x9a\x89\xae\xb8\x88\xb4dCC\xbf\xd8 +\xac\x1e\xc5А!\xb394\xb2^\xc1\x88\xbf\xfc\xcbeI1.\xb8\xe7b\xb2.1Z\xa8'\xd6&\x1a\xc4h\x1a\xe3\x81\xe7&\xcb~ԥ\xf96\"\xc8\xf5\x89\x06q\xcaF\x94Ѳ\x80\x8dcDK\xdf \x1eN\xc9\xe8V&\xf1\xb8x\x90M(\xb0\n\xe6}\xedc\xcc\xcf\x1cZ$e\xd4\x0e\x8f\xadY\xdb+\x82\xb0u\x8cU\x87\x0cч\x15\x7f;\xe6\xaeU\xe2\n\xf4g\x1cE\xdb@v\xf8\x0c\xe8R5\xf9\x0c\x0b\x1a\xff\xef\xf8\xa5\xea\xc0Br\x9e\xbb$i\xf01]\x1c\xa1\x9e\x9c49\xfdٰ\x1e\x80\x9b\xa44)s\xfb\x96\x8a\x90#\xc7A_\xda\xfdaO\xc5ܤ\x84x\x15\xd9w\xdd%\xf5\xe8\xce\x1f\x8aX\xeau\x1e\x95-g\xa5)\x9b}\x98/\xfaK\xf9L\xb81u\x8e<\xc4\xce7\xddou\x88\xa7!\xbe;\xb1\xd2\x0bEӡ\x86\xbd\xe4\xf51\x8a\xe1\x9c`b\"\x00\xd9\xe3\xac~>8\x92[\x11\x1f]\xf2\xea\xa6;\x0eg\xe50w,\x90\x01\x8b`᪜7㼉\xef<\x81\xa1`\xeb)\xbd\x10\xd8\xf0\x8a5\xaa\xc9S\xb0\xefҚ\xb8\x87\x9ad>Ȃ]$(\xb5\xe2\xf3\x02[^\x91B\xd2\xd0\xceO?g\xbc\x8d\xae]\xab\xe9i\xc7杲\xd4K\xe8027\xd49\xd5Q\x81N\xbesj#闾\xb8]\xd0S:<t\x8e\x9dY\xb9\t\xcf\xf4\xbd\xb7p\x95\x03L\xd3\x14i^`\xfb\x1fg\xfa\xfd\xbf\xdd\xe5V\x16\xca|}\x92+\x1e\x1fE\xd0\t}Q\xc6!\xf1\xa5\xf0w\xb6}`\xd7y\xcd": EOF
before flush: sent 5000 received 5000
lastProcessedTime 2026-06-25 04:20:43.871610124 +0000 UTC isDone true err: EOF
--- PASS: TestNewLogBufferFirstBuffer (0.09s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/log_buffer	0.096s
=== RUN   TestAllocateFree
--- PASS: TestAllocateFree (0.00s)
=== RUN   TestAllocateFreeEdgeCases
--- PASS: TestAllocateFreeEdgeCases (0.00s)
=== RUN   TestBitCount
--- PASS: TestBitCount (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/mem	0.003s
=== RUN   TestNameList
0 1 10 11 12 13 14 15 16 17 18 19 2 20 21 22 23 24 25 26 27 28 29 3 30 31 32 33 34 35 36 37 38 39 4 40 41 42 43 44 45 46 47 48 49 5 50 51 52 53 54 55 56 57 58 59 6 60 61 62 63 64 65 66 67 68 69 7 70 71 72 73 74 75 76 77 78 79 8 80 81 82 83 84 85 86 87 88 89 9 90 91 92 93 94 95 96 97 98 99 --- PASS: TestNameList (0.10s)
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
ok  	github.com/seaweedfs/seaweedfs/weed/util/skiplist	0.317s
=== RUN   TestLocationIndex
--- PASS: TestLocationIndex (0.00s)
=== RUN   TestLookupFileId
--- PASS: TestLookupFileId (0.00s)
=== RUN   TestConcurrentGetLocations
--- PASS: TestConcurrentGetLocations (0.09s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/wdclient	0.096s
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/exclusive_locks	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/net2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/resource_pool	[no test files]
FAIL
