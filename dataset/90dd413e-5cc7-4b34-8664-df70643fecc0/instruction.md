I've uploaded a C code repository in the directory /workspace/OpenBLAS. Consider the following issue description:

<issue_description>
# Misc. typo fixes in comments and documentation

## Issue 1 (#2101): Misc. typo fixes in comments and documentation

Found via `codespell -q 3 -w -L ith,als,dum,nd,amin,nto,wis,ba -S ./relapack,./kernel,./lapack-netlib`

## Issue 2 (#2104): memory.c invalid argument type in v0.3.6

Bumping OpenBLAS builds from `v0.3.5` stable release to `v0.3.6` stable release in downstream scientific Python ecosystem (see PR [here](https://github.com/MacPython/openblas-libs/pull/2)) is causing a new error to crop up from the OpenBLAS source:

```
memory.c: In function ‘get_num_procs’:
memory.c:1775:10: error: invalid type argument of ‘->’ (have ‘cpu_set_t’)
      if (CPU_ISSET(i,cpuset)) n++;
          ^
```

Comparing the build log with the last successful build (`v0.3.5`), the first point of deviation appears to be this new warning, which may or may not be pertinent:
```
getarch.c:96:0: warning: "NO_AVX512" redefined [enabled by default]
 #define NO_AVX512
 ^
<command-line>:0:0: note: this is the location of the previous definition
```

Any suggestions for us?

## Issue 3 (#2107): sgemm/strmm kernel for power9

sgemm/strmm kernel for power9. (note power8 kernels did not perform well on new architecture)

## Issue 4 (#2110): Fix detection of Skylake processors when using GCC

21eda8b introduced a check in getarch.c to test if the compiler is capable of AVX512. This check is currently non-functional for GCC for two reasons:
* It checks for the `__AVX2__` macro instead of `__AVX512__`,
* these macros are only defined if getarch itself was compiled with AVX2/AVX512 support (e.g., with `-march=native`).

Instead, we can just test the GCC version as we do for clang. Support for `-march=skylake-avx512`, which is of interest here, was added in GCC 5.3: https://gcc.gnu.org/gcc-5/changes.html

While looking at the CPU detection, I noticed a small error in c_check, trying to unlink a file called `tmpf.o` instead of the actually created temporary object file. This is fixed as well.

## Issue 5 (#2111): Disable the SkyLakeX DGEMMIxCOPY kernels as well

as a stopgap measure for https://github.com/numpy/numpy/issues/13401 as mentioned in #1955

## Issue 6 (#2112): Makefile.arm: remove -march flags

The provided -march flags, especially for ARMv5 and ARMv6 may not
necessarily match the needed ones: for ARMv5, it might be armv5,
armv5te, armv5t, etc. If the wrong one is used, the incorrect toolchain
sysroot can be used in a multilib toolchain.

Therefore, let the user building OpenBLAS pass the appropriate -march
flag.

The other flags, such as -mfpu=vfp or -mfloat-abi=hard are kept, as they
are actually required for the build to proceed (OpenBLAS uses VFP
instructions, and assume an EABIhf ABI).

[Peter: update for v0.2.20]
Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Signed-off-by: Peter Korsgaard <peter@korsgaard.com>
[Retrieved from:
https://git.buildroot.net/buildroot/tree/package/openblas/0001-Makefile.arm-remove-march-flags.patch]
Signed-off-by: Fabrice Fontaine <fontaine.fabrice@gmail.com>

## Issue 7 (#2117): Fix errors in cpu affinity setup with glibc 2.6

for #2114

## Issue 8 (#2109): Use HTTPS URL in GitHub description

Please use https://www.openblas.net/ in the GitHub description.

## Issue 9 (#2120): Address redundant code concern #2113

Remove extra unchecked checking step three times from getrf_parallel.c

## Issue 10 (#2121): TST: add native POWER8 to CI

* add native POWER8 testing to
Travis CI matrix with ppc64le
os entry

The new job ran successfully in about 7 minutes on my fork--let me know if more POWER-specific build flags might be desired? Also, probably a good idea to check the log for the new entry.

I was hesitating to add more stuff to the already-busy Travis matrix, but I see @xianyi is now working to get Azure pipelines up and running, so that should provide a medium for shifting burden off Travis if needed.

## Issue 11 (#2122): Add ARMV6 build to azure CI setup

(and repair the mess I made there earlier today)

## Issue 12 (#2123): DOC: Add Azure CI status badge to README

Add Azure Pipelines badge to `README` landing page using [approach from their documentation](https://docs.microsoft.com/en-us/azure/devops/pipelines/create-first-pipeline?view=azure-devops&tabs=tfs-2018-2#add-a-status-badge-to-your-repository).

The badge contains the name of the service, so I didn't prefix it like the README does for Travis / Appveyor.

## Issue 13 (#2124): TST: Azure manylinux1 & clean-up

* remove some of the steps & comments
from the original Azure yml template

* modify the trigger section to use
develop since OpenBLAS primarily uses
this branch; use the same batching
behavior as downstream projects NumPy/
SciPy

* remove Travis emulated ARMv6 gcc build
because this now happens in Azure

* use documented Ubuntu vmImage name for Azure
and add in a manylinux1 test run to the matrix
for older glibc and catching things
like #2104

[skip appveyor]

## Issue 14 (#2116): cblas_isamin on a dataset containing 0.0 and a non-1 incX returns 7

The following example shows the problem:

```CPP
int a = 30;
std::vector<float> x(a * 5);
for (int i = 0; i < a * 5; i ++) {
  x[i] = i + 1;
}
x[10 * 5] = 0;
std::cout << cblas_isamin(a, x.data(), 5) << "\n";
```

This prints out `7`, rather than `10` as I would expect. Changing the `10` to any value larger than `7` also prints `7`. Changing `incX` to `1`, or removing the `x[10 * 5] = 0` line causes this to output `0` as expected.

I'm using commit 6a8b42 .

## Issue 15 (#2127): Add NO_AFFINITY to available CMAKE options on Linux, and set it to ON

to match the gmake default. Fix for second part of #2114 (why the main bug showed up at all with supposedly default options)

## Issue 16 (#2129): Move ARMv8/gcc CI job from Travis to Azure

## Issue 17 (#2130): Drone CI for arm64 native builds

There are 4 jobs for compilers gcc and clang and build system make and cmake.
I disabled lapack on cmake build as it was failing to build in cmake. (CMake build system gives a warning that openblas cmake supports only x86)

## Issue 18 (#2134): TST: add SkylakeX AVX512 CI test

* adapt the C-level reproducer code for some
recent SkylakeX AVX512 kernel issues, provided
by Isuru Fernando and modified by Martin Kroeker,
for usage in the utest suite

* add an Intel SDE SkylakeX emulation utest run to
the Azure CI matrix; a custom Docker build was required
because Ubuntu image provided by Azure does not support
AVX512VL instructions

If you're like me and don't believe regression tests until you've seen the failure, [here's the same CI run](https://dev.azure.com/tylerjereddy/openblas-fork/_build/results?buildId=896) on a branch off OpenBLAS at 3f427c0c, the most problematic recent build used in NumPy ecosystem. After demonstrating that failure, I ported the relevant changes over to this PR branch.

The hope is that this can supersede the Intel SDE skx regression guards for:
- NumPy: https://github.com/numpy/numpy/pull/13466  
- SciPy: https://github.com/scipy/scipy/pull/10145
- etc.

and provide a faster feedback loop in SkylakeX AVX512 kernel issues directly / automatically at the source, rather than downstream.

This took rather longer to draft than I had hoped--one unfortunate issue is the way we `echo` to Dockerfiles rather than just putting well-formatted Dockerfiles into the repo proper, and the fact that `docker build` doesn't support `--privileged` as required for SDE process attachment.

Of course, there are still a few issues open about SkylakeX AVX512 matters, so this may simply be the start of related regression guards. And as Isuru previously noted, BLIS actually iterates over a few different emulation archs, so you / we might consider building up to that I suppose.

## Issue 19 (#2126): Issues when calling cblas_sgemm from multiple threads

When calling cblas_sgemm in parallel, on different threads, I have sometimes wrong output results.

I my application I have two threads and use OpenBLAS with threads disabled (USE_THREAD OFF, NUM_THREADS 0).

I can easily test it running the same gemm twice (in the same thread) and verify that the results are the same.

```
cblas_sgemm(layout, TransA, TransB, M, N, K, alpha, A, lda, B, ldb, beta, C1, ldc);
cblas_sgemm(layout, TransA, TransB, M, N, K, alpha, A, lda, B, ldb, beta, C2, ldc);
// Compare C1 and C2
```

Sometimes the results are different when using multiple threads on different data. In single thread the comparison is successful.

Problem looks similar to #1755, but not working on version 0.3.6 with and without USE_TLS.

The difference is huge and not minor rounding.

I have not managed to reproduce it yet with a simple example.

## Issue 20 (#2139): PGI 19.4 failed to compile OpenBLAS 0.3.6

CentOS 7.6 ( E5-2623 v4 )
tar xzf v0.3.6.tar.gz
```
make CC=pgcc FC=pgfortran DEBUG=1 DYNAMIC_ARCH=1
...
make[1]: Entering directory `/data/TOOLS/OpenBLAS-0.3.6_pgi19.4/driver/others'
pgcc -g -DMAX_STACK_ALLOC=2048 -tp p7-64 -DF_INTERFACE_PGI -fPIC -DDYNAMIC_ARCH -DNO_AVX512 -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=16 -DMAX_PARALLEL_NUMBER=1 -DVERSION=\"0.3.6\" -DASMNAME=memory -DASMFNAME=memory_ -DNAME=memory_ -DCNAME=memory -DCHAR_NAME=\"memory_\" -DCHAR_CNAME=\"memory\" -DNO_AFFINITY -I../.. -c memory.c -o memory.o
/backup/opt/pgi/linux86-64-llvm/19.4/share/llvm/bin/llc: error: /backup/opt/pgi/linux86-64-llvm/19.4/share/llvm/bin/llc: /tmp/pgccPOlg70ojvfFR.ll:1387:44: error: expected comma in inline asm expression
        call void asm sideeffect ".section .init,"ax"; call gotoblas_init@PLT; .section .text", "" (), !dbg !1422
                                                  ^
```

## Issue 21 (#2141): Build and run utests independently of fortran

the utest Makefile does its own checks for fortran availability

## Issue 22 (#2142): Add softfp support in min/max kernels

fix for #1912

## Issue 23 (#2144): Revert "Add softfp support in min/max kernels"

Reverts xianyi/OpenBLAS#2142 as discussed in that PR

## Issue 24 (#2145): Separate implementations of AMAX and IAMAX on arm

As noted in #1912 and comment on #2142, the combined implementation happens to "do the right thing" on hardfp, but cannot return both value and index on softfp where they would have to share the return register

## Issue 25 (#2025): Thread safety tester using C++11 threading

As far as I could tell, there was no test that really tested the thread safety of the library, with many concurrent BLAS/LAPACK calls.
This small C++ program aims to remedy that. It uses C++11 threading to launch a configurably large number of simultaneous calculations on random matrices. All threads are given a copy of the same inputs, and after all threads are done, the results are compared and an error is shown if any of the threads return a different result. This process is repeated a configurably large number of times to try and catch quasi-random failures.

WIP, no LAPACK calls and no makefiles yet. Probably going to hook this up as an optional test, in case folks have no C++(11) compiler.

The git history is a bit messy, but I think it should clean itself up if a squash merge is done.

- [ ] Ready for review

## Issue 26 (#2153): improved power9 zgemm,sgemm

## Issue 27 (#2156): Add gfortran workaround for C->FORTRAN ABI violation

for #2154 (gcc bug 90329)

## Issue 28 (#2157): Add gfortran workaround for potential ABI violation

for #2154

## Issue 29 (#2158): Remove any inadvertent use of -march=native from DYNAMIC_ARCH builds

from #2143, -march=native precludes use of more specific options like -march=skylake-avx512 in individual kernels, and defeats the purpose of dynamic arch anyway.

## Issue 30 (#2149): USE_TLS=0 == USE_TLS=1

Somewhere in the build system it is only checking if USE_TLS is defined, instead of actually checking its value. Thus, having USE_TLS = 0  in Makefile.rule leads to a TLS enabled build.

## Issue 31 (#2162): Fixes for PGI compiler

fixes compile failure with pgi 18.10 as reported on OpenBLAS-users

## Issue 32 (#2166): OpenBLAS build fails due to segmentation fault on Power8 platform

OpenBLAS build fails for Power8 target in 64-bit mode(Both Redhat Big endian and AIX ). Details are as below:

#make DEBUG=1 BINARY=64 TARGET=POWER8
Program received signal SIGSEGV: Segmentation fault - invalid memory reference.

Backtrace for this error:
#0  0x3FFF95A692C3
#1  0x3FFF95A69E23
#2  0x3FFF95CB0477
#3  0x10078920 in dtrmm_ounucopy at trmm_uncopy_4.c:93
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./cblat2 < ./cblat2.dat
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./zblat2 < ./zblat2.dat
/bin/sh: line 1: 54413 Segmentation fault      (core dumped) OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 ./dblat3 < ./dblat3.dat
make[1]: *** [level3] Error 139
make[1]: *** Waiting for unfinished jobs....
rm -f ?BLAT2.SUMM
OMP_NUM_THREADS=2 ./sblat2 < ./sblat2.dat
OMP_NUM_THREADS=2 ./dblat2 < ./dblat2.dat
OMP_NUM_THREADS=2 ./cblat2 < ./cblat2.dat
OMP_NUM_THREADS=2 ./zblat2 < ./zblat2.dat
make[1]: Leaving directory `/home/kavana/OpenBLAS/test'
make: *** [tests] Error 2
[root@pokndd8 OpenBLAS]# cd test
[root@pokndd8 test]# gdb ./dblat3
GNU gdb (GDB) Red Hat Enterprise Linux 7.6.1-100.el7
Copyright (C) 2013 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "ppc64-redhat-linux-gnu".
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>...
Reading symbols from /home/kavana/OpenBLAS/test/dblat3...done.
(gdb) run < ./dblat3.dat
Starting program: /home/kavana/OpenBLAS/test/./dblat3 < ./dblat3.dat
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib64/libthread_db.so.1".
[New Thread 0x3ffeb391f140 (LWP 54472)]
[New Thread 0x3ffeb311f140 (LWP 54473)]

.......

Program received signal SIGSEGV, Segmentation fault.
dtrmm_ounucopy (m=4294967297, n=12, a=0x3fffffff5ff0, lda=2, posX=0, posY=1, b=<optimized out>) at generic/trmm_uncopy_4.c:93
93		    b[ 0] = data01;
(gdb) where
#0  dtrmm_ounucopy (m=4294967297, n=12, a=0x3fffffff5ff0, lda=2, posX=0, posY=1, b=<optimized out>) at generic/trmm_uncopy_4.c:93
#1  0x0000000010014f14 in dtrmm_RNUU (args=<optimized out>, range_m=<optimized out>, range_n=<optimized out>, sa=0x3ffeb3920000, 
    sb=0x3ffeb3cc0000, dummy=<optimized out>) at trmm_R.c:254
#2  0x000000001000fa64 in dtrmm_ (SIDE=<optimized out>, UPLO=<optimized out>, TRANS=<optimized out>, DIAG=<optimized out>, 
    M=<optimized out>, N=<optimized out>, alpha=<optimized out>, a=<optimized out>, ldA=0x3ffffffb3cd8, b=0x3ffffffe57e0, ldB=0x3ffffffb3cd4)
    at trsm.c:381
#3  0x0000000010005bd8 in dchk3 (sname='DTRMM ', eps=2.2204460492503131e-16, thresh=16, nout=6, ntra=-1, trace=.FALSE., rewi=.FALSE., 
    fatal=.FALSE., nidim=6, idim=..., nalf=3, alf=..., nmax=65, a=..., aa=..., as=..., b=..., bb=..., bs=..., ct=..., g=..., c=..., _sname=6)
    at dblat3.f:1059
#4  0x000000001000e9a4 in dblat3 () at dblat3.f:292
#5  0x000000001000180c in main (argc=<optimized out>, argv=<optimized out>) at dblat3.f:355
#6  0x00003fffb7a06bec in generic_start_main (main=@0x100a0190: 0x100017e0 <main>, argc=<optimized out>, ubp_av=0x3ffffffff4f8, 
    auxvec=0x3ffffffff5e8, init=<optimized out>, rtld_fini=<optimized out>, stack_end=<optimized out>, fini=<optimized out>)
    at ../csu/libc-start.c:274
#7  0x00003fffb7a06e14 in __libc_start_main (argc=<optimized out>, ubp_av=<optimized out>, ubp_ev=<optimized out>, auxvec=<optimized out>, 
    rtld_fini=<optimized out>, stinfo=<optimized out>, stack_on_entry=<optimized out>) at ../sysdeps/unix/sysv/linux/powerpc/libc-start.c:91
#8  0x0000000000000000 in ?? ()
(gdb)

## Issue 33 (#2169): Fix build on FreeBSD/powerpc64.

Building on FreeBSD/powerpc64 requires the same macros as Linux/ppc64.

## Issue 34 (#2170): Fix build on PPC970 for FreeBSD

PPC970 on FreeBSD needs those macros too.

You could consider testing PPC970 on Linux to simplify this if:
`#if defined(POWER3) || defined(POWER6) || defined(PPCG4) || defined(CELL) || defined(POWER8) || defined(POWER9) || ( defined(PPC970) && ( defined(OS_DARWIN) || defined(OS_FREEBSD) ) )`

## Issue 35 (#2172): power9 cgemm/ctrmm. new sgemm 8x16

## Issue 36 (#2163): undefined reference error with MinGW on W10

I get the following error when trying to compile using MinGW:
```[ 98%] Linking C executable openblas_utest.exe
/mingw32/bin/ld.exe: ../lib/libopenblas.a(scopy.c.obj):scopy.c:(.text+0x87): undefined reference to 'scopy_k'
/mingw32/bin/ld.exe: ../lib/libopenblas.a(dcopy.c.obj):dcopy.c:(.text+0x87): undefined reference to 'dcopy_k'
/mingw32/bin/ld.exe: ../lib/libopenblas.a(ccopy.c.obj):ccopy.c:(.text+0x87): undefined reference to 'ccopy_k'
/mingw32/bin/ld.exe: ../lib/libopenblas.a(zcopy.c.obj):zcopy.c:(.text+0x87): undefined reference to 'zcopy_k'
/mingw32/bin/ld.exe: ../lib/libopenblas.a(srot.c.obj):srot.c:(.text+0xa9): undefined reference to 'srot_k'
/mingw32/bin/ld.exe: ../lib/libopenblas.a(drot.c.obj):drot.c:(.text+0xa9): undefined reference to 'drot_k'
```


It seems similar to https://github.com/xianyi/OpenBLAS/issues/1701 .
However, it seems this issue hasn't been resolved, or if so, I do not understand how.

I tried both v3.6.0 and the current devel.

Compiled using: 
```
cmake .. -G "MSYS Makefiles"
make
```
`nm` finds that the symbol is there but undefined. Do I need to link against another library that is not automatically linked by make ?

## Issue 37 (#2177): Fix surprising behaviour of NO_AFFINITY=0

(as noticed in https://github.com/xianyi/OpenBLAS/issues/2173#issuecomment-508562358)

## Issue 38 (#2181): Change install_name on osx to match linux

## Issue 39 (#2186): Update "dgemm_kernel_4x8_haswell.S" for improving performance on zen2 chips

I tested dgemm performance of OpenBLAS previously on a ryzen 7 3700X cpu (see my comment on issue #2180) and got only 70% theoretical performance, in contrast to 90% on i9-9900K. 
Through controlled modification of kernel codes, I found the performance loss was mainly due to the high latency and low throughput of vpermpd instruction on zen2 (see the comments on issue #2180 for details). 
As a result I replaced most vpermpd instructions in the file "dgemm_kernel_4x8_haswell.S", with much cheaper instructions like vpermilpd and vperm2f128.
After the modification of "dgemm_kernel_4x8_haswell.S" and recompilation, the single-thread performance of dgemm on r7-3700x (turbo boost disabled, 3.6 GHz) improved substantially, from 40-41 GFLOPS to 51-52 GFLOPS (90% theoretical), without loss of the quality of results (test program and terminal outputs are in the attachment).
[test_results.zip](https://github.com/xianyi/OpenBLAS/files/3398291/test_results.zip)

## Issue 40 (#2189): Update dgemm_kernel_4x8_haswell.S for reducing cache misses

Add some prefetch codes to reduce cache misses.

Improvement on i9-9900K: 0.6 GFLOPS for 1 thread, 8 GFLOPS for 8 threads.

Improvement on r7-3700X: 0.2 GFLOPS for 1 thread (TARGET=HASWELL).

By the way, where can I see the definitions of GEMM_P and GEMM_Q for a specific architecture? Thanks.

## Issue 41 (#2190): Replace vpermpd with vpermilpd in the Haswell/Zen zdot microkernel

to improve performance on Zen/Zen2 (as demonstrated by wjc404 in #2180)

## Issue 42 (#2191): MAINT: remove legacy CMake endif()

* clean up a case where CMake endif()
contained the conditional used in the
if(), which is no longer needed /
discouraged since our minimum required
CMake version supports the modern syntax

Ok, so pretty small PR :)

## Issue 43 (#2193): Override special make variables

as seen in https://github.com/xianyi/OpenBLAS/issues/1912#issuecomment-514183900 , any external setting of TARGET_ARCH (which could result from building OpenBLAS as part of a larger project that actually uses this variable) would cause the utest build to fail. 
(Other subtargets appear to be unaffected as they do not use implicit make rules)

## Issue 44 (#2196): Add vbroadcastsd kernel to dgemm_kernel_4x8_haswell.S

By carefully examining the haswell dgemm kernel code, I found there's an equivalent micro kernel that load elements from matrix A through broadcast operations, to the current one which arranges the elements from A by permute instructions. 
I added the broadcast kernel to the current implementation, along with a "switch" (#define BROADCASTKERNEL) so developers can easily switch back to permute kernel (by disabling the definition) if it is more efficient on the target CPU.
When applying the broadcast kernel, I observed a performance gain of 0.4 GFLOPS (65.3 -> 65.7) on i9-9900K (1 thread, 4.4 GHz). On r7-3700x (1 thread, 3.6 GHz) the improvement was 0.1-0.4 GFLOPS.

## Issue 45 (#2198): Update CPUID recognition for Intel Ice Lake

## Issue 46 (#2199): Replace most vpermpd calls in the Haswell DTRSM_RN kernel

for #2180, copying wjc404's dgemm improvements for Ryzen

## Issue 47 (#2206): Replace vpermpd with vpermilpd in the Haswell DTRMM kernel

to improve performance on AMD Zen (#2180) applying wjc404's improvement of the DGEMM kernel from #2186

## Issue 48 (#2208): Provide more information on mmap/munmap failure

for #2207

## Issue 49 (#2211): Silence two nuisance warnings from gcc

## Issue 50 (#2212): Avoid spurious dependency on the fortran runtime despite NOFORTRAN=1

for cases where a fortran compiler is present but not wanted (e.g. not fully functional)

## Issue 51 (#2213): Update from develop in preparation of the 0.3.7 release

## Repository Information
- **Repository**: OpenMathLib/OpenBLAS
- **Pull Request**: #2101
- **Base Commit**: `15cb124012c74e9b1b2a180699b2f008b7b99e0c`

## Related Issues
- https://github.com/OpenMathLib/OpenBLAS/issues/2101
- https://github.com/OpenMathLib/OpenBLAS/issues/2104
- https://github.com/OpenMathLib/OpenBLAS/issues/2107
- https://github.com/OpenMathLib/OpenBLAS/issues/2110
- https://github.com/OpenMathLib/OpenBLAS/issues/2111
- https://github.com/OpenMathLib/OpenBLAS/issues/2112
- https://github.com/OpenMathLib/OpenBLAS/issues/2117
- https://github.com/OpenMathLib/OpenBLAS/issues/2109
- https://github.com/OpenMathLib/OpenBLAS/issues/2120
- https://github.com/OpenMathLib/OpenBLAS/issues/2121
- https://github.com/OpenMathLib/OpenBLAS/issues/2122
- https://github.com/OpenMathLib/OpenBLAS/issues/2123
- https://github.com/OpenMathLib/OpenBLAS/issues/2124
- https://github.com/OpenMathLib/OpenBLAS/issues/2116
- https://github.com/OpenMathLib/OpenBLAS/issues/2127
- https://github.com/OpenMathLib/OpenBLAS/issues/2129
- https://github.com/OpenMathLib/OpenBLAS/issues/2130
- https://github.com/OpenMathLib/OpenBLAS/issues/2134
- https://github.com/OpenMathLib/OpenBLAS/issues/2126
- https://github.com/OpenMathLib/OpenBLAS/issues/2139
- https://github.com/OpenMathLib/OpenBLAS/issues/2141
- https://github.com/OpenMathLib/OpenBLAS/issues/2142
- https://github.com/OpenMathLib/OpenBLAS/issues/2144
- https://github.com/OpenMathLib/OpenBLAS/issues/2145
- https://github.com/OpenMathLib/OpenBLAS/issues/2025
- https://github.com/OpenMathLib/OpenBLAS/issues/2153
- https://github.com/OpenMathLib/OpenBLAS/issues/2156
- https://github.com/OpenMathLib/OpenBLAS/issues/2157
- https://github.com/OpenMathLib/OpenBLAS/issues/2158
- https://github.com/OpenMathLib/OpenBLAS/issues/2149
- https://github.com/OpenMathLib/OpenBLAS/issues/2162
- https://github.com/OpenMathLib/OpenBLAS/issues/2166
- https://github.com/OpenMathLib/OpenBLAS/issues/2169
- https://github.com/OpenMathLib/OpenBLAS/issues/2170
- https://github.com/OpenMathLib/OpenBLAS/issues/2172
- https://github.com/OpenMathLib/OpenBLAS/issues/2163
- https://github.com/OpenMathLib/OpenBLAS/issues/2177
- https://github.com/OpenMathLib/OpenBLAS/issues/2181
- https://github.com/OpenMathLib/OpenBLAS/issues/2186
- https://github.com/OpenMathLib/OpenBLAS/issues/2189
- https://github.com/OpenMathLib/OpenBLAS/issues/2190
- https://github.com/OpenMathLib/OpenBLAS/issues/2191
- https://github.com/OpenMathLib/OpenBLAS/issues/2193
- https://github.com/OpenMathLib/OpenBLAS/issues/2196
- https://github.com/OpenMathLib/OpenBLAS/issues/2198
- https://github.com/OpenMathLib/OpenBLAS/issues/2199
- https://github.com/OpenMathLib/OpenBLAS/issues/2206
- https://github.com/OpenMathLib/OpenBLAS/issues/2208
- https://github.com/OpenMathLib/OpenBLAS/issues/2211
- https://github.com/OpenMathLib/OpenBLAS/issues/2212
- https://github.com/OpenMathLib/OpenBLAS/issues/2213
</issue_description>

Can you help me implement the necessary changes to the repository so that the requirements specified in the <issue_description> are met?
I've already taken care of all changes to any of the test files described in the <issue_description>. This means you MUST NOT modify the testing logic or any of the tests in any way!
Also the development C environment is already set up for you (i.e., all dependencies already installed), so you don't need to install other packages.
Your task is to make the minimal changes to non-test files in the /workspace/OpenBLAS directory to ensure the <issue_description> is satisfied.

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
   4.3 Run the reproduction script with `gcc <filename.c> -o <executable> && ./<executable>` to confirm you are reproducing the issue.
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
   7.3 Run existing tests related to the modified code with `make test` to ensure you haven't broken anything.

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit 15cb124012c74e9b1b2a180699b2f008b7b99e0c.
   8.1 Ensure you've fully addressed all requirements.
   8.2 Run any tests in the repository related to:
      8.2.1 The issue you are fixing
      8.2.2 The files you modified
      8.2.3 The functions you changed
   8.3 If any tests fail, revise your implementation until all tests pass.

Be thorough in your exploration, testing, and reasoning. It's fine if your thinking process is lengthy - quality and completeness are more important than brevity.

IMPORTANT CONSTRAINTS:
- ONLY modify files within the /workspace/OpenBLAS directory
- DO NOT navigate outside this directory (no `cd ..` or absolute paths to other locations)
- DO NOT create, modify, or delete any files outside the repository
- All your changes must be trackable by `git diff` within the repository
- If you need to create test files, create them inside the repository directory