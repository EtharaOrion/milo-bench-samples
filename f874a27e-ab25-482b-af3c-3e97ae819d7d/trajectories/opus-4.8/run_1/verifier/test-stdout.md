?   	github.com/seaweedfs/seaweedfs/other/mq_client_example/agent_pub_record	[no test files]
?   	github.com/seaweedfs/seaweedfs/other/mq_client_example/agent_sub_record	[no test files]
?   	github.com/seaweedfs/seaweedfs/other/mq_client_example/example	[no test files]
=== RUN   TestCreateBucket
RequestError: send request failed
caused by: Put "http://localhost:8333/theBucket": dial tcp [::1]:8333: connect: connection refused
--- PASS: TestCreateBucket (0.31s)
=== RUN   TestPutObject
RequestError: send request failed
caused by: Put "http://localhost:8333/theBucket/exampleobject": dial tcp [::1]:8333: connect: connection refused
--- PASS: TestPutObject (0.38s)
=== RUN   TestListBucket
Unable to list buckets, RequestError: send request failed
caused by: Get "http://localhost:8333/": dial tcp [::1]:8333: connect: connection refused
FAIL	github.com/seaweedfs/seaweedfs/test/s3/basic	0.978s
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
I0616 11:58:46.149310 lock_ring.go:43 add server localhost:8080
I0616 11:58:46.149764 lock_ring.go:43 add server localhost:8081
I0616 11:58:46.149774 lock_ring.go:43 add server localhost:8082
I0616 11:58:46.149777 lock_ring.go:43 add server localhost:8083
I0616 11:58:46.149780 lock_ring.go:43 add server localhost:8084
I0616 11:58:46.149783 lock_ring.go:59 remove server localhost:8084
I0616 11:58:46.149786 lock_ring.go:59 remove server localhost:8082
I0616 11:58:46.149792 lock_ring.go:59 remove server localhost:8080
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
I0616 11:58:50.511879 volume_test.go:12 Last-Modified Mon, 08 Jul 2013 08:53:16 GMT
--- PASS: TestXYZ (0.02s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/command	0.062s
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
2026/06/16 11:58:50 first deleted chunks: [file_id:"1"  size:3  modified_ts_ns:100  source_file_id:"11" file_id:"2"  offset:3  size:3  modified_ts_ns:200 file_id:"3"  offset:6  size:3  modified_ts_ns:300  source_file_id:"33"]
2026/06/16 11:58:50 clusterA synced empty chunks event result: []
--- PASS: TestDoMinusChunks (0.00s)
=== RUN   TestCompactFileChunksRealCase
I0616 11:58:50.491536 filechunks2_test.go:83 before chunk 2,512f31f2c0700a [         0,        25)
I0616 11:58:50.492068 filechunks2_test.go:83 before chunk 6,512f2c2e24e9e8 [    868352,    917585)
I0616 11:58:50.492072 filechunks2_test.go:83 before chunk 7,514468dd5954ca [    884736,    901120)
I0616 11:58:50.492074 filechunks2_test.go:83 before chunk 5,5144463173fe77 [    917504,   2297856)
I0616 11:58:50.492076 filechunks2_test.go:83 before chunk 4,51444c7ab54e2d [   2301952,   2367488)
I0616 11:58:50.492078 filechunks2_test.go:83 before chunk 4,514450e643ad22 [   2371584,   2420736)
I0616 11:58:50.492079 filechunks2_test.go:83 before chunk 6,514456a5e9e4d7 [   2449408,   2490368)
I0616 11:58:50.492081 filechunks2_test.go:83 before chunk 3,51444f8d53eebe [   2494464,   2555904)
I0616 11:58:50.492082 filechunks2_test.go:83 before chunk 4,5144578b097c7e [   2560000,   2596864)
I0616 11:58:50.492083 filechunks2_test.go:83 before chunk 3,51445500b6b4ac [   2637824,   2678784)
I0616 11:58:50.492085 filechunks2_test.go:83 before chunk 1,51446285e52a61 [   2695168,   2715648)
I0616 11:58:50.492095 filechunks2_test.go:83 compacted chunk 2,512f31f2c0700a [         0,        25)
I0616 11:58:50.492097 filechunks2_test.go:83 compacted chunk 6,512f2c2e24e9e8 [    868352,    917585)
I0616 11:58:50.492098 filechunks2_test.go:83 compacted chunk 7,514468dd5954ca [    884736,    901120)
I0616 11:58:50.492099 filechunks2_test.go:83 compacted chunk 5,5144463173fe77 [    917504,   2297856)
I0616 11:58:50.492101 filechunks2_test.go:83 compacted chunk 4,51444c7ab54e2d [   2301952,   2367488)
I0616 11:58:50.492102 filechunks2_test.go:83 compacted chunk 4,514450e643ad22 [   2371584,   2420736)
I0616 11:58:50.492103 filechunks2_test.go:83 compacted chunk 6,514456a5e9e4d7 [   2449408,   2490368)
I0616 11:58:50.492105 filechunks2_test.go:83 compacted chunk 3,51444f8d53eebe [   2494464,   2555904)
I0616 11:58:50.492106 filechunks2_test.go:83 compacted chunk 4,5144578b097c7e [   2560000,   2596864)
I0616 11:58:50.492107 filechunks2_test.go:83 compacted chunk 3,51445500b6b4ac [   2637824,   2678784)
I0616 11:58:50.492108 filechunks2_test.go:83 compacted chunk 1,51446285e52a61 [   2695168,   2715648)
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
2026/06/16 11:58:50 ++++++++++ merged test case 0 ++++++++++++++++++++
2026/06/16 11:58:50 test case 0, interval start=0, stop=100, fileId=abc
2026/06/16 11:58:50 test case 0, interval start=100, stop=200, fileId=asdf
2026/06/16 11:58:50 test case 0, interval start=200, stop=300, fileId=fsad
2026/06/16 11:58:50 ++++++++++ merged test case 1 ++++++++++++++++++++
2026/06/16 11:58:50 test case 1, interval start=0, stop=200, fileId=asdf
2026/06/16 11:58:50 ++++++++++ merged test case 2 ++++++++++++++++++++
2026/06/16 11:58:50 test case 2, interval start=0, stop=70, fileId=b
2026/06/16 11:58:50 test case 2, interval start=70, stop=100, fileId=a
2026/06/16 11:58:50 ++++++++++ merged test case 3 ++++++++++++++++++++
2026/06/16 11:58:50 test case 3, interval start=0, stop=50, fileId=asdf
2026/06/16 11:58:50 test case 3, interval start=50, stop=300, fileId=xxxx
2026/06/16 11:58:50 ++++++++++ merged test case 4 ++++++++++++++++++++
2026/06/16 11:58:50 test case 4, interval start=0, stop=200, fileId=asdf
2026/06/16 11:58:50 test case 4, interval start=250, stop=500, fileId=xxxx
2026/06/16 11:58:50 ++++++++++ merged test case 5 ++++++++++++++++++++
2026/06/16 11:58:50 test case 5, interval start=0, stop=200, fileId=d
2026/06/16 11:58:50 test case 5, interval start=200, stop=220, fileId=c
2026/06/16 11:58:50 ++++++++++ merged test case 6 ++++++++++++++++++++
2026/06/16 11:58:50 test case 6, interval start=0, stop=100, fileId=xyz
2026/06/16 11:58:50 ++++++++++ merged test case 7 ++++++++++++++++++++
2026/06/16 11:58:50 test case 7, interval start=0, stop=2097152, fileId=3,029565bf3092
2026/06/16 11:58:50 test case 7, interval start=2097152, stop=5242880, fileId=6,029632f47ae2
2026/06/16 11:58:50 test case 7, interval start=5242880, stop=8388608, fileId=2,029734c5aa10
2026/06/16 11:58:50 test case 7, interval start=8388608, stop=11534336, fileId=5,02982f80de50
2026/06/16 11:58:50 test case 7, interval start=11534336, stop=14376529, fileId=7,0299ad723803
2026/06/16 11:58:50 ++++++++++ merged test case 8 ++++++++++++++++++++
2026/06/16 11:58:50 test case 8, interval start=0, stop=77824, fileId=4,0b3df938e301
2026/06/16 11:58:50 test case 8, interval start=77824, stop=208896, fileId=4,0b3f0c7202f0
2026/06/16 11:58:50 test case 8, interval start=208896, stop=339968, fileId=2,0b4031a72689
2026/06/16 11:58:50 test case 8, interval start=339968, stop=471040, fileId=3,0b416a557362
2026/06/16 11:58:50 test case 8, interval start=471040, stop=472225, fileId=6,0b3e0650019c
--- PASS: TestIntervalMerging (0.00s)
=== RUN   TestChunksReading
2026/06/16 11:58:50 ++++++++++ read test case 0 ++++++++++++++++++++
2026/06/16 11:58:50 read case 0, chunk 0, offset=0, size=100, fileId=abc
2026/06/16 11:58:50 read case 0, chunk 1, offset=0, size=100, fileId=asdf
2026/06/16 11:58:50 read case 0, chunk 2, offset=0, size=50, fileId=fsad
2026/06/16 11:58:50 ++++++++++ read test case 1 ++++++++++++++++++++
2026/06/16 11:58:50 read case 1, chunk 0, offset=50, size=100, fileId=asdf
2026/06/16 11:58:50 ++++++++++ read test case 2 ++++++++++++++++++++
2026/06/16 11:58:50 read case 2, chunk 0, offset=20, size=30, fileId=b
2026/06/16 11:58:50 read case 2, chunk 1, offset=57, size=10, fileId=a
2026/06/16 11:58:50 ++++++++++ read test case 3 ++++++++++++++++++++
2026/06/16 11:58:50 read case 3, chunk 0, offset=0, size=50, fileId=asdf
2026/06/16 11:58:50 read case 3, chunk 1, offset=0, size=150, fileId=xxxx
2026/06/16 11:58:50 ++++++++++ read test case 4 ++++++++++++++++++++
2026/06/16 11:58:50 read case 4, chunk 0, offset=0, size=200, fileId=asdf
2026/06/16 11:58:50 read case 4, chunk 1, offset=0, size=150, fileId=xxxx
2026/06/16 11:58:50 ++++++++++ read test case 5 ++++++++++++++++++++
2026/06/16 11:58:50 read case 5, chunk 0, offset=0, size=200, fileId=c
2026/06/16 11:58:50 read case 5, chunk 1, offset=130, size=20, fileId=b
2026/06/16 11:58:50 ++++++++++ read test case 6 ++++++++++++++++++++
2026/06/16 11:58:50 read case 6, chunk 0, offset=0, size=100, fileId=xyz
2026/06/16 11:58:50 ++++++++++ read test case 7 ++++++++++++++++++++
2026/06/16 11:58:50 read case 7, chunk 0, offset=0, size=100, fileId=abc
2026/06/16 11:58:50 read case 7, chunk 1, offset=0, size=100, fileId=asdf
2026/06/16 11:58:50 ++++++++++ read test case 8 ++++++++++++++++++++
2026/06/16 11:58:50 read case 8, chunk 0, offset=0, size=90, fileId=abc
2026/06/16 11:58:50 read case 8, chunk 1, offset=0, size=100, fileId=asdf
2026/06/16 11:58:50 read case 8, chunk 2, offset=0, size=110, fileId=fsad
2026/06/16 11:58:50 ++++++++++ read test case 9 ++++++++++++++++++++
2026/06/16 11:58:50 read case 9, chunk 0, offset=0, size=43175936, fileId=2,111fc2cbfac1
2026/06/16 11:58:50 read case 9, chunk 1, offset=0, size=9805824, fileId=2,112a36ea7f85
2026/06/16 11:58:50 read case 9, chunk 2, offset=0, size=19582976, fileId=4,112d5f31c5e7
2026/06/16 11:58:50 read case 9, chunk 3, offset=0, size=60690432, fileId=1,113245f0cdb6
2026/06/16 11:58:50 read case 9, chunk 4, offset=0, size=4014080, fileId=3,1141a70733b5
2026/06/16 11:58:50 read case 9, chunk 5, offset=0, size=16309588, fileId=1,114201d5bbdb
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
ok  	github.com/seaweedfs/seaweedfs/weed/filer	0.020s
?   	github.com/seaweedfs/seaweedfs/weed/filer/abstract_sql	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/arangodb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/cassandra	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/cassandra2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/elastic/v7	[no test files]
=== RUN   TestStore
--- PASS: TestStore (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/etcd	0.018s
?   	github.com/seaweedfs/seaweedfs/weed/filer/hbase	[no test files]
=== RUN   TestCreateAndFind
I0616 11:58:50.509225 leveldb_store.go:47 filer store dir: /tmp/TestCreateAndFind2745873067/001
I0616 11:58:50.535429 file_util.go:27 Folder /tmp/TestCreateAndFind2745873067/001 Permission: -rwxr-xr-x
I0616 11:58:50.662612 filer.go:155 create filer.store.id to -385467718
--- PASS: TestCreateAndFind (0.17s)
=== RUN   TestEmptyRoot
I0616 11:58:50.664764 leveldb_store.go:47 filer store dir: /tmp/TestEmptyRoot376191294/001
I0616 11:58:50.664781 file_util.go:27 Folder /tmp/TestEmptyRoot376191294/001 Permission: -rwxr-xr-x
I0616 11:58:50.734212 filer.go:155 create filer.store.id to 1614082406
--- PASS: TestEmptyRoot (0.07s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb	0.256s
=== RUN   TestCreateAndFind
I0616 11:58:50.509139 leveldb2_store.go:43 filer store leveldb2 dir: /tmp/TestCreateAndFind3552582252/001
I0616 11:58:50.535135 file_util.go:27 Folder /tmp/TestCreateAndFind3552582252/001 Permission: -rwxr-xr-x
I0616 11:58:50.727982 filer.go:155 create filer.store.id to 1868505077
--- PASS: TestCreateAndFind (0.24s)
=== RUN   TestEmptyRoot
I0616 11:58:50.730141 leveldb2_store.go:43 filer store leveldb2 dir: /tmp/TestEmptyRoot1977413192/001
I0616 11:58:50.730159 file_util.go:27 Folder /tmp/TestEmptyRoot1977413192/001 Permission: -rwxr-xr-x
I0616 11:58:50.832258 filer.go:155 create filer.store.id to -1776837169
--- PASS: TestEmptyRoot (0.10s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb2	0.354s
=== RUN   TestCreateAndFind
I0616 11:58:50.509697 leveldb3_store.go:50 filer store leveldb3 dir: /tmp/TestCreateAndFind125510060/001
I0616 11:58:50.535433 file_util.go:27 Folder /tmp/TestCreateAndFind125510060/001 Permission: -rwxr-xr-x
I0616 11:58:50.652355 filer.go:155 create filer.store.id to 286073048
--- PASS: TestCreateAndFind (0.16s)
=== RUN   TestEmptyRoot
I0616 11:58:50.654513 leveldb3_store.go:50 filer store leveldb3 dir: /tmp/TestEmptyRoot2106593796/001
I0616 11:58:50.654530 file_util.go:27 Folder /tmp/TestEmptyRoot2106593796/001 Permission: -rwxr-xr-x
I0616 11:58:50.727949 filer.go:155 create filer.store.id to -1516888884
--- PASS: TestEmptyRoot (0.08s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/leveldb3	0.250s
?   	github.com/seaweedfs/seaweedfs/weed/filer/mongodb	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/mysql	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/mysql2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/postgres	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/postgres2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/redis	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/filer/redis2	[no test files]
testing: warning: no tests to run
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/filer/redis3	0.017s [no tests to run]
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
I0616 11:58:50.481845 glog_test.go:92 test
--- PASS: TestInfo (0.00s)
=== RUN   TestInfoDepth
I0616 11:58:50.481866 glog_test.go:109 depth-test0
I0616 11:58:50.481868 glog_test.go:110 depth-test1
--- PASS: TestInfoDepth (0.00s)
=== RUN   TestCopyStandardLogToPanic
--- PASS: TestCopyStandardLogToPanic (0.00s)
=== RUN   TestStandardLog
I0616 11:58:50.481899 glog_test.go:163 test
--- PASS: TestStandardLog (0.00s)
=== RUN   TestHeader
I0102 15:04:05.067890 glog_test.go:181 test
--- PASS: TestHeader (0.00s)
=== RUN   TestError
E0616 11:58:50.481949 glog_test.go:202 test
--- PASS: TestError (0.00s)
=== RUN   TestWarning
W0616 11:58:50.481961 glog_test.go:224 test
--- PASS: TestWarning (0.00s)
=== RUN   TestV
I0616 11:58:50.481973 glog_test.go:243 test
--- PASS: TestV (0.00s)
=== RUN   TestVmoduleOn
I0616 11:58:50.481989 glog_test.go:267 test
--- PASS: TestVmoduleOn (0.00s)
=== RUN   TestVmoduleOff
--- PASS: TestVmoduleOff (0.00s)
=== RUN   TestVmoduleGlob
--- PASS: TestVmoduleGlob (0.00s)
=== RUN   TestRollover
I0616 11:58:50.482035 glog_test.go:339 x
I0616 11:58:50.482667 glog_test.go:348 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
I0616 11:58:51.509944 glog_test.go:361 x
--- PASS: TestRollover (1.03s)
=== RUN   TestLogBacktraceAt
I0616 11:58:51.510383 glog_test.go:395 we want a stack trace here
goroutine 34 [running]:
github.com/seaweedfs/seaweedfs/weed/glog.stacks(0x0)
	/home/seaweedfs/weed/glog/glog.go:768 +0x8c
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).output(0x3047a0, 0x0, 0x6565ad15a000, {0x1ddd80?, 0x1?}, 0x0?, 0x0)
	/home/seaweedfs/weed/glog/glog.go:677 +0xec
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).printDepth(0x3047a0, 0x0, 0x6565ad204e88?, {0x6565ad204e28, 0x1, 0x1})
	/home/seaweedfs/weed/glog/glog.go:648 +0xc4
github.com/seaweedfs/seaweedfs/weed/glog.(*loggingT).print(...)
	/home/seaweedfs/weed/glog/glog.go:639
github.com/seaweedfs/seaweedfs/weed/glog.Info(...)
	/home/seaweedfs/weed/glog/glog.go:1061
github.com/seaweedfs/seaweedfs/weed/glog.TestLogBacktraceAt(0x6565ad17a008)
	/home/seaweedfs/weed/glog/glog_test.go:395 +0x2e8
testing.tRunner(0x6565ad17a008, 0x1a95e0)
	/usr/local/go/src/testing/testing.go:2036 +0xc4
created by testing.(*T).Run in goroutine 1
	/usr/local/go/src/testing/testing.go:2101 +0x3a8
--- PASS: TestLogBacktraceAt (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/glog	1.031s
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
E0616 11:58:50.500297 iamapi_management_handlers.go:508 PutUserPolicy:  the user with name InvalidUser cannot be found
E0616 11:58:50.535876 iamapi_handlers.go:29 Response the user with name InvalidUser cannot be found
--- PASS: TestPutUserPolicyError (0.04s)
=== RUN   TestGetUserPolicy
--- PASS: TestGetUserPolicy (0.00s)
=== RUN   TestUpdateUser
--- PASS: TestUpdateUser (0.00s)
=== RUN   TestDeleteUser
--- PASS: TestDeleteUser (0.00s)
=== RUN   TestHandleImplicitUsername
--- PASS: TestHandleImplicitUsername (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/iamapi	0.059s
=== RUN   TestCropping
--- PASS: TestCropping (0.15s)
=== RUN   TestXYZ
--- PASS: TestXYZ (0.45s)
=== RUN   TestResizing
--- PASS: TestResizing (0.03s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/images	0.646s
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
ok  	github.com/seaweedfs/seaweedfs/weed/mount	0.015s
?   	github.com/seaweedfs/seaweedfs/weed/mount/meta_cache	[no test files]
=== RUN   Test_PageChunkWrittenIntervalList
--- PASS: Test_PageChunkWrittenIntervalList (0.00s)
=== RUN   Test_PageChunkWrittenIntervalList1
--- PASS: Test_PageChunkWrittenIntervalList1 (0.00s)
=== RUN   TestUploadPipeline
--- PASS: TestUploadPipeline (45.40s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mount/page_writer	45.407s
?   	github.com/seaweedfs/seaweedfs/weed/mount/unmount	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/agent	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/broker	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/agent_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/pub_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/client/sub_client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/mq/logstore	[no test files]
=== RUN   Test_allocateOneBroker
=== RUN   Test_allocateOneBroker/test_only_one_broker
I0616 11:58:50.492028 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 1, assignments: [partition:{ring_size:2520 range_stop:2520 unix_time_ns:1781611130492019670}]
I0616 11:58:50.492693 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 1, assignments: [partition:{ring_size:2520 range_stop:2520 unix_time_ns:1781611130492019670} leader_broker:"localhost:17777"] hasChanges: true
I0616 11:58:50.492735 allocate.go:33 allocate topic partitions 1: [partition:{ring_size:2520 range_stop:2520 unix_time_ns:1781611130492019670} leader_broker:"localhost:17777"]
--- PASS: Test_allocateOneBroker (0.00s)
    --- PASS: Test_allocateOneBroker/test_only_one_broker (0.00s)
=== RUN   TestEnsureAssignmentsToActiveBrokersX
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_empty_leader
test empty leader before [partition:{} follower_broker:"localhost:2"]
I0616 11:58:50.492822 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} follower_broker:"localhost:2"]
I0616 11:58:50.492962 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:4" follower_broker:"localhost:2"] hasChanges: true
test empty leader after [partition:{} leader_broker:"localhost:4" follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_empty_follower
test empty follower before [partition:{} leader_broker:"localhost:1"]
I0616 11:58:50.493064 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1"]
I0616 11:58:50.493148 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"] hasChanges: true
test empty follower after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_dead_follower
test dead follower before [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:200"]
I0616 11:58:50.493211 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:200"]
I0616 11:58:50.493290 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:4"] hasChanges: true
test dead follower after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:4"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_dead_leader_and_follower
test dead leader and follower before [partition:{} leader_broker:"localhost:100" follower_broker:"localhost:200"]
I0616 11:58:50.493397 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:100" follower_broker:"localhost:200"]
I0616 11:58:50.493465 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 6, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"] hasChanges: true
test dead leader and follower after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_low_active_brokers
test low active brokers before [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0616 11:58:50.493508 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0616 11:58:50.493570 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"] hasChanges: false
test low active brokers after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_low_active_brokers_with_one_follower
test low active brokers with one follower before [partition:{} leader_broker:"localhost:1"]
I0616 11:58:50.493596 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1"]
I0616 11:58:50.493629 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 2, followerCount: 1, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"] hasChanges: true
test low active brokers with one follower after [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
=== RUN   TestEnsureAssignmentsToActiveBrokersX/test_single_active_broker
test single active broker before [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0616 11:58:50.493657 allocate.go:81 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:2"]
I0616 11:58:50.493686 allocate.go:125 EnsureAssignmentsToActiveBrokers: activeBrokers: 1, followerCount: 3, assignments: [partition:{} leader_broker:"localhost:1" follower_broker:"localhost:1"] hasChanges: true
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
ok  	github.com/seaweedfs/seaweedfs/weed/mq/pub_balancer	0.015s
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
ok  	github.com/seaweedfs/seaweedfs/weed/mq/schema	0.010s
=== RUN   TestMessageSerde
serialized size 368
--- PASS: TestMessageSerde (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/mq/segment	0.006s
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
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14016447231845511572 ext:510227246 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14016447231845514467 ext:510230142 loc:0x15957e0}}
--- PASS: TestAddConsumerInstance (1.00s)
=== RUN   TestMultipleConsumerInstances
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14016447232919386279 ext:1510360153 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:1 RangeStop:2 RingSize:3 UnixTimeNs:0} consumer:second ts:{wall:14016447232919390071 ext:1510363924 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:third ts:{wall:14016447232919391179 ext:1510365032 loc:0x15957e0}}
--- PASS: TestMultipleConsumerInstances (1.00s)
=== RUN   TestConfirmAdjustment
&{isAssign:true partition:{RangeStart:0 RangeStop:1 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14016447233994381790 ext:2511613819 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:1 RangeStop:2 RingSize:3 UnixTimeNs:0} consumer:second ts:{wall:14016447233994389080 ext:2511621109 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:third ts:{wall:14016447233994390142 ext:2511622172 loc:0x15957e0}}
&{isAssign:true partition:{RangeStart:2 RangeStop:3 RingSize:3 UnixTimeNs:0} consumer:first ts:{wall:14016447236142114406 ext:4511862785 loc:0x15957e0}}
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
W0616 11:58:52.490723 upload_content.go:190 uploading 0 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain; charset=utf-8 Compressed:true, originalSize: 1422
W0616 11:58:52.965468 upload_content.go:190 uploading 1 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain; charset=utf-8 Compressed:true, originalSize: 1422
W0616 11:58:53.676672 upload_content.go:190 uploading 2 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
err: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
uploadResult: <nil>
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0616 11:58:53.676781 upload_content.go:190 uploading 0 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0616 11:58:54.151482 upload_content.go:190 uploading 1 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
needle: 0f084d17353afda0 Size:0, DataSize:0, Name:t.txt, Mime:text/plain Compressed:true, dataSize:803 originalSize:1422
W0616 11:58:54.863420 upload_content.go:190 uploading 2 to http://localhost:8080/389,0f084d17353afda0: upload t.txt 803 bytes to http://localhost:8080/389,0f084d17353afda0: EOF
--- PASS: TestCreateNeedleFromRequest (2.38s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/operation	4.384s
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
ok  	github.com/seaweedfs/seaweedfs/weed/pb	0.007s
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
W0616 11:58:50.498148 bucket_metadata.go:105 Invalid ownership: , bucket: ownershipEmptyStr
W0616 11:58:50.536038 bucket_metadata.go:116 owner[id=xxxxx] is invalid, bucket: acpEmptyObject
--- PASS: TestBuildBucketMetadata (0.04s)
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
W0616 11:58:51.537252 s3api_acl_helper.go:292 invalid canonical grantee! account id[notExistsAccount] is not exists
W0616 11:58:51.537260 s3api_acl_helper.go:281 invalid group grantee! group name[http:sfasf] is not valid
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
<CopyObjectResult><LastModified>2026-06-16T11:58:51.540826839Z</LastModified><ETag>12345678</ETag></CopyObjectResult>
--- PASS: TestCopyObjectResponse (0.00s)
=== RUN   TestCopyPartResponse
<?xml version="1.0" encoding="UTF-8"?>
<CopyPartResult><LastModified>2026-06-16T11:58:51.540853831Z</LastModified><ETag>12345678</ETag></CopyPartResult>
--- PASS: TestCopyPartResponse (0.00s)
=== RUN   TestXMLUnmarshall
--- PASS: TestXMLUnmarshall (0.00s)
=== RUN   TestXMLMarshall
--- PASS: TestXMLMarshall (0.00s)
=== RUN   TestValidateTags
--- PASS: TestValidateTags (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api	1.064s
=== RUN   TestPostPolicyForm
--- PASS: TestPostPolicyForm (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api/policy	0.010s
?   	github.com/seaweedfs/seaweedfs/weed/s3api/s3_constants	[no test files]
=== RUN   Test_verifyBucketName
--- PASS: Test_verifyBucketName (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/s3api/s3bucket	0.003s
?   	github.com/seaweedfs/seaweedfs/weed/s3api/s3err	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/security	[no test files]
=== RUN   TestSequencer
I0616 11:58:50.486204 snowflake_sequencer.go:21 use snowflake seq id generator, nodeid:for_test hex_of_nodeid: 1
1caeefdaad401000
1caeefdaad401001
1caeefdaad401002
1caeefdaad401003
1caeefdaad401004
1caeefdaad401005
1caeefdaad401006
1caeefdaad401007
1caeefdaad401008
1caeefdaad401009
1caeefdaad40100a
1caeefdaad40100b
1caeefdaad40100c
1caeefdaad40100d
1caeefdaad40100e
1caeefdaad40100f
1caeefdaad401010
1caeefdaad401011
1caeefdaad401012
1caeefdaad401013
1caeefdaad401014
1caeefdaad401015
1caeefdaad401016
1caeefdaad401017
1caeefdaad401018
1caeefdaad401019
1caeefdaad40101a
1caeefdaad40101b
1caeefdaad40101c
1caeefdaad40101d
1caeefdaad40101e
1caeefdaad40101f
1caeefdaad401020
1caeefdaad401021
1caeefdaad401022
1caeefdaad401023
1caeefdaad401024
1caeefdaad401025
1caeefdaad401026
1caeefdaad401027
1caeefdaad401028
1caeefdaad401029
1caeefdaad40102a
1caeefdaad40102b
1caeefdaad40102c
1caeefdaad40102d
1caeefdaad40102e
1caeefdaad40102f
1caeefdaad401030
1caeefdaad401031
1caeefdaad401032
1caeefdaad401033
1caeefdaad401034
1caeefdaad401035
1caeefdaad401036
1caeefdaad401037
1caeefdaad401038
1caeefdaad401039
1caeefdaad40103a
1caeefdaad40103b
1caeefdaad40103c
1caeefdaad40103d
1caeefdaad40103e
1caeefdaad40103f
1caeefdaad401040
1caeefdaad401041
1caeefdaad401042
1caeefdaad401043
1caeefdaad401044
1caeefdaad401045
1caeefdaad401046
1caeefdaad401047
1caeefdaad401048
1caeefdaad401049
1caeefdaad40104a
1caeefdaad40104b
1caeefdaad40104c
1caeefdaad40104d
1caeefdaad40104e
1caeefdaad40104f
1caeefdaad401050
1caeefdaad401051
1caeefdaad401052
1caeefdaad401053
1caeefdaad401054
1caeefdaad401055
1caeefdaad401056
1caeefdaad401057
1caeefdaad401058
1caeefdaad401059
1caeefdaad40105a
1caeefdaad40105b
1caeefdaad40105c
1caeefdaad40105d
1caeefdaad40105e
1caeefdaad40105f
1caeefdaad401060
1caeefdaad401061
1caeefdaad401062
1caeefdaad401063
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
dn1 moves ec shard 1.5 to dn2
dn1 moves ec shard 1.6 to dn2
dn1 moves ec shard 1.0 to dn2
dn1 moves ec shard 1.1 to dn2
dn1 moves ec shard 1.2 to dn2
dn1 moves ec shard 1.3 to dn2
dn1 moves ec shard 1.4 to dn2
dn2 moves ec shard 2.0 to dn1
dn2 moves ec shard 2.1 to dn1
dn2 moves ec shard 2.2 to dn1
dn2 moves ec shard 2.3 to dn1
dn2 moves ec shard 2.4 to dn1
dn2 moves ec shard 2.5 to dn1
dn2 moves ec shard 2.6 to dn1
--- PASS: TestCommandEcBalanceSmall (0.00s)
=== RUN   TestCommandEcBalanceNothingToMove
balanceEcVolumes c1
--- PASS: TestCommandEcBalanceNothingToMove (0.00s)
=== RUN   TestCommandEcBalanceAddNewServers
balanceEcVolumes c1
--- PASS: TestCommandEcBalanceAddNewServers (0.00s)
=== RUN   TestCommandEcBalanceAddNewRacks
balanceEcVolumes c1
dn2 moves ec shard 1.7 to dn4
dn2 moves ec shard 1.8 to dn3
dn1 moves ec shard 1.1 to dn3
dn1 moves ec shard 1.2 to dn4
dn2 moves ec shard 1.9 to dn3
dn2 moves ec shard 1.10 to dn4
dn1 moves ec shard 1.0 to dn3
dn2 moves ec shard 2.0 to dn4
dn2 moves ec shard 2.1 to dn3
dn1 moves ec shard 2.8 to dn3
dn1 moves ec shard 2.9 to dn4
dn2 moves ec shard 2.2 to dn4
dn2 moves ec shard 2.3 to dn3
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
ok  	github.com/seaweedfs/seaweedfs/weed/shell	0.187s
=== RUN   TestRobinCounter
--- PASS: TestRobinCounter (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/stats	0.006s
=== RUN   TestUnUsedSpace
--- PASS: TestUnUsedSpace (0.00s)
=== RUN   TestFirstInvalidIndex
I0616 11:58:50.492185 volume_loading.go:139 checking volume data integrity for volume 1
I0616 11:58:50.508976 volume_loading.go:157 loading memory index /tmp/TestFirstInvalidIndex4116575143/001/1.idx to memory
--- PASS: TestFirstInvalidIndex (0.07s)
=== RUN   TestFastLoadingNeedleMapMetrics
I0616 11:58:50.572176 needle_map_metric_test.go:26 FileCount expected 10000 actual 12027
I0616 11:58:50.572200 needle_map_metric_test.go:27 DeletedSize expected 1713 actual 1757
I0616 11:58:50.572203 needle_map_metric_test.go:28 ContentSize expected 10000 actual 10000
I0616 11:58:50.572206 needle_map_metric_test.go:29 DeletedCount expected 1713 actual 3784
I0616 11:58:50.572209 needle_map_metric_test.go:30 MaxFileKey expected 10000 actual 10000
--- PASS: TestFastLoadingNeedleMapMetrics (0.01s)
=== RUN   TestBinarySearch
--- PASS: TestBinarySearch (0.00s)
=== RUN   TestSortVolumeInfos
--- PASS: TestSortVolumeInfos (0.00s)
=== RUN   TestReadNeedMetaWithWritesAndUpdates
I0616 11:58:50.572532 volume_loading.go:139 checking volume data integrity for volume 1
I0616 11:58:50.572543 volume_loading.go:157 loading memory index /tmp/TestReadNeedMetaWithWritesAndUpdates3493481951/001/1.idx to memory
--- PASS: TestReadNeedMetaWithWritesAndUpdates (0.04s)
=== RUN   TestReadNeedMetaWithDeletesThenWrites
I0616 11:58:50.612895 volume_loading.go:139 checking volume data integrity for volume 1
I0616 11:58:50.612909 volume_loading.go:157 loading memory index /tmp/TestReadNeedMetaWithDeletesThenWrites443606210/001/1.idx to memory
--- PASS: TestReadNeedMetaWithDeletesThenWrites (0.03s)
=== RUN   TestMakeDiff
--- PASS: TestMakeDiff (0.00s)
=== RUN   TestMemIndexCompaction
I0616 11:58:50.640371 volume_loading.go:139 checking volume data integrity for volume 1
I0616 11:58:50.640383 volume_loading.go:157 loading memory index /tmp/TestMemIndexCompaction2144863182/001/1.idx to memory
I0616 11:58:50.856307 needle_map_memory.go:111 loading idx from offset 0 for file: /tmp/TestMemIndexCompaction2144863182/001/1.cpx
    volume_vacuum_test.go:92: compaction speed: 26412119.36 bytes/s
I0616 11:58:50.990257 volume_vacuum.go:114 Committing volume 1 vacuuming...
I0616 12:00:01.922070 needle_map_memory.go:111 loading idx from offset 9723 for file: /tmp/TestMemIndexCompaction2144863182/001/1.cpx
I0616 12:00:01.962000 volume_loading.go:98 readSuperBlock volume 1 version 3
I0616 12:00:01.962021 volume_loading.go:139 checking volume data integrity for volume 1
I0616 12:00:01.962035 volume_loading.go:154 updating memory compact index /tmp/TestMemIndexCompaction2144863182/001/1.idx 
    volume_vacuum_test.go:110: realRecordCount:29723, v.FileCount():29723 mm.DeletedCount():9860
I0616 12:00:01.971600 volume_loading.go:98 readSuperBlock volume 1 version 3
I0616 12:00:01.971611 volume_loading.go:139 checking volume data integrity for volume 1
I0616 12:00:01.971621 volume_loading.go:157 loading memory index /tmp/TestMemIndexCompaction2144863182/001/1.idx to memory
--- PASS: TestMemIndexCompaction (71.38s)
=== RUN   TestLDBIndexCompaction
I0616 12:00:02.022703 volume_loading.go:139 checking volume data integrity for volume 1
I0616 12:00:02.022716 volume_loading.go:172 loading leveldb index /tmp/TestLDBIndexCompaction1499778649/001/1.ldb
I0616 12:00:02.105900 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestLDBIndexCompaction1499778649/001/1.ldb, watermark 0, num of entries:0
I0616 12:00:02.381296 needle_map_leveldb.go:66 Loading /tmp/TestLDBIndexCompaction1499778649/001/1.ldb... , watermark: 0
I0616 12:00:02.730617 needle_map_leveldb.go:338 loading idx to leveldb from offset 0 for file: /tmp/TestLDBIndexCompaction1499778649/001/1.cpx
    volume_vacuum_test.go:92: compaction speed: 13515790.83 bytes/s
I0616 12:00:03.143775 volume_vacuum.go:114 Committing volume 1 vacuuming...
I0616 12:00:50.878292 needle_map_leveldb.go:338 loading idx to leveldb from offset 9722 for file: /tmp/TestLDBIndexCompaction1499778649/001/1.cpx
I0616 12:00:50.963290 volume_loading.go:98 readSuperBlock volume 1 version 3
I0616 12:00:50.963313 volume_loading.go:139 checking volume data integrity for volume 1
I0616 12:00:50.963326 volume_loading.go:169 updating leveldb index /tmp/TestLDBIndexCompaction1499778649/001/1.ldb
    volume_vacuum_test.go:105: watermark from levelDB: 20000, realWatermark: 20000, nm.recordCount: 29722, realRecordCount:29722, fileCount=29722, deletedcount:9713
I0616 12:00:50.986454 volume_loading.go:98 readSuperBlock volume 1 version 3
I0616 12:00:50.986473 volume_loading.go:139 checking volume data integrity for volume 1
I0616 12:00:50.986488 volume_loading.go:172 loading leveldb index /tmp/TestLDBIndexCompaction1499778649/001/1.ldb
I0616 12:00:50.994619 needle_map_leveldb.go:66 Loading /tmp/TestLDBIndexCompaction1499778649/001/1.ldb... , watermark: 20000
--- PASS: TestLDBIndexCompaction (49.03s)
=== RUN   TestSearchVolumesWithDeletedNeedles
I0616 12:00:51.056920 volume_loading.go:139 checking volume data integrity for volume 1
I0616 12:00:51.056935 volume_loading.go:157 loading memory index /tmp/TestSearchVolumesWithDeletedNeedles3206069583/001/1.idx to memory
offset: 11240, isLast: false
--- PASS: TestSearchVolumesWithDeletedNeedles (0.00s)
=== RUN   TestDestroyEmptyVolumeWithOnlyEmpty
I0616 12:00:51.059716 volume_loading.go:139 checking volume data integrity for volume 1
I0616 12:00:51.059726 volume_loading.go:157 loading memory index /tmp/TestDestroyEmptyVolumeWithOnlyEmpty496074673/001/1.idx to memory
--- PASS: TestDestroyEmptyVolumeWithOnlyEmpty (0.00s)
=== RUN   TestDestroyEmptyVolumeWithoutOnlyEmpty
I0616 12:00:51.063935 volume_loading.go:139 checking volume data integrity for volume 1
I0616 12:00:51.063944 volume_loading.go:157 loading memory index /tmp/TestDestroyEmptyVolumeWithoutOnlyEmpty599818739/001/1.idx to memory
--- PASS: TestDestroyEmptyVolumeWithoutOnlyEmpty (0.00s)
=== RUN   TestDestroyNonemptyVolumeWithOnlyEmpty
I0616 12:00:51.068263 volume_loading.go:139 checking volume data integrity for volume 1
I0616 12:00:51.068271 volume_loading.go:157 loading memory index /tmp/TestDestroyNonemptyVolumeWithOnlyEmpty1955667106/001/1.idx to memory
--- PASS: TestDestroyNonemptyVolumeWithOnlyEmpty (0.00s)
=== RUN   TestDestroyNonemptyVolumeWithoutOnlyEmpty
I0616 12:00:51.070505 volume_loading.go:139 checking volume data integrity for volume 1
I0616 12:00:51.070513 volume_loading.go:157 loading memory index /tmp/TestDestroyNonemptyVolumeWithoutOnlyEmpty925519117/001/1.idx to memory
--- PASS: TestDestroyNonemptyVolumeWithoutOnlyEmpty (0.01s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage	120.602s
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend	[no test files]
=== RUN   TestMemoryMapMaxSizeReadWrite
--- PASS: TestMemoryMapMaxSizeReadWrite (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage/backend/memory_map	0.002s
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend/rclone_backend	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/storage/backend/s3_backend	[no test files]
=== RUN   TestEncodingDecoding
I0616 11:58:50.491523 ec_encoder.go:81 encodeDatFile 1.dat size:2590912
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
ok  	github.com/seaweedfs/seaweedfs/weed/storage/erasure_coding	0.102s
?   	github.com/seaweedfs/seaweedfs/weed/storage/idx	[no test files]
=== RUN   TestParseFileIdFromString
--- PASS: TestParseFileIdFromString (0.00s)
=== RUN   TestParseKeyHash
--- PASS: TestParseKeyHash (0.00s)
=== RUN   TestAppend
--- PASS: TestAppend (0.06s)
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
ok  	github.com/seaweedfs/seaweedfs/weed/storage/needle	0.067s
=== RUN   TestMemoryUsage
Each 16.15 Bytes	Alloc = 19 MiB	TotalAlloc = 26 MiB	Sys = 40 MiB	NumGC = 5	Taken = 1.101719505s
Each 15.61 Bytes	Alloc = 38 MiB	TotalAlloc = 50 MiB	Sys = 56 MiB	NumGC = 7	Taken = 890.753725ms
Each 15.43 Bytes	Alloc = 56 MiB	TotalAlloc = 74 MiB	Sys = 76 MiB	NumGC = 8	Taken = 888.296457ms
Each 15.34 Bytes	Alloc = 74 MiB	TotalAlloc = 99 MiB	Sys = 97 MiB	NumGC = 9	Taken = 887.91083ms
Each 15.28 Bytes	Alloc = 93 MiB	TotalAlloc = 123 MiB	Sys = 113 MiB	NumGC = 10	Taken = 885.03101ms
Each 15.24 Bytes	Alloc = 111 MiB	TotalAlloc = 147 MiB	Sys = 133 MiB	NumGC = 11	Taken = 887.55031ms
Each 15.22 Bytes	Alloc = 129 MiB	TotalAlloc = 172 MiB	Sys = 153 MiB	NumGC = 12	Taken = 895.345498ms
Each 15.20 Bytes	Alloc = 148 MiB	TotalAlloc = 196 MiB	Sys = 169 MiB	NumGC = 13	Taken = 889.44623ms
Each 15.18 Bytes	Alloc = 166 MiB	TotalAlloc = 221 MiB	Sys = 189 MiB	NumGC = 14	Taken = 890.729834ms
Each 15.17 Bytes	Alloc = 185 MiB	TotalAlloc = 245 MiB	Sys = 209 MiB	NumGC = 15	Taken = 901.494459ms
--- PASS: TestMemoryUsage (9.12s)
=== RUN   TestSnowflakeSequencer
I0616 11:58:59.605313 snowflake_sequencer.go:21 use snowflake seq id generator, nodeid:for_test hex_of_nodeid: 1
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
--- PASS: TestCompactSection_Get (0.90s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/storage/needle_map	10.189s
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
ok  	github.com/seaweedfs/seaweedfs/weed/storage/super_block	0.007s
?   	github.com/seaweedfs/seaweedfs/weed/storage/types	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/storage/volume_info	[no test files]
=== RUN   TestRemoveDataCenter
data: map[dc1:map[rack1:map[server111:map[limit:3 volumes:[map[id:1 size:12312] map[id:2 size:12312] map[id:3 size:12312]]] server112:map[limit:10 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]]] rack2:map[server121:map[limit:4 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server122:map[limit:4 volumes:[]] server123:map[limit:5 volumes:[map[id:2 size:12312] map[id:3 size:12312] map[id:4 size:12312]]]]] dc2:map[] dc3:map[rack2:map[server321:map[limit:4 volumes:[map[id:1 size:12312] map[id:3 size:12312] map[id:5 size:12312]]]]]]
I0616 11:58:50.493019 node.go:250 weedfs adds child dc1
I0616 11:58:50.509471 node.go:250 weedfs:dc1 adds child rack1
I0616 11:58:50.509485 node.go:250 weedfs:dc1:rack1 adds child server112
I0616 11:58:50.509492 node.go:250 weedfs:dc1:rack1:server112 adds child 
I0616 11:58:50.509501 node.go:250 weedfs:dc1:rack1 adds child server111
I0616 11:58:50.509506 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0616 11:58:50.509511 node.go:250 weedfs:dc1 adds child rack2
I0616 11:58:50.509513 node.go:250 weedfs:dc1:rack2 adds child server122
I0616 11:58:50.509515 node.go:250 weedfs:dc1:rack2:server122 adds child 
I0616 11:58:50.509518 node.go:250 weedfs:dc1:rack2 adds child server123
I0616 11:58:50.509520 node.go:250 weedfs:dc1:rack2:server123 adds child 
I0616 11:58:50.509525 node.go:250 weedfs:dc1:rack2 adds child server121
I0616 11:58:50.509527 node.go:250 weedfs:dc1:rack2:server121 adds child 
I0616 11:58:50.509532 node.go:250 weedfs adds child dc2
I0616 11:58:50.509536 node.go:250 weedfs adds child dc3
I0616 11:58:50.509538 node.go:250 weedfs:dc3 adds child rack2
I0616 11:58:50.509540 node.go:250 weedfs:dc3:rack2 adds child server321
I0616 11:58:50.509543 node.go:250 weedfs:dc3:rack2:server321 adds child 
I0616 11:58:50.509549 node.go:264 weedfs removes dc2
I0616 11:58:50.509554 node.go:264 weedfs removes dc3
--- PASS: TestRemoveDataCenter (0.02s)
=== RUN   TestHandlingVolumeServerHeartbeat
I0616 11:58:50.509597 node.go:250 weedfs adds child dc1
I0616 11:58:50.509602 node.go:250 weedfs:dc1 adds child rack1
I0616 11:58:50.509605 node.go:250 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0616 11:58:50.509609 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child 
I0616 11:58:50.509612 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child ssd
I0616 11:58:50.509656 volume_layout.go:417 Volume 1 becomes writable
I0616 11:58:50.509672 volume_layout.go:417 Volume 2 becomes writable
I0616 11:58:50.509675 volume_layout.go:417 Volume 3 becomes writable
I0616 11:58:50.509677 volume_layout.go:417 Volume 4 becomes writable
I0616 11:58:50.509679 volume_layout.go:417 Volume 5 becomes writable
I0616 11:58:50.509702 volume_layout.go:417 Volume 6 becomes writable
I0616 11:58:50.509707 volume_layout.go:417 Volume 7 becomes writable
I0616 11:58:50.509709 volume_layout.go:417 Volume 8 becomes writable
I0616 11:58:50.509712 volume_layout.go:417 Volume 9 becomes writable
I0616 11:58:50.509714 volume_layout.go:417 Volume 10 becomes writable
I0616 11:58:50.509716 volume_layout.go:417 Volume 11 becomes writable
I0616 11:58:50.509718 volume_layout.go:417 Volume 12 becomes writable
I0616 11:58:50.509720 volume_layout.go:417 Volume 13 becomes writable
I0616 11:58:50.509722 volume_layout.go:417 Volume 14 becomes writable
I0616 11:58:50.509729 data_node.go:81 Deleting volume id: 7
I0616 11:58:50.509737 data_node.go:81 Deleting volume id: 14
I0616 11:58:50.509741 data_node.go:81 Deleting volume id: 8
I0616 11:58:50.509744 data_node.go:81 Deleting volume id: 9
I0616 11:58:50.509745 data_node.go:81 Deleting volume id: 10
I0616 11:58:50.509750 data_node.go:81 Deleting volume id: 11
I0616 11:58:50.509752 data_node.go:81 Deleting volume id: 12
I0616 11:58:50.509754 data_node.go:81 Deleting volume id: 13
I0616 11:58:50.509758 topology.go:323 removing volume info: Id:7, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:58:50.509794 volume_layout.go:229 volume 7 does not have enough copies
I0616 11:58:50.509797 volume_layout.go:237 volume 7 remove from writable
I0616 11:58:50.509799 volume_layout.go:405 Volume 7 becomes unwritable
I0616 11:58:50.509802 topology.go:323 removing volume info: Id:14, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:58:50.509806 volume_layout.go:229 volume 14 does not have enough copies
I0616 11:58:50.509808 volume_layout.go:237 volume 14 remove from writable
I0616 11:58:50.509809 volume_layout.go:405 Volume 14 becomes unwritable
I0616 11:58:50.509811 topology.go:323 removing volume info: Id:8, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:58:50.509815 volume_layout.go:229 volume 8 does not have enough copies
I0616 11:58:50.509817 volume_layout.go:237 volume 8 remove from writable
I0616 11:58:50.509818 volume_layout.go:405 Volume 8 becomes unwritable
I0616 11:58:50.509820 topology.go:323 removing volume info: Id:9, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:58:50.509823 volume_layout.go:229 volume 9 does not have enough copies
I0616 11:58:50.509825 volume_layout.go:237 volume 9 remove from writable
I0616 11:58:50.509827 volume_layout.go:405 Volume 9 becomes unwritable
I0616 11:58:50.509833 topology.go:323 removing volume info: Id:10, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:58:50.509839 volume_layout.go:229 volume 10 does not have enough copies
I0616 11:58:50.509841 volume_layout.go:237 volume 10 remove from writable
I0616 11:58:50.509842 volume_layout.go:405 Volume 10 becomes unwritable
I0616 11:58:50.509844 topology.go:323 removing volume info: Id:11, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:58:50.509847 volume_layout.go:229 volume 11 does not have enough copies
I0616 11:58:50.509848 volume_layout.go:237 volume 11 remove from writable
I0616 11:58:50.509850 volume_layout.go:405 Volume 11 becomes unwritable
I0616 11:58:50.509852 topology.go:323 removing volume info: Id:12, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:58:50.509855 volume_layout.go:229 volume 12 does not have enough copies
I0616 11:58:50.509856 volume_layout.go:237 volume 12 remove from writable
I0616 11:58:50.509858 volume_layout.go:405 Volume 12 becomes unwritable
I0616 11:58:50.509860 topology.go:323 removing volume info: Id:13, Size:25432, ReplicaPlacement:000, Collection:, Version:3, FileCount:2343, DeleteCount:345, DeletedByteCount:34524, ReadOnly:false from 127.0.0.1:34534
I0616 11:58:50.509862 volume_layout.go:229 volume 13 does not have enough copies
I0616 11:58:50.509864 volume_layout.go:237 volume 13 remove from writable
I0616 11:58:50.509866 volume_layout.go:405 Volume 13 becomes unwritable
I0616 11:58:50.509871 topology.go:323 removing volume info: Id:3, Size:0, ReplicaPlacement:000, Collection:, Version:3, FileCount:0, DeleteCount:0, DeletedByteCount:0, ReadOnly:false from 127.0.0.1:34534
I0616 11:58:50.509877 volume_layout.go:229 volume 3 does not have enough copies
I0616 11:58:50.509879 volume_layout.go:237 volume 3 remove from writable
I0616 11:58:50.509881 volume_layout.go:405 Volume 3 becomes unwritable
I0616 11:58:50.509884 volume_layout.go:417 Volume 3 becomes writable
after add volume id 5
after add volume id 6
after add volume id 1
after add volume id 2
after add volume id 3
after add volume id 4
after add writable volume id 1
after add writable volume id 2
after add writable volume id 4
after add writable volume id 5
after add writable volume id 6
after add writable volume id 3
I0616 11:58:50.509917 topology_event_handling.go:86 Removing Volume 1 from the dead volume server 127.0.0.1:34534
I0616 11:58:50.509923 volume_layout.go:456 Volume 1 has 0 replica, less than required 1
I0616 11:58:50.509925 volume_layout.go:405 Volume 1 becomes unwritable
I0616 11:58:50.509926 topology_event_handling.go:86 Removing Volume 2 from the dead volume server 127.0.0.1:34534
I0616 11:58:50.509929 volume_layout.go:456 Volume 2 has 0 replica, less than required 1
I0616 11:58:50.509930 volume_layout.go:405 Volume 2 becomes unwritable
I0616 11:58:50.509932 topology_event_handling.go:86 Removing Volume 3 from the dead volume server 127.0.0.1:34534
I0616 11:58:50.509934 volume_layout.go:456 Volume 3 has 0 replica, less than required 1
I0616 11:58:50.509936 volume_layout.go:405 Volume 3 becomes unwritable
I0616 11:58:50.509938 topology_event_handling.go:86 Removing Volume 4 from the dead volume server 127.0.0.1:34534
I0616 11:58:50.509940 volume_layout.go:456 Volume 4 has 0 replica, less than required 1
I0616 11:58:50.509942 volume_layout.go:405 Volume 4 becomes unwritable
I0616 11:58:50.509946 topology_event_handling.go:86 Removing Volume 5 from the dead volume server 127.0.0.1:34534
I0616 11:58:50.509948 volume_layout.go:456 Volume 5 has 0 replica, less than required 1
I0616 11:58:50.509950 volume_layout.go:405 Volume 5 becomes unwritable
I0616 11:58:50.509951 topology_event_handling.go:86 Removing Volume 6 from the dead volume server 127.0.0.1:34534
I0616 11:58:50.509954 volume_layout.go:456 Volume 6 has 0 replica, less than required 1
I0616 11:58:50.509955 volume_layout.go:405 Volume 6 becomes unwritable
I0616 11:58:50.509964 node.go:264 weedfs:dc1:rack1 removes 127.0.0.1:34534
--- PASS: TestHandlingVolumeServerHeartbeat (0.00s)
=== RUN   TestAddRemoveVolume
I0616 11:58:50.509983 node.go:250 weedfs adds child dc1
I0616 11:58:50.509985 node.go:250 weedfs:dc1 adds child rack1
I0616 11:58:50.509987 node.go:250 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0616 11:58:50.509993 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child ssd
I0616 11:58:50.509998 node.go:250 weedfs:dc1:rack1:127.0.0.1:34534 adds child 
I0616 11:58:50.510008 volume_layout.go:417 Volume 1 becomes writable
I0616 11:58:50.510013 topology.go:323 removing volume info: Id:1, Size:100, ReplicaPlacement:000, Collection:xcollection, Version:3, FileCount:123, DeleteCount:23, DeletedByteCount:45, ReadOnly:false from 127.0.0.1:34534
I0616 11:58:50.510016 volume_layout.go:229 volume 1 does not have enough copies
I0616 11:58:50.510018 volume_layout.go:237 volume 1 remove from writable
I0616 11:58:50.510020 volume_layout.go:405 Volume 1 becomes unwritable
--- PASS: TestAddRemoveVolume (0.00s)
=== RUN   TestListCollections
I0616 11:58:50.510029 node.go:250 weedfs adds child dc1
I0616 11:58:50.510034 node.go:250 weedfs:dc1 adds child rack1
I0616 11:58:50.510037 node.go:250 weedfs:dc1:rack1 adds child 127.0.0.1:34534
I0616 11:58:50.510046 volume_layout.go:229 volume 1111 does not have enough copies
I0616 11:58:50.510051 volume_layout.go:237 volume 1111 remove from writable
I0616 11:58:50.510054 volume_layout.go:229 volume 2222 does not have enough copies
I0616 11:58:50.510056 volume_layout.go:237 volume 2222 remove from writable
I0616 11:58:50.510059 volume_layout.go:229 volume 3333 does not have enough copies
I0616 11:58:50.510061 volume_layout.go:237 volume 3333 remove from writable
=== RUN   TestListCollections/no_volume_types_selected
=== RUN   TestListCollections/normal_volumes
    topology_test.go:280: got [vol_collection_a vol_collection_b ], want [ vol_collection_a vol_collection_b]
=== RUN   TestListCollections/EC_volumes
=== RUN   TestListCollections/normal_+_EC_volumes
    topology_test.go:280: got [ec_collection_b  vol_collection_a vol_collection_b ec_collection_a], want [ ec_collection_a ec_collection_b vol_collection_a vol_collection_b]
--- FAIL: TestListCollections (0.00s)
    --- PASS: TestListCollections/no_volume_types_selected (0.00s)
    --- FAIL: TestListCollections/normal_volumes (0.00s)
    --- PASS: TestListCollections/EC_volumes (0.00s)
    --- FAIL: TestListCollections/normal_+_EC_volumes (0.00s)
=== RUN   TestFindEmptySlotsForOneVolume
data: map[dc1:map[rack1:map[server111:map[limit:3 volumes:[map[id:1 size:12312] map[id:2 size:12312] map[id:3 size:12312]]] server112:map[limit:10 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]]] rack2:map[server121:map[limit:4 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server122:map[limit:4 volumes:[]] server123:map[limit:5 volumes:[map[id:2 size:12312] map[id:3 size:12312] map[id:4 size:12312]]]]] dc2:map[] dc3:map[rack2:map[server321:map[limit:4 volumes:[map[id:1 size:12312] map[id:3 size:12312] map[id:5 size:12312]]]]]]
I0616 11:58:50.510210 node.go:250 weedfs adds child dc1
I0616 11:58:50.510212 node.go:250 weedfs:dc1 adds child rack1
I0616 11:58:50.510214 node.go:250 weedfs:dc1:rack1 adds child server112
I0616 11:58:50.510216 node.go:250 weedfs:dc1:rack1:server112 adds child 
I0616 11:58:50.510221 node.go:250 weedfs:dc1:rack1 adds child server111
I0616 11:58:50.510225 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0616 11:58:50.510230 node.go:250 weedfs:dc1 adds child rack2
I0616 11:58:50.510234 node.go:250 weedfs:dc1:rack2 adds child server121
I0616 11:58:50.510236 node.go:250 weedfs:dc1:rack2:server121 adds child 
I0616 11:58:50.510241 node.go:250 weedfs:dc1:rack2 adds child server122
I0616 11:58:50.510246 node.go:250 weedfs:dc1:rack2:server122 adds child 
I0616 11:58:50.510249 node.go:250 weedfs:dc1:rack2 adds child server123
I0616 11:58:50.510251 node.go:250 weedfs:dc1:rack2:server123 adds child 
I0616 11:58:50.510255 node.go:250 weedfs adds child dc2
I0616 11:58:50.510259 node.go:250 weedfs adds child dc3
I0616 11:58:50.510261 node.go:250 weedfs:dc3 adds child rack2
I0616 11:58:50.510263 node.go:250 weedfs:dc3:rack2 adds child server321
I0616 11:58:50.510268 node.go:250 weedfs:dc3:rack2:server321 adds child 
assigned node : server122
assigned node : server121
assigned node : server123
--- PASS: TestFindEmptySlotsForOneVolume (0.00s)
=== RUN   TestReplication011
data: map[dc1:map[rack1:map[server111:map[limit:300 volumes:[map[id:1 size:12312] map[id:2 size:12312] map[id:3 size:12312]]] server112:map[limit:300 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server113:map[limit:300 volumes:[]] server114:map[limit:300 volumes:[]] server115:map[limit:300 volumes:[]] server116:map[limit:300 volumes:[]]] rack2:map[server121:map[limit:300 volumes:[map[id:4 size:12312] map[id:5 size:12312] map[id:6 size:12312]]] server122:map[limit:300 volumes:[]] server123:map[limit:300 volumes:[map[id:2 size:12312] map[id:3 size:12312] map[id:4 size:12312]]] server124:map[limit:300 volumes:[]] server125:map[limit:300 volumes:[]] server126:map[limit:300 volumes:[]]] rack3:map[server131:map[limit:300 volumes:[]] server132:map[limit:300 volumes:[]] server133:map[limit:300 volumes:[]] server134:map[limit:300 volumes:[]] server135:map[limit:300 volumes:[]] server136:map[limit:300 volumes:[]]]]]
I0616 11:58:50.510354 node.go:250 weedfs adds child dc1
I0616 11:58:50.510356 node.go:250 weedfs:dc1 adds child rack1
I0616 11:58:50.510358 node.go:250 weedfs:dc1:rack1 adds child server114
I0616 11:58:50.510361 node.go:250 weedfs:dc1:rack1:server114 adds child 
I0616 11:58:50.510364 node.go:250 weedfs:dc1:rack1 adds child server115
I0616 11:58:50.510366 node.go:250 weedfs:dc1:rack1:server115 adds child 
I0616 11:58:50.510368 node.go:250 weedfs:dc1:rack1 adds child server116
I0616 11:58:50.510370 node.go:250 weedfs:dc1:rack1:server116 adds child 
I0616 11:58:50.510373 node.go:250 weedfs:dc1:rack1 adds child server111
I0616 11:58:50.510380 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0616 11:58:50.510406 node.go:250 weedfs:dc1:rack1 adds child server112
I0616 11:58:50.510410 node.go:250 weedfs:dc1:rack1:server112 adds child 
I0616 11:58:50.510416 node.go:250 weedfs:dc1:rack1 adds child server113
I0616 11:58:50.510420 node.go:250 weedfs:dc1:rack1:server113 adds child 
I0616 11:58:50.510423 node.go:250 weedfs:dc1 adds child rack2
I0616 11:58:50.510425 node.go:250 weedfs:dc1:rack2 adds child server122
I0616 11:58:50.510427 node.go:250 weedfs:dc1:rack2:server122 adds child 
I0616 11:58:50.510430 node.go:250 weedfs:dc1:rack2 adds child server123
I0616 11:58:50.510433 node.go:250 weedfs:dc1:rack2:server123 adds child 
I0616 11:58:50.510449 node.go:250 weedfs:dc1:rack2 adds child server124
I0616 11:58:50.510454 node.go:250 weedfs:dc1:rack2:server124 adds child 
I0616 11:58:50.510456 node.go:250 weedfs:dc1:rack2 adds child server125
I0616 11:58:50.510458 node.go:250 weedfs:dc1:rack2:server125 adds child 
I0616 11:58:50.510461 node.go:250 weedfs:dc1:rack2 adds child server126
I0616 11:58:50.510463 node.go:250 weedfs:dc1:rack2:server126 adds child 
I0616 11:58:50.510466 node.go:250 weedfs:dc1:rack2 adds child server121
I0616 11:58:50.510468 node.go:250 weedfs:dc1:rack2:server121 adds child 
I0616 11:58:50.510474 node.go:250 weedfs:dc1 adds child rack3
I0616 11:58:50.510476 node.go:250 weedfs:dc1:rack3 adds child server131
I0616 11:58:50.510478 node.go:250 weedfs:dc1:rack3:server131 adds child 
I0616 11:58:50.510481 node.go:250 weedfs:dc1:rack3 adds child server132
I0616 11:58:50.510483 node.go:250 weedfs:dc1:rack3:server132 adds child 
I0616 11:58:50.510485 node.go:250 weedfs:dc1:rack3 adds child server133
I0616 11:58:50.510487 node.go:250 weedfs:dc1:rack3:server133 adds child 
I0616 11:58:50.510490 node.go:250 weedfs:dc1:rack3 adds child server134
I0616 11:58:50.510492 node.go:250 weedfs:dc1:rack3:server134 adds child 
I0616 11:58:50.510495 node.go:250 weedfs:dc1:rack3 adds child server135
I0616 11:58:50.510497 node.go:250 weedfs:dc1:rack3:server135 adds child 
I0616 11:58:50.510499 node.go:250 weedfs:dc1:rack3 adds child server136
I0616 11:58:50.510501 node.go:250 weedfs:dc1:rack3:server136 adds child 
assigned node : server126
assigned node : server125
assigned node : server136
--- PASS: TestReplication011 (0.00s)
=== RUN   TestFindEmptySlotsForOneVolumeScheduleByWeight
data: map[dc1:map[rack1:map[server111:map[limit:2000 volumes:[]]]] dc2:map[rack2:map[server222:map[limit:2000 volumes:[]]]] dc3:map[rack3:map[server333:map[limit:1000 volumes:[]]]] dc4:map[rack4:map[server444:map[limit:1000 volumes:[]]]] dc5:map[rack5:map[server555:map[limit:500 volumes:[]]]] dc6:map[rack6:map[server666:map[limit:500 volumes:[]]]]]
I0616 11:58:50.510554 node.go:250 weedfs adds child dc6
I0616 11:58:50.510556 node.go:250 weedfs:dc6 adds child rack6
I0616 11:58:50.510558 node.go:250 weedfs:dc6:rack6 adds child server666
I0616 11:58:50.510560 node.go:250 weedfs:dc6:rack6:server666 adds child 
I0616 11:58:50.510563 node.go:250 weedfs adds child dc1
I0616 11:58:50.510564 node.go:250 weedfs:dc1 adds child rack1
I0616 11:58:50.510566 node.go:250 weedfs:dc1:rack1 adds child server111
I0616 11:58:50.510568 node.go:250 weedfs:dc1:rack1:server111 adds child 
I0616 11:58:50.510571 node.go:250 weedfs adds child dc2
I0616 11:58:50.510572 node.go:250 weedfs:dc2 adds child rack2
I0616 11:58:50.510574 node.go:250 weedfs:dc2:rack2 adds child server222
I0616 11:58:50.510576 node.go:250 weedfs:dc2:rack2:server222 adds child 
I0616 11:58:50.510579 node.go:250 weedfs adds child dc3
I0616 11:58:50.510581 node.go:250 weedfs:dc3 adds child rack3
I0616 11:58:50.510583 node.go:250 weedfs:dc3:rack3 adds child server333
I0616 11:58:50.510585 node.go:250 weedfs:dc3:rack3:server333 adds child 
I0616 11:58:50.510587 node.go:250 weedfs adds child dc4
I0616 11:58:50.510589 node.go:250 weedfs:dc4 adds child rack4
I0616 11:58:50.510591 node.go:250 weedfs:dc4:rack4 adds child server444
I0616 11:58:50.510593 node.go:250 weedfs:dc4:rack4:server444 adds child 
I0616 11:58:50.510595 node.go:250 weedfs adds child dc5
I0616 11:58:50.510598 node.go:250 weedfs:dc5 adds child rack5
I0616 11:58:50.510600 node.go:250 weedfs:dc5:rack5 adds child server555
I0616 11:58:50.510602 node.go:250 weedfs:dc5:rack5:server555 adds child 
server111 : 512
server333 : 298
server555 : 159
server444 : 296
server222 : 569
server666 : 166
--- PASS: TestFindEmptySlotsForOneVolumeScheduleByWeight (0.00s)
=== RUN   TestPickForWrite
data: map[dc1:map[rack1:map[serverdc111:map[ip:127.0.0.1 limit:100 volumes:[map[collection:test id:1 replication:001 size:12312] map[collection:test id:2 replication:100 size:12312] map[collection:test id:4 replication:100 size:12312] map[collection:test id:6 replication:010 size:12312]]]]] dc2:map[rack1:map[serverdc211:map[ip:127.0.0.2 limit:100 volumes:[map[collection:test id:2 replication:100 size:12312] map[collection:test id:3 replication:010 size:12312] map[collection:test id:5 replication:001 size:12312] map[collection:test id:6 replication:010 size:12312]]]]] dc3:map[rack1:map[serverdc311:map[ip:127.0.0.3 limit:100 volumes:[map[collection:test id:1 replication:001 size:12312] map[collection:test id:3 replication:010 size:12312] map[collection:test id:4 replication:100 size:12312] map[collection:test id:5 replication:001 size:12312]]]]]]
I0616 11:58:50.515065 node.go:250 weedfs adds child dc3
I0616 11:58:50.515071 node.go:250 weedfs:dc3 adds child rack1
I0616 11:58:50.515074 node.go:250 weedfs:dc3:rack1 adds child serverdc311
I0616 11:58:50.515088 volume_layout.go:417 Volume 1 becomes writable
I0616 11:58:50.515095 node.go:250 weedfs:dc3:rack1:serverdc311 adds child 
I0616 11:58:50.515106 volume_layout.go:417 Volume 3 becomes writable
I0616 11:58:50.515110 volume_layout.go:417 Volume 4 becomes writable
I0616 11:58:50.515116 volume_layout.go:417 Volume 5 becomes writable
I0616 11:58:50.515120 node.go:250 weedfs adds child dc1
I0616 11:58:50.515122 node.go:250 weedfs:dc1 adds child rack1
I0616 11:58:50.515124 node.go:250 weedfs:dc1:rack1 adds child serverdc111
I0616 11:58:50.515127 volume_layout.go:405 Volume 1 becomes unwritable
I0616 11:58:50.515129 volume_layout.go:417 Volume 1 becomes writable
I0616 11:58:50.515131 node.go:250 weedfs:dc1:rack1:serverdc111 adds child 
I0616 11:58:50.515137 volume_layout.go:417 Volume 2 becomes writable
I0616 11:58:50.515140 volume_layout.go:405 Volume 4 becomes unwritable
I0616 11:58:50.515142 volume_layout.go:417 Volume 4 becomes writable
I0616 11:58:50.515145 volume_layout.go:417 Volume 6 becomes writable
I0616 11:58:50.515148 node.go:250 weedfs adds child dc2
I0616 11:58:50.515152 node.go:250 weedfs:dc2 adds child rack1
I0616 11:58:50.515154 node.go:250 weedfs:dc2:rack1 adds child serverdc211
I0616 11:58:50.515157 volume_layout.go:405 Volume 2 becomes unwritable
I0616 11:58:50.515158 volume_layout.go:417 Volume 2 becomes writable
I0616 11:58:50.515160 node.go:250 weedfs:dc2:rack1:serverdc211 adds child 
I0616 11:58:50.515164 volume_layout.go:405 Volume 3 becomes unwritable
I0616 11:58:50.515165 volume_layout.go:417 Volume 3 becomes writable
I0616 11:58:50.515170 volume_layout.go:405 Volume 5 becomes unwritable
I0616 11:58:50.515171 volume_layout.go:417 Volume 5 becomes writable
I0616 11:58:50.515174 volume_layout.go:405 Volume 6 becomes unwritable
I0616 11:58:50.515176 volume_layout.go:417 Volume 6 becomes writable
--- PASS: TestPickForWrite (0.00s)
=== RUN   TestVolumesBinaryState
=== RUN   TestVolumesBinaryState/mark_true_when_copies_exist
=== RUN   TestVolumesBinaryState/mark_true_when_no_copies_exist
--- PASS: TestVolumesBinaryState (0.00s)
    --- PASS: TestVolumesBinaryState/mark_true_when_copies_exist (0.00s)
    --- PASS: TestVolumesBinaryState/mark_true_when_no_copies_exist (0.00s)
FAIL
FAIL	github.com/seaweedfs/seaweedfs/weed/topology	0.036s
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
ActiveLock 2 acquired lock 0
ActiveLock 3 acquired lock 0
ActiveLock 2 released lock 0
ActiveLock 5 acquired lock 0
ActiveLock 3 released lock 0
ActiveLock 5 released lock 0
ActiveLock 1 released lock 0
ActiveLock 6 acquired lock 1
ActiveLock 6 released lock 1
ActiveLock 8 acquired lock 0
ActiveLock 8 released lock 0
ActiveLock 7 acquired lock 1
ActiveLock 7 released lock 1
ActiveLock 9 acquired lock 0
ActiveLock 10 acquired lock 0
ActiveLock 10 released lock 0
ActiveLock 12 acquired lock 1
ActiveLock 9 released lock 0
ActiveLock 12 released lock 1
ActiveLock 13 acquired lock 0
ActiveLock 14 acquired lock 0
ActiveLock 16 acquired lock 0
ActiveLock 15 acquired lock 0
ActiveLock 17 acquired lock 0
ActiveLock 18 acquired lock 0
ActiveLock 11 acquired lock 0
ActiveLock 20 acquired lock 0
ActiveLock 21 acquired lock 0
ActiveLock 22 acquired lock 0
ActiveLock 11 released lock 0
ActiveLock 17 released lock 0
ActiveLock 16 released lock 0
ActiveLock 20 released lock 0
ActiveLock 18 released lock 0
ActiveLock 22 released lock 0
ActiveLock 21 released lock 0
ActiveLock 14 released lock 0
ActiveLock 13 released lock 0
ActiveLock 23 acquired lock 1
ActiveLock 15 released lock 0
ActiveLock 23 released lock 1
ActiveLock 24 acquired lock 0
ActiveLock 27 acquired lock 0
ActiveLock 28 acquired lock 0
ActiveLock 24 released lock 0
ActiveLock 27 released lock 0
ActiveLock 28 released lock 0
ActiveLock 26 acquired lock 1
ActiveLock 26 released lock 1
ActiveLock 29 acquired lock 0
ActiveLock 30 acquired lock 0
ActiveLock 29 released lock 0
ActiveLock 30 released lock 0
ActiveLock 19 acquired lock 1
ActiveLock 19 released lock 1
ActiveLock 31 acquired lock 1
ActiveLock 31 released lock 1
ActiveLock 32 acquired lock 0
ActiveLock 33 acquired lock 0
ActiveLock 34 acquired lock 0
ActiveLock 25 acquired lock 0
ActiveLock 35 acquired lock 0
ActiveLock 35 released lock 0
ActiveLock 36 acquired lock 0
ActiveLock 37 acquired lock 0
ActiveLock 38 acquired lock 0
ActiveLock 38 released lock 0
ActiveLock 36 released lock 0
ActiveLock 33 released lock 0
ActiveLock 37 released lock 0
ActiveLock 34 released lock 0
ActiveLock 25 released lock 0
ActiveLock 32 released lock 0
ActiveLock 40 acquired lock 1
ActiveLock 40 released lock 1
ActiveLock 42 acquired lock 0
ActiveLock 43 acquired lock 0
ActiveLock 41 acquired lock 0
ActiveLock 45 acquired lock 0
ActiveLock 44 acquired lock 0
ActiveLock 44 released lock 0
ActiveLock 45 released lock 0
ActiveLock 42 released lock 0
ActiveLock 43 released lock 0
ActiveLock 41 released lock 0
ActiveLock 46 acquired lock 1
ActiveLock 46 released lock 1
ActiveLock 47 acquired lock 0
ActiveLock 47 released lock 0
ActiveLock 48 acquired lock 1
ActiveLock 48 released lock 1
ActiveLock 49 acquired lock 0
ActiveLock 39 acquired lock 0
ActiveLock 4 acquired lock 0
ActiveLock 50 acquired lock 0
ActiveLock 4 released lock 0
ActiveLock 39 released lock 0
ActiveLock 49 released lock 0
ActiveLock 50 released lock 0
--- PASS: TestOrderedLock (1.14s)
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
ok  	github.com/seaweedfs/seaweedfs/weed/util	1.262s
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
I0616 11:58:50.640230 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1479385272/001/c0_2_0.ldb, watermark 0, num of entries:0
I0616 11:58:50.722314 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c0_2_0.ldb... , watermark: 0
I0616 11:58:50.760708 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1479385272/001/c0_2_1.ldb, watermark 0, num of entries:0
I0616 11:58:50.812108 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c0_2_1.ldb... , watermark: 0
I0616 11:58:50.847834 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1479385272/001/c1_3_0.ldb, watermark 0, num of entries:0
I0616 11:58:50.875053 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c1_3_0.ldb... , watermark: 0
I0616 11:58:50.892074 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1479385272/001/c1_3_1.ldb, watermark 0, num of entries:0
I0616 11:58:50.919040 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c1_3_1.ldb... , watermark: 0
I0616 11:58:50.951014 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1479385272/001/c1_3_2.ldb, watermark 0, num of entries:0
I0616 11:58:50.986777 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c1_3_2.ldb... , watermark: 0
I0616 11:58:51.033289 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1479385272/001/c2_2_0.ldb, watermark 0, num of entries:0
I0616 11:58:51.044526 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c2_2_0.ldb... , watermark: 0
I0616 11:58:51.056719 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1479385272/001/c2_2_1.ldb, watermark 0, num of entries:0
I0616 11:58:51.067601 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c2_2_1.ldb... , watermark: 0
I0616 11:58:51.076252 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1479385272/001/c0_2_0.ldb, watermark 0, num of entries:0
I0616 11:58:51.090304 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c0_2_0.ldb... , watermark: 0
I0616 11:58:51.106914 needle_map_leveldb.go:122 generateLevelDbFile /tmp/TestOnDisk1479385272/001/c0_2_1.ldb, watermark 0, num of entries:0
I0616 11:58:51.116340 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c0_2_1.ldb... , watermark: 0
I0616 11:58:51.148284 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c0_2_0.ldb... , watermark: 0
I0616 11:58:51.162507 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c0_2_1.ldb... , watermark: 0
I0616 11:58:51.175506 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c1_3_0.ldb... , watermark: 0
I0616 11:58:51.187811 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c1_3_1.ldb... , watermark: 0
I0616 11:58:51.199261 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c1_3_2.ldb... , watermark: 0
I0616 11:58:51.211394 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c2_2_0.ldb... , watermark: 0
I0616 11:58:51.223612 needle_map_leveldb.go:66 Loading /tmp/TestOnDisk1479385272/001/c2_2_1.ldb... , watermark: 0
--- PASS: TestOnDisk (0.73s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/chunk_cache	0.747s
?   	github.com/seaweedfs/seaweedfs/weed/util/fla9	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/grace	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/http	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/http/client	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/util/httpdown	[no test files]
=== RUN   TestNewLogBufferFirstBuffer
processed all messages
E0616 11:58:50.579014 log_read.go:115 LoopProcessLogData: test process log entry 1 ts_ns:1781611130578990719  partition_key_hash:-736260903  data:"\x0b4\xd2\x1e\x9cwC5\x95s\x83\r\xf7赁Tx\x0cK\xa2{\"J\xb3\xf5\x92i\x1fL2\x11?\x99\x05\x8f\x9e\xbaR\x82X\x12\x9fE}\xdb\xe2\xfe\xf1\xad\x07\x17\x84\xc2)\xb5e\x89\xd2\xe7˿\xe5\xe2\xd7\r\x12X\xb9\x94x\xdb\xcc\xecYS\xf1\x93)b\x1a\xf6l}\x02\xf8\x08\xea\x1dǻ\x15\xea\x1eҐ\x83k\x03\xa0\xbc\xc9\x16 \x98\n[\xecI\xdd\"\x83\x06\"\xf3\xed\xb9\xe7@\x8f\xaf}\x93\x97\xad\xff\x01,9\xd7LE\xc1Pnf\xd2\xd7󵈅g\x904:K*\xef\xac~\x19\x96V\xc2 \x07\"\xcd˾D%\x13\x1f6t\xe8R\x07\x0c\x1a\x0c\xdf\"\x88\xee\x890\x8fۆf\xbe\xbdf\xd8\x00\xb0\xe7\x9fq\x12\xd6T\xa7\xb6\x1e\xdfg\xc2\x17\x87g\xf7\xdaK\xe9\x97H\xaf\x1aZ\x08^\x86\xe2\x7f\xd1\xea\x07Щ\xa0\xed\xd7w4D\xe5\rih>$\xc0\xa4\x07S\x7f-]E\x83\xe3)\xd70\xf1\xfc\xa5\xd2\x0b\xcaC2\x98\xc2=;\xc3[\x0b^\xdb\x1b~\x14\xcc\xfa\xba\xe8\xf9\xf9G\xb8\x15\xee\xda>>\x9b\xdf\xed\x9d\xc1\x8b\\\xfc\xb0\xea.Ʀ$WsX\x9ab\xc4\xe0\x99\x06\x17d\x02\x14\xcb\xf4]ju\xacxC\xef\x9c\xeb\x94\n+i2\xdf\x04\t\xb4\t\x8f?\x9bn\xb0\xed$y\xfc\xe8\x8a^2\x97\x17\xab<o\xf2^v\xa4}g\xbc\x18\x1a\x8ch\xa3\xfd\xa5\xdcċކ\xe9\xce\xe7\xea\x8b\x0cG\x15\xe0\x085Z\x81\xb8\x1f\x8b\t+Μ\x89\x98\xfb>\xa2\xb8\xa4\xc1\"\xa5\xc4y\x03\x7fKJ\x9e\r\x19\xba6\xc2\x05\xad\r9P\xb9F\x01\x1c\x85\xf31\xf69\xec\x8c\x17Dl'\xe7\xd1\x08\x15Y\x8b\x8e\xea+{\xf8ް\xb7\x8d\x98\xf2ޝ>t\x04V\x9d݈3~GѪ\x8b \x92L\xf2|\x01܀\x1c\xbc(\xe4y\x02]\x8e2!\x1a\x1bV\x12\xc4I\xa0\xdc:\xd7'\x04\xda8\x99\xd9W핷\xc7(2\xb8\rv\"\xd1Qw\n\x0e[\x9a7\x0b\xb9L\x1d\xca\n\xe9*z\xdbK\xe6&\x7f\xf0\x9a\x01.1rk,\xbf,8J$\x15$\xed:\x87C\xd5K\xa9\xe3J\x0f\x8b\xdf\xd6\x19Nd#dz\xb1\x88\xe4\xf7\xc3`\xa3\xb1\xeb\x01\xa2\xbe\xf0\x95_Z\x14\xcaĿR\x9e\x04\"\xfb\xbb]\x06$\x13\xaf\x1cºw\x8f\\\r&\xf3\x85s\xb2:\xf8X\xe4\x83\xccG\xa7\xf8j\x8af\xb3T\x06\x14\xccH\xbb\xee\x9eF!\x0e\xd9#@\xad\r\xdb\x17\xdabA;\x19\xb4\x9cӿ\\d\xa6\xf9\xff\xc3Y~\x95\xb8\x96(\x05+/R^\xbaJ\x84{\x9e\xba@h^\xaf\xab\x91nb\xd5\xf4\x02\x81\x05\xd9\xd6\xc01\x86\"\x03YL\xdfT\xbb\x9d\xab\xf1\xa0\x0f\x04?Cv\x16k\xd5o\x94?O\xbc\xc4\xed\xb3\x81\xf4\x1b\xf0\\\xf7\x9d=H\n\xc9X3\x15\x02\x7f:n[Õ\x85\xe8I\xac\x9f\xa1Й\xffj\x18\xa7\xf2*\x08\x81\xf5\xd0\x05>\xe2\xddԐ\x8f\x84\xc4\xe0X\x078l\xfd\xd2T\x07\x03\xbc\x94g\xd3ɏyv\xb7\xc9\xeb\x18\x9d\xcc+D\x11\r\x0eI\xc4%75\xc19YL\xad\xb1\xa5jx\xb6\xb3\x89\xc3\x18*\x15\xb0D\xa0x\xe4:#\x84\\\x98\xc1%&\xdf\xc0:kQ\xbf\x90K\xdd\x12\xe7g61\x87\\\x1f$sU\xee?\x86\x9c\x0ba%\xcau\x1d\xc0Rj\xd4U.Bd>%ս\xcf\x1dS\x05\x9d^\xd0g\xdc{g^\xc1\x00\xdc=\xf3\xf8\xefg\xc5\x10\xf47!\xc0,\xa1(ua\xca_5T\x94sz\xa4;\xf1\xf7\x0c\xaa=\x8b;\xbf\xf4\xf6\xb6\n1\xd5?k\x83y\x0eO2\xbf\xf6{=@D\x7f?\xd2_\x12\x1b\xd7\\,\xb3!\x18\xab\xee!7`\xfa\xb6\x04\x18\xbd\xff\xe8\x85\xfa\xe14\xc8\xc5\xd8\xe4\xb7\xee/u\xa7\xb9\xfaH\x04a\\\x0f\xbbcyͱ\x7f\x9d\x9d\xadF:\xf8\x08g(\xe3\xacb\xb3 \xb6\x16\xd6\xf7A\xc4\x0cx@\xban\xe9\xe0\xd7\xd5KQ\xde|\x0c㈭Sq\xf8\xecc": EOF
before flush: sent 5000 received 5000
lastProcessedTime 2026-06-16 11:58:50.578990719 +0000 UTC isDone true err: EOF
--- PASS: TestNewLogBufferFirstBuffer (0.09s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/log_buffer	0.104s
=== RUN   TestAllocateFree
--- PASS: TestAllocateFree (0.00s)
=== RUN   TestAllocateFreeEdgeCases
--- PASS: TestAllocateFreeEdgeCases (0.00s)
=== RUN   TestBitCount
--- PASS: TestBitCount (0.00s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/util/mem	0.003s
=== RUN   TestNameList
0 1 10 11 12 13 14 15 16 17 18 19 2 20 21 22 23 24 25 26 27 28 29 3 30 31 32 33 34 35 36 37 38 39 4 40 41 42 43 44 45 46 47 48 49 5 50 51 52 53 54 55 56 57 58 59 6 60 61 62 63 64 65 66 67 68 69 7 70 71 72 73 74 75 76 77 78 79 8 80 81 82 83 84 85 86 87 88 89 9 90 91 92 93 94 95 96 97 98 99 --- PASS: TestNameList (0.07s)
=== RUN   TestReverseInsert
--- PASS: TestReverseInsert (0.00s)
=== RUN   TestInsertAndFind
--- PASS: TestInsertAndFind (0.06s)
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
ok  	github.com/seaweedfs/seaweedfs/weed/util/skiplist	0.272s
=== RUN   TestLocationIndex
--- PASS: TestLocationIndex (0.00s)
=== RUN   TestLookupFileId
--- PASS: TestLookupFileId (0.00s)
=== RUN   TestConcurrentGetLocations
--- PASS: TestConcurrentGetLocations (0.05s)
PASS
ok  	github.com/seaweedfs/seaweedfs/weed/wdclient	0.058s
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/exclusive_locks	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/net2	[no test files]
?   	github.com/seaweedfs/seaweedfs/weed/wdclient/resource_pool	[no test files]
FAIL
