patching file .github/workflows/container_latest.yml
patching file .github/workflows/test-s3-over-https-using-awscli.yml
patching file weed/topology/topology_test.go
patching file .github/workflows/depsreview.yml
patching file weed/command/s3.go
patching file weed/command/scaffold/filer.toml
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
--- PASS: TestCreateBucket (0.33s)
=== RUN   TestPutObject
RequestError: send request failed
caused by: Put "http://localhost:8333/theBucket/exampleobject": dial tcp 127.0.0.1:8333: connect: connection refused
--- PASS: TestPutObject (0.29s)
=== RUN   TestListBucket
Unable to list buckets, RequestError: send request failed
caused by: Get "http://localhost:8333/": dial tcp 127.0.0.1:8333: connect: connection refused
FAIL	github.com/seaweedfs/seaweedfs/test/s3/basic	0.961s
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
I0625 09:51:15.048742 lock_ring.go:43 add server localhost:8080
I0625 09:51:15.049038 lock_ring.go:43 add server localhost:8081
I0625 09:51:15.049047 lock_ring.go:43 add server localhost:8082
I0625 09:51:15.049050 lock_ring.go:43 add server localhost:8083
I0625 09:51:15.049053 lock_ring.go:43 add server localhost:8084
I0625 09:51:15.049056 lock_ring.go:59 remove server localhost:8084
I0625 09:51:15.049059 lock_ring.go:59 remove server localhost:8082
I0625 09:51:15.049062 lock_ring.go:59 remove server localhost:8080
--- PASS: TestAddServer (0.11s)
=== RUN   TestLockRing
--- PASS: TestLockRing (0.23s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/cluster/lock_manager	0.345s
=== RUN   TestReadingTomlConfiguration
database is map[connection_max:5000 enabled:true ports:[8001 8001 8002] server:192.168.1.1]
servers is map[alpha:map[dc:eqdc10 ip:10.0.0.1] beta:map[dc:eqdc10 ip:10.0.0.2]]
alpha ip is 10.0.0.1
--- PASS: TestReadingTomlConfiguration (0.00s)
=== RUN   TestXYZ
I0625 09:51:23.557752 volume_test.go:12 Last-Modified Mon, 08 Jul 2013 08:53:16 GMT
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
2026/06/25 09:51:23 first deleted chunks: [file_id:"1"  size:3  modified_ts_ns:100  source_file_id:"11" file_id:"2"  offset:3  size:3  modified_ts_ns:200 file_id:"3"  offset:6  size:3  modified_ts_ns:300  source_file_id:"33"]
2026/06/25 09:51:23 clusterA synced empty chunks event result: []
--- PASS: TestDoMinusChunks (0.00s)
=== RUN   TestCompactFileChunksRealCase
I0625 09:51:23.548927 filechunks2_test.go:83 before chunk 2,512f31f2c0700a [         0,        25)
I0625 09:51:23.549240 filechunks2_test.go:83 before chunk 6,512f2c2e24e9e8 [    868352,    917585)
I0625 09:51:23.549246 filechunks2_test.go:83 before chunk 7,514468dd5954ca [    884736,    901120)
I0625 09:51:23.549248 filechunks2_test.go:83 before chunk 5,5144463173fe77 [    917504,   2297856)
I0625 09:51:23.549250 filechunks2_test.go:83 before chunk 4,51444c7ab54e2d [   2301952,   2367488)
I0625 09:51:23.549252 filechunks2_test.go:83 before chunk 4,514450e643ad22 [   2371584,   2420736)
I0625 09:51:23.549253 filechunks2_test.go:83 before chunk 6,514456a5e9e4d7 [   2449408,   2490368)
I0625 09:51:23.549254 filechunks2_test.go:83 before chunk 3,51444f8d53eebe [   2494464,   2555904)
I0625 09:51:23.549256 filechunks2_test.go:83 before chunk 4,5144578b097c7e [   2560000,   2596864)
I0625 09:51:23.549257 filechunks2_test.go:83 before chunk 3,51445500b6b4ac [   2637824,   2678784)
I0625 09:51:23.549259 filechunks2_test.go:83 before chunk 1,51446285e52a61 [   2695168,   2715648)
I0625 09:51:23.549268 filechunks2_test.go:83 compacted chunk 2,512f31f2c0700a [         0,        25)
I0625 09:51:23.549270 filechunks2_test.go:83 compacted chunk 6,512f2c2e24e9e8 [    868352,    917585)
I0625 09:51:23.549272 filechunks2_test.go:83 compacted chunk 7,514468dd5954ca [    884736,    901120)
I0625 09:51:23.549273 filechunks2_test.go:83 compacted chunk 5,5144463173fe77 [    917504,   2297856)
I0625 09:51:23.549274 filechunks2_test.go:83 compacted chunk 4,51444c7ab54e2d [   2301952,   2367488)
I0625 09:51:23.549276 filechunks2_test.go:83 compacted chunk 4,514450e643ad22 [   2371584,   2420736)
I0625 09:51:23.549277 filechunks2_test.go:83 compacted chunk 6,514456a5e9e4d7 [   2449408,   2490368)
I0625 09:51:23.549279 filechunks2_test.go:83 compacted chunk 3,51444f8d53eebe [   2494464,   2555904)
I0625 09:51:23.549288 filechunks2_test.go:83 compacted chunk 4,5144578b097c7e [   2560000,   2596864)
I0625 09:51:23.549289 filechunks2_test.go:83 compacted chunk 3,51445500b6b4ac [   2637824,   2678784)
I0625 09:51:23.549291 filechunks2_test.go:83 compacted chunk 1,51446285e52a61 [   2695168,   2715648)
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
2026/06/25 09:51:23 ++++++++++ merged test case 0 ++++++++++++++++++++
2026/06/25 09:51:23 test case 0, interval start=0, stop=100, fileId=abc
2026/06/25 09:51:23 test case 0, interval start=100, stop=200, fileId=asdf
2026/06/25 09:51:23 test case 0, interval start=200, stop=300, fileId=fsad
2026/06/25 09:51:23 ++++++++++ merged test case 1 ++++++++++++++++++++
2026/06/25 09:51:23 test case 1, interval start=0, stop=200, fileId=asdf
2026/06/25 09:51:23 ++++++++++ merged test case 2 ++++++++++++++++++++
2026/06/25 09:51:23 test case 2, interval start=0, stop=70, fileId=b
2026/06/25 09:51:23 test case 2, interval start=70, stop=100, fileId=a
2026/06/25 09:51:23 ++++++++++ merged test case 3 ++++++++++++++++++++
2026/06/25 09:51:23 test case 3, interval start=0, stop=50, fileId=asdf
2026/06/25 09:51:23 test case 3, interval start=50, stop=300, fileId=xxxx
2026/06/25 09:51:23 ++++++++++ merged test case 4 ++++++++++++++++++++
2026/06/25 09:51:23 test case 4, interval start=0, stop=200, fileId=asdf
2026/06/25 09:51:23 test case 4, interval start=250, stop=500, fileId=xxxx
2026/06/25 09:51:23 ++++++++++ merged test case 5 ++++++++++++++++++++
2026/06/25 09:51:23 test case 5, interval start=0, stop=200, fileId=d
2026/06/25 09:51:23 test case 5, interval start=200, stop=220, fileId=c
2026/06/25 09:51:23 ++++++++++ merged test case 6 ++++++++++++++++++++
2026/06/25 09:51:23 test case 6, interval start=0, stop=100, fileId=xyz
2026/06/25 09:51:23 ++++++++++ merged test case 7 ++++++++++++++++++++
2026/06/25 09:51:23 test case 7, interval start=0, stop=2097152, fileId=3,029565bf3092
2026/06/25 09:51:23 test case 7, interval start=2097152, stop=5242880, fileId=6,029632f47ae2
2026/06/25 09:51:23 test case 7, interval start=5242880, stop=8388608, fileId=2,029734c5aa10
2026/06/25 09:51:23 test case 7, interval start=8388608, stop=11534336, fileId=5,02982f80de50
2026/06/25 09:51:23 test case 7, interval start=11534336, stop=14376529, fileId=7,0299ad723803
2026/06/25 09:51:23 ++++++++++ merged test case 8 ++++++++++++++++++++
2026/06/25 09:51:23 test case 8, interval start=0, stop=77824, fileId=4,0b3df938e301
2026/06/25 09:51:23 test case 8, interval start=77824, stop=208896, fileId=4,0b3f0c7202f0
2026/06/25 09:51:23 test case 8, interval start=208896, stop=339968, fileId=2,0b4031a72689
2026/06/25 09:51:23 test case 8, interval start=339968, stop=471040, fileId=3,0b416a557362
2026/06/25 09:51:23 test case 8, interval start=471040, stop=472225, fileId=6,0b3e0650019c
--- PASS: TestIntervalMerging (0.00s)
=== RUN   TestChunksReading
2026/06/25 09:51:23 ++++++++++ read test case 0 ++++++++++++++++++++
2026/06/25 09:51:23 read case 0, chunk 0, offset=0, size=100, fileId=abc
2026/06/25 09:51:23 read case 0, chunk 1, offset=0, size=100, fileId=asdf
2026/06/25 09:51:23 read case 0, chunk 2, offset=0, size=50, fileId=fsad
2026/06/25 09:51:23 ++++++++++ read test case 1 ++++++++++++++++++++
2026/06/25 09:51:23 read case 1, chunk 0, offset=50, size=100, fileId=asdf
2026/06/25 09:51:23 ++++++++++ read test case 2 ++++++++++++++++++++
2026/06/25 09:51:23 read case 2, chunk 0, offset=20, size=30, fileId=b
2026/06/25 09:51:23 read case 2, chunk 1, offset=57, size=10, fileId=a
2026/06/25 09:51:23 ++++++++++ read test case 3 ++++++++++++++++++++
2026/06/25 09:51:23 read case 3, chunk 0, offset=0, size=50, fileId=asdf
2026/06/25 09:51:23 read case 3, chunk 1, offset=0, size=150, fileId=xxxx
2026/06/25 09:51:23 ++++++++++ read test case 4 ++++++++++++++++++++
2026/06/25 09:51:23 read case 4, chunk 0, offset=0, size=200, fileId=asdf
2026/06/25 09:51:23 read case 4, chunk 1, offset=0, size=150, fileId=xxxx
2026/06/25 09:51:23 ++++++++++ read test case 5 ++++++++++++++++++++
2026/06/25 09:51:23 read case 5, chunk 0, offset=0, size=200, fileId=c
2026/06/25 09:51:23 read case 5, chunk 1, offset=130, size=20, fileId=b
2026/06/25 09:51:23 ++++++++++ read test case 6 ++++++++++++++++++++
2026/06/25 09:51:23 read case 6, chunk 0, offset=0, size=100, fileId=xyz
2026/06/25 09:51:23 ++++++++++ read test case 7 ++++++++++++++++++++
2026/06/25 09:51:23 read case 7, chunk 0, offset=0, size=100, fileId=abc
2026/06/25 09:51:23 read case 7, chunk 1, offset=0, size=100, fileId=asdf
2026/06/25 09:51:23 ++++++++++ read test case 8 ++++++++++++++++++++
2026/06/25 09:51:23 read case 8, chunk 0, offset=0, size=90, fileId=abc
2026/06/25 09:51:23 read case 8, chunk 1, offset=0, size=100, fileId=asdf
2026/06/25 09:51:23 read case 8, chunk 2, offset=0, size=110, fileId=fsad
2026/06/25 09:51:23 ++++++++++ read test case 9 ++++++++++++++++++++
2026/06/25 09:51:23 read case 9, chunk 0, offset=0, size=43175936, fileId=2,111fc2cbfac1
2026/06/25 09:51:23 read case 9, chunk 1, offset=0, size=9805824, fileId=2,112a36ea7f85
2026/06/25 09:51:23 read case 9, chunk 2, offset=0, size=19582976, fileId=4,112d5f31c5e7
2026/06/25 09:51:23 read case 9, chunk 3, offset=0, size=60690432, fileId=1,113245f0cdb6
2026/06/25 09:51:23 read case 9, chunk 4, offset=0, size=4014080, fileId=3,1141a70733b5
2026/06/25 09:51:23 read case 9, chunk 5, offset=0, size=16309588, fileId=1,114201d5bbdb
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
ok  	github.com/seaweedfs/seaweedfs/weed/filer	0.022s
?   	github.com/seaweedfs/seaweedfs/weed/filer/abstract_sql	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/arangodb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/cassandra	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/cassandra2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/elastic/v7	[no test files]
=== RUN   TestStore
--- PASS: TestStore (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/etcd	0.021s
?   	github.com/seaweedfs/seaweedfs/weed/filer/hbase	[no test files]
=== RUN   TestCreateAndFind
I0625 09:51:23.554549 leveldb_store.go:47 filer store dir: /tmp/TestCreateAndFind2173117747/001
I0625 09:51:23.554790 file_util.go:27 Folder /tmp/TestCreateAndFind2173117747/001 Permission: -rwxr-xr-x
I0625 09:51:23.567417 filer.go:155 create filer.store.id to 75881029
--- PASS: TestCreateAndFind (0.02s)
=== RUN   TestEmptyRoot
I0625 09:51:23.575532 leveldb_store.go:47 filer store dir: /tmp/TestEmptyRoot2807777481/001
I0625 09:51:23.575554 file_util.go:27 Folder /tmp/TestEmptyRoot2807777481/001 Permission: -rwxr-xr-x
I0625 09:51:23.584588 filer.go:155 create filer.store.id to 1729947098
--- PASS: TestEmptyRoot (0.02s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb	0.051s
=== RUN   TestCreateAndFind
I0625 09:51:23.559796 leveldb2_store.go:43 filer store leveldb2 dir: /tmp/TestCreateAndFind909027098/001
I0625 09:51:23.560199 file_util.go:27 Folder /tmp/TestCreateAndFind909027098/001 Permission: -rwxr-xr-x
I0625 09:51:23.577940 filer.go:155 create filer.store.id to 88731791
--- PASS: TestCreateAndFind (0.03s)
=== RUN   TestEmptyRoot
I0625 09:51:23.588676 leveldb2_store.go:43 filer store leveldb2 dir: /tmp/TestEmptyRoot3273370761/001
I0625 09:51:23.588694 file_util.go:27 Folder /tmp/TestEmptyRoot3273370761/001 Permission: -rwxr-xr-x
I0625 09:51:23.616437 filer.go:155 create filer.store.id to 1846079462
--- PASS: TestEmptyRoot (0.04s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb2	0.081s
=== RUN   TestCreateAndFind
I0625 09:51:23.562133 leveldb3_store.go:50 filer store leveldb3 dir: /tmp/TestCreateAndFind1275598653/001
I0625 09:51:23.562929 file_util.go:27 Folder /tmp/TestCreateAndFind1275598653/001 Permission: -rwxr-xr-x
I0625 09:51:23.572841 filer.go:155 create filer.store.id to -1507351843
--- PASS: TestCreateAndFind (0.02s)
=== RUN   TestEmptyRoot
I0625 09:51:23.577303 leveldb3_store.go:50 filer store leveldb3 dir: /tmp/TestEmptyRoot1145919922/001
I0625 09:51:23.577321 file_util.go:27 Folder /tmp/TestEmptyRoot1145919922/001 Permission: -rwxr-xr-x
I0625 09:51:23.586730 filer.go:155 create filer.store.id to -870568836
--- PASS: TestEmptyRoot (0.01s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb3	0.050s
?   	github.com/seaweedfs/seaweedfs/weed/filer/mongodb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/mysql	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/mysql2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/postgres	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/postgres2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/redis	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/redis2	[no test files]
testing: warning: no tests to run
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/redis3	0.021s [no tests to run]
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
I0625 09:51:23.538988 glog_test.go:92 test
--- PASS: TestInfo (0.00s)
=== RUN   TestInfoDepth
I0625 09:51:23.539007 glog_test.go:109 depth-test0
I0625 09:51:23.539009 glog_test.go:110 depth-test1
--- PASS: TestInfoDepth (0.00s)
=== RUN   TestCopyStandardLogToPanic
--- PASS: TestCopyStandardLogToPanic (0.00s)
=== RUN   TestStandardLog
I0625 09:51:23.539040 glog_test.go:163 test
--- PASS: TestStandardLog (0.00s)
=== RUN   TestHeader
I0102 15:04:05.067890 glog_test.go:181 test
--- PASS: TestHeader (0.00s)
=== RUN   TestError
E0625 09:51:23.539079 glog_test.go:202 test
--- PASS: TestError (0.00s)
=== RUN   TestWarning
W0625 09:51:23.539093 glog_test.go:224 test
--- PASS: TestWarning (0.00s)
=== RUN   TestV
I0625 09:51:23.539105 glog_test.go:243 test
--- PASS: TestV (0.00s)
=== RUN   TestVmoduleOn
I0625 09:51:23.539120 glog_test.go:267 test
--- PASS: TestVmoduleOn (0.00s)
=== RUN   TestVmoduleOff
--- PASS: TestVmoduleOff (0.00s)
=== RUN   TestVmoduleGlob
--- PASS: TestVmoduleGlob (0.00s)
=== RUN   TestRollover
I0625 09:51:23.539160 glog_test.go:339 x
I0625 09:51:23.539464 glog_test.go:348 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
I0625 09:51:24.539655 glog_test.go:361 x
--- PASS: TestRollover (1.00s)
=== RUN   TestLogBacktraceAt
I0625 09:51:24.540029 glog_test.go:395 we want a stack trace here
goroutine 21 [running]:
github.com/seaweedfs/seaweedfs/weed/glog.stacks(0x0)
	/home/seaweedfs/weed/glog/glog.go:768 +0x8c
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).output(0x3047a0, 0x0, 0x6ab9d942230, {0x1ddd80?, 0x1?}, 0x0?, 0x0)
	/home/seaweedfs/weed/glog/glog.go:677 +0xec
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).printDepth(0x3047a0, 0x0, 0x6ab9d92ae88?, {0x6ab9d92ae28, 0x1, 0x1})
	/home/seaweedfs/weed/glog/glog.go:648 +0xc4
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).print(...)
	/home/seaweedfs/weed/glog/glog.go:639
github.com/seaweedfs/seaweedfs/weed/glog.Info(...)
	/home/seaweedfs/weed/glog/glog.go:1061
github.com/seaweedfs/seaweedfs/weed/glog.TestLogBacktraceAt(0x6ab9da34008)
	/home/seaweedfs/weed/glog/glog_test.go:395 +0x2e8
testing.tRunner(0x6ab9da34008, 0x1a95e0)
	/usr/local/go/src/testing/testing.go:2036 +0xc4
created by testing.(*T).Run in goroutine 1
	/usr/local/go/src/testing/testing.go:2101 +0x3a8
--- PASS: TestLogBacktraceAt (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/glog	1.003s
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
E0625 09:51:23.554863 iamapi_management_handlers.go:508 PutUserPolicy:  the user with name InvalidUser cannot be found
E0625 09:51:23.555427 iamapi_handlers.go:29 Response the user with name InvalidUser cannot be found
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
--- PASS: TestCropping (0.10s)
=== RUN   TestXYZ
--- PASS: TestXYZ (0.44s)
=== RUN   TestResizing
--- PASS: TestResizing (0.03s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/images	0.584s
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
ok  	github.com/seaweedfs/seaweedfs/weed/mount	0.021s
?   	github.com/seaweedfs/seaweedfs/weed/mount/meta_cache	[no test files]
=== RUN   Test_PageChunkWrittenIntervalList
--- PASS: Test_PageChunkWrittenIntervalList (0.00s)
=== RUN   Test_PageChunkWrittenIntervalList1
--- PASS: Test_PageChunkWrittenIntervalList1 (0.00s)
=== RUN   TestUploadPipeline
--- PASS: TestUploadPipeline (45.87s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mount/page_writer	45.876s
?   	github.com/seaweedfs/seaweedfs/weed/mount/unmount	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/agent	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/broker	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/agent_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/pub_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/sub_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/logstore	[no test files]
=== RUN   Test_allocateOneBroker
=== RUN   Test_allocateOneBroker/test_only_one_broker
I0625 09:51:23.548920 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 1, assignments: [partition:{ring_size:2520 range_stop:2520 unix_time_ns:1782381083548911965}]
I0625 09:51:23.549794 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 1, assignments: [partition:{ring_size:2520 range_stop:2520 unix_time_ns:1782381083548911965} leader_broker:"localhost:17777"] hasChanges: true
I0625 09:51:23.550104 allocate.go:33 allocate topic partitions 1: [partition:{ring_size:2520 range_stop:2520 unix_time_ns:1782381083548911965} leader_broker:"localhost:17777"]
--- PASS: Test_allocateOneBroker (0.00s)
    --- PASS: Test_allocateOneBroker/test_only_one_broker (0.00s)
=== RUN   TestEnsureAssignmentsToActiveBrokersX
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_empty_leader
test empty leader before [partition:{} follower_broker:"localhost:2"]
I0625 09:51:23.550187 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} follower_broker:"localhost:2"]
I0625 09:51:23.550259 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"] hasChanges: true
test empty leader after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_empty_follower
test empty follower before [partition:{} leader_broker:"localhost:1"]
I0625 09:51:23.550285 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1"]
I0625 09:51:23.550317 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:3"] hasChanges: true
test empty follower after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:3"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_dead_follower
test dead follower before [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:200"]
I0625 09:51:23.550338 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:200"]
I0625 09:51:23.550371 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:6"] hasChanges: true
test dead follower after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:6"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_dead_leader_and_follower
test dead leader and follower before [partition:{} leader_broker:"localhost:100" follower_broker:"localhost:200"]
I0625 09:51:23.550390 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:100" follower_broker:"localhost:200"]
I0625 09:51:23.550419 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:2" follower_broker:"localhost:1"] hasChanges: true
test dead leader and follower after [partition:{} leader_broker:"localhost:2" follower_broker:"localhost:1"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_low_active_brokers
test low active brokers before [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0625 09:51:23.550441 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0625 09:51:23.550498 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"] hasChanges: false
test low active brokers after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_low_active_brokers_with_one_follower
test low active brokers with one follower before [partition:{} leader_broker:"localhost:1"]
I0625 09:51:23.550596 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1"]
I0625 09:51:23.550660 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:1"] hasChanges: true
test low active brokers with one follower after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:1"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_single_active_broker
test single active broker before [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0625 09:51:23.550715 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0625 09:51:23.550747 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:1"] hasChanges: true
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
ok  	github.com/seaweedfs/seaweedfs/weed/mq/pub_balancer	0.021s
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
--- PASS: TestWriteReadParquet (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/schema	0.009s
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
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14017273962714625735 ext:509738962 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14017273962714629521 ext:509742748 loc:0x15957e0}}
--- PASS: TestAddConsumerInstance (1.00s)
=== RUN   TestMultipleConsumerInstances
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14017273963789569182 ext:1510940587 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:1 RangeStop:2 RingSize:3 UnixTimeNs:0} consumer:second ts:{wall:14017273963789618966 ext:1510990457 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:third ts:{wall:14017273963789620298 ext:1510991700 loc:0x15957e0}}
--- PASS: TestMultipleConsumerInstances (1.00s)
=== RUN   TestConfirmAdjustment
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14017273964864555466 ext:2512185045 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:second ts:{wall:14017273964864565437 ext:2512195016 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:1 RangeStop:2 RingSize:3 UnixTimeNs:0} consumer:third ts:{wall:14017273964864566486 ext:2512196066 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:1 RangeStop:2 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14017273967012373568 ext:4512519500 loc:0x15957e0}}
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
ok  	github.com/seaweedfs/seaweedfs/weed/mq/sub_coordinator	7.016s
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
W0625 09:51:25.548214 upload_content.go:190 uploading 0 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain; charset=utf-8 Compressed:true, originalSize: 1422
W0625 09:51:26.023448 upload_content.go:190 uploading 1 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain; charset=utf-8 Compressed:true, originalSize: 1422
W0625 09:51:26.735474 upload_content.go:190 uploading 2 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
err: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
uploadResult: <nil>
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0625 09:51:26.735581 upload_content.go:190 uploading 0 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0625 09:51:27.210309 upload_content.go:190 uploading 1 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0625 09:51:27.922271 upload_content.go:190 uploading 2 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
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
ok  	github.com/seaweedfs/seaweedfs/weed/pb/filer_pb	0.006s
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
W0625 09:51:23.561951 bucket_metadata.go:105 Invalid ownership: , bucket: ownershipEmptyStr
W0625 09:51:23.562932 bucket_metadata.go:116 owner[id=xxxxx] is invalid, bucket: acpEmptyObject
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
W0625 09:51:24.564152 s3api_acl_helper.go:292 invalid canonical grantee! account id[notExistsAccount] is not exists
W0625 09:51:24.564161 s3api_acl_helper.go:281 invalid group grantee! group name[http:sfasf] is not valid
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
<CopyObjectResult><LastModified>2026-06-25T09:51:24.568276061Z</LastModified><ETag>12345678</ETag></CopyObjectResult>
--- PASS: TestCopyObjectResponse (0.00s)
=== RUN   TestCopyPartResponse
<?xml version="1.0" encoding="UTF-8"?>
<CopyPartResult><LastModified>2026-06-25T09:51:24.568306942Z</LastModified><ETag>12345678</ETag></CopyPartResult>
--- PASS: TestCopyPartResponse (0.00s)
=== RUN   TestXMLUnmarshall
--- PASS: TestXMLUnmarshall (0.00s)
=== RUN   TestXMLMarshall
--- PASS: TestXMLMarshall (0.00s)
=== RUN   TestValidateTags
--- PASS: TestValidateTags (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api	1.033s
=== RUN   TestPostPolicyForm
--- PASS: TestPostPolicyForm (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api/policy	0.006s
?   	github.com/seaweedfs/seaweedfs/weed/s3api/s3_constants	[no test files]
=== RUN   Test_verifyBucketName
--- PASS: Test_verifyBucketName (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api/s3bucket	0.002s
?   	github.com/seaweedfs/seaweedfs/weed/s3api/s3err	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/security	[no test files]
=== RUN   TestSequencer
I0625 09:51:23.543994 snowflake_sequencer.go:21 use snowflake seq id generator, nodeid:for_test hex_of_nodeid: 1
1cba68fdf5c01000
1cba68fdf5c01001
1cba68fdf5c01002
1cba68fdf5c01003
1cba68fdf5c01004
1cba68fdf5c01005
1cba68fdf5c01006
1cba68fdf5c01007
1cba68fdf5c01008
1cba68fdf5c01009
1cba68fdf5c0100a
1cba68fdf5c0100b
1cba68fdf5c0100c
1cba68fdf5c0100d
1cba68fdf5c0100e
1cba68fdf5c0100f
1cba68fdf5c01010
1cba68fdf5c01011
1cba68fdf5c01012
1cba68fdf5c01013
1cba68fdf5c01014
1cba68fdf5c01015
1cba68fdf5c01016
1cba68fdf5c01017
1cba68fdf5c01018
1cba68fdf5c01019
1cba68fdf5c0101a
1cba68fdf5c0101b
1cba68fdf5c0101c
1cba68fdf5c0101d
1cba68fdf5c0101e
1cba68fdf5c0101f
1cba68fdf5c01020
1cba68fdf5c01021
1cba68fdf5c01022
1cba68fdf5c01023
1cba68fdf5c01024
1cba68fdf5c01025
1cba68fdf5c01026
1cba68fdf5c01027
1cba68fdf5c01028
1cba68fdf5c01029
1cba68fdf5c0102a
1cba68fdf5c0102b
1cba68fdf5c0102c
1cba68fdf5c0102d
1cba68fdf5c0102e
1cba68fdf5c0102f
1cba68fdf5c01030
1cba68fdf5c01031
1cba68fdf5c01032
1cba68fdf5c01033
1cba68fdf5c01034
1cba68fdf5c01035
1cba68fdf5c01036
1cba68fdf5c01037
1cba68fdf5c01038
1cba68fdf5c01039
1cba68fdf5c0103a
1cba68fdf5c0103b
1cba68fdf5c0103c
1cba68fdf5c0103d
1cba68fdf5c0103e
1cba68fdf5c0103f
1cba68fdf5c01040
1cba68fdf5c01041
1cba68fdf5c01042
1cba68fdf5c01043
1cba68fdf5c01044
1cba68fdf5c01045
1cba68fdf5c01046
1cba68fdf5c01047
1cba68fdf5c01048
1cba68fdf5c01049
1cba68fdf5c0104a
1cba68fdf5c0104b
1cba68fdf5c0104c
1cba68fdf5c0104d
1cba68fdf5c0104e
1cba68fdf5c0104f
1cba68fdf5c01050
1cba68fdf5c01051
1cba68fdf5c01052
1cba68fdf5c01053
1cba68fdf5c01054
1cba68fdf5c01055
1cba68fdf5c01056
1cba68fdf5c01057
1cba68fdf5c01058
1cba68fdf5c01059
1cba68fdf5c0105a
1cba68fdf5c0105b
1cba68fdf5c0105c
1cba68fdf5c0105d
1cba68fdf5c0105e
1cba68fdf5c0105f
1cba68fdf5c01060
1cba68fdf5c01061
1cba68fdf5c01062
1cba68fdf5c01063
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
dn1 moves ec shard 1.1 to dn2
dn1 moves ec shard 1.2 to dn2
dn1 moves ec shard 1.3 to dn2
dn1 moves ec shard 1.4 to dn2
dn1 moves ec shard 1.5 to dn2
dn1 moves ec shard 1.6 to dn2
dn1 moves ec shard 1.0 to dn2
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
dn2 moves ec shard 1.10 to dn3
dn1 moves ec shard 1.0 to dn4
dn2 moves ec shard 1.7 to dn4
dn2 moves ec shard 1.8 to dn3
dn1 moves ec shard 1.1 to dn4
dn1 moves ec shard 1.2 to dn3
dn2 moves ec shard 1.9 to dn3
dn2 moves ec shard 2.0 to dn4
dn2 moves ec shard 2.1 to dn3
dn1 moves ec shard 2.8 to dn4
dn1 moves ec shard 2.9 to dn3
dn2 moves ec shard 2.2 to dn4
dn2 moves ec shard 2.3 to dn3
dn1 moves ec shard 2.7 to dn4
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
--- PASS: TestVolumeServerEvacuate (0.01s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/shell	0.186s
=== RUN   TestRobinCounter
--- PASS: TestRobinCounter (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/stats	0.006s
=== RUN   TestUnUsedSpace
--- PASS: TestUnUsedSpace (0.00s)
=== RUN   TestFirstInvalidIndex
I0625 09:51:23.549480 volume_loading.go:139 checking volume data integrity for volume 1
I0625 09:51:23.549931 volume_loading.go:157 loading memory index /tmp/TestFirstInvalidIndex288151261/001/1.idx to memory
--- PASS: TestFirstInvalidIndex (0.01s)
=== RUN   TestFastLoadingNeedleMapMetrics
I0625 09:51:23.571476 needle_map_metric_test.go:26 FileCount expected 10000 actual 12019
I0625 09:51:23.571491 needle_map_metric_test.go:27 DeletedSize expected 1690 actual 1691
I0625 09:51:23.571495 needle_map_metric_test.go:28 ContentSize expected 10000 actual 10000
I0625 09:51:23.571497 needle_map_metric_test.go:29 DeletedCount expected 1690 actual 3710
I0625 09:51:23.571499 needle_map_metric_test.go:30 MaxFileKey expected 10000 actual 10000
--- PASS: TestFastLoadingNeedleMapMetrics (0.01s)
=== RUN   TestBinarySearch
--- PASS: TestBinarySearch (0.00s)
=== RUN   TestSortVolumeInfos
--- PASS: TestSortVolumeInfos (0.00s)
=== RUN   TestReadNeedMetaWithWritesAndUpdates
I0625 09:51:23.571779 volume_loading.go:139 checking volume data integrity for volume 1
I0625 09:51:23.571790 volume_loading.go:157 loading memory index /tmp/TestReadNeedMetaWithWritesAndUpdates881926620/001/1.idx to memory
--- PASS: TestReadNeedMetaWithWritesAndUpdates (0.00s)
=== RUN   TestReadNeedMetaWithDeletesThenWrites
I0625 09:51:23.575896 volume_loading.go:139 checking volume data integrity for volume 1
I0625 09:51:23.575909 volume_loading.go:157 loading memory index /tmp/TestReadNeedMetaWithDeletesThenWrites854848681/001/1.idx to memory
--- PASS: TestReadNeedMetaWithDeletesThenWrites (0.00s)
=== RUN   TestMakeDiff
--- PASS: TestMakeDiff (0.00s)
=== RUN   TestMemIndexCompaction
I0625 09:51:23.580473 volume_loading.go:139 checking volume data integrity for volume 1
I0625 09:51:23.580485 volume_loading.go:157 loading memory index /tmp/TestMemIndexCompaction2225639262/001/1.idx to memory
I0625 09:51:23.700729 needle_map_memory.go:111 loading idx from offset 0 for file: /tmp/TestMemIndexCompaction2225639262/001/1.cpx
    volume_vacuum_test.go:92: compaction speed: 69110696.31 bytes/s
I0625 09:51:23.796657 volume_vacuum.go:114 Committing volume 1 vacuuming...
I0625 09:52:26.486384 needle_map_memory.go:111 loading idx from offset 9730 for file: /tmp/TestMemIndexCompaction2225639262/001/1.cpx
I0625 09:52:26.521134 volume_loading.go:98 readSuperBlock volume 1 version 3
I0625 09:52:26.521178 volume_loading.go:139 checking volume data integrity for volume 1
I0625 09:52:26.521199 volume_loading.go:154 updating memory compact index /tmp/TestMemIndexCompaction2225639262/001/1.idx 
    volume_vacuum_test.go:110: realRecordCount:29730, v.FileCount():29730 mm.DeletedCount():9841
I0625 09:52:26.522309 volume_loading.go:98 readSuperBlock volume 1 version 3
I0625 09:52:26.522323 volume_loading.go:139 checking volume data integrity for volume 1
I0625 09:52:26.522333 volume_loading.go:157 loading memory index /tmp/TestMemIndexCompaction2225639262/001/1.idx to memory
--- PASS: TestMemIndexCompaction (63.00s)
=== RUN   TestLDBIndexCompaction
I0625 09:52:26.576298 volume_loading.go:139 checking volume data integrity for volume 1
I0625 09:52:26.576312 volume_loading.go:172 loading leveldb index /tmp/TestLDBIndexCompaction380153008/001/1.ldb
I0625 09:52:26.583654 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestLDBIndexCompaction380153008/001/1.ldb, watermark 0, num of entries:0
I0625 09:52:26.589078 needle_map_leveldb.go:66 Loading /tmp/TestLDBIndexCompaction380153008/001/1.ldb... , watermark: 0
I0625 09:52:26.749434 needle_map_leveldb.go:338 loading idx to leveldb from offset 0 for file: /tmp/TestLDBIndexCompaction380153008/001/1.cpx
    volume_vacuum_test.go:92: compaction speed: 54459035.34 bytes/s
I0625 09:52:27.037710 volume_vacuum.go:114 Committing volume 1 vacuuming...
I0625 09:53:05.885616 needle_map_leveldb.go:338 loading idx to leveldb from offset 9715 for file: /tmp/TestLDBIndexCompaction380153008/001/1.cpx
I0625 09:53:05.971023 volume_loading.go:98 readSuperBlock volume 1 version 3
I0625 09:53:05.971047 volume_loading.go:139 checking volume data integrity for volume 1
I0625 09:53:05.971061 volume_loading.go:169 updating leveldb index /tmp/TestLDBIndexCompaction380153008/001/1.ldb
    volume_vacuum_test.go:105: watermark from levelDB: 20000, realWatermark: 20000, nm.recordCount: 29715, realRecordCount:29715, fileCount=29715, deletedcount:9708
I0625 09:53:05.994878 volume_loading.go:98 readSuperBlock volume 1 version 3
I0625 09:53:05.994895 volume_loading.go:139 checking volume data integrity for volume 1
I0625 09:53:05.994909 volume_loading.go:172 loading leveldb index /tmp/TestLDBIndexCompaction380153008/001/1.ldb
I0625 09:53:06.003094 needle_map_leveldb.go:66 Loading /tmp/TestLDBIndexCompaction380153008/001/1.ldb... , watermark: 20000
--- PASS: TestLDBIndexCompaction (39.49s)
=== RUN   TestSearchVolumesWithDeletedNeedles
I0625 09:53:06.067878 volume_loading.go:139 checking volume data integrity for volume 1
I0625 09:53:06.067891 volume_loading.go:157 loading memory index /tmp/TestSearchVolumesWithDeletedNeedles1972095029/001/1.idx to memory
offset: 10488, isLast: false
--- PASS: TestSearchVolumesWithDeletedNeedles (0.00s)
=== RUN   TestDestroyEmptyVolumeWithOnlyEmpty
I0625 09:53:06.070551 volume_loading.go:139 checking volume data integrity for volume 1
I0625 09:53:06.070568 volume_loading.go:157 loading memory index /tmp/TestDestroyEmptyVolumeWithOnlyEmpty3828657960/001/1.idx to memory
--- PASS: TestDestroyEmptyVolumeWithOnlyEmpty (0.00s)
=== RUN   TestDestroyEmptyVolumeWithoutOnlyEmpty
I0625 09:53:06.074854 volume_loading.go:139 checking volume data integrity for volume 1
I0625 09:53:06.074864 volume_loading.go:157 loading memory index /tmp/TestDestroyEmptyVolumeWithoutOnlyEmpty4013603058/001/1.idx to memory
--- PASS: TestDestroyEmptyVolumeWithoutOnlyEmpty (0.00s)
=== RUN   TestDestroyNonemptyVolumeWithOnlyEmpty
I0625 09:53:06.079148 volume_loading.go:139 checking volume data integrity for volume 1
I0625 09:53:06.079157 volume_loading.go:157 loading memory index /tmp/TestDestroyNonemptyVolumeWithOnlyEmpty3449525193/001/1.idx to memory
--- PASS: TestDestroyNonemptyVolumeWithOnlyEmpty (0.00s)
=== RUN   TestDestroyNonemptyVolumeWithoutOnlyEmpty
I0625 09:53:06.081392 volume_loading.go:139 checking volume data integrity for volume 1
I0625 09:53:06.081400 volume_loading.go:157 loading memory index /tmp/TestDestroyNonemptyVolumeWithoutOnlyEmpty3729013813/001/1.idx to memory
--- PASS: TestDestroyNonemptyVolumeWithoutOnlyEmpty (0.01s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage	102.554s
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend	[no test files]
=== RUN   TestMemoryMapMaxSizeReadWrite
--- PASS: TestMemoryMapMaxSizeReadWrite (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage/backend/memory_map	0.002s
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend/rclone_backend	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend/s3_backend	[no test files]
=== RUN   TestEncodingDecoding
I0625 09:51:23.549584 ec_encoder.go:81 encodeDatFile 1.dat size:2590912
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
ok  	github.com/seaweedfs/seaweedfs/weed/storage/erasure_coding	0.101s
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
Each 16.15 Bytes	Alloc = 19 MiB	TotalAlloc = 26 MiB	Sys = 40 MiB	NumGC = 5	Taken = 880.538627ms
Each 15.61 Bytes	Alloc = 38 MiB	TotalAlloc = 50 MiB	Sys = 56 MiB	NumGC = 7	Taken = 892.926616ms
Each 15.43 Bytes	Alloc = 56 MiB	TotalAlloc = 74 MiB	Sys = 80 MiB	NumGC = 8	Taken = 876.723391ms
Each 15.33 Bytes	Alloc = 74 MiB	TotalAlloc = 99 MiB	Sys = 96 MiB	NumGC = 9	Taken = 873.511875ms
Each 15.28 Bytes	Alloc = 93 MiB	TotalAlloc = 123 MiB	Sys = 116 MiB	NumGC = 10	Taken = 877.319065ms
Each 15.24 Bytes	Alloc = 111 MiB	TotalAlloc = 147 MiB	Sys = 132 MiB	NumGC = 11	Taken = 876.12626ms
Each 15.22 Bytes	Alloc = 129 MiB	TotalAlloc = 172 MiB	Sys = 152 MiB	NumGC = 12	Taken = 876.053994ms
Each 15.20 Bytes	Alloc = 148 MiB	TotalAlloc = 196 MiB	Sys = 172 MiB	NumGC = 13	Taken = 876.899187ms
Each 15.18 Bytes	Alloc = 166 MiB	TotalAlloc = 221 MiB	Sys = 189 MiB	NumGC = 14	Taken = 874.273748ms
Each 15.17 Bytes	Alloc = 185 MiB	TotalAlloc = 245 MiB	Sys = 209 MiB	NumGC = 15	Taken = 873.998348ms
--- PASS: TestMemoryUsage (8.78s)
=== RUN   TestSnowflakeSequencer
I0625 09:51:32.323375 snowflake_sequencer.go:21 use snowflake seq id generator, nodeid:for_test hex_of_nodeid: 1
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
ok  	github.com/seaweedfs/seaweedfs/weed/storage/needle_map	9.826s
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
I0625 09:51:23.549738 node.go:250 weedfs adds child dc1
I0625 09:51:23.550126 node.go:250 weedfs:dc1 adds child rack1
I0625 09:51:23.550131 node.go:250 weedfs:dc1:rack1 adds child server111
I0625 09:51:23.550136 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0625 09:51:23.550143 node.go:250 weedfs:dc1:rack1 adds child server112
I0625 09:51:23.550145 node.go:250 weedfs:dc1:rack1:server112 adds child 
I0625 09:51:23.550185 node.go:250 weedfs:dc1 adds child rack2
I0625 09:51:23.550187 node.go:250 weedfs:dc1:rack2 adds child server123
I0625 09:51:23.550189 node.go:250 weedfs:dc1:rack2:server123 adds child 
I0625 09:51:23.550193 node.go:250 weedfs:dc1:rack2 adds child server121
I0625 09:51:23.550195 node.go:250 weedfs:dc1:rack2:server121 adds child 
I0625 09:51:23.550199 node.go:250 weedfs:dc1:rack2 adds child server122
I0625 09:51:23.550201 node.go:250 weedfs:dc1:rack2:server122 adds child 
I0625 09:51:23.550203 node.go:250 weedfs adds child dc2
I0625 09:51:23.550205 node.go:250 weedfs adds child dc3
I0625 09:51:23.550207 node.go:250 weedfs:dc3 adds child rack2
I0625 09:51:23.550208 node.go:250 weedfs:dc3:rack2 adds child server321
I0625 09:51:23.550210 node.go:250 weedfs:dc3:rack2:server321 adds child 
I0625 09:51:23.550216 node.go:264 weedfs removes dc2
I0625 09:51:23.550218 node.go:264 weedfs removes dc3
--- PASS: TestRemoveDataCenter (0.00s)
=== RUN   TestHandlingVolumeServerHeartbeat
I0625 09:51:23.550248 node.go:250 weedfs adds child dc1
I0625 09:51:23.550251 node.go:250 weedfs:dc1 adds child rack1
I0625 09:51:23.550254 node.go:250 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0625 09:51:23.550263 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child 
I0625 09:51:23.550266 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child ssd
I0625 09:51:23.550316 volume_layout.go:417 Volume 1 becomes writable
I0625 09:51:23.550321 volume_layout.go:417 Volume 2 becomes writable
I0625 09:51:23.550323 volume_layout.go:417 Volume 3 becomes writable
I0625 09:51:23.550328 volume_layout.go:417 Volume 4 becomes writable
I0625 09:51:23.550330 volume_layout.go:417 Volume 5 becomes writable
I0625 09:51:23.550332 volume_layout.go:417 Volume 6 becomes writable
I0625 09:51:23.550334 volume_layout.go:417 Volume 7 becomes writable
I0625 09:51:23.550336 volume_layout.go:417 Volume 8 becomes writable
I0625 09:51:23.550339 volume_layout.go:417 Volume 9 becomes writable
I0625 09:51:23.550341 volume_layout.go:417 Volume 10 becomes writable
I0625 09:51:23.550343 volume_layout.go:417 Volume 11 becomes writable
I0625 09:51:23.550345 volume_layout.go:417 Volume 12 becomes writable
I0625 09:51:23.550348 volume_layout.go:417 Volume 13 becomes writable
I0625 09:51:23.550350 volume_layout.go:417 Volume 14 becomes writable
I0625 09:51:23.550363 data_node.go:81 Deleting volume id: 7
I0625 09:51:23.550366 data_node.go:81 Deleting volume id: 8
I0625 09:51:23.550368 data_node.go:81 Deleting volume id: 9
I0625 09:51:23.550370 data_node.go:81 Deleting volume id: 10
I0625 09:51:23.550372 data_node.go:81 Deleting volume id: 11
I0625 09:51:23.550373 data_node.go:81 Deleting volume id: 12
I0625 09:51:23.550375 data_node.go:81 Deleting volume id: 13
I0625 09:51:23.550377 data_node.go:81 Deleting volume id: 14
I0625 09:51:23.550381 topology.go:323 removing volume info: Id:7, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 09:51:23.550394 volume_layout.go:229 volume 7 does not have enough copies
I0625 09:51:23.550397 volume_layout.go:237 volume 7 remove from writable
I0625 09:51:23.550399 volume_layout.go:405 Volume 7 becomes unwritable
I0625 09:51:23.550460 topology.go:323 removing volume info: Id:8, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 09:51:23.550465 volume_layout.go:229 volume 8 does not have enough copies
I0625 09:51:23.550466 volume_layout.go:237 volume 8 remove from writable
I0625 09:51:23.550468 volume_layout.go:405 Volume 8 becomes unwritable
I0625 09:51:23.550469 topology.go:323 removing volume info: Id:9, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 09:51:23.550475 volume_layout.go:229 volume 9 does not have enough copies
I0625 09:51:23.550477 volume_layout.go:237 volume 9 remove from writable
I0625 09:51:23.550478 volume_layout.go:405 Volume 9 becomes unwritable
I0625 09:51:23.550480 topology.go:323 removing volume info: Id:10, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 09:51:23.550483 volume_layout.go:229 volume 10 does not have enough copies
I0625 09:51:23.550487 volume_layout.go:237 volume 10 remove from writable
I0625 09:51:23.550488 volume_layout.go:405 Volume 10 becomes unwritable
I0625 09:51:23.550490 topology.go:323 removing volume info: Id:11, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 09:51:23.550493 volume_layout.go:229 volume 11 does not have enough copies
I0625 09:51:23.550494 volume_layout.go:237 volume 11 remove from writable
I0625 09:51:23.550496 volume_layout.go:405 Volume 11 becomes unwritable
I0625 09:51:23.550497 topology.go:323 removing volume info: Id:12, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 09:51:23.550500 volume_layout.go:229 volume 12 does not have enough copies
I0625 09:51:23.550502 volume_layout.go:237 volume 12 remove from writable
I0625 09:51:23.550503 volume_layout.go:405 Volume 12 becomes unwritable
I0625 09:51:23.550504 topology.go:323 removing volume info: Id:13, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 09:51:23.550507 volume_layout.go:229 volume 13 does not have enough copies
I0625 09:51:23.550509 volume_layout.go:237 volume 13 remove from writable
I0625 09:51:23.550510 volume_layout.go:405 Volume 13 becomes unwritable
I0625 09:51:23.550512 topology.go:323 removing volume info: Id:14, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0625 09:51:23.550514 volume_layout.go:229 volume 14 does not have enough copies
I0625 09:51:23.550516 volume_layout.go:237 volume 14 remove from writable
I0625 09:51:23.550517 volume_layout.go:405 Volume 14 becomes unwritable
I0625 09:51:23.550523 topology.go:323 removing volume info: Id:3, Size:0, ReplicaPlacement:000, Collection:, Version:3, FileCount:0, DeleteCount:0, DeletedByteCount:0, ReadOnly:false from 127.0.0.1:34534
I0625 09:51:23.550526 volume_layout.go:229 volume 3 does not have enough copies
I0625 09:51:23.550528 volume_layout.go:237 volume 3 remove from writable
I0625 09:51:23.550529 volume_layout.go:405 Volume 3 becomes unwritable
I0625 09:51:23.550533 volume_layout.go:417 Volume 3 becomes writable
after add volume id 1
after add volume id 2
after add volume id 3
after add volume id 4
after add volume id 5
after add volume id 6
after add writable volume id 1
after add writable volume id 2
after add writable volume id 4
after add writable volume id 5
after add writable volume id 6
after add writable volume id 3
I0625 09:51:23.558328 topology_event_handling.go:86 Removing Volume 6 from the dead volume server 127.0.0.1:34534
I0625 09:51:23.558344 volume_layout.go:456 Volume 6 has 0 replica, less than required 1
I0625 09:51:23.558348 volume_layout.go:405 Volume 6 becomes unwritable
I0625 09:51:23.558351 topology_event_handling.go:86 Removing Volume 1 from the dead volume server 127.0.0.1:34534
I0625 09:51:23.558354 volume_layout.go:456 Volume 1 has 0 replica, less than required 1
I0625 09:51:23.558356 volume_layout.go:405 Volume 1 becomes unwritable
I0625 09:51:23.558358 topology_event_handling.go:86 Removing Volume 2 from the dead volume server 127.0.0.1:34534
I0625 09:51:23.558360 volume_layout.go:456 Volume 2 has 0 replica, less than required 1
I0625 09:51:23.558362 volume_layout.go:405 Volume 2 becomes unwritable
I0625 09:51:23.558363 topology_event_handling.go:86 Removing Volume 3 from the dead volume server 127.0.0.1:34534
I0625 09:51:23.558376 volume_layout.go:456 Volume 3 has 0 replica, less than required 1
I0625 09:51:23.558379 volume_layout.go:405 Volume 3 becomes unwritable
I0625 09:51:23.558380 topology_event_handling.go:86 Removing Volume 4 from the dead volume server 127.0.0.1:34534
I0625 09:51:23.558383 volume_layout.go:456 Volume 4 has 0 replica, less than required 1
I0625 09:51:23.558384 volume_layout.go:405 Volume 4 becomes unwritable
I0625 09:51:23.558386 topology_event_handling.go:86 Removing Volume 5 from the dead volume server 127.0.0.1:34534
I0625 09:51:23.558388 volume_layout.go:456 Volume 5 has 0 replica, less than required 1
I0625 09:51:23.558389 volume_layout.go:405 Volume 5 becomes unwritable
I0625 09:51:23.558403 node.go:264 weedfs:dc1:rack1 removes 127.0.0.1:34534
--- PASS: TestHandlingVolumeServerHeartbeat (0.01s)
=== RUN   TestAddRemoveVolume
I0625 09:51:23.558445 node.go:250 weedfs adds child dc1
I0625 09:51:23.558449 node.go:250 weedfs:dc1 adds child rack1
I0625 09:51:23.558452 node.go:250 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0625 09:51:23.558456 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child 
I0625 09:51:23.558459 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child ssd
I0625 09:51:23.558475 volume_layout.go:417 Volume 1 becomes writable
I0625 09:51:23.558479 topology.go:323 removing volume info: Id:1, Size:100, ReplicaPlacement:000, Collection:xcollection, Version:3, FileCount:123, DeleteCount:23, DeletedByteCount:45, ReadOnly:false from 127.0.0.1:34534
I0625 09:51:23.558486 volume_layout.go:229 volume 1 does not have enough copies
I0625 09:51:23.558488 volume_layout.go:237 volume 1 remove from writable
I0625 09:51:23.558495 volume_layout.go:405 Volume 1 becomes unwritable
--- PASS: TestAddRemoveVolume (0.00s)
=== RUN   TestListCollections
I0625 09:51:23.558517 node.go:250 weedfs adds child dc1
I0625 09:51:23.558519 node.go:250 weedfs:dc1 adds child rack1
I0625 09:51:23.558522 node.go:250 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0625 09:51:23.558532 volume_layout.go:229 volume 1111 does not have enough copies
I0625 09:51:23.558535 volume_layout.go:237 volume 1111 remove from writable
I0625 09:51:23.558538 volume_layout.go:229 volume 2222 does not have enough copies
I0625 09:51:23.558540 volume_layout.go:237 volume 2222 remove from writable
I0625 09:51:23.558543 volume_layout.go:229 volume 3333 does not have enough copies
I0625 09:51:23.558545 volume_layout.go:237 volume 3333 remove from writable
=== RUN   TestListCollections/no_volume_types_selected
=== RUN   TestListCollections/normal_volumes
=== RUN   TestListCollections/EC_volumes
=== RUN   TestListCollections/normal_+_EC_volumes
    topology_test.go:280: got [vol_collection_a vol_collection_b ec_collection_a ec_collection_b ], want [ ec_collection_a ec_collection_b vol_collection_a vol_collection_b]
--- FAIL: TestListCollections (0.00s)
    --- PASS: TestListCollections/no_volume_types_selected (0.00s)
    --- PASS: TestListCollections/normal_volumes (0.00s)
    --- PASS: TestListCollections/EC_volumes (0.00s)
    --- FAIL: TestListCollections/normal_+_EC_volumes (0.00s)
=== RUN   TestFindEmptySlotsForOneVolume
data: map[dc1:map[rack1:map[server111:map[limit:3 volumes:[map[id:1 size:12312] map[id:2 size:12312] map[id:3 size:12312]]] server112:map[limit:10 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]]] rack2:map[server121:map[limit:4 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server122:map[limit:4 volumes:[]] server123:map[limit:5 volumes:[map[id:2 size:12312] map[id:3 size:12312] map[id:4 size:12312]]]]] dc2:map[] dc3:map[rack2:map[server321:map[limit:4 volumes:[map[id:1 size:12312] map[id:3 size:12312] map[id:5 size:12312]]]]]]
I0625 09:51:23.558725 node.go:250 weedfs adds child dc3
I0625 09:51:23.558727 node.go:250 weedfs:dc3 adds child rack2
I0625 09:51:23.558730 node.go:250 weedfs:dc3:rack2 adds child server321
I0625 09:51:23.558732 node.go:250 weedfs:dc3:rack2:server321 adds child 
I0625 09:51:23.558741 node.go:250 weedfs adds child dc1
I0625 09:51:23.558746 node.go:250 weedfs:dc1 adds child rack1
I0625 09:51:23.558747 node.go:250 weedfs:dc1:rack1 adds child server111
I0625 09:51:23.558750 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0625 09:51:23.558754 node.go:250 weedfs:dc1:rack1 adds child server112
I0625 09:51:23.558761 node.go:250 weedfs:dc1:rack1:server112 adds child 
I0625 09:51:23.558768 node.go:250 weedfs:dc1 adds child rack2
I0625 09:51:23.558771 node.go:250 weedfs:dc1:rack2 adds child server121
I0625 09:51:23.558774 node.go:250 weedfs:dc1:rack2:server121 adds child 
I0625 09:51:23.558778 node.go:250 weedfs:dc1:rack2 adds child server122
I0625 09:51:23.558780 node.go:250 weedfs:dc1:rack2:server122 adds child 
I0625 09:51:23.558787 node.go:250 weedfs:dc1:rack2 adds child server123
I0625 09:51:23.558791 node.go:250 weedfs:dc1:rack2:server123 adds child 
I0625 09:51:23.558799 node.go:250 weedfs adds child dc2
assigned node : server122
assigned node : server123
assigned node : server121
--- PASS: TestFindEmptySlotsForOneVolume (0.00s)
=== RUN   TestReplication011
data: map[dc1:map[rack1:map[server111:map[limit:300 volumes:[map[id:1 size:12312] map[id:2 size:12312] map[id:3 size:12312]]] server112:map[limit:300 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server113:map[limit:300 volumes:[]] server114:map[limit:300 volumes:[]] server115:map[limit:300 volumes:[]] server116:map[limit:300 volumes:[]]] rack2:map[server121:map[limit:300 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server122:map[limit:300 volumes:[]] server123:map[limit:300 volumes:[map[id:2 size:12312] map[id:3 size:12312] map[id:4 size:12312]]] server124:map[limit:300 volumes:[]] server125:map[limit:300 volumes:[]] server126:map[limit:300 volumes:[]]] rack3:map[server131:map[limit:300 volumes:[]] server132:map[limit:300 volumes:[]] server133:map[limit:300 volumes:[]] server134:map[limit:300 volumes:[]] server135:map[limit:300 volumes:[]] server136:map[limit:300 volumes:[]]]]]
I0625 09:51:23.558878 node.go:250 weedfs adds child dc1
I0625 09:51:23.558880 node.go:250 weedfs:dc1 adds child rack1
I0625 09:51:23.558882 node.go:250 weedfs:dc1:rack1 adds child server115
I0625 09:51:23.558884 node.go:250 weedfs:dc1:rack1:server115 adds child 
I0625 09:51:23.558887 node.go:250 weedfs:dc1:rack1 adds child server116
I0625 09:51:23.558889 node.go:250 weedfs:dc1:rack1:server116 adds child 
I0625 09:51:23.558891 node.go:250 weedfs:dc1:rack1 adds child server111
I0625 09:51:23.558893 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0625 09:51:23.558898 node.go:250 weedfs:dc1:rack1 adds child server112
I0625 09:51:23.558903 node.go:250 weedfs:dc1:rack1:server112 adds child 
I0625 09:51:23.558907 node.go:250 weedfs:dc1:rack1 adds child server113
I0625 09:51:23.558912 node.go:250 weedfs:dc1:rack1:server113 adds child 
I0625 09:51:23.558914 node.go:250 weedfs:dc1:rack1 adds child server114
I0625 09:51:23.558916 node.go:250 weedfs:dc1:rack1:server114 adds child 
I0625 09:51:23.558918 node.go:250 weedfs:dc1 adds child rack2
I0625 09:51:23.558920 node.go:250 weedfs:dc1:rack2 adds child server125
I0625 09:51:23.558922 node.go:250 weedfs:dc1:rack2:server125 adds child 
I0625 09:51:23.558924 node.go:250 weedfs:dc1:rack2 adds child server126
I0625 09:51:23.558928 node.go:250 weedfs:dc1:rack2:server126 adds child 
I0625 09:51:23.558933 node.go:250 weedfs:dc1:rack2 adds child server121
I0625 09:51:23.558935 node.go:250 weedfs:dc1:rack2:server121 adds child 
I0625 09:51:23.558939 node.go:250 weedfs:dc1:rack2 adds child server122
I0625 09:51:23.558941 node.go:250 weedfs:dc1:rack2:server122 adds child 
I0625 09:51:23.558943 node.go:250 weedfs:dc1:rack2 adds child server123
I0625 09:51:23.558945 node.go:250 weedfs:dc1:rack2:server123 adds child 
I0625 09:51:23.558949 node.go:250 weedfs:dc1:rack2 adds child server124
I0625 09:51:23.558951 node.go:250 weedfs:dc1:rack2:server124 adds child 
I0625 09:51:23.558953 node.go:250 weedfs:dc1 adds child rack3
I0625 09:51:23.558955 node.go:250 weedfs:dc1:rack3 adds child server133
I0625 09:51:23.558957 node.go:250 weedfs:dc1:rack3:server133 adds child 
I0625 09:51:23.558961 node.go:250 weedfs:dc1:rack3 adds child server134
I0625 09:51:23.558963 node.go:250 weedfs:dc1:rack3:server134 adds child 
I0625 09:51:23.558966 node.go:250 weedfs:dc1:rack3 adds child server135
I0625 09:51:23.558967 node.go:250 weedfs:dc1:rack3:server135 adds child 
I0625 09:51:23.558970 node.go:250 weedfs:dc1:rack3 adds child server136
I0625 09:51:23.558971 node.go:250 weedfs:dc1:rack3:server136 adds child 
I0625 09:51:23.558974 node.go:250 weedfs:dc1:rack3 adds child server131
I0625 09:51:23.558976 node.go:250 weedfs:dc1:rack3:server131 adds child 
I0625 09:51:23.558981 node.go:250 weedfs:dc1:rack3 adds child server132
I0625 09:51:23.558985 node.go:250 weedfs:dc1:rack3:server132 adds child 
assigned node : server135
assigned node : server131
assigned node : server121
--- PASS: TestReplication011 (0.00s)
=== RUN   TestFindEmptySlotsForOneVolumeScheduleByWeight
data: map[dc1:map[rack1:map[server111:map[limit:2000 volumes:[]]]] dc2:map[rack2:map[server222:map[limit:2000 volumes:[]]]] dc3:map[rack3:map[server333:map[limit:1000 volumes:[]]]] dc4:map[rack4:map[server444:map[limit:1000 volumes:[]]]] dc5:map[rack5:map[server555:map[limit:500 volumes:[]]]] dc6:map[rack6:map[server666:map[limit:500 volumes:[]]]]]
I0625 09:51:23.559040 node.go:250 weedfs adds child dc6
I0625 09:51:23.559042 node.go:250 weedfs:dc6 adds child rack6
I0625 09:51:23.559044 node.go:250 weedfs:dc6:rack6 adds child server666
I0625 09:51:23.559050 node.go:250 weedfs:dc6:rack6:server666 adds child 
I0625 09:51:23.559054 node.go:250 weedfs adds child dc1
I0625 09:51:23.559056 node.go:250 weedfs:dc1 adds child rack1
I0625 09:51:23.559058 node.go:250 weedfs:dc1:rack1 adds child server111
I0625 09:51:23.559060 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0625 09:51:23.559062 node.go:250 weedfs adds child dc2
I0625 09:51:23.559064 node.go:250 weedfs:dc2 adds child rack2
I0625 09:51:23.559066 node.go:250 weedfs:dc2:rack2 adds child server222
I0625 09:51:23.559067 node.go:250 weedfs:dc2:rack2:server222 adds child 
I0625 09:51:23.559070 node.go:250 weedfs adds child dc3
I0625 09:51:23.559072 node.go:250 weedfs:dc3 adds child rack3
I0625 09:51:23.559074 node.go:250 weedfs:dc3:rack3 adds child server333
I0625 09:51:23.559075 node.go:250 weedfs:dc3:rack3:server333 adds child 
I0625 09:51:23.559078 node.go:250 weedfs adds child dc4
I0625 09:51:23.559079 node.go:250 weedfs:dc4 adds child rack4
I0625 09:51:23.559081 node.go:250 weedfs:dc4:rack4 adds child server444
I0625 09:51:23.559083 node.go:250 weedfs:dc4:rack4:server444 adds child 
I0625 09:51:23.559085 node.go:250 weedfs adds child dc5
I0625 09:51:23.559087 node.go:250 weedfs:dc5 adds child rack5
I0625 09:51:23.559089 node.go:250 weedfs:dc5:rack5 adds child server555
I0625 09:51:23.559091 node.go:250 weedfs:dc5:rack5:server555 adds child 
server222 : 555
server111 : 539
server333 : 285
server444 : 301
server555 : 175
server666 : 145
--- PASS: TestFindEmptySlotsForOneVolumeScheduleByWeight (0.00s)
=== RUN   TestPickForWrite
data: map[dc1:map[rack1:map[serverdc111:map[ip:127.0.0.1 limit:100 volumes:[map[collection:test id:1 replication:001 size:12312] map[collection:test id:2 replication:100 size:12312] map[collection:test id:4 replication:100 size:12312] map[collection:test id:6 replication:010 size:12312]]]]] dc2:map[rack1:map[serverdc211:map[ip:127.0.0.2 limit:100 volumes:[map[collection:test id:2 replication:100 size:12312] map[collection:test id:3 replication:010 size:12312] map[collection:test id:5 replication:001 size:12312] map[collection:test id:6 replication:010 size:12312]]]]] dc3:map[rack1:map[serverdc311:map[ip:127.0.0.3 limit:100 volumes:[map[collection:test id:1 replication:001 size:12312] map[collection:test id:3 replication:010 size:12312] map[collection:test id:4 replication:100 size:12312] map[collection:test id:5 replication:001 size:12312]]]]]]
I0625 09:51:23.562211 node.go:250 weedfs adds child dc1
I0625 09:51:23.562213 node.go:250 weedfs:dc1 adds child rack1
I0625 09:51:23.562215 node.go:250 weedfs:dc1:rack1 adds child serverdc111
I0625 09:51:23.562220 volume_layout.go:417 Volume 1 becomes writable
I0625 09:51:23.562223 node.go:250 weedfs:dc1:rack1:serverdc111 adds child 
I0625 09:51:23.562230 volume_layout.go:417 Volume 2 becomes writable
I0625 09:51:23.562233 volume_layout.go:417 Volume 4 becomes writable
I0625 09:51:23.562236 volume_layout.go:417 Volume 6 becomes writable
I0625 09:51:23.562238 node.go:250 weedfs adds child dc2
I0625 09:51:23.562242 node.go:250 weedfs:dc2 adds child rack1
I0625 09:51:23.562244 node.go:250 weedfs:dc2:rack1 adds child serverdc211
I0625 09:51:23.562249 volume_layout.go:405 Volume 2 becomes unwritable
I0625 09:51:23.562251 volume_layout.go:417 Volume 2 becomes writable
I0625 09:51:23.562255 node.go:250 weedfs:dc2:rack1:serverdc211 adds child 
I0625 09:51:23.562258 volume_layout.go:417 Volume 3 becomes writable
I0625 09:51:23.562263 volume_layout.go:417 Volume 5 becomes writable
I0625 09:51:23.562266 volume_layout.go:405 Volume 6 becomes unwritable
I0625 09:51:23.562267 volume_layout.go:417 Volume 6 becomes writable
I0625 09:51:23.562270 node.go:250 weedfs adds child dc3
I0625 09:51:23.562272 node.go:250 weedfs:dc3 adds child rack1
I0625 09:51:23.562273 node.go:250 weedfs:dc3:rack1 adds child serverdc311
I0625 09:51:23.562275 volume_layout.go:405 Volume 1 becomes unwritable
I0625 09:51:23.562277 volume_layout.go:417 Volume 1 becomes writable
I0625 09:51:23.562281 node.go:250 weedfs:dc3:rack1:serverdc311 adds child 
I0625 09:51:23.562284 volume_layout.go:405 Volume 3 becomes unwritable
I0625 09:51:23.562285 volume_layout.go:417 Volume 3 becomes writable
I0625 09:51:23.562288 volume_layout.go:405 Volume 4 becomes unwritable
I0625 09:51:23.562289 volume_layout.go:417 Volume 4 becomes writable
I0625 09:51:23.562292 volume_layout.go:405 Volume 5 becomes unwritable
I0625 09:51:23.562293 volume_layout.go:417 Volume 5 becomes writable
--- PASS: TestPickForWrite (0.00s)
=== RUN   TestVolumesBinaryState
=== RUN   TestVolumesBinaryState/mark_true_when_copies_exist
=== RUN   TestVolumesBinaryState/mark_true_when_no_copies_exist
--- PASS: TestVolumesBinaryState (0.00s)
    --- PASS: TestVolumesBinaryState/mark_true_when_copies_exist (0.00s)
    --- PASS: TestVolumesBinaryState/mark_true_when_no_copies_exist (0.00s)
FAIL
FAIL	github.com/seaweedfs/seaweedfs/weed/topology	0.024s
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
ActiveLock 3 released lock 0
ActiveLock 1 released lock 0
ActiveLock 2 released lock 0
ActiveLock 4 acquired lock 1
ActiveLock 4 released lock 1
ActiveLock 5 acquired lock 0
ActiveLock 6 acquired lock 0
ActiveLock 5 released lock 0
ActiveLock 6 released lock 0
ActiveLock 7 acquired lock 1
ActiveLock 7 released lock 1
ActiveLock 8 acquired lock 1
ActiveLock 8 released lock 1
ActiveLock 9 acquired lock 0
ActiveLock 9 released lock 0
ActiveLock 11 acquired lock 0
ActiveLock 12 acquired lock 0
ActiveLock 13 acquired lock 0
ActiveLock 10 acquired lock 0
ActiveLock 14 acquired lock 0
ActiveLock 12 released lock 0
ActiveLock 13 released lock 0
ActiveLock 14 released lock 0
ActiveLock 10 released lock 0
ActiveLock 11 released lock 0
ActiveLock 15 acquired lock 1
ActiveLock 15 released lock 1
ActiveLock 16 acquired lock 0
ActiveLock 17 acquired lock 0
ActiveLock 18 acquired lock 0
ActiveLock 19 acquired lock 0
ActiveLock 19 released lock 0
ActiveLock 20 acquired lock 0
ActiveLock 18 released lock 0
ActiveLock 17 released lock 0
ActiveLock 16 released lock 0
ActiveLock 20 released lock 0
ActiveLock 21 acquired lock 1
ActiveLock 21 released lock 1
ActiveLock 22 acquired lock 0
ActiveLock 23 acquired lock 0
ActiveLock 23 released lock 0
ActiveLock 22 released lock 0
ActiveLock 24 acquired lock 1
ActiveLock 24 released lock 1
ActiveLock 25 acquired lock 0
ActiveLock 27 acquired lock 0
ActiveLock 28 acquired lock 0
ActiveLock 27 released lock 0
ActiveLock 25 released lock 0
ActiveLock 28 released lock 0
ActiveLock 29 acquired lock 1
ActiveLock 29 released lock 1
ActiveLock 30 acquired lock 0
ActiveLock 31 acquired lock 0
ActiveLock 26 acquired lock 0
ActiveLock 32 acquired lock 0
ActiveLock 33 acquired lock 0
ActiveLock 26 released lock 0
ActiveLock 30 released lock 0
ActiveLock 33 released lock 0
ActiveLock 31 released lock 0
ActiveLock 32 released lock 0
ActiveLock 34 acquired lock 1
ActiveLock 34 released lock 1
ActiveLock 35 acquired lock 0
ActiveLock 36 acquired lock 0
ActiveLock 35 released lock 0
ActiveLock 38 acquired lock 0
ActiveLock 39 acquired lock 0
ActiveLock 39 released lock 0
ActiveLock 37 acquired lock 0
ActiveLock 42 acquired lock 0
ActiveLock 42 released lock 0
ActiveLock 41 acquired lock 0
ActiveLock 36 released lock 0
ActiveLock 37 released lock 0
ActiveLock 38 released lock 0
ActiveLock 41 released lock 0
ActiveLock 44 acquired lock 1
ActiveLock 44 released lock 1
ActiveLock 45 acquired lock 0
ActiveLock 47 acquired lock 0
ActiveLock 48 acquired lock 0
ActiveLock 46 acquired lock 0
ActiveLock 47 released lock 0
ActiveLock 48 released lock 0
ActiveLock 46 released lock 0
ActiveLock 45 released lock 0
ActiveLock 43 acquired lock 1
ActiveLock 43 released lock 1
ActiveLock 49 acquired lock 0
ActiveLock 40 acquired lock 0
ActiveLock 50 acquired lock 0
ActiveLock 40 released lock 0
ActiveLock 50 released lock 0
ActiveLock 49 released lock 0
--- PASS: TestOrderedLock (1.00s)
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
ok  	github.com/seaweedfs/seaweedfs/weed/util	1.125s
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
I0625 09:51:23.567672 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2945808861/001/c0_2_0.ldb, watermark 0, num of entries:0
I0625 09:51:23.575997 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c0_2_0.ldb... , watermark: 0
I0625 09:51:23.584495 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2945808861/001/c0_2_1.ldb, watermark 0, num of entries:0
I0625 09:51:23.610715 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c0_2_1.ldb... , watermark: 0
I0625 09:51:23.621743 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2945808861/001/c1_3_0.ldb, watermark 0, num of entries:0
I0625 09:51:23.630007 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c1_3_0.ldb... , watermark: 0
I0625 09:51:23.640201 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2945808861/001/c1_3_1.ldb, watermark 0, num of entries:0
I0625 09:51:23.647066 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c1_3_1.ldb... , watermark: 0
I0625 09:51:23.654393 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2945808861/001/c1_3_2.ldb, watermark 0, num of entries:0
I0625 09:51:23.661308 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c1_3_2.ldb... , watermark: 0
I0625 09:51:23.668936 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2945808861/001/c2_2_0.ldb, watermark 0, num of entries:0
I0625 09:51:23.676646 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c2_2_0.ldb... , watermark: 0
I0625 09:51:23.683060 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2945808861/001/c2_2_1.ldb, watermark 0, num of entries:0
I0625 09:51:23.689577 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c2_2_1.ldb... , watermark: 0
I0625 09:51:23.696117 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2945808861/001/c0_2_0.ldb, watermark 0, num of entries:0
I0625 09:51:23.703931 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c0_2_0.ldb... , watermark: 0
I0625 09:51:23.715545 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2945808861/001/c0_2_1.ldb, watermark 0, num of entries:0
I0625 09:51:23.722026 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c0_2_1.ldb... , watermark: 0
I0625 09:51:23.740486 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c0_2_0.ldb... , watermark: 0
I0625 09:51:23.750775 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk2945808861/001/c0_2_1.ldb, watermark 0, num of entries:1
I0625 09:51:23.758967 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c0_2_1.ldb... , watermark: 0
I0625 09:51:23.767777 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c1_3_0.ldb... , watermark: 0
I0625 09:51:23.776797 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c1_3_1.ldb... , watermark: 0
I0625 09:51:23.785232 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c1_3_2.ldb... , watermark: 0
I0625 09:51:23.793883 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c2_2_0.ldb... , watermark: 0
I0625 09:51:23.802536 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk2945808861/001/c2_2_1.ldb... , watermark: 0
--- PASS: TestOnDisk (0.25s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/chunk_cache	0.265s
?   	github.com/seaweedfs/seaweedfs/weed/util/fla9	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/grace	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/http	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/http/client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/httpdown	[no test files]
=== RUN   TestNewLogBufferFirstBuffer
processed all messages
E0625 09:51:23.630912 log_read.go:115 LoopProcessLogData: test process log entry 1 ts_ns:1782381083630882808  partition_key_hash:-736260903  data:"T\xdeы\xdd\t\xcd\xca1H\xfa\x8b\xf1\x94\\\x15c\xbc\xcdH\xee\x86j\x10\xfci\xe6\x96;-#șC(\x134\xc1\xfaN3\x049\x16\xdd\x1b\x8d\xa3\x04\x1ew%'_\x8aBzpr\x8ad\xd8\xdd+ƍ\xa5gl\xd8\xe4c\x12\xee\xf4æ\x97s\xb2;\xa3\xf8\x1e\xa65\xd7V\xf8\xf5\xb3\xd3`\xcbOa\xac6|\x06\xe6\xcb\xcfc\x14_\xa5\xfep\x81\xfd\xbcTB\xaeϹ\xd8\xf7\x87$\x970.1\x92\xe0\x8e\xda\xdbdw\x9e\xa4\xdf\xf8\x02\x9d\xc2\xfd\xe5c!\x8d\xbag\x95\np\xe1\x03sX\x8c\x11|\x85 \xa2\xbb\x03\"\x89\x92\x12:Hm\xc9œ\x0e\xbf\xb6\xfb\xbbO\x14\x85\x07\x1eoF\xb8\xb6^z\xca\x1fj\x9f\xdb\xd6\xc4\xd7\xc55 \xb5\xc8\x14\x9f [\xc0؞\xd1\x0eh\xf0\x11\xa2l\xcaf\xd44\x04\xc7\x03Q\x85\x0c\xbe\xf2\xbaX\th\xe7\x03e\xd8Mb\xbb\x17\x0bu1\x99x\x82?`\xdb\xee\xfa\n\xeb^\x17\x94\xebJA\x93\xd9\xf84\x80\x96\xf9(Vz\x82\x80\xb1\x0bn\xefͅ\x83\xfc&7\x94\xdf{\xbbb\xf8j\xcfc\t\xe2\xd2\t\xba\xff\x95\x9d\xee\x7f&\x9c\xf7f\x9e\xb0eʌ\xc8x(\xbd\x8a\x01\x99Zݱ\xbbs\x80Ї~\xba\x12N\x93\x88\x85;\x1bW\x1a\x1b\x9eo\x03\xb0\x8a\xdeA\xfbN~\xb7\xb1T\xf9\xc1\x9e\x8ew\x8a\x7f\x97\xb00#\x1f\xd8\xed\\\xa3\x0e&\r\xed0\xa9dR\x10i\xa1\xf6@\xbf\xd4\x1e\x9b=\xc9Բ\x7f\xe0\xf6w{\xf0\x99\xdc\xc8)\x9c\xf43\xd3,\xa4\xe3\xbaBb\xc4C\x84\x7f\x8f\xbf\xb5\x0f\xb0D!FZ\x8e.\x03\xb9f;c\x1dݪ\x0b\x04bG\x1a\xd8\xdf\xe4U\xf6M\x84\xdd\xe8\x13\x0b\xcd\xe6\xff+0\xdb@\xe3^\xe1\"\x11\xa0<\xdd\x0b\n\xee\x12\r\x11Tc\x8a?\xb11\xban\x0cŗ\x96\xc6+y./\xc3遄\x11+\x99Q\xdcia\x99\xfe\x93fNؿ\xc4\xfb7\x1dkF(ǽ4y\x14\x9c\xeb\xe1顉\xe8\x01v\xe3\x81XM\x85%fם\xa5oy%\x80\xe5.\x8f\xd9f\x05\xee8\xd6\xe1\x90AF\x8b\xfeQ\xafM\xd76v\n\xcb]\xbe\x9b\x8d;\x95)\n[L\xb8#~\xfa-GV\xf2@\x00\x825j\xc1\x1c7\x06\xb2.6\xf4\x01\xe5\x0f\x10u\x1f\x1f\xe2[Z-py\xadO\x03\xebl\xcc)\x17d\xfb\x86d~-\xef\xfb\xf3#\x12\x9f\xd7H\xb2\x9e]\x9a\xa9\xf7\x14\t\x0e\xceW\xa3\xd5R\x80\xf0\x14*\xfd\xf3\xec\x13\x82>\xfbP\x07n=Xp\xb0{H\xe9\xe5\xc9Pca\xfe\xea\xb8n\x19\x11&\xb7\xda%\x07o\xfa\xe5\x08L\xe1p\xa6u{w \xb3<Y\x95\xcaF\xceje\xf51O3\xee>_B\x17\x17\xff5\xb1\x8e\x00\xbe\xe3\xa0\xc5EŜ\xd1դV\x9c{\xe5e\x95V\xe2f\x0b\xeb\xd8Ec\xa7f\xde0ǉ\xc5l2'\x9d\xa7\xda2ύ\xfe\x10\x03\xe25)\xa8i\x19\\\x16+F\xe5\xacLV\x8a\x08-\x80\xf2\xdaPN\xa72\xd9\xc5>\xcd\xd7\xc6\xcbۜ\tX\x10L&\x9b\x1bcO\x14\x9a\x02\x88\xa6H\x17\x974ִ\x9f\x8f\xe8sB\xd6e\x88^џ\xc3̴\xb9\x92\xbe\xbdf\xa6\x01\n\x88\xf4\xa1X9J6i\xfb}!\x87̵\x01\x8a0C\xac\x84\x07\\\xa3\x9aJj\x86L\t\xd81\x97\xac\xc4\xedI\xfe\x81\x16y\xbc<u\xeaI\x0f]\xb8d\xb1\x80-k\x06d\xfb\xeeS\x15\xad{C\x88\x97x}\xa3\x98O\x98\xcb\xca\xd3^;\x14.\xb4\x06\x05\x96\xec\xe2\xe7:\xe8\xc1\xd2qԊ>\x99[z\"Iy9\x00\xbf\x14wͷI*\xf5\xc8]-\x13\x0b\xce#\x87\x1e\x94\xa9p\tP(4\x92d\x9e!.\xa8%\xe59\x05\xc7rw\x12V\rAŜ'k\x18LU\x19\xcb\x12\xe7;6\x99\xbc\x946jP\x11M(q\xec<\xef#\xae#\x07\xa1<\xa85\x9e\x15\xf7A\xbb\xf3\xa9b\x91\xd93+\x02ȗ\x0b_\x08": EOF
before flush: sent 5000 received 5000
lastProcessedTime 2026-06-25 09:51:23.630882808 +0000 UTC isDone true err: EOF
--- PASS: TestNewLogBufferFirstBuffer (0.09s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/log_buffer	0.093s
=== RUN   TestAllocateFree
--- PASS: TestAllocateFree (0.00s)
=== RUN   TestAllocateFreeEdgeCases
--- PASS: TestAllocateFreeEdgeCases (0.00s)
=== RUN   TestBitCount
--- PASS: TestBitCount (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/mem	0.003s
=== RUN   TestNameList
0 1 10 11 12 13 14 15 16 17 18 19 2 20 21 22 23 24 25 26 27 28 29 3 30 31 32 33 34 35 36 37 38 39 4 40 41 42 43 44 45 46 47 48 49 5 50 51 52 53 54 55 56 57 58 59 6 60 61 62 63 64 65 66 67 68 69 7 70 71 72 73 74 75 76 77 78 79 8 80 81 82 83 84 85 86 87 88 89 9 90 91 92 93 94 95 96 97 98 99 --- PASS: TestNameList (0.11s)
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
ok  	github.com/seaweedfs/seaweedfs/weed/util/skiplist	0.322s
=== RUN   TestLocationIndex
--- PASS: TestLocationIndex (0.00s)
=== RUN   TestLookupFileId
--- PASS: TestLookupFileId (0.00s)
=== RUN   TestConcurrentGetLocations
--- PASS: TestConcurrentGetLocations (0.07s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/wdclient	0.087s
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/exclusive_locks	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/net2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/resource_pool	[no test files]
FAIL
