patching file .github/workflows/container_latest.yml
patching file .github/workflows/test-s3-over-https-using-awscli.yml
patching file weed/topology/topology_test.go
patching file .github/workflows/depsreview.yml
patching file docker/Dockerfile.go_build
patching file docker/Dockerfile.rocksdb_dev_env
patching file docker/Dockerfile.rocksdb_large
patching file weed/command/filer.go
patching file weed/command/s3.go
patching file weed/command/scaffold/filer.toml
patching file weed/command/server.go
patching file weed/filer/redis2/redis_store.go
patching file weed/s3api/chunked_reader_v4.go
patching file weed/shell/command_volume_list.go
patching file weed/topology/topology.go
?   	github.com/seaweedfs/seaweedfs/other/mq_client_example/agent_pub_record	[no test files]
?   	github.com/seaweedfs/seaweedfs/other/mq_client_example/agent_sub_record	[no test files]
?   	github.com/seaweedfs/seaweedfs/other/mq_client_example/example	[no test files]
=== RUN   TestCreateBucket
RequestError: send request failed
caused by: Put "http://localhost:8333/theBucket": dial tcp [::1]:8333: connect: connection refused
--- PASS: TestCreateBucket (0.33s)
=== RUN   TestPutObject
RequestError: send request failed
caused by: Put "http://localhost:8333/theBucket/exampleobject": dial tcp [::1]:8333: connect: connection refused
--- PASS: TestPutObject (0.27s)
=== RUN   TestListBucket
Unable to list buckets, RequestError: send request failed
caused by: Get "http://localhost:8333/": dial tcp [::1]:8333: connect: connection refused
FAIL	github.com/seaweedfs/seaweedfs/test/s3/basic	0.928s
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
I0720 21:41:33.893880 lock_ring.go:43 add server localhost:8080
I0720 21:41:33.894211 lock_ring.go:43 add server localhost:8081
I0720 21:41:33.894227 lock_ring.go:43 add server localhost:8082
I0720 21:41:33.894231 lock_ring.go:43 add server localhost:8083
I0720 21:41:33.894234 lock_ring.go:43 add server localhost:8084
I0720 21:41:33.894237 lock_ring.go:59 remove server localhost:8084
I0720 21:41:33.894240 lock_ring.go:59 remove server localhost:8082
I0720 21:41:33.894243 lock_ring.go:59 remove server localhost:8080
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
I0720 21:41:36.770239 volume_test.go:12 Last-Modified Mon, 08 Jul 2013 08:53:16 GMT
--- PASS: TestXYZ (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/command	0.040s
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
2026/07/20 21:41:36 first deleted chunks: [file_id:"1"  size:3  modified_ts_ns:100  source_file_id:"11" file_id:"2"  offset:3  size:3  modified_ts_ns:200 file_id:"3"  offset:6  size:3  modified_ts_ns:300  source_file_id:"33"]
2026/07/20 21:41:36 clusterA synced empty chunks event result: []
--- PASS: TestDoMinusChunks (0.00s)
=== RUN   TestCompactFileChunksRealCase
I0720 21:41:36.767543 filechunks2_test.go:83 before chunk 2,512f31f2c0700a [         0,        25)
I0720 21:41:36.767866 filechunks2_test.go:83 before chunk 6,512f2c2e24e9e8 [    868352,    917585)
I0720 21:41:36.767875 filechunks2_test.go:83 before chunk 7,514468dd5954ca [    884736,    901120)
I0720 21:41:36.767877 filechunks2_test.go:83 before chunk 5,5144463173fe77 [    917504,   2297856)
I0720 21:41:36.767879 filechunks2_test.go:83 before chunk 4,51444c7ab54e2d [   2301952,   2367488)
I0720 21:41:36.767880 filechunks2_test.go:83 before chunk 4,514450e643ad22 [   2371584,   2420736)
I0720 21:41:36.767882 filechunks2_test.go:83 before chunk 6,514456a5e9e4d7 [   2449408,   2490368)
I0720 21:41:36.767883 filechunks2_test.go:83 before chunk 3,51444f8d53eebe [   2494464,   2555904)
I0720 21:41:36.767885 filechunks2_test.go:83 before chunk 4,5144578b097c7e [   2560000,   2596864)
I0720 21:41:36.767887 filechunks2_test.go:83 before chunk 3,51445500b6b4ac [   2637824,   2678784)
I0720 21:41:36.767888 filechunks2_test.go:83 before chunk 1,51446285e52a61 [   2695168,   2715648)
I0720 21:41:36.767897 filechunks2_test.go:83 compacted chunk 2,512f31f2c0700a [         0,        25)
I0720 21:41:36.767901 filechunks2_test.go:83 compacted chunk 6,512f2c2e24e9e8 [    868352,    917585)
I0720 21:41:36.767903 filechunks2_test.go:83 compacted chunk 7,514468dd5954ca [    884736,    901120)
I0720 21:41:36.767904 filechunks2_test.go:83 compacted chunk 5,5144463173fe77 [    917504,   2297856)
I0720 21:41:36.767906 filechunks2_test.go:83 compacted chunk 4,51444c7ab54e2d [   2301952,   2367488)
I0720 21:41:36.767908 filechunks2_test.go:83 compacted chunk 4,514450e643ad22 [   2371584,   2420736)
I0720 21:41:36.767909 filechunks2_test.go:83 compacted chunk 6,514456a5e9e4d7 [   2449408,   2490368)
I0720 21:41:36.767910 filechunks2_test.go:83 compacted chunk 3,51444f8d53eebe [   2494464,   2555904)
I0720 21:41:36.767912 filechunks2_test.go:83 compacted chunk 4,5144578b097c7e [   2560000,   2596864)
I0720 21:41:36.767913 filechunks2_test.go:83 compacted chunk 3,51445500b6b4ac [   2637824,   2678784)
I0720 21:41:36.767915 filechunks2_test.go:83 compacted chunk 1,51446285e52a61 [   2695168,   2715648)
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
2026/07/20 21:41:36 ++++++++++ merged test case 0 ++++++++++++++++++++
2026/07/20 21:41:36 test case 0, interval start=0, stop=100, fileId=abc
2026/07/20 21:41:36 test case 0, interval start=100, stop=200, fileId=asdf
2026/07/20 21:41:36 test case 0, interval start=200, stop=300, fileId=fsad
2026/07/20 21:41:36 ++++++++++ merged test case 1 ++++++++++++++++++++
2026/07/20 21:41:36 test case 1, interval start=0, stop=200, fileId=asdf
2026/07/20 21:41:36 ++++++++++ merged test case 2 ++++++++++++++++++++
2026/07/20 21:41:36 test case 2, interval start=0, stop=70, fileId=b
2026/07/20 21:41:36 test case 2, interval start=70, stop=100, fileId=a
2026/07/20 21:41:36 ++++++++++ merged test case 3 ++++++++++++++++++++
2026/07/20 21:41:36 test case 3, interval start=0, stop=50, fileId=asdf
2026/07/20 21:41:36 test case 3, interval start=50, stop=300, fileId=xxxx
2026/07/20 21:41:36 ++++++++++ merged test case 4 ++++++++++++++++++++
2026/07/20 21:41:36 test case 4, interval start=0, stop=200, fileId=asdf
2026/07/20 21:41:36 test case 4, interval start=250, stop=500, fileId=xxxx
2026/07/20 21:41:36 ++++++++++ merged test case 5 ++++++++++++++++++++
2026/07/20 21:41:36 test case 5, interval start=0, stop=200, fileId=d
2026/07/20 21:41:36 test case 5, interval start=200, stop=220, fileId=c
2026/07/20 21:41:36 ++++++++++ merged test case 6 ++++++++++++++++++++
2026/07/20 21:41:36 test case 6, interval start=0, stop=100, fileId=xyz
2026/07/20 21:41:36 ++++++++++ merged test case 7 ++++++++++++++++++++
2026/07/20 21:41:36 test case 7, interval start=0, stop=2097152, fileId=3,029565bf3092
2026/07/20 21:41:36 test case 7, interval start=2097152, stop=5242880, fileId=6,029632f47ae2
2026/07/20 21:41:36 test case 7, interval start=5242880, stop=8388608, fileId=2,029734c5aa10
2026/07/20 21:41:36 test case 7, interval start=8388608, stop=11534336, fileId=5,02982f80de50
2026/07/20 21:41:36 test case 7, interval start=11534336, stop=14376529, fileId=7,0299ad723803
2026/07/20 21:41:36 ++++++++++ merged test case 8 ++++++++++++++++++++
2026/07/20 21:41:36 test case 8, interval start=0, stop=77824, fileId=4,0b3df938e301
2026/07/20 21:41:36 test case 8, interval start=77824, stop=208896, fileId=4,0b3f0c7202f0
2026/07/20 21:41:36 test case 8, interval start=208896, stop=339968, fileId=2,0b4031a72689
2026/07/20 21:41:36 test case 8, interval start=339968, stop=471040, fileId=3,0b416a557362
2026/07/20 21:41:36 test case 8, interval start=471040, stop=472225, fileId=6,0b3e0650019c
--- PASS: TestIntervalMerging (0.00s)
=== RUN   TestChunksReading
2026/07/20 21:41:36 ++++++++++ read test case 0 ++++++++++++++++++++
2026/07/20 21:41:36 read case 0, chunk 0, offset=0, size=100, fileId=abc
2026/07/20 21:41:36 read case 0, chunk 1, offset=0, size=100, fileId=asdf
2026/07/20 21:41:36 read case 0, chunk 2, offset=0, size=50, fileId=fsad
2026/07/20 21:41:36 ++++++++++ read test case 1 ++++++++++++++++++++
2026/07/20 21:41:36 read case 1, chunk 0, offset=50, size=100, fileId=asdf
2026/07/20 21:41:36 ++++++++++ read test case 2 ++++++++++++++++++++
2026/07/20 21:41:36 read case 2, chunk 0, offset=20, size=30, fileId=b
2026/07/20 21:41:36 read case 2, chunk 1, offset=57, size=10, fileId=a
2026/07/20 21:41:36 ++++++++++ read test case 3 ++++++++++++++++++++
2026/07/20 21:41:36 read case 3, chunk 0, offset=0, size=50, fileId=asdf
2026/07/20 21:41:36 read case 3, chunk 1, offset=0, size=150, fileId=xxxx
2026/07/20 21:41:36 ++++++++++ read test case 4 ++++++++++++++++++++
2026/07/20 21:41:36 read case 4, chunk 0, offset=0, size=200, fileId=asdf
2026/07/20 21:41:36 read case 4, chunk 1, offset=0, size=150, fileId=xxxx
2026/07/20 21:41:36 ++++++++++ read test case 5 ++++++++++++++++++++
2026/07/20 21:41:36 read case 5, chunk 0, offset=0, size=200, fileId=c
2026/07/20 21:41:36 read case 5, chunk 1, offset=130, size=20, fileId=b
2026/07/20 21:41:36 ++++++++++ read test case 6 ++++++++++++++++++++
2026/07/20 21:41:36 read case 6, chunk 0, offset=0, size=100, fileId=xyz
2026/07/20 21:41:36 ++++++++++ read test case 7 ++++++++++++++++++++
2026/07/20 21:41:36 read case 7, chunk 0, offset=0, size=100, fileId=abc
2026/07/20 21:41:36 read case 7, chunk 1, offset=0, size=100, fileId=asdf
2026/07/20 21:41:36 ++++++++++ read test case 8 ++++++++++++++++++++
2026/07/20 21:41:36 read case 8, chunk 0, offset=0, size=90, fileId=abc
2026/07/20 21:41:36 read case 8, chunk 1, offset=0, size=100, fileId=asdf
2026/07/20 21:41:36 read case 8, chunk 2, offset=0, size=110, fileId=fsad
2026/07/20 21:41:36 ++++++++++ read test case 9 ++++++++++++++++++++
2026/07/20 21:41:36 read case 9, chunk 0, offset=0, size=43175936, fileId=2,111fc2cbfac1
2026/07/20 21:41:36 read case 9, chunk 1, offset=0, size=9805824, fileId=2,112a36ea7f85
2026/07/20 21:41:36 read case 9, chunk 2, offset=0, size=19582976, fileId=4,112d5f31c5e7
2026/07/20 21:41:36 read case 9, chunk 3, offset=0, size=60690432, fileId=1,113245f0cdb6
2026/07/20 21:41:36 read case 9, chunk 4, offset=0, size=4014080, fileId=3,1141a70733b5
2026/07/20 21:41:36 read case 9, chunk 5, offset=0, size=16309588, fileId=1,114201d5bbdb
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
ok  	github.com/seaweedfs/seaweedfs/weed/filer	0.029s
?   	github.com/seaweedfs/seaweedfs/weed/filer/abstract_sql	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/arangodb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/cassandra	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/cassandra2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/elastic/v7	[no test files]
=== RUN   TestStore
--- PASS: TestStore (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/etcd	0.019s
?   	github.com/seaweedfs/seaweedfs/weed/filer/hbase	[no test files]
=== RUN   TestCreateAndFind
I0720 21:41:36.796880 leveldb_store.go:47 filer store dir: /tmp/TestCreateAndFind1578165275/001
I0720 21:41:36.797319 file_util.go:27 Folder /tmp/TestCreateAndFind1578165275/001 Permission: -rwxr-xr-x
I0720 21:41:36.805750 filer.go:155 create filer.store.id to -1946677219
--- PASS: TestCreateAndFind (0.01s)
=== RUN   TestEmptyRoot
I0720 21:41:36.807826 leveldb_store.go:47 filer store dir: /tmp/TestEmptyRoot2746479647/001
I0720 21:41:36.807843 file_util.go:27 Folder /tmp/TestEmptyRoot2746479647/001 Permission: -rwxr-xr-x
I0720 21:41:36.816649 filer.go:155 create filer.store.id to -563081006
--- PASS: TestEmptyRoot (0.01s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb	0.072s
=== RUN   TestCreateAndFind
I0720 21:41:36.765957 leveldb2_store.go:43 filer store leveldb2 dir: /tmp/TestCreateAndFind2159990540/001
I0720 21:41:36.766327 file_util.go:27 Folder /tmp/TestCreateAndFind2159990540/001 Permission: -rwxr-xr-x
I0720 21:41:36.785015 filer.go:155 create filer.store.id to 877087534
--- PASS: TestCreateAndFind (0.03s)
=== RUN   TestEmptyRoot
I0720 21:41:36.787103 leveldb2_store.go:43 filer store leveldb2 dir: /tmp/TestEmptyRoot3025226972/001
I0720 21:41:36.787121 file_util.go:27 Folder /tmp/TestEmptyRoot3025226972/001 Permission: -rwxr-xr-x
I0720 21:41:36.803684 filer.go:155 create filer.store.id to -1870619480
--- PASS: TestEmptyRoot (0.02s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb2	0.059s
=== RUN   TestCreateAndFind
I0720 21:41:36.766154 leveldb3_store.go:50 filer store leveldb3 dir: /tmp/TestCreateAndFind3087606474/001
I0720 21:41:36.766494 file_util.go:27 Folder /tmp/TestCreateAndFind3087606474/001 Permission: -rwxr-xr-x
I0720 21:41:36.776557 filer.go:155 create filer.store.id to 1872829778
--- PASS: TestCreateAndFind (0.02s)
=== RUN   TestEmptyRoot
I0720 21:41:36.778555 leveldb3_store.go:50 filer store leveldb3 dir: /tmp/TestEmptyRoot2410485432/001
I0720 21:41:36.778573 file_util.go:27 Folder /tmp/TestEmptyRoot2410485432/001 Permission: -rwxr-xr-x
I0720 21:41:36.789328 filer.go:155 create filer.store.id to 1948976487
--- PASS: TestEmptyRoot (0.01s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb3	0.049s
?   	github.com/seaweedfs/seaweedfs/weed/filer/mongodb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/mysql	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/mysql2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/postgres	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/postgres2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/redis	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/redis2	[no test files]
testing: warning: no tests to run
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/redis3	0.029s [no tests to run]
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
I0720 21:41:36.749297 glog_test.go:92 test
--- PASS: TestInfo (0.00s)
=== RUN   TestInfoDepth
I0720 21:41:36.749326 glog_test.go:109 depth-test0
I0720 21:41:36.749328 glog_test.go:110 depth-test1
--- PASS: TestInfoDepth (0.00s)
=== RUN   TestCopyStandardLogToPanic
--- PASS: TestCopyStandardLogToPanic (0.00s)
=== RUN   TestStandardLog
I0720 21:41:36.749359 glog_test.go:163 test
--- PASS: TestStandardLog (0.00s)
=== RUN   TestHeader
I0102 15:04:05.067890 glog_test.go:181 test
--- PASS: TestHeader (0.00s)
=== RUN   TestError
E0720 21:41:36.749397 glog_test.go:202 test
--- PASS: TestError (0.00s)
=== RUN   TestWarning
W0720 21:41:36.749408 glog_test.go:224 test
--- PASS: TestWarning (0.00s)
=== RUN   TestV
I0720 21:41:36.749419 glog_test.go:243 test
--- PASS: TestV (0.00s)
=== RUN   TestVmoduleOn
I0720 21:41:36.749435 glog_test.go:267 test
--- PASS: TestVmoduleOn (0.00s)
=== RUN   TestVmoduleOff
--- PASS: TestVmoduleOff (0.00s)
=== RUN   TestVmoduleGlob
--- PASS: TestVmoduleGlob (0.00s)
=== RUN   TestRollover
I0720 21:41:36.749481 glog_test.go:339 x
I0720 21:41:36.749970 glog_test.go:348 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
I0720 21:41:37.751302 glog_test.go:361 x
--- PASS: TestRollover (1.00s)
=== RUN   TestLogBacktraceAt
I0720 21:41:37.751733 glog_test.go:395 we want a stack trace here
goroutine 21 [running]:
github.com/seaweedfs/seaweedfs/weed/glog.stacks(0x0)
	/home/seaweedfs/weed/glog/glog.go:768 +0x8c
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).output(0x3047a0, 0x0, 0x6296741ba230, {0x1ddd80?, 0x1?}, 0x0?, 0x0)
	/home/seaweedfs/weed/glog/glog.go:677 +0xec
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).printDepth(0x3047a0, 0x0, 0x6296741a2e88?, {0x6296741a2e28, 0x1, 0x1})
	/home/seaweedfs/weed/glog/glog.go:648 +0xc4
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).print(...)
	/home/seaweedfs/weed/glog/glog.go:639
github.com/seaweedfs/seaweedfs/weed/glog.Info(...)
	/home/seaweedfs/weed/glog/glog.go:1061
github.com/seaweedfs/seaweedfs/weed/glog.TestLogBacktraceAt(0x6296742ac008)
	/home/seaweedfs/weed/glog/glog_test.go:395 +0x2e8
testing.tRunner(0x6296742ac008, 0x1a95e0)
	/usr/local/go/src/testing/testing.go:2036 +0xc4
created by testing.(*T).Run in goroutine 1
	/usr/local/go/src/testing/testing.go:2101 +0x3a8
--- PASS: TestLogBacktraceAt (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/glog	1.005s
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
E0720 21:41:36.772753 iamapi_management_handlers.go:508 PutUserPolicy:  the user with name InvalidUser cannot be found
E0720 21:41:36.773448 iamapi_handlers.go:29 Response the user with name InvalidUser cannot be found
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
ok  	github.com/seaweedfs/seaweedfs/weed/iamapi	0.031s
=== RUN   TestCropping
--- PASS: TestCropping (0.10s)
=== RUN   TestXYZ
--- PASS: TestXYZ (0.44s)
=== RUN   TestResizing
--- PASS: TestResizing (0.03s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/images	0.585s
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
ok  	github.com/seaweedfs/seaweedfs/weed/mount	0.018s
?   	github.com/seaweedfs/seaweedfs/weed/mount/meta_cache	[no test files]
=== RUN   Test_PageChunkWrittenIntervalList
--- PASS: Test_PageChunkWrittenIntervalList (0.00s)
=== RUN   Test_PageChunkWrittenIntervalList1
--- PASS: Test_PageChunkWrittenIntervalList1 (0.00s)
=== RUN   TestUploadPipeline
--- PASS: TestUploadPipeline (45.64s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mount/page_writer	45.646s
?   	github.com/seaweedfs/seaweedfs/weed/mount/unmount	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/agent	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/broker	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/agent_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/pub_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/sub_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/logstore	[no test files]
=== RUN   Test_allocateOneBroker
=== RUN   Test_allocateOneBroker/test_only_one_broker
I0720 21:41:36.767892 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 1, assignments: [partition:{ring_size:2520 range_stop:2520 unix_time_ns:1784583696767884077}]
I0720 21:41:36.768494 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 1, assignments: [partition:{ring_size:2520 range_stop:2520 unix_time_ns:1784583696767884077} leader_broker:"localhost:17777"] hasChanges: true
I0720 21:41:36.768542 allocate.go:33 allocate topic partitions 1: [partition:{ring_size:2520 range_stop:2520 unix_time_ns:1784583696767884077} leader_broker:"localhost:17777"]
--- PASS: Test_allocateOneBroker (0.00s)
    --- PASS: Test_allocateOneBroker/test_only_one_broker (0.00s)
=== RUN   TestEnsureAssignmentsToActiveBrokersX
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_empty_leader
test empty leader before [partition:{} follower_broker:"localhost:2"]
I0720 21:41:36.768628 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} follower_broker:"localhost:2"]
I0720 21:41:36.768714 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:3" follower_broker:"localhost:2"] hasChanges: true
test empty leader after [partition:{} leader_broker:"localhost:3" follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_empty_follower
test empty follower before [partition:{} leader_broker:"localhost:1"]
I0720 21:41:36.768797 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1"]
I0720 21:41:36.768862 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:5"] hasChanges: true
test empty follower after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:5"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_dead_follower
test dead follower before [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:200"]
I0720 21:41:36.768890 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:200"]
I0720 21:41:36.769002 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"] hasChanges: true
test dead follower after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_dead_leader_and_follower
test dead leader and follower before [partition:{} leader_broker:"localhost:100" follower_broker:"localhost:200"]
I0720 21:41:36.769124 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:100" follower_broker:"localhost:200"]
I0720 21:41:36.769184 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:5" follower_broker:"localhost:3"] hasChanges: true
test dead leader and follower after [partition:{} leader_broker:"localhost:5" follower_broker:"localhost:3"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_low_active_brokers
test low active brokers before [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0720 21:41:36.769230 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0720 21:41:36.769282 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"] hasChanges: false
test low active brokers after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_low_active_brokers_with_one_follower
test low active brokers with one follower before [partition:{} leader_broker:"localhost:1"]
I0720 21:41:36.769377 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1"]
I0720 21:41:36.769465 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:1"] hasChanges: true
test low active brokers with one follower after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:1"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_single_active_broker
test single active broker before [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0720 21:41:36.769567 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0720 21:41:36.769644 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:1"] hasChanges: true
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
ok  	github.com/seaweedfs/seaweedfs/weed/mq/pub_balancer	0.024s
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
ok  	github.com/seaweedfs/seaweedfs/weed/mq/schema	0.020s
=== RUN   TestMessageSerde
serialized size 368
--- PASS: TestMessageSerde (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/segment	0.003s
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
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14019639000631826873 ext:516437398 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:1 RangeStop:2 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14019639000631831763 ext:516442289 loc:0x15957e0}}
--- PASS: TestAddConsumerInstance (1.00s)
=== RUN   TestMultipleConsumerInstances
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14019639001706844570 ext:1517713272 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:1 RangeStop:2 RingSize:3 UnixTimeNs:0} consumer:second ts:{wall:14019639001706846592 ext:1517715293 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:third ts:{wall:14019639001706847527 ext:1517716227 loc:0x15957e0}}
--- PASS: TestMultipleConsumerInstances (1.00s)
=== RUN   TestConfirmAdjustment
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14019639002780744036 ext:2517870913 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:1 RangeStop:2 RingSize:3 UnixTimeNs:0} consumer:second ts:{wall:14019639002780749763 ext:2517876641 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:third ts:{wall:14019639002780750785 ext:2517877663 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14019639004928367873 ext:4518011102 loc:0x15957e0}}
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
ok  	github.com/seaweedfs/seaweedfs/weed/mq/sub_coordinator	7.021s
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
W0720 21:41:38.759271 upload_content.go:190 uploading 0 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain; charset=utf-8 Compressed:true, originalSize: 1422
W0720 21:41:39.234487 upload_content.go:190 uploading 1 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain; charset=utf-8 Compressed:true, originalSize: 1422
W0720 21:41:39.946424 upload_content.go:190 uploading 2 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
err: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
uploadResult: <nil>
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0720 21:41:39.946539 upload_content.go:190 uploading 0 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0720 21:41:40.421182 upload_content.go:190 uploading 1 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0720 21:41:41.133058 upload_content.go:190 uploading 2 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
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
ok  	github.com/seaweedfs/seaweedfs/weed/pb	0.009s
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
W0720 21:41:36.769160 bucket_metadata.go:105 Invalid ownership: , bucket: ownershipEmptyStr
W0720 21:41:36.769705 bucket_metadata.go:116 owner[id=xxxxx] is invalid, bucket: acpEmptyObject
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
W0720 21:41:37.770910 s3api_acl_helper.go:292 invalid canonical grantee! account id[notExistsAccount] is not exists
W0720 21:41:37.770918 s3api_acl_helper.go:281 invalid group grantee! group name[http:sfasf] is not valid
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
<CopyObjectResult><LastModified>2026-07-20T21:41:37.774413974Z</LastModified><ETag>12345678</ETag></CopyObjectResult>
--- PASS: TestCopyObjectResponse (0.00s)
=== RUN   TestCopyPartResponse
<?xml version="1.0" encoding="UTF-8"?>
<CopyPartResult><LastModified>2026-07-20T21:41:37.77444107Z</LastModified><ETag>12345678</ETag></CopyPartResult>
--- PASS: TestCopyPartResponse (0.00s)
=== RUN   TestXMLUnmarshall
--- PASS: TestXMLUnmarshall (0.00s)
=== RUN   TestXMLMarshall
--- PASS: TestXMLMarshall (0.00s)
=== RUN   TestValidateTags
--- PASS: TestValidateTags (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api	1.029s
=== RUN   TestPostPolicyForm
--- PASS: TestPostPolicyForm (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api/policy	0.019s
?   	github.com/seaweedfs/seaweedfs/weed/s3api/s3_constants	[no test files]
=== RUN   Test_verifyBucketName
--- PASS: Test_verifyBucketName (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api/s3bucket	0.003s
?   	github.com/seaweedfs/seaweedfs/weed/s3api/s3err	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/security	[no test files]
=== RUN   TestSequencer
I0720 21:41:36.754487 snowflake_sequencer.go:21 use snowflake seq id generator, nodeid:for_test hex_of_nodeid: 1
1cdb3b4b6c401000
1cdb3b4b6c401001
1cdb3b4b6c401002
1cdb3b4b6c401003
1cdb3b4b6c401004
1cdb3b4b6c401005
1cdb3b4b6c401006
1cdb3b4b6c401007
1cdb3b4b6c401008
1cdb3b4b6c401009
1cdb3b4b6c40100a
1cdb3b4b6c40100b
1cdb3b4b6c40100c
1cdb3b4b6c40100d
1cdb3b4b6c40100e
1cdb3b4b6c40100f
1cdb3b4b6c401010
1cdb3b4b6c401011
1cdb3b4b6c401012
1cdb3b4b6c401013
1cdb3b4b6c401014
1cdb3b4b6c401015
1cdb3b4b6c401016
1cdb3b4b6c401017
1cdb3b4b6c401018
1cdb3b4b6c401019
1cdb3b4b6c40101a
1cdb3b4b6c40101b
1cdb3b4b6c40101c
1cdb3b4b6c40101d
1cdb3b4b6c40101e
1cdb3b4b6c40101f
1cdb3b4b6c401020
1cdb3b4b6c401021
1cdb3b4b6c401022
1cdb3b4b6c401023
1cdb3b4b6c401024
1cdb3b4b6c401025
1cdb3b4b6c401026
1cdb3b4b6c401027
1cdb3b4b6c401028
1cdb3b4b6c401029
1cdb3b4b6c40102a
1cdb3b4b6c40102b
1cdb3b4b6c40102c
1cdb3b4b6c40102d
1cdb3b4b6c801000
1cdb3b4b6c801001
1cdb3b4b6c801002
1cdb3b4b6c801003
1cdb3b4b6c801004
1cdb3b4b6c801005
1cdb3b4b6c801006
1cdb3b4b6c801007
1cdb3b4b6c801008
1cdb3b4b6c801009
1cdb3b4b6c80100a
1cdb3b4b6c80100b
1cdb3b4b6c80100c
1cdb3b4b6c80100d
1cdb3b4b6c80100e
1cdb3b4b6c80100f
1cdb3b4b6c801010
1cdb3b4b6c801011
1cdb3b4b6c801012
1cdb3b4b6c801013
1cdb3b4b6c801014
1cdb3b4b6c801015
1cdb3b4b6c801016
1cdb3b4b6c801017
1cdb3b4b6c801018
1cdb3b4b6c801019
1cdb3b4b6c80101a
1cdb3b4b6c80101b
1cdb3b4b6c80101c
1cdb3b4b6c80101d
1cdb3b4b6c80101e
1cdb3b4b6c80101f
1cdb3b4b6c801020
1cdb3b4b6c801021
1cdb3b4b6c801022
1cdb3b4b6c801023
1cdb3b4b6c801024
1cdb3b4b6c801025
1cdb3b4b6c801026
1cdb3b4b6c801027
1cdb3b4b6c801028
1cdb3b4b6c801029
1cdb3b4b6c80102a
1cdb3b4b6c80102b
1cdb3b4b6c80102c
1cdb3b4b6c80102d
1cdb3b4b6c80102e
1cdb3b4b6c80102f
1cdb3b4b6c801030
1cdb3b4b6c801031
1cdb3b4b6c801032
1cdb3b4b6c801033
1cdb3b4b6c801034
1cdb3b4b6c801035
--- PASS: TestSequencer (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/sequence	0.008s
=== RUN   TestParseURL
--- PASS: TestParseURL (0.00s)
=== RUN   TestPtrie
matched1 /topics/abc
matched1 /topics/abc/d
matched2 /topics/abc
matched2 /topics/abc/d
--- PASS: TestPtrie (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/server	0.023s
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
ok  	github.com/seaweedfs/seaweedfs/weed/server/filer_ui	0.008s
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
dn1 moves ec shard 1.0 to dn2
dn1 moves ec shard 1.1 to dn2
dn1 moves ec shard 1.2 to dn2
dn1 moves ec shard 1.3 to dn2
dn1 moves ec shard 1.4 to dn2
dn1 moves ec shard 1.5 to dn2
dn1 moves ec shard 1.6 to dn2
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
dn2 moves ec shard 1.7 to dn3
dn2 moves ec shard 1.8 to dn4
dn1 moves ec shard 1.1 to dn3
dn1 moves ec shard 1.2 to dn4
dn2 moves ec shard 1.9 to dn3
dn2 moves ec shard 1.10 to dn4
dn1 moves ec shard 1.0 to dn4
dn1 moves ec shard 2.7 to dn3
dn2 moves ec shard 2.0 to dn4
dn2 moves ec shard 2.1 to dn4
dn1 moves ec shard 2.8 to dn3
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
ok  	github.com/seaweedfs/seaweedfs/weed/shell	0.190s
=== RUN   TestRobinCounter
--- PASS: TestRobinCounter (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/stats	0.008s
=== RUN   TestUnUsedSpace
--- PASS: TestUnUsedSpace (0.00s)
=== RUN   TestFirstInvalidIndex
I0720 21:41:36.760446 volume_loading.go:139 checking volume data integrity for volume 1
I0720 21:41:36.760855 volume_loading.go:157 loading memory index /tmp/TestFirstInvalidIndex3686874550/001/1.idx to memory
--- PASS: TestFirstInvalidIndex (0.00s)
=== RUN   TestFastLoadingNeedleMapMetrics
I0720 21:41:36.776765 needle_map_metric_test.go:26 FileCount expected 10000 actual 12013
I0720 21:41:36.776779 needle_map_metric_test.go:27 DeletedSize expected 1677 actual 1677
I0720 21:41:36.776783 needle_map_metric_test.go:28 ContentSize expected 10000 actual 10000
I0720 21:41:36.776786 needle_map_metric_test.go:29 DeletedCount expected 1677 actual 3690
I0720 21:41:36.776789 needle_map_metric_test.go:30 MaxFileKey expected 10000 actual 10000
--- PASS: TestFastLoadingNeedleMapMetrics (0.01s)
=== RUN   TestBinarySearch
--- PASS: TestBinarySearch (0.00s)
=== RUN   TestSortVolumeInfos
--- PASS: TestSortVolumeInfos (0.00s)
=== RUN   TestReadNeedMetaWithWritesAndUpdates
I0720 21:41:36.777046 volume_loading.go:139 checking volume data integrity for volume 1
I0720 21:41:36.777059 volume_loading.go:157 loading memory index /tmp/TestReadNeedMetaWithWritesAndUpdates1195565368/001/1.idx to memory
--- PASS: TestReadNeedMetaWithWritesAndUpdates (0.00s)
=== RUN   TestReadNeedMetaWithDeletesThenWrites
I0720 21:41:36.781960 volume_loading.go:139 checking volume data integrity for volume 1
I0720 21:41:36.781971 volume_loading.go:157 loading memory index /tmp/TestReadNeedMetaWithDeletesThenWrites646208892/001/1.idx to memory
--- PASS: TestReadNeedMetaWithDeletesThenWrites (0.00s)
=== RUN   TestMakeDiff
--- PASS: TestMakeDiff (0.00s)
=== RUN   TestMemIndexCompaction
I0720 21:41:36.786268 volume_loading.go:139 checking volume data integrity for volume 1
I0720 21:41:36.786281 volume_loading.go:157 loading memory index /tmp/TestMemIndexCompaction3014775828/001/1.idx to memory
I0720 21:41:36.909028 needle_map_memory.go:111 loading idx from offset 0 for file: /tmp/TestMemIndexCompaction3014775828/001/1.cpx
    volume_vacuum_test.go:92: compaction speed: 65783202.71 bytes/s
I0720 21:41:37.005617 volume_vacuum.go:114 Committing volume 1 vacuuming...
I0720 21:42:13.311950 needle_map_memory.go:111 loading idx from offset 9713 for file: /tmp/TestMemIndexCompaction3014775828/001/1.cpx
I0720 21:42:13.345228 volume_loading.go:98 readSuperBlock volume 1 version 3
I0720 21:42:13.345250 volume_loading.go:139 checking volume data integrity for volume 1
I0720 21:42:13.345262 volume_loading.go:154 updating memory compact index /tmp/TestMemIndexCompaction3014775828/001/1.idx 
    volume_vacuum_test.go:110: realRecordCount:29713, v.FileCount():29713 mm.DeletedCount():9850
I0720 21:42:13.346299 volume_loading.go:98 readSuperBlock volume 1 version 3
I0720 21:42:13.346310 volume_loading.go:139 checking volume data integrity for volume 1
I0720 21:42:13.346318 volume_loading.go:157 loading memory index /tmp/TestMemIndexCompaction3014775828/001/1.idx to memory
--- PASS: TestMemIndexCompaction (36.61s)
=== RUN   TestLDBIndexCompaction
I0720 21:42:13.397496 volume_loading.go:139 checking volume data integrity for volume 1
I0720 21:42:13.397509 volume_loading.go:172 loading leveldb index /tmp/TestLDBIndexCompaction2624094700/001/1.ldb
I0720 21:42:13.402920 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestLDBIndexCompaction2624094700/001/1.ldb, watermark 0, num of entries:0
I0720 21:42:13.407997 needle_map_leveldb.go:66 Loading /tmp/TestLDBIndexCompaction2624094700/001/1.ldb... , watermark: 0
I0720 21:42:13.564709 needle_map_leveldb.go:338 loading idx to leveldb from offset 0 for file: /tmp/TestLDBIndexCompaction2624094700/001/1.cpx
    volume_vacuum_test.go:92: compaction speed: 55892891.07 bytes/s
I0720 21:42:13.851536 volume_vacuum.go:114 Committing volume 1 vacuuming...
I0720 21:42:49.928673 needle_map_leveldb.go:338 loading idx to leveldb from offset 9724 for file: /tmp/TestLDBIndexCompaction2624094700/001/1.cpx
I0720 21:42:50.014977 volume_loading.go:98 readSuperBlock volume 1 version 3
I0720 21:42:50.015000 volume_loading.go:139 checking volume data integrity for volume 1
I0720 21:42:50.015013 volume_loading.go:169 updating leveldb index /tmp/TestLDBIndexCompaction2624094700/001/1.ldb
    volume_vacuum_test.go:105: watermark from levelDB: 20000, realWatermark: 20000, nm.recordCount: 29724, realRecordCount:29724, fileCount=29724, deletedcount:9716
I0720 21:42:50.038158 volume_loading.go:98 readSuperBlock volume 1 version 3
I0720 21:42:50.038173 volume_loading.go:139 checking volume data integrity for volume 1
I0720 21:42:50.038187 volume_loading.go:172 loading leveldb index /tmp/TestLDBIndexCompaction2624094700/001/1.ldb
I0720 21:42:50.045690 needle_map_leveldb.go:66 Loading /tmp/TestLDBIndexCompaction2624094700/001/1.ldb... , watermark: 20000
--- PASS: TestLDBIndexCompaction (36.71s)
=== RUN   TestSearchVolumesWithDeletedNeedles
I0720 21:42:50.107911 volume_loading.go:139 checking volume data integrity for volume 1
I0720 21:42:50.107923 volume_loading.go:157 loading memory index /tmp/TestSearchVolumesWithDeletedNeedles757319851/001/1.idx to memory
offset: 9048, isLast: false
--- PASS: TestSearchVolumesWithDeletedNeedles (0.00s)
=== RUN   TestDestroyEmptyVolumeWithOnlyEmpty
I0720 21:42:50.110526 volume_loading.go:139 checking volume data integrity for volume 1
I0720 21:42:50.110534 volume_loading.go:157 loading memory index /tmp/TestDestroyEmptyVolumeWithOnlyEmpty970683446/001/1.idx to memory
--- PASS: TestDestroyEmptyVolumeWithOnlyEmpty (0.00s)
=== RUN   TestDestroyEmptyVolumeWithoutOnlyEmpty
I0720 21:42:50.114662 volume_loading.go:139 checking volume data integrity for volume 1
I0720 21:42:50.114670 volume_loading.go:157 loading memory index /tmp/TestDestroyEmptyVolumeWithoutOnlyEmpty1995110024/001/1.idx to memory
--- PASS: TestDestroyEmptyVolumeWithoutOnlyEmpty (0.00s)
=== RUN   TestDestroyNonemptyVolumeWithOnlyEmpty
I0720 21:42:50.118721 volume_loading.go:139 checking volume data integrity for volume 1
I0720 21:42:50.118728 volume_loading.go:157 loading memory index /tmp/TestDestroyNonemptyVolumeWithOnlyEmpty1006424552/001/1.idx to memory
--- PASS: TestDestroyNonemptyVolumeWithOnlyEmpty (0.00s)
=== RUN   TestDestroyNonemptyVolumeWithoutOnlyEmpty
I0720 21:42:50.120895 volume_loading.go:139 checking volume data integrity for volume 1
I0720 21:42:50.120903 volume_loading.go:157 loading memory index /tmp/TestDestroyNonemptyVolumeWithoutOnlyEmpty1888398493/001/1.idx to memory
--- PASS: TestDestroyNonemptyVolumeWithoutOnlyEmpty (0.01s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage	73.384s
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend	[no test files]
=== RUN   TestMemoryMapMaxSizeReadWrite
--- PASS: TestMemoryMapMaxSizeReadWrite (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage/backend/memory_map	0.002s
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend/rclone_backend	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend/s3_backend	[no test files]
=== RUN   TestEncodingDecoding
I0720 21:41:36.768552 ec_encoder.go:81 encodeDatFile 1.dat size:2590912
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
ok  	github.com/seaweedfs/seaweedfs/weed/storage/erasure_coding	0.117s
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
ok  	github.com/seaweedfs/seaweedfs/weed/storage/needle	0.014s
=== RUN   TestMemoryUsage
Each 16.17 Bytes	Alloc = 19 MiB	TotalAlloc = 26 MiB	Sys = 40 MiB	NumGC = 5	Taken = 915.287299ms
Each 15.62 Bytes	Alloc = 38 MiB	TotalAlloc = 50 MiB	Sys = 56 MiB	NumGC = 7	Taken = 888.378412ms
Each 15.43 Bytes	Alloc = 56 MiB	TotalAlloc = 74 MiB	Sys = 76 MiB	NumGC = 8	Taken = 887.433602ms
Each 15.34 Bytes	Alloc = 74 MiB	TotalAlloc = 99 MiB	Sys = 96 MiB	NumGC = 9	Taken = 887.821552ms
Each 15.28 Bytes	Alloc = 93 MiB	TotalAlloc = 123 MiB	Sys = 116 MiB	NumGC = 10	Taken = 888.847506ms
Each 15.25 Bytes	Alloc = 111 MiB	TotalAlloc = 147 MiB	Sys = 133 MiB	NumGC = 11	Taken = 895.387062ms
Each 15.22 Bytes	Alloc = 129 MiB	TotalAlloc = 172 MiB	Sys = 153 MiB	NumGC = 12	Taken = 891.399761ms
Each 15.20 Bytes	Alloc = 148 MiB	TotalAlloc = 196 MiB	Sys = 173 MiB	NumGC = 13	Taken = 895.20529ms
Each 15.19 Bytes	Alloc = 166 MiB	TotalAlloc = 221 MiB	Sys = 193 MiB	NumGC = 14	Taken = 887.705872ms
Each 15.17 Bytes	Alloc = 185 MiB	TotalAlloc = 245 MiB	Sys = 209 MiB	NumGC = 15	Taken = 899.207503ms
--- PASS: TestMemoryUsage (8.94s)
=== RUN   TestSnowflakeSequencer
I0720 21:41:45.691632 snowflake_sequencer.go:21 use snowflake seq id generator, nodeid:for_test hex_of_nodeid: 1
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
--- PASS: TestCompactSection_Get (0.89s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage/needle_map	9.997s
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
ok  	github.com/seaweedfs/seaweedfs/weed/storage/super_block	0.008s
?   	github.com/seaweedfs/seaweedfs/weed/storage/types	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/storage/volume_info	[no test files]
=== RUN   TestRemoveDataCenter
data: map[dc1:map[rack1:map[server111:map[limit:3 volumes:[map[id:1 size:12312] map[id:2 size:12312] map[id:3 size:12312]]] server112:map[limit:10 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]]] rack2:map[server121:map[limit:4 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server122:map[limit:4 volumes:[]] server123:map[limit:5 volumes:[map[id:2 size:12312] map[id:3 size:12312] map[id:4 size:12312]]]]] dc2:map[] dc3:map[rack2:map[server321:map[limit:4 volumes:[map[id:1 size:12312] map[id:3 size:12312] map[id:5 size:12312]]]]]]
I0720 21:41:36.768022 node.go:250 weedfs adds child dc1
I0720 21:41:36.768660 node.go:250 weedfs:dc1 adds child rack1
I0720 21:41:36.768667 node.go:250 weedfs:dc1:rack1 adds child server112
I0720 21:41:36.768673 node.go:250 weedfs:dc1:rack1:server112 adds child 
I0720 21:41:36.768681 node.go:250 weedfs:dc1:rack1 adds child server111
I0720 21:41:36.768683 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0720 21:41:36.768693 node.go:250 weedfs:dc1 adds child rack2
I0720 21:41:36.768701 node.go:250 weedfs:dc1:rack2 adds child server121
I0720 21:41:36.768703 node.go:250 weedfs:dc1:rack2:server121 adds child 
I0720 21:41:36.768708 node.go:250 weedfs:dc1:rack2 adds child server122
I0720 21:41:36.768710 node.go:250 weedfs:dc1:rack2:server122 adds child 
I0720 21:41:36.768712 node.go:250 weedfs:dc1:rack2 adds child server123
I0720 21:41:36.768714 node.go:250 weedfs:dc1:rack2:server123 adds child 
I0720 21:41:36.768737 node.go:250 weedfs adds child dc2
I0720 21:41:36.768739 node.go:250 weedfs adds child dc3
I0720 21:41:36.768741 node.go:250 weedfs:dc3 adds child rack2
I0720 21:41:36.768743 node.go:250 weedfs:dc3:rack2 adds child server321
I0720 21:41:36.768745 node.go:250 weedfs:dc3:rack2:server321 adds child 
I0720 21:41:36.768751 node.go:264 weedfs removes dc2
I0720 21:41:36.768753 node.go:264 weedfs removes dc3
--- PASS: TestRemoveDataCenter (0.00s)
=== RUN   TestHandlingVolumeServerHeartbeat
I0720 21:41:36.768792 node.go:250 weedfs adds child dc1
I0720 21:41:36.768829 node.go:250 weedfs:dc1 adds child rack1
I0720 21:41:36.768839 node.go:250 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0720 21:41:36.768842 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child 
I0720 21:41:36.768846 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child ssd
I0720 21:41:36.768881 volume_layout.go:417 Volume 1 becomes writable
I0720 21:41:36.768893 volume_layout.go:417 Volume 2 becomes writable
I0720 21:41:36.768904 volume_layout.go:417 Volume 3 becomes writable
I0720 21:41:36.768983 volume_layout.go:417 Volume 4 becomes writable
I0720 21:41:36.768986 volume_layout.go:417 Volume 5 becomes writable
I0720 21:41:36.768989 volume_layout.go:417 Volume 6 becomes writable
I0720 21:41:36.768991 volume_layout.go:417 Volume 7 becomes writable
I0720 21:41:36.768994 volume_layout.go:417 Volume 8 becomes writable
I0720 21:41:36.768996 volume_layout.go:417 Volume 9 becomes writable
I0720 21:41:36.768999 volume_layout.go:417 Volume 10 becomes writable
I0720 21:41:36.769001 volume_layout.go:417 Volume 11 becomes writable
I0720 21:41:36.769004 volume_layout.go:417 Volume 12 becomes writable
I0720 21:41:36.769006 volume_layout.go:417 Volume 13 becomes writable
I0720 21:41:36.769008 volume_layout.go:417 Volume 14 becomes writable
I0720 21:41:36.769020 data_node.go:81 Deleting volume id: 7
I0720 21:41:36.769036 data_node.go:81 Deleting volume id: 10
I0720 21:41:36.769043 data_node.go:81 Deleting volume id: 11
I0720 21:41:36.769045 data_node.go:81 Deleting volume id: 12
I0720 21:41:36.769047 data_node.go:81 Deleting volume id: 13
I0720 21:41:36.769056 data_node.go:81 Deleting volume id: 14
I0720 21:41:36.769059 data_node.go:81 Deleting volume id: 8
I0720 21:41:36.769071 data_node.go:81 Deleting volume id: 9
I0720 21:41:36.769076 topology.go:323 removing volume info: Id:7, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0720 21:41:36.769093 volume_layout.go:229 volume 7 does not have enough copies
I0720 21:41:36.769095 volume_layout.go:237 volume 7 remove from writable
I0720 21:41:36.769098 volume_layout.go:405 Volume 7 becomes unwritable
I0720 21:41:36.769100 topology.go:323 removing volume info: Id:10, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0720 21:41:36.769104 volume_layout.go:229 volume 10 does not have enough copies
I0720 21:41:36.769106 volume_layout.go:237 volume 10 remove from writable
I0720 21:41:36.769108 volume_layout.go:405 Volume 10 becomes unwritable
I0720 21:41:36.769110 topology.go:323 removing volume info: Id:11, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0720 21:41:36.769114 volume_layout.go:229 volume 11 does not have enough copies
I0720 21:41:36.769116 volume_layout.go:237 volume 11 remove from writable
I0720 21:41:36.769118 volume_layout.go:405 Volume 11 becomes unwritable
I0720 21:41:36.769119 topology.go:323 removing volume info: Id:12, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0720 21:41:36.769122 volume_layout.go:229 volume 12 does not have enough copies
I0720 21:41:36.769135 volume_layout.go:237 volume 12 remove from writable
I0720 21:41:36.769137 volume_layout.go:405 Volume 12 becomes unwritable
I0720 21:41:36.769139 topology.go:323 removing volume info: Id:13, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0720 21:41:36.769143 volume_layout.go:229 volume 13 does not have enough copies
I0720 21:41:36.769145 volume_layout.go:237 volume 13 remove from writable
I0720 21:41:36.769147 volume_layout.go:405 Volume 13 becomes unwritable
I0720 21:41:36.769149 topology.go:323 removing volume info: Id:14, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0720 21:41:36.769152 volume_layout.go:229 volume 14 does not have enough copies
I0720 21:41:36.769154 volume_layout.go:237 volume 14 remove from writable
I0720 21:41:36.769156 volume_layout.go:405 Volume 14 becomes unwritable
I0720 21:41:36.769157 topology.go:323 removing volume info: Id:8, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0720 21:41:36.769160 volume_layout.go:229 volume 8 does not have enough copies
I0720 21:41:36.769162 volume_layout.go:237 volume 8 remove from writable
I0720 21:41:36.769164 volume_layout.go:405 Volume 8 becomes unwritable
I0720 21:41:36.769165 topology.go:323 removing volume info: Id:9, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0720 21:41:36.769168 volume_layout.go:229 volume 9 does not have enough copies
I0720 21:41:36.769170 volume_layout.go:237 volume 9 remove from writable
I0720 21:41:36.769172 volume_layout.go:405 Volume 9 becomes unwritable
I0720 21:41:36.769178 topology.go:323 removing volume info: Id:3, Size:0, ReplicaPlacement:000, Collection:, Version:3, FileCount:0, DeleteCount:0, DeletedByteCount:0, ReadOnly:false from 127.0.0.1:34534
I0720 21:41:36.769186 volume_layout.go:229 volume 3 does not have enough copies
I0720 21:41:36.769188 volume_layout.go:237 volume 3 remove from writable
I0720 21:41:36.769190 volume_layout.go:405 Volume 3 becomes unwritable
I0720 21:41:36.769193 volume_layout.go:417 Volume 3 becomes writable
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
I0720 21:41:36.769225 topology_event_handling.go:86 Removing Volume 1 from the dead volume server 127.0.0.1:34534
I0720 21:41:36.769229 volume_layout.go:456 Volume 1 has 0 replica, less than required 1
I0720 21:41:36.769230 volume_layout.go:405 Volume 1 becomes unwritable
I0720 21:41:36.769232 topology_event_handling.go:86 Removing Volume 2 from the dead volume server 127.0.0.1:34534
I0720 21:41:36.769234 volume_layout.go:456 Volume 2 has 0 replica, less than required 1
I0720 21:41:36.769236 volume_layout.go:405 Volume 2 becomes unwritable
I0720 21:41:36.769238 topology_event_handling.go:86 Removing Volume 3 from the dead volume server 127.0.0.1:34534
I0720 21:41:36.769241 volume_layout.go:456 Volume 3 has 0 replica, less than required 1
I0720 21:41:36.769242 volume_layout.go:405 Volume 3 becomes unwritable
I0720 21:41:36.769244 topology_event_handling.go:86 Removing Volume 4 from the dead volume server 127.0.0.1:34534
I0720 21:41:36.769248 volume_layout.go:456 Volume 4 has 0 replica, less than required 1
I0720 21:41:36.769251 volume_layout.go:405 Volume 4 becomes unwritable
I0720 21:41:36.769253 topology_event_handling.go:86 Removing Volume 5 from the dead volume server 127.0.0.1:34534
I0720 21:41:36.769255 volume_layout.go:456 Volume 5 has 0 replica, less than required 1
I0720 21:41:36.769257 volume_layout.go:405 Volume 5 becomes unwritable
I0720 21:41:36.769258 topology_event_handling.go:86 Removing Volume 6 from the dead volume server 127.0.0.1:34534
I0720 21:41:36.769260 volume_layout.go:456 Volume 6 has 0 replica, less than required 1
I0720 21:41:36.769262 volume_layout.go:405 Volume 6 becomes unwritable
I0720 21:41:36.769271 node.go:264 weedfs:dc1:rack1 removes 127.0.0.1:34534
--- PASS: TestHandlingVolumeServerHeartbeat (0.00s)
=== RUN   TestAddRemoveVolume
I0720 21:41:36.769323 node.go:250 weedfs adds child dc1
I0720 21:41:36.769328 node.go:250 weedfs:dc1 adds child rack1
I0720 21:41:36.769331 node.go:250 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0720 21:41:36.769347 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child 
I0720 21:41:36.769350 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child ssd
I0720 21:41:36.769370 volume_layout.go:417 Volume 1 becomes writable
I0720 21:41:36.769373 topology.go:323 removing volume info: Id:1, Size:100, ReplicaPlacement:000, Collection:xcollection, Version:3, FileCount:123, DeleteCount:23, DeletedByteCount:45, ReadOnly:false from 127.0.0.1:34534
I0720 21:41:36.769390 volume_layout.go:229 volume 1 does not have enough copies
I0720 21:41:36.769399 volume_layout.go:237 volume 1 remove from writable
I0720 21:41:36.769406 volume_layout.go:405 Volume 1 becomes unwritable
--- PASS: TestAddRemoveVolume (0.00s)
=== RUN   TestListCollections
I0720 21:41:36.769454 node.go:250 weedfs adds child dc1
I0720 21:41:36.769461 node.go:250 weedfs:dc1 adds child rack1
I0720 21:41:36.769470 node.go:250 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0720 21:41:36.769485 volume_layout.go:229 volume 1111 does not have enough copies
I0720 21:41:36.769488 volume_layout.go:237 volume 1111 remove from writable
I0720 21:41:36.769498 volume_layout.go:229 volume 2222 does not have enough copies
I0720 21:41:36.769521 volume_layout.go:237 volume 2222 remove from writable
I0720 21:41:36.769533 volume_layout.go:229 volume 3333 does not have enough copies
I0720 21:41:36.769535 volume_layout.go:237 volume 3333 remove from writable
=== RUN   TestListCollections/no_volume_types_selected
=== RUN   TestListCollections/normal_volumes
=== RUN   TestListCollections/EC_volumes
    topology_test.go:280: got [ec_collection_b ec_collection_a], want [ec_collection_a ec_collection_b]
=== RUN   TestListCollections/normal_+_EC_volumes
    topology_test.go:280: got [vol_collection_a vol_collection_b  ec_collection_a ec_collection_b], want [ ec_collection_a ec_collection_b vol_collection_a vol_collection_b]
--- FAIL: TestListCollections (0.00s)
    --- PASS: TestListCollections/no_volume_types_selected (0.00s)
    --- PASS: TestListCollections/normal_volumes (0.00s)
    --- FAIL: TestListCollections/EC_volumes (0.00s)
    --- FAIL: TestListCollections/normal_+_EC_volumes (0.00s)
=== RUN   TestFindEmptySlotsForOneVolume
data: map[dc1:map[rack1:map[server111:map[limit:3 volumes:[map[id:1 size:12312] map[id:2 size:12312] map[id:3 size:12312]]] server112:map[limit:10 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]]] rack2:map[server121:map[limit:4 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server122:map[limit:4 volumes:[]] server123:map[limit:5 volumes:[map[id:2 size:12312] map[id:3 size:12312] map[id:4 size:12312]]]]] dc2:map[] dc3:map[rack2:map[server321:map[limit:4 volumes:[map[id:1 size:12312] map[id:3 size:12312] map[id:5 size:12312]]]]]]
I0720 21:41:36.769801 node.go:250 weedfs adds child dc1
I0720 21:41:36.769811 node.go:250 weedfs:dc1 adds child rack1
I0720 21:41:36.769814 node.go:250 weedfs:dc1:rack1 adds child server111
I0720 21:41:36.769825 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0720 21:41:36.769842 node.go:250 weedfs:dc1:rack1 adds child server112
I0720 21:41:36.769858 node.go:250 weedfs:dc1:rack1:server112 adds child 
I0720 21:41:36.769862 node.go:250 weedfs:dc1 adds child rack2
I0720 21:41:36.769865 node.go:250 weedfs:dc1:rack2 adds child server121
I0720 21:41:36.769867 node.go:250 weedfs:dc1:rack2:server121 adds child 
I0720 21:41:36.769874 node.go:250 weedfs:dc1:rack2 adds child server122
I0720 21:41:36.769886 node.go:250 weedfs:dc1:rack2:server122 adds child 
I0720 21:41:36.769920 node.go:250 weedfs:dc1:rack2 adds child server123
I0720 21:41:36.769922 node.go:250 weedfs:dc1:rack2:server123 adds child 
I0720 21:41:36.769927 node.go:250 weedfs adds child dc2
I0720 21:41:36.769929 node.go:250 weedfs adds child dc3
I0720 21:41:36.769931 node.go:250 weedfs:dc3 adds child rack2
I0720 21:41:36.769933 node.go:250 weedfs:dc3:rack2 adds child server321
I0720 21:41:36.769935 node.go:250 weedfs:dc3:rack2:server321 adds child 
assigned node : server122
assigned node : server123
assigned node : server121
--- PASS: TestFindEmptySlotsForOneVolume (0.00s)
=== RUN   TestReplication011
data: map[dc1:map[rack1:map[server111:map[limit:300 volumes:[map[id:1 size:12312] map[id:2 size:12312] map[id:3 size:12312]]] server112:map[limit:300 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server113:map[limit:300 volumes:[]] server114:map[limit:300 volumes:[]] server115:map[limit:300 volumes:[]] server116:map[limit:300 volumes:[]]] rack2:map[server121:map[limit:300 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server122:map[limit:300 volumes:[]] server123:map[limit:300 volumes:[map[id:2 size:12312] map[id:3 size:12312] map[id:4 size:12312]]] server124:map[limit:300 volumes:[]] server125:map[limit:300 volumes:[]] server126:map[limit:300 volumes:[]]] rack3:map[server131:map[limit:300 volumes:[]] server132:map[limit:300 volumes:[]] server133:map[limit:300 volumes:[]] server134:map[limit:300 volumes:[]] server135:map[limit:300 volumes:[]] server136:map[limit:300 volumes:[]]]]]
I0720 21:41:36.770244 node.go:250 weedfs adds child dc1
I0720 21:41:36.770248 node.go:250 weedfs:dc1 adds child rack1
I0720 21:41:36.770252 node.go:250 weedfs:dc1:rack1 adds child server116
I0720 21:41:36.770255 node.go:250 weedfs:dc1:rack1:server116 adds child 
I0720 21:41:36.770259 node.go:250 weedfs:dc1:rack1 adds child server111
I0720 21:41:36.770261 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0720 21:41:36.770266 node.go:250 weedfs:dc1:rack1 adds child server112
I0720 21:41:36.770268 node.go:250 weedfs:dc1:rack1:server112 adds child 
I0720 21:41:36.770272 node.go:250 weedfs:dc1:rack1 adds child server113
I0720 21:41:36.770276 node.go:250 weedfs:dc1:rack1:server113 adds child 
I0720 21:41:36.770282 node.go:250 weedfs:dc1:rack1 adds child server114
I0720 21:41:36.770284 node.go:250 weedfs:dc1:rack1:server114 adds child 
I0720 21:41:36.770286 node.go:250 weedfs:dc1:rack1 adds child server115
I0720 21:41:36.770288 node.go:250 weedfs:dc1:rack1:server115 adds child 
I0720 21:41:36.770290 node.go:250 weedfs:dc1 adds child rack2
I0720 21:41:36.770292 node.go:250 weedfs:dc1:rack2 adds child server124
I0720 21:41:36.770293 node.go:250 weedfs:dc1:rack2:server124 adds child 
I0720 21:41:36.770296 node.go:250 weedfs:dc1:rack2 adds child server125
I0720 21:41:36.770298 node.go:250 weedfs:dc1:rack2:server125 adds child 
I0720 21:41:36.770301 node.go:250 weedfs:dc1:rack2 adds child server126
I0720 21:41:36.770303 node.go:250 weedfs:dc1:rack2:server126 adds child 
I0720 21:41:36.770305 node.go:250 weedfs:dc1:rack2 adds child server121
I0720 21:41:36.770308 node.go:250 weedfs:dc1:rack2:server121 adds child 
I0720 21:41:36.770320 node.go:250 weedfs:dc1:rack2 adds child server122
I0720 21:41:36.770335 node.go:250 weedfs:dc1:rack2:server122 adds child 
I0720 21:41:36.770346 node.go:250 weedfs:dc1:rack2 adds child server123
I0720 21:41:36.770355 node.go:250 weedfs:dc1:rack2:server123 adds child 
I0720 21:41:36.770366 node.go:250 weedfs:dc1 adds child rack3
I0720 21:41:36.770374 node.go:250 weedfs:dc1:rack3 adds child server131
I0720 21:41:36.770382 node.go:250 weedfs:dc1:rack3:server131 adds child 
I0720 21:41:36.770402 node.go:250 weedfs:dc1:rack3 adds child server132
I0720 21:41:36.770410 node.go:250 weedfs:dc1:rack3:server132 adds child 
I0720 21:41:36.770419 node.go:250 weedfs:dc1:rack3 adds child server133
I0720 21:41:36.770442 node.go:250 weedfs:dc1:rack3:server133 adds child 
I0720 21:41:36.770451 node.go:250 weedfs:dc1:rack3 adds child server134
I0720 21:41:36.770459 node.go:250 weedfs:dc1:rack3:server134 adds child 
I0720 21:41:36.770474 node.go:250 weedfs:dc1:rack3 adds child server135
I0720 21:41:36.770483 node.go:250 weedfs:dc1:rack3:server135 adds child 
I0720 21:41:36.770496 node.go:250 weedfs:dc1:rack3 adds child server136
I0720 21:41:36.770504 node.go:250 weedfs:dc1:rack3:server136 adds child 
assigned node : server136
assigned node : server132
assigned node : server112
--- PASS: TestReplication011 (0.00s)
=== RUN   TestFindEmptySlotsForOneVolumeScheduleByWeight
data: map[dc1:map[rack1:map[server111:map[limit:2000 volumes:[]]]] dc2:map[rack2:map[server222:map[limit:2000 volumes:[]]]] dc3:map[rack3:map[server333:map[limit:1000 volumes:[]]]] dc4:map[rack4:map[server444:map[limit:1000 volumes:[]]]] dc5:map[rack5:map[server555:map[limit:500 volumes:[]]]] dc6:map[rack6:map[server666:map[limit:500 volumes:[]]]]]
I0720 21:41:36.770610 node.go:250 weedfs adds child dc5
I0720 21:41:36.770621 node.go:250 weedfs:dc5 adds child rack5
I0720 21:41:36.770631 node.go:250 weedfs:dc5:rack5 adds child server555
I0720 21:41:36.770640 node.go:250 weedfs:dc5:rack5:server555 adds child 
I0720 21:41:36.770650 node.go:250 weedfs adds child dc6
I0720 21:41:36.770658 node.go:250 weedfs:dc6 adds child rack6
I0720 21:41:36.770666 node.go:250 weedfs:dc6:rack6 adds child server666
I0720 21:41:36.770673 node.go:250 weedfs:dc6:rack6:server666 adds child 
I0720 21:41:36.770681 node.go:250 weedfs adds child dc1
I0720 21:41:36.770689 node.go:250 weedfs:dc1 adds child rack1
I0720 21:41:36.770696 node.go:250 weedfs:dc1:rack1 adds child server111
I0720 21:41:36.770713 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0720 21:41:36.770723 node.go:250 weedfs adds child dc2
I0720 21:41:36.770731 node.go:250 weedfs:dc2 adds child rack2
I0720 21:41:36.770740 node.go:250 weedfs:dc2:rack2 adds child server222
I0720 21:41:36.770748 node.go:250 weedfs:dc2:rack2:server222 adds child 
I0720 21:41:36.770757 node.go:250 weedfs adds child dc3
I0720 21:41:36.770764 node.go:250 weedfs:dc3 adds child rack3
I0720 21:41:36.770772 node.go:250 weedfs:dc3:rack3 adds child server333
I0720 21:41:36.770780 node.go:250 weedfs:dc3:rack3:server333 adds child 
I0720 21:41:36.770788 node.go:250 weedfs adds child dc4
I0720 21:41:36.770797 node.go:250 weedfs:dc4 adds child rack4
I0720 21:41:36.770805 node.go:250 weedfs:dc4:rack4 adds child server444
I0720 21:41:36.770813 node.go:250 weedfs:dc4:rack4:server444 adds child 
server333 : 296
server555 : 179
server666 : 156
server111 : 544
server222 : 534
server444 : 291
--- PASS: TestFindEmptySlotsForOneVolumeScheduleByWeight (0.00s)
=== RUN   TestPickForWrite
data: map[dc1:map[rack1:map[serverdc111:map[ip:127.0.0.1 limit:100 volumes:[map[collection:test id:1 replication:001 size:12312] map[collection:test id:2 replication:100 size:12312] map[collection:test id:4 replication:100 size:12312] map[collection:test id:6 replication:010 size:12312]]]]] dc2:map[rack1:map[serverdc211:map[ip:127.0.0.2 limit:100 volumes:[map[collection:test id:2 replication:100 size:12312] map[collection:test id:3 replication:010 size:12312] map[collection:test id:5 replication:001 size:12312] map[collection:test id:6 replication:010 size:12312]]]]] dc3:map[rack1:map[serverdc311:map[ip:127.0.0.3 limit:100 volumes:[map[collection:test id:1 replication:001 size:12312] map[collection:test id:3 replication:010 size:12312] map[collection:test id:4 replication:100 size:12312] map[collection:test id:5 replication:001 size:12312]]]]]]
I0720 21:41:36.774080 node.go:250 weedfs adds child dc2
I0720 21:41:36.774083 node.go:250 weedfs:dc2 adds child rack1
I0720 21:41:36.774086 node.go:250 weedfs:dc2:rack1 adds child serverdc211
I0720 21:41:36.774091 volume_layout.go:417 Volume 2 becomes writable
I0720 21:41:36.774096 node.go:250 weedfs:dc2:rack1:serverdc211 adds child 
I0720 21:41:36.774106 volume_layout.go:417 Volume 3 becomes writable
I0720 21:41:36.774114 volume_layout.go:417 Volume 5 becomes writable
I0720 21:41:36.774118 volume_layout.go:417 Volume 6 becomes writable
I0720 21:41:36.774121 node.go:250 weedfs adds child dc3
I0720 21:41:36.774123 node.go:250 weedfs:dc3 adds child rack1
I0720 21:41:36.774127 node.go:250 weedfs:dc3:rack1 adds child serverdc311
I0720 21:41:36.774132 volume_layout.go:417 Volume 1 becomes writable
I0720 21:41:36.774134 node.go:250 weedfs:dc3:rack1:serverdc311 adds child 
I0720 21:41:36.774138 volume_layout.go:405 Volume 3 becomes unwritable
I0720 21:41:36.774140 volume_layout.go:417 Volume 3 becomes writable
I0720 21:41:36.774143 volume_layout.go:417 Volume 4 becomes writable
I0720 21:41:36.774145 volume_layout.go:405 Volume 5 becomes unwritable
I0720 21:41:36.774147 volume_layout.go:417 Volume 5 becomes writable
I0720 21:41:36.774150 node.go:250 weedfs adds child dc1
I0720 21:41:36.774152 node.go:250 weedfs:dc1 adds child rack1
I0720 21:41:36.774154 node.go:250 weedfs:dc1:rack1 adds child serverdc111
I0720 21:41:36.774157 volume_layout.go:405 Volume 1 becomes unwritable
I0720 21:41:36.774158 volume_layout.go:417 Volume 1 becomes writable
I0720 21:41:36.774164 node.go:250 weedfs:dc1:rack1:serverdc111 adds child 
I0720 21:41:36.774169 volume_layout.go:405 Volume 2 becomes unwritable
I0720 21:41:36.774171 volume_layout.go:417 Volume 2 becomes writable
I0720 21:41:36.774173 volume_layout.go:405 Volume 4 becomes unwritable
I0720 21:41:36.774175 volume_layout.go:417 Volume 4 becomes writable
I0720 21:41:36.774178 volume_layout.go:405 Volume 6 becomes unwritable
I0720 21:41:36.774179 volume_layout.go:417 Volume 6 becomes writable
--- PASS: TestPickForWrite (0.00s)
=== RUN   TestVolumesBinaryState
=== RUN   TestVolumesBinaryState/mark_true_when_copies_exist
=== RUN   TestVolumesBinaryState/mark_true_when_no_copies_exist
--- PASS: TestVolumesBinaryState (0.00s)
    --- PASS: TestVolumesBinaryState/mark_true_when_copies_exist (0.00s)
    --- PASS: TestVolumesBinaryState/mark_true_when_no_copies_exist (0.00s)
FAIL
FAIL	github.com/seaweedfs/seaweedfs/weed/topology	0.028s
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
ActiveLock 2 acquired lock 0
ActiveLock 3 acquired lock 0
ActiveLock 4 acquired lock 0
ActiveLock 1 acquired lock 0
ActiveLock 4 released lock 0
ActiveLock 2 released lock 0
ActiveLock 3 released lock 0
ActiveLock 1 released lock 0
ActiveLock 5 acquired lock 1
ActiveLock 5 released lock 1
ActiveLock 6 acquired lock 0
ActiveLock 7 acquired lock 0
ActiveLock 7 released lock 0
ActiveLock 6 released lock 0
ActiveLock 8 acquired lock 1
ActiveLock 9 acquired lock 0
ActiveLock 8 released lock 1
ActiveLock 9 released lock 0
ActiveLock 10 acquired lock 1
ActiveLock 10 released lock 1
ActiveLock 11 acquired lock 0
ActiveLock 12 acquired lock 0
ActiveLock 11 released lock 0
ActiveLock 12 released lock 0
ActiveLock 14 acquired lock 1
ActiveLock 14 released lock 1
ActiveLock 15 acquired lock 1
ActiveLock 15 released lock 1
ActiveLock 16 acquired lock 0
ActiveLock 18 acquired lock 0
ActiveLock 17 acquired lock 0
ActiveLock 19 acquired lock 0
ActiveLock 20 acquired lock 0
ActiveLock 22 acquired lock 0
ActiveLock 22 released lock 0
ActiveLock 23 acquired lock 0
ActiveLock 21 acquired lock 0
ActiveLock 21 released lock 0
ActiveLock 18 released lock 0
ActiveLock 19 released lock 0
ActiveLock 16 released lock 0
ActiveLock 17 released lock 0
ActiveLock 23 released lock 0
ActiveLock 20 released lock 0
ActiveLock 24 acquired lock 1
ActiveLock 24 released lock 1
ActiveLock 25 acquired lock 0
ActiveLock 25 released lock 0
ActiveLock 26 acquired lock 1
ActiveLock 26 released lock 1
ActiveLock 27 acquired lock 0
ActiveLock 28 acquired lock 0
ActiveLock 29 acquired lock 0
ActiveLock 30 acquired lock 0
ActiveLock 31 acquired lock 0
ActiveLock 32 acquired lock 0
ActiveLock 33 acquired lock 0
ActiveLock 33 released lock 0
ActiveLock 34 acquired lock 0
ActiveLock 35 acquired lock 0
ActiveLock 36 acquired lock 0
ActiveLock 37 acquired lock 0
ActiveLock 37 released lock 0
ActiveLock 38 acquired lock 0
ActiveLock 40 acquired lock 0
ActiveLock 38 released lock 0
ActiveLock 31 released lock 0
ActiveLock 28 released lock 0
ActiveLock 35 released lock 0
ActiveLock 40 released lock 0
ActiveLock 36 released lock 0
ActiveLock 30 released lock 0
ActiveLock 29 released lock 0
ActiveLock 27 released lock 0
ActiveLock 34 released lock 0
ActiveLock 41 acquired lock 1
ActiveLock 32 released lock 0
ActiveLock 41 released lock 1
ActiveLock 42 acquired lock 0
ActiveLock 43 acquired lock 0
ActiveLock 42 released lock 0
ActiveLock 43 released lock 0
ActiveLock 44 acquired lock 1
ActiveLock 44 released lock 1
ActiveLock 45 acquired lock 0
ActiveLock 46 acquired lock 0
ActiveLock 47 acquired lock 0
ActiveLock 48 acquired lock 0
ActiveLock 45 released lock 0
ActiveLock 47 released lock 0
ActiveLock 46 released lock 0
ActiveLock 48 released lock 0
ActiveLock 49 acquired lock 1
ActiveLock 49 released lock 1
ActiveLock 39 acquired lock 0
ActiveLock 13 acquired lock 0
ActiveLock 50 acquired lock 0
ActiveLock 50 released lock 0
ActiveLock 13 released lock 0
ActiveLock 39 released lock 0
--- PASS: TestOrderedLock (1.20s)
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
ok  	github.com/seaweedfs/seaweedfs/weed/util	1.323s
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
I0720 21:41:36.778123 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk466978995/001/c0_2_0.ldb, watermark 0, num of entries:0
I0720 21:41:36.788209 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c0_2_0.ldb... , watermark: 0
I0720 21:41:36.796890 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk466978995/001/c0_2_1.ldb, watermark 0, num of entries:0
I0720 21:41:36.806924 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c0_2_1.ldb... , watermark: 0
I0720 21:41:36.815452 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk466978995/001/c1_3_0.ldb, watermark 0, num of entries:0
I0720 21:41:36.821962 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c1_3_0.ldb... , watermark: 0
I0720 21:41:36.829595 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk466978995/001/c1_3_1.ldb, watermark 0, num of entries:0
I0720 21:41:36.835355 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c1_3_1.ldb... , watermark: 0
I0720 21:41:36.843332 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk466978995/001/c1_3_2.ldb, watermark 0, num of entries:0
I0720 21:41:36.854509 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c1_3_2.ldb... , watermark: 0
I0720 21:41:36.862365 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk466978995/001/c2_2_0.ldb, watermark 0, num of entries:0
I0720 21:41:36.868539 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c2_2_0.ldb... , watermark: 0
I0720 21:41:36.876058 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk466978995/001/c2_2_1.ldb, watermark 0, num of entries:0
I0720 21:41:36.881938 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c2_2_1.ldb... , watermark: 0
I0720 21:41:36.889008 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk466978995/001/c0_2_0.ldb, watermark 0, num of entries:0
I0720 21:41:36.894794 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c0_2_0.ldb... , watermark: 0
I0720 21:41:36.905325 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk466978995/001/c0_2_1.ldb, watermark 0, num of entries:0
I0720 21:41:36.912072 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c0_2_1.ldb... , watermark: 0
I0720 21:41:36.934211 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c0_2_0.ldb... , watermark: 0
I0720 21:41:36.943215 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c0_2_1.ldb... , watermark: 0
I0720 21:41:36.951337 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c1_3_0.ldb... , watermark: 0
I0720 21:41:36.959443 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c1_3_1.ldb... , watermark: 0
I0720 21:41:36.967403 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c1_3_2.ldb... , watermark: 0
I0720 21:41:36.974884 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c2_2_0.ldb... , watermark: 0
I0720 21:41:36.982440 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk466978995/001/c2_2_1.ldb... , watermark: 0
--- PASS: TestOnDisk (0.22s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/chunk_cache	0.238s
?   	github.com/seaweedfs/seaweedfs/weed/util/fla9	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/grace	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/http	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/http/client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/httpdown	[no test files]
=== RUN   TestNewLogBufferFirstBuffer
processed all messages
E0720 21:41:36.841950 log_read.go:115 LoopProcessLogData: test process log entry 1 ts_ns:1784583696841922898  partition_key_hash:-736260903  data:"\x19\x13\x94{\xf3\xf9͊\xd6Wk\x82\xc1\x06\x03\x8fg\xe8\xa9\x10(\x98\xa7#\xf4\x84\xcf\xcaK\x96\x82\x0c\x82\xe3\xa7\x14H\x19\x88\xf6s%\xea\xd9\x1c\x9cK\xf5#\xdb\xc8$\x118$\x86\xa1\xd6S${\xf1\xd0\xfd\xbb\xa8\xf0\xec\xc6\xc4X\r_Ѿ\xa8M2s\xec\x80:\x1e~[\x9f4\xf1\x14\x8e\xb9\x9cSSHeF\x1a=\xef\xf5\xb5\xe4\x84\x0c\xa6(\xc6\xc0\x18\x89\xaa\xa8\x93\x80\x11\x14\x1eQI\t< \xb4\x9f\xe37\xa1~ҝ\x9b\xfb\x90\xd9\xf6t\xd2\xeb\xd9s7\xde;\xcdi7r\xcd\xfd\xc6\xf5A\x80\xa65##\xdb\xe5,\x88p\xad\xfd'e%(\xe5\xbe\xc3Zo^U\xc4\xd98\xef\x1b\xa6\xddx\xbb\x82\xee)\x8f\xa9\x18\xea>w\x97$1y\xaao\x84\xd3G\xddR7\xa4\xe6 \x80Ʀ\xd1\x11\xedt\x9fu\xd62\xc9\x12\xd5V\xa2޷\x1bA\x04<s\xb8d8\xa2h\x89v4@l,\x83\"\xbf\x12w`Ԛz`\xbf\x08Ɗi\x86v\x11\xc0\x9e\xc5Ң\x0fS\t\x1a\xef\x8c\xd3h'h\xd7\xf3/\xf1\xafI\xfe/\xb1ɔń\xc2ɰ\xf9h4\xc8\xfc0\x9e:\x1cYBJ\xb2\xbb\x87\xc6\xe8Ǎ_\x082y\xec\x96\x01\xa7\x19\xae\t)\x9dg\xa8\tJ\xcb\xd6q)ڰFz\xc88p\xa9X8\xcb\xc3\x7fB\x1a\xa9\xee\xb1-\x04\xd5\x02U5КnLq96<\x18\x8e\xbf\x9e\xa0\xc7^\x02\x18m{\xda\xca\xef\xbc%\xe4\x89?\x9fJ\x81\xa3\xa2\xcd\x1a\xb3.؛\xf4&f\xcb7\x15>\x94KZ\xbc{\xec\x80\x106jģ\xf2\xc8\x04\x0fb\xbe\xf1,\x8e+q\x12#\x83\xf0\xddP\x8e\xb2\x9e\xa19\xbal'\xf1\xab{rH\xc9\xc4\x02L\xe6)\xf7\x1b|\x96N\xaa\xd8,\x05M\x86\x178Z]<\x03@[]\rk\xd0۫\x95\xb9򉱜[\xbd\xf5\x9cZmS\x81\xd1\xf1Lj`\xd5\xd1Ȓ\x95\n˪\x91O\xb7\x05\xa7Bz\xac\x03\xfb\xf6\x923A\xc1\xadh\xda\x179﮷ȸ\x13m\x17\xd04\xb1+\xe8\x8b\xc2~ו\xc7I՛\x19區\xfc\x9d\x9eg\xfa\xeb\xbd20\x18o\xae͝`V\xa6L\x9d{\xaa\x84\xb7KTOyb\x90\x8dp\x141\x1e\x0f|\xef\xb8\x10Q\xf1ed\xbe\x85\x8f\x9d_\x80\x0e7;\xc0N6\\\xa5]\x90\x93\xbb\x07\r\x15\xdcwL\xb4k\xff#\xec\xeb2\xd6T\x14H\xe8\xb8\x00#FX\xcf0\xad\x02-}\xc8m\x92{>\xefNSړG\xf2\xfau\xb5\xa7\x9f_\x94\x9b\x9cg\x1e\xc0\x1e\xceNfn\x08\x1b\xbaT\x1e\xd8\xda\x11\xdc\x06N\xe6jPs\xa5<\x85\x00H\xcfF\xfd\xafk8\x17n0{\x1eo\xeb\xfa\x14\x0c\xab\xdcwӭ\xffy~5\x95AS\xf6ZK#\x8fW\x95\xde\xf9\x93XWT\x81\xed\x1eO\xf4e\x0e\x95\x16~bK\x06m\x8aM\xb0g\x06\xb3q\xdd4\xca}\x94\xddt6=\xb9\xee`8\x92T\xd2\xc8\xda\xe0\x85\xb1 \xb7\xb6\xa1ȑ=\x05\xa2H\x8f\xccq\x10#\xdbƪb\xe4\xbe.<8e1\xed\x13\xf9먪\xb2\x9a\xda9\xc6d\x10y\x12\xd8-BO\x01E(\x96\xbd\xc1\xdc\x16\xdbƐ\xdc\x1d\xee4\x0b8$\x08\xf9\xee\x0fX\xb3\x04գ\x16\xca\x7f\xfd{-\xa6-G]\xf5\x10\x15t*\xd4\xe1\x82\xf1\xbf\xebQ\xa0\x17\xec诜\xe2\xacN\x03V\x04\x83A\x9b\x17\xa8\xb6Jp*\xc0\xf9pe߅\xef֧\xab;\x04\xe0K\xef*\xadO\x88\x1a\xdc\x00c_:K\xd9}X>N\x11\xbd8\xfa\xee\xefv\xcaӟI\x1az\x18l\xe9-\x8a\xcf\x0b\xafI\xe8b/\xd6\xcdY\xf4۬t\xd0:k\xb0\xd5?\x98s\x1a\xbf\xc03\xa5l\xcb\xfd\xc4+\xe5\x1cK+\x12!\x8eB\xfd\xd2\x16\xa6\xbd\xc8\x02~f\xf54\xa5\x80ϒB7hT\t\x06\x1cM\xe2\xc5]\x15K\xa8\xde\x16Y\x9d\x95\xf1\x8b\xd7]A\x81\xc92\x87\x08\xf27\xa0W\xa5\xbd\xfd": EOF
before flush: sent 5000 received 5000
lastProcessedTime 2026-07-20 21:41:36.841922898 +0000 UTC isDone true err: EOF
--- PASS: TestNewLogBufferFirstBuffer (0.09s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/log_buffer	0.101s
=== RUN   TestAllocateFree
--- PASS: TestAllocateFree (0.00s)
=== RUN   TestAllocateFreeEdgeCases
--- PASS: TestAllocateFreeEdgeCases (0.00s)
=== RUN   TestBitCount
--- PASS: TestBitCount (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/mem	0.008s
=== RUN   TestNameList
0 1 10 11 12 13 14 15 16 17 18 19 2 20 21 22 23 24 25 26 27 28 29 3 30 31 32 33 34 35 36 37 38 39 4 40 41 42 43 44 45 46 47 48 49 5 50 51 52 53 54 55 56 57 58 59 6 60 61 62 63 64 65 66 67 68 69 7 70 71 72 73 74 75 76 77 78 79 8 80 81 82 83 84 85 86 87 88 89 9 90 91 92 93 94 95 96 97 98 99 --- PASS: TestNameList (0.08s)
=== RUN   TestReverseInsert
--- PASS: TestReverseInsert (0.00s)
=== RUN   TestInsertAndFind
--- PASS: TestInsertAndFind (0.05s)
=== RUN   TestDelete
--- PASS: TestDelete (0.06s)
=== RUN   TestNext
--- PASS: TestNext (0.01s)
=== RUN   TestPrev
--- PASS: TestPrev (0.01s)
=== RUN   TestFindGreaterOrEqual
--- PASS: TestFindGreaterOrEqual (0.03s)
=== RUN   TestChangeValue
--- PASS: TestChangeValue (0.02s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/skiplist	0.279s
=== RUN   TestLocationIndex
--- PASS: TestLocationIndex (0.00s)
=== RUN   TestLookupFileId
--- PASS: TestLookupFileId (0.00s)
=== RUN   TestConcurrentGetLocations
--- PASS: TestConcurrentGetLocations (0.06s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/wdclient	0.071s
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/exclusive_locks	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/net2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/resource_pool	[no test files]
FAIL
