+ cd /home/numpy
+ git config --global --add safe.directory /home/numpy
+ git apply --whitespace=nowarn /home/fix.patch
+ git apply --whitespace=nowarn /home/test.patch
+ pip install -e .
Obtaining file:///home/numpy
  Installing build dependencies: started
  Installing build dependencies: finished with status 'done'
  Getting requirements to build wheel: started
  Getting requirements to build wheel: finished with status 'done'
    Preparing wheel metadata: started
    Preparing wheel metadata: finished with status 'error'
+ python setup.py build_ext --inplace
numpy/random/_bounded_integers.pxd.in has not changed
numpy/random/_bounded_integers.pyx.in has not changed
numpy/random/_common.pyx has not changed
numpy/random/_generator.pyx has not changed
Processing numpy/random/_mt19937.pyx
Processing numpy/random/_pcg64.pyx
Processing numpy/random/_philox.pyx
Processing numpy/random/_sfc64.pyx
Processing numpy/random/mtrand.pyx
Processing numpy/random/_bounded_integers.pyx
Processing numpy/random/_bit_generator.pyx
Cythonizing sources
blas_opt_info:
blas_mkl_info:
customize UnixCCompiler
  libraries mkl_rt not found in ['/usr/local/lib', '/usr/lib', '/usr/lib/aarch64-linux-gnu']
  NOT AVAILABLE

blis_info:
  libraries blis not found in ['/usr/local/lib', '/usr/lib', '/usr/lib/aarch64-linux-gnu']
  NOT AVAILABLE

openblas_info:
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

creating /tmp/tmpwuye8qyy/tmp
creating /tmp/tmpwuye8qyy/tmp/tmpwuye8qyy
compile options: '-c'
gcc: /tmp/tmpwuye8qyy/source.c
gcc -pthread /tmp/tmpwuye8qyy/tmp/tmpwuye8qyy/source.o -L/usr/lib/aarch64-linux-gnu -lopenblas -o /tmp/tmpwuye8qyy/a.out
  FOUND:
    libraries = ['openblas', 'openblas']
    library_dirs = ['/usr/lib/aarch64-linux-gnu']
    define_macros = [('HAVE_CBLAS', None)]
    language = c

  FOUND:
    libraries = ['openblas', 'openblas']
    library_dirs = ['/usr/lib/aarch64-linux-gnu']
    define_macros = [('HAVE_CBLAS', None)]
    language = c

non-existing path in 'numpy/distutils': 'site.cfg'
lapack_opt_info:
lapack_mkl_info:
  libraries mkl_rt not found in ['/usr/local/lib', '/usr/lib', '/usr/lib/aarch64-linux-gnu']
  NOT AVAILABLE

openblas_lapack_info:
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

creating /tmp/tmpfpr3fd0a/tmp
creating /tmp/tmpfpr3fd0a/tmp/tmpfpr3fd0a
compile options: '-c'
gcc: /tmp/tmpfpr3fd0a/source.c
gcc -pthread /tmp/tmpfpr3fd0a/tmp/tmpfpr3fd0a/source.o -L/usr/lib/aarch64-linux-gnu -lopenblas -o /tmp/tmpfpr3fd0a/a.out
  FOUND:
    libraries = ['openblas', 'openblas']
    library_dirs = ['/usr/lib/aarch64-linux-gnu']
    define_macros = [('HAVE_CBLAS', None)]
    language = c

  FOUND:
    libraries = ['openblas', 'openblas']
    library_dirs = ['/usr/lib/aarch64-linux-gnu']
    define_macros = [('HAVE_CBLAS', None)]
    language = c

running build_ext
running build_src
build_src
building py_modules sources
building library "npymath" sources
creating build
creating build/src.linux-aarch64-3.5
conv_template:> numpy/core/src/npymath/npy_math_internal.h
  adding 'numpy/core/src/npymath' to include_dirs.
conv_template:> numpy/core/src/npymath/ieee754.c
conv_template:> numpy/core/src/npymath/npy_math_complex.c
None - nothing done with h_files = ['numpy/core/src/npymath/npy_math_internal.h']
building library "npysort" sources
conv_template:> numpy/core/src/common/npy_sort.h
  adding 'numpy/core/src/common' to include_dirs.
conv_template:> numpy/core/src/npysort/quicksort.c
conv_template:> numpy/core/src/npysort/mergesort.c
conv_template:> numpy/core/src/npysort/timsort.c
conv_template:> numpy/core/src/npysort/heapsort.c
conv_template:> numpy/core/src/npysort/radixsort.c
conv_template:> numpy/core/src/common/npy_partition.h
conv_template:> numpy/core/src/npysort/selection.c
conv_template:> numpy/core/src/common/npy_binsearch.h
conv_template:> numpy/core/src/npysort/binsearch.c
None - nothing done with h_files = ['numpy/core/src/common/npy_sort.h', 'numpy/core/src/common/npy_partition.h', 'numpy/core/src/common/npy_binsearch.h']
building extension "numpy.core._multiarray_tests" sources
conv_template:> numpy/core/src/multiarray/_multiarray_tests.c
building extension "numpy.core._multiarray_umath" sources
conv_template:> numpy/core/src/multiarray/arraytypes.c
conv_template:> numpy/core/src/multiarray/einsum.c
conv_template:> numpy/core/src/multiarray/lowlevel_strided_loops.c
conv_template:> numpy/core/src/multiarray/nditer_templ.c
conv_template:> numpy/core/src/multiarray/scalartypes.c
conv_template:> numpy/core/src/umath/funcs.inc
  adding 'numpy/core/src/umath' to include_dirs.
conv_template:> numpy/core/src/umath/simd.inc
conv_template:> numpy/core/src/umath/loops.h
conv_template:> numpy/core/src/umath/loops.c
conv_template:> numpy/core/src/umath/matmul.h
conv_template:> numpy/core/src/umath/matmul.c
conv_template:> numpy/core/src/umath/clip.h
conv_template:> numpy/core/src/umath/clip.c
conv_template:> numpy/core/src/umath/scalarmath.c
  adding 'numpy/core/src/npymath' to include_dirs.
conv_template:> numpy/core/src/common/templ_common.h
  adding 'numpy/core/src/common' to include_dirs.
numpy.core - nothing done with h_files = ['numpy/core/src/umath/funcs.inc', 'numpy/core/src/umath/simd.inc', 'numpy/core/src/umath/loops.h', 'numpy/core/src/umath/matmul.h', 'numpy/core/src/umath/clip.h', 'numpy/core/src/npymath/npy_math_internal.h', 'numpy/core/src/common/templ_common.h', 'numpy/core/include/numpy/config.h', 'numpy/core/include/numpy/_numpyconfig.h', 'numpy/core/include/numpy/__multiarray_api.h', 'numpy/core/include/numpy/__ufunc_api.h']
building extension "numpy.core._umath_tests" sources
conv_template:> numpy/core/src/umath/_umath_tests.c
building extension "numpy.core._rational_tests" sources
conv_template:> numpy/core/src/umath/_rational_tests.c
building extension "numpy.core._struct_ufunc_tests" sources
conv_template:> numpy/core/src/umath/_struct_ufunc_tests.c
building extension "numpy.core._operand_flag_tests" sources
conv_template:> numpy/core/src/umath/_operand_flag_tests.c
building extension "numpy.fft._pocketfft_internal" sources
building extension "numpy.linalg.lapack_lite" sources
building extension "numpy.linalg._umath_linalg" sources
conv_template:> numpy/linalg/umath_linalg.c
building extension "numpy.random._mt19937" sources
building extension "numpy.random._philox" sources
building extension "numpy.random._pcg64" sources
building extension "numpy.random._sfc64" sources
building extension "numpy.random._common" sources
building extension "numpy.random._bit_generator" sources
building extension "numpy.random._generator" sources
building extension "numpy.random._bounded_integers" sources
building extension "numpy.random.mtrand" sources
building data_files sources
build_src: building npy-pkg config files
customize UnixCCompiler
customize UnixCCompiler using build_clib
building 'npymath' library
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

creating build/temp.linux-aarch64-3.5
creating build/temp.linux-aarch64-3.5/numpy
creating build/temp.linux-aarch64-3.5/numpy/core
creating build/temp.linux-aarch64-3.5/numpy/core/src
creating build/temp.linux-aarch64-3.5/numpy/core/src/npymath
compile options: '-Inumpy/core/src/npymath -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
gcc: numpy/core/src/npymath/npy_math_complex.c
gcc: numpy/core/src/npymath/halffloat.c
gcc: numpy/core/src/npymath/ieee754.c
gcc: numpy/core/src/npymath/npy_math.c
ar: adding 4 object files to build/temp.linux-aarch64-3.5/libnpymath.a
building 'npysort' library
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

creating build/temp.linux-aarch64-3.5/numpy/core/src/npysort
compile options: '-Inumpy/core/src/common -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
gcc: numpy/core/src/npysort/timsort.c
gcc: numpy/core/src/npysort/binsearch.c
gcc: numpy/core/src/npysort/mergesort.c
gcc: numpy/core/src/npysort/heapsort.c
gcc: numpy/core/src/npysort/quicksort.c
gcc: numpy/core/src/npysort/selection.c
gcc: numpy/core/src/npysort/radixsort.c
ar: adding 7 object files to build/temp.linux-aarch64-3.5/libnpysort.a
customize UnixCCompiler
customize UnixCCompiler using build_ext
building 'numpy.core._multiarray_tests' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

creating build/temp.linux-aarch64-3.5/numpy/core/src/multiarray
creating build/temp.linux-aarch64-3.5/numpy/core/src/common
compile options: '-DNPY_INTERNAL_BUILD=1 -DHAVE_NPY_CONFIG_H=1 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
gcc: numpy/core/src/common/mem_overlap.c
gcc: numpy/core/src/multiarray/_multiarray_tests.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/_multiarray_tests.o build/temp.linux-aarch64-3.5/numpy/core/src/common/mem_overlap.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lnpymath -lpython3.5m -o numpy/core/_multiarray_tests.cpython-35m-aarch64-linux-gnu.so
building 'numpy.core._multiarray_umath' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

creating build/temp.linux-aarch64-3.5/numpy/core/src/umath
compile options: '-DNPY_INTERNAL_BUILD=1 -DHAVE_NPY_CONFIG_H=1 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -DHAVE_CBLAS -Inumpy/core/src/umath -Inumpy/core/src/npymath -Inumpy/core/src/common -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
gcc: numpy/core/src/multiarray/datetime.c
gcc: numpy/core/src/multiarray/conversion_utils.c
gcc: numpy/core/src/common/ucsnarrow.c
gcc: numpy/core/src/multiarray/ctors.c
gcc: numpy/core/src/multiarray/flagsobject.c
gcc: numpy/core/src/multiarray/descriptor.c
gcc: numpy/core/src/npymath/npy_math_complex.c
gcc: numpy/core/src/npymath/halffloat.c
gcc: numpy/core/src/umath/matmul.c
gcc: numpy/core/src/common/npy_longdouble.c
gcc: numpy/core/src/multiarray/datetime_busday.c
gcc: numpy/core/src/multiarray/arrayobject.c
gcc: numpy/core/src/multiarray/array_assign_scalar.c
gcc: numpy/core/src/multiarray/temp_elide.c
gcc: numpy/core/src/multiarray/number.c
gcc: numpy/core/src/multiarray/alloc.c
gcc: numpy/core/src/multiarray/calculation.c
gcc: numpy/core/src/multiarray/datetime_busdaycal.c
gcc: numpy/core/src/npymath/ieee754.c
gcc: numpy/core/src/umath/loops.c
gcc: numpy/core/src/umath/ufunc_type_resolution.c
gcc: numpy/core/src/multiarray/buffer.c
gcc: numpy/core/src/multiarray/methods.c
gcc: numpy/core/src/umath/clip.c
gcc: numpy/core/src/multiarray/refcount.c
gcc: numpy/core/src/multiarray/convert.c
gcc: numpy/core/src/common/python_xerbla.c
gcc: numpy/core/src/multiarray/dragon4.c
gcc: numpy/core/src/multiarray/convert_datatype.c
gcc: numpy/core/src/common/mem_overlap.c
gcc: numpy/core/src/multiarray/scalartypes.c
gcc: numpy/core/src/multiarray/common.c
gcc: numpy/core/src/multiarray/mapping.c
gcc: numpy/core/src/multiarray/arraytypes.c
gcc: numpy/core/src/multiarray/scalarapi.c
gcc: numpy/core/src/umath/ufunc_object.c
gcc: numpy/core/src/common/array_assign.c
gcc: numpy/core/src/multiarray/array_assign_array.c
gcc: numpy/core/src/umath/extobj.c
gcc: numpy/core/src/multiarray/nditer_constr.c
gcc: numpy/core/src/multiarray/nditer_api.c
gcc: numpy/core/src/multiarray/getset.c
gcc: numpy/core/src/common/numpyos.c
gcc: numpy/core/src/npymath/npy_math.c
gcc: numpy/core/src/multiarray/typeinfo.c
gcc: numpy/core/src/multiarray/vdot.c
gcc: numpy/core/src/multiarray/arrayfunction_override.c
gcc: numpy/core/src/multiarray/datetime_strings.c
gcc: numpy/core/src/umath/scalarmath.c
gcc: numpy/core/src/multiarray/sequence.c
gcc: numpy/core/src/multiarray/multiarraymodule.c
gcc: numpy/core/src/multiarray/usertypes.c
gcc: numpy/core/src/multiarray/compiled_base.c
gcc: numpy/core/src/multiarray/nditer_pywrap.c
gcc: numpy/core/src/umath/reduction.c
gcc: numpy/core/src/multiarray/lowlevel_strided_loops.c
gcc: numpy/core/src/multiarray/shape.c
gcc: numpy/core/src/multiarray/nditer_templ.c
gcc: numpy/core/src/multiarray/strfuncs.c
gcc: numpy/core/src/umath/cpuid.c
gcc: numpy/core/src/umath/umathmodule.c
gcc: numpy/core/src/multiarray/dtype_transfer.c
gcc: numpy/core/src/multiarray/item_selection.c
gcc: numpy/core/src/common/cblasfuncs.c
gcc: numpy/core/src/common/ufunc_override.c
gcc: numpy/core/src/multiarray/iterators.c
gcc: numpy/core/src/umath/override.c
gcc: numpy/core/src/multiarray/hashdescr.c
gcc: numpy/core/src/multiarray/einsum.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/alloc.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/arrayobject.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/arraytypes.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/array_assign_scalar.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/array_assign_array.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/arrayfunction_override.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/buffer.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/calculation.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/compiled_base.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/common.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/convert.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/convert_datatype.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/conversion_utils.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/ctors.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/datetime.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/datetime_strings.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/datetime_busday.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/datetime_busdaycal.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/descriptor.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/dragon4.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/dtype_transfer.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/einsum.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/flagsobject.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/getset.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/hashdescr.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/item_selection.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/iterators.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/lowlevel_strided_loops.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/mapping.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/methods.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/multiarraymodule.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/nditer_templ.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/nditer_api.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/nditer_constr.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/nditer_pywrap.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/number.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/refcount.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/sequence.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/shape.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/scalarapi.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/scalartypes.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/strfuncs.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/temp_elide.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/typeinfo.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/usertypes.o build/temp.linux-aarch64-3.5/numpy/core/src/multiarray/vdot.o build/temp.linux-aarch64-3.5/numpy/core/src/umath/umathmodule.o build/temp.linux-aarch64-3.5/numpy/core/src/umath/reduction.o build/temp.linux-aarch64-3.5/numpy/core/src/umath/loops.o build/temp.linux-aarch64-3.5/numpy/core/src/umath/matmul.o build/temp.linux-aarch64-3.5/numpy/core/src/umath/clip.o build/temp.linux-aarch64-3.5/numpy/core/src/umath/ufunc_object.o build/temp.linux-aarch64-3.5/numpy/core/src/umath/extobj.o build/temp.linux-aarch64-3.5/numpy/core/src/umath/cpuid.o build/temp.linux-aarch64-3.5/numpy/core/src/umath/scalarmath.o build/temp.linux-aarch64-3.5/numpy/core/src/umath/ufunc_type_resolution.o build/temp.linux-aarch64-3.5/numpy/core/src/umath/override.o build/temp.linux-aarch64-3.5/numpy/core/src/npymath/npy_math.o build/temp.linux-aarch64-3.5/numpy/core/src/npymath/ieee754.o build/temp.linux-aarch64-3.5/numpy/core/src/npymath/npy_math_complex.o build/temp.linux-aarch64-3.5/numpy/core/src/npymath/halffloat.o build/temp.linux-aarch64-3.5/numpy/core/src/common/array_assign.o build/temp.linux-aarch64-3.5/numpy/core/src/common/mem_overlap.o build/temp.linux-aarch64-3.5/numpy/core/src/common/npy_longdouble.o build/temp.linux-aarch64-3.5/numpy/core/src/common/ucsnarrow.o build/temp.linux-aarch64-3.5/numpy/core/src/common/ufunc_override.o build/temp.linux-aarch64-3.5/numpy/core/src/common/numpyos.o build/temp.linux-aarch64-3.5/numpy/core/src/common/cblasfuncs.o build/temp.linux-aarch64-3.5/numpy/core/src/common/python_xerbla.o -L/usr/lib/aarch64-linux-gnu -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lnpymath -lnpysort -lopenblas -lopenblas -lm -lpython3.5m -o numpy/core/_multiarray_umath.cpython-35m-aarch64-linux-gnu.so
building 'numpy.core._umath_tests' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

compile options: '-DNPY_INTERNAL_BUILD=1 -DHAVE_NPY_CONFIG_H=1 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
gcc: numpy/core/src/umath/_umath_tests.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/core/src/umath/_umath_tests.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lpython3.5m -o numpy/core/_umath_tests.cpython-35m-aarch64-linux-gnu.so
building 'numpy.core._rational_tests' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

compile options: '-DNPY_INTERNAL_BUILD=1 -DHAVE_NPY_CONFIG_H=1 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
gcc: numpy/core/src/umath/_rational_tests.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/core/src/umath/_rational_tests.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lpython3.5m -o numpy/core/_rational_tests.cpython-35m-aarch64-linux-gnu.so
building 'numpy.core._struct_ufunc_tests' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

compile options: '-DNPY_INTERNAL_BUILD=1 -DHAVE_NPY_CONFIG_H=1 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
gcc: numpy/core/src/umath/_struct_ufunc_tests.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/core/src/umath/_struct_ufunc_tests.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lpython3.5m -o numpy/core/_struct_ufunc_tests.cpython-35m-aarch64-linux-gnu.so
building 'numpy.core._operand_flag_tests' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

compile options: '-DNPY_INTERNAL_BUILD=1 -DHAVE_NPY_CONFIG_H=1 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
gcc: numpy/core/src/umath/_operand_flag_tests.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/core/src/umath/_operand_flag_tests.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lpython3.5m -o numpy/core/_operand_flag_tests.cpython-35m-aarch64-linux-gnu.so
building 'numpy.fft._pocketfft_internal' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

creating build/temp.linux-aarch64-3.5/numpy/fft
compile options: '-Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
gcc: numpy/fft/_pocketfft.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/fft/_pocketfft.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lpython3.5m -o numpy/fft/_pocketfft_internal.cpython-35m-aarch64-linux-gnu.so
building 'numpy.linalg.lapack_lite' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

creating build/temp.linux-aarch64-3.5/numpy/linalg
creating build/temp.linux-aarch64-3.5/numpy/linalg/lapack_lite
compile options: '-DHAVE_CBLAS -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
gcc: numpy/linalg/lapack_litemodule.c
gcc: numpy/linalg/lapack_lite/python_xerbla.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/linalg/lapack_litemodule.o build/temp.linux-aarch64-3.5/numpy/linalg/lapack_lite/python_xerbla.o -L/usr/lib/aarch64-linux-gnu -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lopenblas -lopenblas -lpython3.5m -o numpy/linalg/lapack_lite.cpython-35m-aarch64-linux-gnu.so
building 'numpy.linalg._umath_linalg' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

compile options: '-DHAVE_CBLAS -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
gcc: numpy/linalg/umath_linalg.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/linalg/umath_linalg.o build/temp.linux-aarch64-3.5/numpy/linalg/lapack_lite/python_xerbla.o -L/usr/lib/aarch64-linux-gnu -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lnpymath -lopenblas -lopenblas -lpython3.5m -o numpy/linalg/_umath_linalg.cpython-35m-aarch64-linux-gnu.so
building 'numpy.random._mt19937' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

creating build/temp.linux-aarch64-3.5/numpy/random
creating build/temp.linux-aarch64-3.5/numpy/random/src
creating build/temp.linux-aarch64-3.5/numpy/random/src/mt19937
compile options: '-D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -DNPY_NO_DEPRECATED_API=0 -Inumpy/random -Inumpy/random/src -Inumpy/random/src/mt19937 -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
extra options: '-U__GNUC_GNU_INLINE__ -std=c99'
gcc: numpy/random/src/mt19937/mt19937.c
gcc: numpy/random/_mt19937.c
gcc: numpy/random/src/mt19937/mt19937-jump.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/random/_mt19937.o build/temp.linux-aarch64-3.5/numpy/random/src/mt19937/mt19937.o build/temp.linux-aarch64-3.5/numpy/random/src/mt19937/mt19937-jump.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lm -lpython3.5m -o numpy/random/_mt19937.cpython-35m-aarch64-linux-gnu.so
building 'numpy.random._philox' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

creating build/temp.linux-aarch64-3.5/numpy/random/src/philox
compile options: '-D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -DNPY_NO_DEPRECATED_API=0 -Inumpy/random -Inumpy/random/src -Inumpy/random/src/philox -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
extra options: '-U__GNUC_GNU_INLINE__ -std=c99'
gcc: numpy/random/src/philox/philox.c
gcc: numpy/random/_philox.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/random/_philox.o build/temp.linux-aarch64-3.5/numpy/random/src/philox/philox.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lm -lpython3.5m -o numpy/random/_philox.cpython-35m-aarch64-linux-gnu.so
building 'numpy.random._pcg64' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

creating build/temp.linux-aarch64-3.5/numpy/random/src/pcg64
compile options: '-D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -DNPY_NO_DEPRECATED_API=0 -Inumpy/random -Inumpy/random/src -Inumpy/random/src/pcg64 -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
extra options: '-U__GNUC_GNU_INLINE__ -std=c99'
gcc: numpy/random/_pcg64.c
gcc: numpy/random/src/pcg64/pcg64.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/random/_pcg64.o build/temp.linux-aarch64-3.5/numpy/random/src/pcg64/pcg64.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lm -lpython3.5m -o numpy/random/_pcg64.cpython-35m-aarch64-linux-gnu.so
building 'numpy.random._sfc64' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

creating build/temp.linux-aarch64-3.5/numpy/random/src/sfc64
compile options: '-D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -DNPY_NO_DEPRECATED_API=0 -Inumpy/random -Inumpy/random/src -Inumpy/random/src/sfc64 -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
extra options: '-U__GNUC_GNU_INLINE__ -std=c99'
gcc: numpy/random/_sfc64.c
gcc: numpy/random/src/sfc64/sfc64.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/random/_sfc64.o build/temp.linux-aarch64-3.5/numpy/random/src/sfc64/sfc64.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lm -lpython3.5m -o numpy/random/_sfc64.cpython-35m-aarch64-linux-gnu.so
building 'numpy.random._common' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

compile options: '-D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -DNPY_NO_DEPRECATED_API=0 -Inumpy/random -Inumpy/random/src -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
extra options: '-U__GNUC_GNU_INLINE__ -std=c99'
gcc: numpy/random/_common.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/random/_common.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lm -lpython3.5m -o numpy/random/_common.cpython-35m-aarch64-linux-gnu.so
building 'numpy.random._bit_generator' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

compile options: '-D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -DNPY_NO_DEPRECATED_API=0 -Inumpy/random -Inumpy/random/src -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
extra options: '-U__GNUC_GNU_INLINE__ -std=c99'
gcc: numpy/random/_bit_generator.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/random/_bit_generator.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lm -lpython3.5m -o numpy/random/_bit_generator.cpython-35m-aarch64-linux-gnu.so
building 'numpy.random._generator' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

creating build/temp.linux-aarch64-3.5/numpy/random/src/distributions
compile options: '-D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -DNPY_NO_DEPRECATED_API=0 -Inumpy/random -Inumpy/random/src -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
extra options: '-U__GNUC_GNU_INLINE__ -std=c99'
gcc: numpy/random/src/distributions/random_hypergeometric.c
gcc: numpy/random/_generator.c
gcc: numpy/random/src/distributions/random_mvhg_marginals.c
gcc: numpy/random/src/distributions/distributions.c
gcc: numpy/random/src/distributions/logfactorial.c
gcc: numpy/random/src/distributions/random_mvhg_count.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/random/_generator.o build/temp.linux-aarch64-3.5/numpy/random/src/distributions/logfactorial.o build/temp.linux-aarch64-3.5/numpy/random/src/distributions/distributions.o build/temp.linux-aarch64-3.5/numpy/random/src/distributions/random_mvhg_count.o build/temp.linux-aarch64-3.5/numpy/random/src/distributions/random_mvhg_marginals.o build/temp.linux-aarch64-3.5/numpy/random/src/distributions/random_hypergeometric.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lm -lpython3.5m -o numpy/random/_generator.cpython-35m-aarch64-linux-gnu.so
building 'numpy.random._bounded_integers' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

compile options: '-D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -DNPY_NO_DEPRECATED_API=0 -Inumpy/random -Inumpy/random/src -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
extra options: '-U__GNUC_GNU_INLINE__ -std=c99'
gcc: numpy/random/_bounded_integers.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/random/_bounded_integers.o build/temp.linux-aarch64-3.5/numpy/random/src/distributions/logfactorial.o build/temp.linux-aarch64-3.5/numpy/random/src/distributions/distributions.o build/temp.linux-aarch64-3.5/numpy/random/src/distributions/random_mvhg_count.o build/temp.linux-aarch64-3.5/numpy/random/src/distributions/random_mvhg_marginals.o build/temp.linux-aarch64-3.5/numpy/random/src/distributions/random_hypergeometric.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lm -lpython3.5m -o numpy/random/_bounded_integers.cpython-35m-aarch64-linux-gnu.so
building 'numpy.random.mtrand' extension
compiling C sources
C compiler: gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -std=c99

creating build/temp.linux-aarch64-3.5/numpy/random/src/legacy
compile options: '-D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE=1 -D_LARGEFILE64_SOURCE=1 -DNPY_NO_DEPRECATED_API=0 -DNP_RANDOM_LEGACY=1 -Inumpy/random -Inumpy/random/src -Inumpy/random/src/legacy -Inumpy/core/include -Inumpy/core/include/numpy -Inumpy/core/src/common -Inumpy/core/src -Inumpy/core -Inumpy/core/src/npymath -Inumpy/core/src/multiarray -Inumpy/core/src/umath -Inumpy/core/src/npysort -I/usr/local/include/python3.5m -Inumpy/core/src/common -Inumpy/core/src/npymath -c'
extra options: '-U__GNUC_GNU_INLINE__ -std=c99'
gcc: numpy/random/src/legacy/legacy-distributions.c
gcc: numpy/random/mtrand.c
gcc: numpy/random/src/distributions/logfactorial.c
gcc: numpy/random/src/distributions/distributions.c
gcc -pthread -shared build/temp.linux-aarch64-3.5/numpy/random/mtrand.o build/temp.linux-aarch64-3.5/numpy/random/src/legacy/legacy-distributions.o build/temp.linux-aarch64-3.5/numpy/random/src/distributions/logfactorial.o build/temp.linux-aarch64-3.5/numpy/random/src/distributions/distributions.o -L/usr/local/lib -Lbuild/temp.linux-aarch64-3.5 -lm -lpython3.5m -o numpy/random/mtrand.cpython-35m-aarch64-linux-gnu.so
+ find /home/numpy -name conftest.py -exec rm -f '{}' +
+ echo VERIFICATION_START
VERIFICATION_START
+ python -m pytest numpy/core/tests/test_multiarray.py numpy/lib/tests/test_function_base.py numpy/linalg/tests/test_linalg.py numpy/random/tests/test_extending.py numpy/testing/tests/test_utils.py --no-header -rA --tb=short -v --ignore=doc -p no:cacheprovider -c /dev/null -W ignore::pytest.PytestUnknownMarkWarning
============================= test session starts ==============================
collecting ... collected 1320 items

numpy/core/tests/test_multiarray.py::TestFlags::test_writeable PASSED    [  0%]
numpy/core/tests/test_multiarray.py::TestFlags::test_writeable_any_base PASSED [  0%]
numpy/core/tests/test_multiarray.py::TestFlags::test_writeable_from_readonly PASSED [  0%]
numpy/core/tests/test_multiarray.py::TestFlags::test_writeable_from_buffer PASSED [  0%]
numpy/core/tests/test_multiarray.py::TestFlags::test_writeable_pickle PASSED [  0%]
numpy/core/tests/test_multiarray.py::TestFlags::test_writeable_from_c_data PASSED [  0%]
numpy/core/tests/test_multiarray.py::TestFlags::test_warnonwrite PASSED  [  0%]
numpy/core/tests/test_multiarray.py::TestFlags::test_otherflags PASSED   [  0%]
numpy/core/tests/test_multiarray.py::TestFlags::test_string_align PASSED [  0%]
numpy/core/tests/test_multiarray.py::TestFlags::test_void_align PASSED   [  0%]
numpy/core/tests/test_multiarray.py::TestHash::test_int PASSED           [  0%]
numpy/core/tests/test_multiarray.py::TestAttributes::test_attributes PASSED [  0%]
numpy/core/tests/test_multiarray.py::TestAttributes::test_dtypeattr PASSED [  0%]
numpy/core/tests/test_multiarray.py::TestAttributes::test_int_subclassing PASSED [  1%]
numpy/core/tests/test_multiarray.py::TestAttributes::test_stridesattr PASSED [  1%]
numpy/core/tests/test_multiarray.py::TestAttributes::test_set_stridesattr PASSED [  1%]
numpy/core/tests/test_multiarray.py::TestAttributes::test_fill PASSED    [  1%]
numpy/core/tests/test_multiarray.py::TestAttributes::test_fill_max_uint64 PASSED [  1%]
numpy/core/tests/test_multiarray.py::TestAttributes::test_fill_struct_array PASSED [  1%]
numpy/core/tests/test_multiarray.py::TestArrayConstruction::test_array PASSED [  1%]
numpy/core/tests/test_multiarray.py::TestArrayConstruction::test_array_empty PASSED [  1%]
numpy/core/tests/test_multiarray.py::TestArrayConstruction::test_array_copy_false PASSED [  1%]
numpy/core/tests/test_multiarray.py::TestArrayConstruction::test_array_copy_true PASSED [  1%]
numpy/core/tests/test_multiarray.py::TestArrayConstruction::test_array_cont PASSED [  1%]
numpy/core/tests/test_multiarray.py::TestAssignment::test_assignment_broadcasting PASSED [  1%]
numpy/core/tests/test_multiarray.py::TestAssignment::test_assignment_errors PASSED [  1%]
numpy/core/tests/test_multiarray.py::TestAssignment::test_unicode_assignment PASSED [  2%]
numpy/core/tests/test_multiarray.py::TestAssignment::test_stringlike_empty_list PASSED [  2%]
numpy/core/tests/test_multiarray.py::TestAssignment::test_longdouble_assignment PASSED [  2%]
numpy/core/tests/test_multiarray.py::TestAssignment::test_cast_to_string PASSED [  2%]
numpy/core/tests/test_multiarray.py::TestDtypedescr::test_construction PASSED [  2%]
numpy/core/tests/test_multiarray.py::TestDtypedescr::test_byteorders PASSED [  2%]
numpy/core/tests/test_multiarray.py::TestDtypedescr::test_structured_non_void PASSED [  2%]
numpy/core/tests/test_multiarray.py::TestZeroRank::test_ellipsis_subscript PASSED [  2%]
numpy/core/tests/test_multiarray.py::TestZeroRank::test_empty_subscript PASSED [  2%]
numpy/core/tests/test_multiarray.py::TestZeroRank::test_invalid_subscript PASSED [  2%]
numpy/core/tests/test_multiarray.py::TestZeroRank::test_ellipsis_subscript_assignment PASSED [  2%]
numpy/core/tests/test_multiarray.py::TestZeroRank::test_empty_subscript_assignment PASSED [  2%]
numpy/core/tests/test_multiarray.py::TestZeroRank::test_invalid_subscript_assignment PASSED [  2%]
numpy/core/tests/test_multiarray.py::TestZeroRank::test_newaxis PASSED   [  3%]
numpy/core/tests/test_multiarray.py::TestZeroRank::test_invalid_newaxis PASSED [  3%]
numpy/core/tests/test_multiarray.py::TestZeroRank::test_constructor PASSED [  3%]
numpy/core/tests/test_multiarray.py::TestZeroRank::test_output PASSED    [  3%]
numpy/core/tests/test_multiarray.py::TestZeroRank::test_real_imag PASSED [  3%]
numpy/core/tests/test_multiarray.py::TestScalarIndexing::test_ellipsis_subscript PASSED [  3%]
numpy/core/tests/test_multiarray.py::TestScalarIndexing::test_empty_subscript PASSED [  3%]
numpy/core/tests/test_multiarray.py::TestScalarIndexing::test_invalid_subscript PASSED [  3%]
numpy/core/tests/test_multiarray.py::TestScalarIndexing::test_invalid_subscript_assignment PASSED [  3%]
numpy/core/tests/test_multiarray.py::TestScalarIndexing::test_newaxis PASSED [  3%]
numpy/core/tests/test_multiarray.py::TestScalarIndexing::test_invalid_newaxis PASSED [  3%]
numpy/core/tests/test_multiarray.py::TestScalarIndexing::test_overlapping_assignment PASSED [  3%]
numpy/core/tests/test_multiarray.py::TestCreation::test_from_attribute PASSED [  3%]
numpy/core/tests/test_multiarray.py::TestCreation::test_from_string PASSED [  4%]
numpy/core/tests/test_multiarray.py::TestCreation::test_void PASSED      [  4%]
numpy/core/tests/test_multiarray.py::TestCreation::test_too_big_error PASSED [  4%]
numpy/core/tests/test_multiarray.py::TestCreation::test_zeros PASSED     [  4%]
numpy/core/tests/test_multiarray.py::TestCreation::test_zeros_big PASSED [  4%]
numpy/core/tests/test_multiarray.py::TestCreation::test_zeros_obj PASSED [  4%]
numpy/core/tests/test_multiarray.py::TestCreation::test_zeros_obj_obj PASSED [  4%]
numpy/core/tests/test_multiarray.py::TestCreation::test_zeros_like_like_zeros PASSED [  4%]
numpy/core/tests/test_multiarray.py::TestCreation::test_empty_unicode PASSED [  4%]
numpy/core/tests/test_multiarray.py::TestCreation::test_sequence_non_homogenous PASSED [  4%]
numpy/core/tests/test_multiarray.py::TestCreation::test_sequence_long SKIPPED [  4%]
numpy/core/tests/test_multiarray.py::TestCreation::test_non_sequence_sequence PASSED [  4%]
numpy/core/tests/test_multiarray.py::TestCreation::test_no_len_object_type PASSED [  4%]
numpy/core/tests/test_multiarray.py::TestCreation::test_false_len_sequence PASSED [  5%]
numpy/core/tests/test_multiarray.py::TestCreation::test_failed_len_sequence PASSED [  5%]
numpy/core/tests/test_multiarray.py::TestCreation::test_array_too_big PASSED [  5%]
numpy/core/tests/test_multiarray.py::TestCreation::test_jagged_ndim_object PASSED [  5%]
numpy/core/tests/test_multiarray.py::TestCreation::test_jagged_shape_object PASSED [  5%]
numpy/core/tests/test_multiarray.py::TestStructured::test_subarray_field_access PASSED [  5%]
numpy/core/tests/test_multiarray.py::TestStructured::test_subarray_comparison PASSED [  5%]
numpy/core/tests/test_multiarray.py::TestStructured::test_casting PASSED [  5%]
numpy/core/tests/test_multiarray.py::TestStructured::test_objview PASSED [  5%]
numpy/core/tests/test_multiarray.py::TestStructured::test_setfield PASSED [  5%]
numpy/core/tests/test_multiarray.py::TestStructured::test_setfield_object PASSED [  5%]
numpy/core/tests/test_multiarray.py::TestStructured::test_zero_width_string PASSED [  5%]
numpy/core/tests/test_multiarray.py::TestStructured::test_base_attr PASSED [  5%]
numpy/core/tests/test_multiarray.py::TestStructured::test_assignment PASSED [  5%]
numpy/core/tests/test_multiarray.py::TestStructured::test_structuredscalar_indexing PASSED [  6%]
numpy/core/tests/test_multiarray.py::TestStructured::test_multiindex_titles PASSED [  6%]
numpy/core/tests/test_multiarray.py::TestBool::test_test_interning PASSED [  6%]
numpy/core/tests/test_multiarray.py::TestBool::test_sum PASSED           [  6%]
numpy/core/tests/test_multiarray.py::TestBool::test_count_nonzero PASSED [  6%]
numpy/core/tests/test_multiarray.py::TestBool::test_count_nonzero_all PASSED [  6%]
numpy/core/tests/test_multiarray.py::TestBool::test_count_nonzero_unaligned PASSED [  6%]
numpy/core/tests/test_multiarray.py::TestBool::test_cast_from_void PASSED [  6%]
numpy/core/tests/test_multiarray.py::TestBool::test_cast_from_unicode XFAIL [  6%]
numpy/core/tests/test_multiarray.py::TestBool::test_cast_from_bytes XFAIL [  6%]
numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_create PASSED [  6%]
numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_sort PASSED [  6%]
numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_argsort PASSED [  6%]
numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_partition PASSED [  7%]
numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_argpartition PASSED [  7%]
numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_resize PASSED [  7%]
numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_view PASSED [  7%]
numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_dumps PASSED [  7%]
numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_pickle PASSED [  7%]
numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_pickle_with_buffercallback SKIPPED [  7%]
numpy/core/tests/test_multiarray.py::TestMethods::test_compress PASSED   [  7%]
numpy/core/tests/test_multiarray.py::TestMethods::test_choose PASSED     [  7%]
numpy/core/tests/test_multiarray.py::TestMethods::test_prod PASSED       [  7%]
numpy/core/tests/test_multiarray.py::TestMethods::test_repeat PASSED     [  7%]
numpy/core/tests/test_multiarray.py::TestMethods::test_reshape PASSED    [  7%]
numpy/core/tests/test_multiarray.py::TestMethods::test_round PASSED      [  7%]
numpy/core/tests/test_multiarray.py::TestMethods::test_squeeze PASSED    [  8%]
numpy/core/tests/test_multiarray.py::TestMethods::test_transpose PASSED  [  8%]
numpy/core/tests/test_multiarray.py::TestMethods::test_sort PASSED       [  8%]
numpy/core/tests/test_multiarray.py::TestMethods::test_void_sort PASSED  [  8%]
numpy/core/tests/test_multiarray.py::TestMethods::test_sort_raises PASSED [  8%]
numpy/core/tests/test_multiarray.py::TestMethods::test_sort_degraded PASSED [  8%]
numpy/core/tests/test_multiarray.py::TestMethods::test_copy PASSED       [  8%]
numpy/core/tests/test_multiarray.py::TestMethods::test_sort_order PASSED [  8%]
numpy/core/tests/test_multiarray.py::TestMethods::test_argsort PASSED    [  8%]
numpy/core/tests/test_multiarray.py::TestMethods::test_sort_unicode_kind PASSED [  8%]
numpy/core/tests/test_multiarray.py::TestMethods::test_searchsorted PASSED [  8%]
numpy/core/tests/test_multiarray.py::TestMethods::test_searchsorted_unicode PASSED [  8%]
numpy/core/tests/test_multiarray.py::TestMethods::test_searchsorted_with_sorter PASSED [  8%]
numpy/core/tests/test_multiarray.py::TestMethods::test_searchsorted_return_type PASSED [  9%]
numpy/core/tests/test_multiarray.py::TestMethods::test_argpartition_out_of_range PASSED [  9%]
numpy/core/tests/test_multiarray.py::TestMethods::test_partition_out_of_range PASSED [  9%]
numpy/core/tests/test_multiarray.py::TestMethods::test_argpartition_integer PASSED [  9%]
numpy/core/tests/test_multiarray.py::TestMethods::test_partition_integer PASSED [  9%]
numpy/core/tests/test_multiarray.py::TestMethods::test_partition_empty_array PASSED [  9%]
numpy/core/tests/test_multiarray.py::TestMethods::test_argpartition_empty_array PASSED [  9%]
numpy/core/tests/test_multiarray.py::TestMethods::test_partition PASSED  [  9%]
numpy/core/tests/test_multiarray.py::TestMethods::test_partition_iterative PASSED [  9%]
numpy/core/tests/test_multiarray.py::TestMethods::test_partition_cdtype PASSED [  9%]
numpy/core/tests/test_multiarray.py::TestMethods::test_partition_unicode_kind PASSED [  9%]
numpy/core/tests/test_multiarray.py::TestMethods::test_partition_fuzz PASSED [  9%]
numpy/core/tests/test_multiarray.py::TestMethods::test_argpartition_gh5524 PASSED [  9%]
numpy/core/tests/test_multiarray.py::TestMethods::test_flatten PASSED    [ 10%]
numpy/core/tests/test_multiarray.py::TestMethods::test_flatten_invalid_order PASSED [ 10%]
numpy/core/tests/test_multiarray.py::TestMethods::test_arr_mult[dot] PASSED [ 10%]
numpy/core/tests/test_multiarray.py::TestMethods::test_arr_mult[matmul] PASSED [ 10%]
numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[i-dot] PASSED [ 10%]
numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[i-matmul] PASSED [ 10%]
numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[f-dot] PASSED [ 10%]
numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[f-matmul] PASSED [ 10%]
numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[d-dot] PASSED [ 10%]
numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[d-matmul] PASSED [ 10%]
numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[F-dot] PASSED [ 10%]
numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[F-matmul] PASSED [ 10%]
numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[D-dot] PASSED [ 10%]
numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[D-matmul] PASSED [ 10%]
numpy/core/tests/test_multiarray.py::TestMethods::test_dot PASSED        [ 11%]
numpy/core/tests/test_multiarray.py::TestMethods::test_dot_type_mismatch PASSED [ 11%]
numpy/core/tests/test_multiarray.py::TestMethods::test_dot_out_mem_overlap PASSED [ 11%]
numpy/core/tests/test_multiarray.py::TestMethods::test_dot_matmul_out PASSED [ 11%]
numpy/core/tests/test_multiarray.py::TestMethods::test_dot_matmul_inner_array_casting_fails PASSED [ 11%]
numpy/core/tests/test_multiarray.py::TestMethods::test_matmul_out PASSED [ 11%]
numpy/core/tests/test_multiarray.py::TestMethods::test_diagonal PASSED   [ 11%]
numpy/core/tests/test_multiarray.py::TestMethods::test_diagonal_view_notwriteable PASSED [ 11%]
numpy/core/tests/test_multiarray.py::TestMethods::test_diagonal_memleak PASSED [ 11%]
numpy/core/tests/test_multiarray.py::TestMethods::test_size_zero_memleak PASSED [ 11%]
numpy/core/tests/test_multiarray.py::TestMethods::test_trace PASSED      [ 11%]
numpy/core/tests/test_multiarray.py::TestMethods::test_trace_subclass PASSED [ 11%]
numpy/core/tests/test_multiarray.py::TestMethods::test_put PASSED        [ 11%]
numpy/core/tests/test_multiarray.py::TestMethods::test_ravel PASSED      [ 12%]
numpy/core/tests/test_multiarray.py::TestMethods::test_ravel_subclass PASSED [ 12%]
numpy/core/tests/test_multiarray.py::TestMethods::test_swapaxes PASSED   [ 12%]
numpy/core/tests/test_multiarray.py::TestMethods::test_conjugate PASSED  [ 12%]
numpy/core/tests/test_multiarray.py::TestMethods::test__complex__ PASSED [ 12%]
numpy/core/tests/test_multiarray.py::TestMethods::test__complex__should_not_work PASSED [ 12%]
numpy/core/tests/test_multiarray.py::TestCequenceMethods::test_array_contains PASSED [ 12%]
numpy/core/tests/test_multiarray.py::TestBinop::test_inplace PASSED      [ 12%]
numpy/core/tests/test_multiarray.py::TestBinop::test_ufunc_binop_interaction PASSED [ 12%]
numpy/core/tests/test_multiarray.py::TestBinop::test_ufunc_override_normalize_signature PASSED [ 12%]
numpy/core/tests/test_multiarray.py::TestBinop::test_array_ufunc_index PASSED [ 12%]
numpy/core/tests/test_multiarray.py::TestBinop::test_out_override PASSED [ 12%]
numpy/core/tests/test_multiarray.py::TestBinop::test_pow_override_with_errors PASSED [ 12%]
numpy/core/tests/test_multiarray.py::TestBinop::test_pow_array_object_dtype PASSED [ 13%]
numpy/core/tests/test_multiarray.py::TestBinop::test_pos_array_ufunc_override PASSED [ 13%]
numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_extension_incref_elide PASSED [ 13%]
numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_extension_incref_elide_stack PASSED [ 13%]
numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_temporary_with_cast PASSED [ 13%]
numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_elide_broadcast PASSED [ 13%]
numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_elide_scalar PASSED [ 13%]
numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_elide_scalar_readonly PASSED [ 13%]
numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_elide_readonly PASSED [ 13%]
numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_elide_updateifcopy PASSED [ 13%]
numpy/core/tests/test_multiarray.py::TestCAPI::test_IsPythonScalar PASSED [ 13%]
numpy/core/tests/test_multiarray.py::TestSubscripting::test_test_zero_rank PASSED [ 13%]
numpy/core/tests/test_multiarray.py::TestPickling::test_correct_protocol5_error_message PASSED [ 13%]
numpy/core/tests/test_multiarray.py::TestPickling::test_record_array_with_object_dtype PASSED [ 14%]
numpy/core/tests/test_multiarray.py::TestPickling::test_f_contiguous_array SKIPPED [ 14%]
numpy/core/tests/test_multiarray.py::TestPickling::test_non_contiguous_array PASSED [ 14%]
numpy/core/tests/test_multiarray.py::TestPickling::test_roundtrip PASSED [ 14%]
numpy/core/tests/test_multiarray.py::TestPickling::test_version0_int8 PASSED [ 14%]
numpy/core/tests/test_multiarray.py::TestPickling::test_version0_float32 PASSED [ 14%]
numpy/core/tests/test_multiarray.py::TestPickling::test_version0_object PASSED [ 14%]
numpy/core/tests/test_multiarray.py::TestPickling::test_version1_int8 PASSED [ 14%]
numpy/core/tests/test_multiarray.py::TestPickling::test_version1_float32 PASSED [ 14%]
numpy/core/tests/test_multiarray.py::TestPickling::test_version1_object PASSED [ 14%]
numpy/core/tests/test_multiarray.py::TestPickling::test_subarray_int_shape PASSED [ 14%]
numpy/core/tests/test_multiarray.py::TestPickling::test_datetime64_byteorder PASSED [ 14%]
numpy/core/tests/test_multiarray.py::TestFancyIndexing::test_list PASSED [ 14%]
numpy/core/tests/test_multiarray.py::TestFancyIndexing::test_tuple PASSED [ 15%]
numpy/core/tests/test_multiarray.py::TestFancyIndexing::test_mask PASSED [ 15%]
numpy/core/tests/test_multiarray.py::TestFancyIndexing::test_mask2 PASSED [ 15%]
numpy/core/tests/test_multiarray.py::TestFancyIndexing::test_assign_mask PASSED [ 15%]
numpy/core/tests/test_multiarray.py::TestFancyIndexing::test_assign_mask2 PASSED [ 15%]
numpy/core/tests/test_multiarray.py::TestStringCompare::test_string PASSED [ 15%]
numpy/core/tests/test_multiarray.py::TestStringCompare::test_mixed PASSED [ 15%]
numpy/core/tests/test_multiarray.py::TestStringCompare::test_unicode PASSED [ 15%]
numpy/core/tests/test_multiarray.py::TestArgmax::test_all PASSED         [ 15%]
numpy/core/tests/test_multiarray.py::TestArgmax::test_combinations PASSED [ 15%]
numpy/core/tests/test_multiarray.py::TestArgmax::test_output_shape PASSED [ 15%]
numpy/core/tests/test_multiarray.py::TestArgmax::test_argmax_unicode PASSED [ 15%]
numpy/core/tests/test_multiarray.py::TestArgmax::test_np_vs_ndarray PASSED [ 15%]
numpy/core/tests/test_multiarray.py::TestArgmax::test_object_argmax_with_NULLs PASSED [ 15%]
numpy/core/tests/test_multiarray.py::TestArgmin::test_all PASSED         [ 16%]
numpy/core/tests/test_multiarray.py::TestArgmin::test_combinations PASSED [ 16%]
numpy/core/tests/test_multiarray.py::TestArgmin::test_minimum_signed_integers PASSED [ 16%]
numpy/core/tests/test_multiarray.py::TestArgmin::test_output_shape PASSED [ 16%]
numpy/core/tests/test_multiarray.py::TestArgmin::test_argmin_unicode PASSED [ 16%]
numpy/core/tests/test_multiarray.py::TestArgmin::test_np_vs_ndarray PASSED [ 16%]
numpy/core/tests/test_multiarray.py::TestArgmin::test_object_argmin_with_NULLs PASSED [ 16%]
numpy/core/tests/test_multiarray.py::TestMinMax::test_scalar PASSED      [ 16%]
numpy/core/tests/test_multiarray.py::TestMinMax::test_axis PASSED        [ 16%]
numpy/core/tests/test_multiarray.py::TestMinMax::test_datetime PASSED    [ 16%]
numpy/core/tests/test_multiarray.py::TestNewaxis::test_basic PASSED      [ 16%]
numpy/core/tests/test_multiarray.py::TestClip::test_basic PASSED         [ 16%]
numpy/core/tests/test_multiarray.py::TestClip::test_record_array PASSED  [ 16%]
numpy/core/tests/test_multiarray.py::TestClip::test_max_or_min PASSED    [ 17%]
numpy/core/tests/test_multiarray.py::TestClip::test_nan PASSED           [ 17%]
numpy/core/tests/test_multiarray.py::TestCompress::test_axis PASSED      [ 17%]
numpy/core/tests/test_multiarray.py::TestCompress::test_truncate PASSED  [ 17%]
numpy/core/tests/test_multiarray.py::TestCompress::test_flatten PASSED   [ 17%]
numpy/core/tests/test_multiarray.py::TestPutmask::test_ip_types PASSED   [ 17%]
numpy/core/tests/test_multiarray.py::TestPutmask::test_mask_size PASSED  [ 17%]
numpy/core/tests/test_multiarray.py::TestPutmask::test_byteorder[>i4] PASSED [ 17%]
numpy/core/tests/test_multiarray.py::TestPutmask::test_byteorder[<i4] PASSED [ 17%]
numpy/core/tests/test_multiarray.py::TestPutmask::test_record_array PASSED [ 17%]
numpy/core/tests/test_multiarray.py::TestPutmask::test_overlaps PASSED   [ 17%]
numpy/core/tests/test_multiarray.py::TestTake::test_ip_types PASSED      [ 17%]
numpy/core/tests/test_multiarray.py::TestTake::test_raise PASSED         [ 17%]
numpy/core/tests/test_multiarray.py::TestTake::test_clip PASSED          [ 18%]
numpy/core/tests/test_multiarray.py::TestTake::test_wrap PASSED          [ 18%]
numpy/core/tests/test_multiarray.py::TestTake::test_byteorder[>i4] PASSED [ 18%]
numpy/core/tests/test_multiarray.py::TestTake::test_byteorder[<i4] PASSED [ 18%]
numpy/core/tests/test_multiarray.py::TestTake::test_record_array PASSED  [ 18%]
numpy/core/tests/test_multiarray.py::TestTake::test_out_overlap PASSED   [ 18%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[uint8] PASSED [ 18%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[uint16] PASSED [ 18%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[uint32] PASSED [ 18%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[uint64] PASSED [ 18%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[int8] PASSED [ 18%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[int16] PASSED [ 18%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[int32] PASSED [ 18%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[int64] PASSED [ 19%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[float16] PASSED [ 19%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[float32] PASSED [ 19%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[float64] PASSED [ 19%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_mixed PASSED      [ 19%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_datetime PASSED   [ 19%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_object PASSED     [ 19%]
numpy/core/tests/test_multiarray.py::TestLexsort::test_invalid_axis PASSED [ 19%]
numpy/core/tests/test_multiarray.py::TestIO::test_nofile PASSED          [ 19%]
numpy/core/tests/test_multiarray.py::TestIO::test_bool_fromstring PASSED [ 19%]
numpy/core/tests/test_multiarray.py::TestIO::test_uint64_fromstring PASSED [ 19%]
numpy/core/tests/test_multiarray.py::TestIO::test_int64_fromstring PASSED [ 19%]
numpy/core/tests/test_multiarray.py::TestIO::test_empty_files_binary PASSED [ 19%]
numpy/core/tests/test_multiarray.py::TestIO::test_empty_files_text PASSED [ 20%]
numpy/core/tests/test_multiarray.py::TestIO::test_roundtrip_file PASSED  [ 20%]
numpy/core/tests/test_multiarray.py::TestIO::test_roundtrip_filename PASSED [ 20%]
numpy/core/tests/test_multiarray.py::TestIO::test_roundtrip_pathlib PASSED [ 20%]
numpy/core/tests/test_multiarray.py::TestIO::test_roundtrip_dump_pathlib PASSED [ 20%]
numpy/core/tests/test_multiarray.py::TestIO::test_roundtrip_binary_str PASSED [ 20%]
numpy/core/tests/test_multiarray.py::TestIO::test_roundtrip_str PASSED   [ 20%]
numpy/core/tests/test_multiarray.py::TestIO::test_roundtrip_repr PASSED  [ 20%]
numpy/core/tests/test_multiarray.py::TestIO::test_unseekable_fromfile PASSED [ 20%]
numpy/core/tests/test_multiarray.py::TestIO::test_io_open_unbuffered_fromfile PASSED [ 20%]
numpy/core/tests/test_multiarray.py::TestIO::test_largish_file PASSED    [ 20%]
numpy/core/tests/test_multiarray.py::TestIO::test_io_open_buffered_fromfile PASSED [ 20%]
numpy/core/tests/test_multiarray.py::TestIO::test_file_position_after_fromfile PASSED [ 20%]
numpy/core/tests/test_multiarray.py::TestIO::test_file_position_after_tofile PASSED [ 20%]
numpy/core/tests/test_multiarray.py::TestIO::test_load_object_array_fromfile PASSED [ 21%]
numpy/core/tests/test_multiarray.py::TestIO::test_fromfile_offset PASSED [ 21%]
numpy/core/tests/test_multiarray.py::TestIO::test_nan PASSED             [ 21%]
numpy/core/tests/test_multiarray.py::TestIO::test_inf PASSED             [ 21%]
numpy/core/tests/test_multiarray.py::TestIO::test_numbers PASSED         [ 21%]
numpy/core/tests/test_multiarray.py::TestIO::test_binary PASSED          [ 21%]
numpy/core/tests/test_multiarray.py::TestIO::test_big_binary PASSED      [ 21%]
numpy/core/tests/test_multiarray.py::TestIO::test_string PASSED          [ 21%]
numpy/core/tests/test_multiarray.py::TestIO::test_counted_string PASSED  [ 21%]
numpy/core/tests/test_multiarray.py::TestIO::test_string_with_ws PASSED  [ 21%]
numpy/core/tests/test_multiarray.py::TestIO::test_counted_string_with_ws PASSED [ 21%]
numpy/core/tests/test_multiarray.py::TestIO::test_ascii PASSED           [ 21%]
numpy/core/tests/test_multiarray.py::TestIO::test_malformed PASSED       [ 21%]
numpy/core/tests/test_multiarray.py::TestIO::test_long_sep PASSED        [ 22%]
numpy/core/tests/test_multiarray.py::TestIO::test_dtype PASSED           [ 22%]
numpy/core/tests/test_multiarray.py::TestIO::test_dtype_bool PASSED      [ 22%]
numpy/core/tests/test_multiarray.py::TestIO::test_tofile_sep PASSED      [ 22%]
numpy/core/tests/test_multiarray.py::TestIO::test_tofile_format PASSED   [ 22%]
numpy/core/tests/test_multiarray.py::TestIO::test_locale SKIPPED         [ 22%]
numpy/core/tests/test_multiarray.py::TestIO::test_fromfile_subarray_binary PASSED [ 22%]
numpy/core/tests/test_multiarray.py::TestFromBuffer::test_basic[float-<] PASSED [ 22%]
numpy/core/tests/test_multiarray.py::TestFromBuffer::test_basic[float->] PASSED [ 22%]
numpy/core/tests/test_multiarray.py::TestFromBuffer::test_basic[int-<] PASSED [ 22%]
numpy/core/tests/test_multiarray.py::TestFromBuffer::test_basic[int->] PASSED [ 22%]
numpy/core/tests/test_multiarray.py::TestFromBuffer::test_basic[complex-<] PASSED [ 22%]
numpy/core/tests/test_multiarray.py::TestFromBuffer::test_basic[complex->] PASSED [ 22%]
numpy/core/tests/test_multiarray.py::TestFromBuffer::test_empty PASSED   [ 23%]
numpy/core/tests/test_multiarray.py::TestFlat::test_contiguous PASSED    [ 23%]
numpy/core/tests/test_multiarray.py::TestFlat::test_discontiguous PASSED [ 23%]
numpy/core/tests/test_multiarray.py::TestFlat::test___array__ PASSED     [ 23%]
numpy/core/tests/test_multiarray.py::TestFlat::test_refcount PASSED      [ 23%]
numpy/core/tests/test_multiarray.py::TestResize::test_basic PASSED       [ 23%]
numpy/core/tests/test_multiarray.py::TestResize::test_check_reference PASSED [ 23%]
numpy/core/tests/test_multiarray.py::TestResize::test_int_shape PASSED   [ 23%]
numpy/core/tests/test_multiarray.py::TestResize::test_none_shape PASSED  [ 23%]
numpy/core/tests/test_multiarray.py::TestResize::test_0d_shape PASSED    [ 23%]
numpy/core/tests/test_multiarray.py::TestResize::test_invalid_arguments PASSED [ 23%]
numpy/core/tests/test_multiarray.py::TestResize::test_freeform_shape PASSED [ 23%]
numpy/core/tests/test_multiarray.py::TestResize::test_zeros_appended PASSED [ 23%]
numpy/core/tests/test_multiarray.py::TestResize::test_obj_obj PASSED     [ 24%]
numpy/core/tests/test_multiarray.py::TestResize::test_empty_view PASSED  [ 24%]
numpy/core/tests/test_multiarray.py::TestResize::test_check_weakref PASSED [ 24%]
numpy/core/tests/test_multiarray.py::TestRecord::test_field_rename PASSED [ 24%]
numpy/core/tests/test_multiarray.py::TestRecord::test_multiple_field_name_occurrence PASSED [ 24%]
numpy/core/tests/test_multiarray.py::TestRecord::test_bytes_fields PASSED [ 24%]
numpy/core/tests/test_multiarray.py::TestRecord::test_multiple_field_name_unicode PASSED [ 24%]
numpy/core/tests/test_multiarray.py::TestRecord::test_unicode_field_titles SKIPPED [ 24%]
numpy/core/tests/test_multiarray.py::TestRecord::test_unicode_field_names SKIPPED [ 24%]
numpy/core/tests/test_multiarray.py::TestRecord::test_fromarrays_unicode PASSED [ 24%]
numpy/core/tests/test_multiarray.py::TestRecord::test_unicode_order PASSED [ 24%]
numpy/core/tests/test_multiarray.py::TestRecord::test_field_names PASSED [ 24%]
numpy/core/tests/test_multiarray.py::TestRecord::test_record_hash PASSED [ 24%]
numpy/core/tests/test_multiarray.py::TestRecord::test_record_no_hash PASSED [ 25%]
numpy/core/tests/test_multiarray.py::TestRecord::test_empty_structure_creation PASSED [ 25%]
numpy/core/tests/test_multiarray.py::TestRecord::test_multifield_indexing_view PASSED [ 25%]
numpy/core/tests/test_multiarray.py::TestView::test_basic PASSED         [ 25%]
numpy/core/tests/test_multiarray.py::TestStats::test_python_type PASSED  [ 25%]
numpy/core/tests/test_multiarray.py::TestStats::test_keepdims PASSED     [ 25%]
numpy/core/tests/test_multiarray.py::TestStats::test_out PASSED          [ 25%]
numpy/core/tests/test_multiarray.py::TestStats::test_dtype_from_input PASSED [ 25%]
numpy/core/tests/test_multiarray.py::TestStats::test_dtype_from_dtype PASSED [ 25%]
numpy/core/tests/test_multiarray.py::TestStats::test_ddof PASSED         [ 25%]
numpy/core/tests/test_multiarray.py::TestStats::test_ddof_too_big PASSED [ 25%]
numpy/core/tests/test_multiarray.py::TestStats::test_empty PASSED        [ 25%]
numpy/core/tests/test_multiarray.py::TestStats::test_mean_values PASSED  [ 25%]
numpy/core/tests/test_multiarray.py::TestStats::test_mean_float16 PASSED [ 25%]
numpy/core/tests/test_multiarray.py::TestStats::test_var_values PASSED   [ 26%]
numpy/core/tests/test_multiarray.py::TestStats::test_std_values PASSED   [ 26%]
numpy/core/tests/test_multiarray.py::TestStats::test_subclass PASSED     [ 26%]
numpy/core/tests/test_multiarray.py::TestVdot::test_basic PASSED         [ 26%]
numpy/core/tests/test_multiarray.py::TestVdot::test_vdot_array_order PASSED [ 26%]
numpy/core/tests/test_multiarray.py::TestVdot::test_vdot_uncontiguous PASSED [ 26%]
numpy/core/tests/test_multiarray.py::TestDot::test_dotmatmat PASSED      [ 26%]
numpy/core/tests/test_multiarray.py::TestDot::test_dotmatvec PASSED      [ 26%]
numpy/core/tests/test_multiarray.py::TestDot::test_dotmatvec2 PASSED     [ 26%]
numpy/core/tests/test_multiarray.py::TestDot::test_dotvecmat PASSED      [ 26%]
numpy/core/tests/test_multiarray.py::TestDot::test_dotvecmat2 PASSED     [ 26%]
numpy/core/tests/test_multiarray.py::TestDot::test_dotvecmat3 PASSED     [ 26%]
numpy/core/tests/test_multiarray.py::TestDot::test_dotvecvecouter PASSED [ 26%]
numpy/core/tests/test_multiarray.py::TestDot::test_dotvecvecinner PASSED [ 27%]
numpy/core/tests/test_multiarray.py::TestDot::test_dotcolumnvect1 PASSED [ 27%]
numpy/core/tests/test_multiarray.py::TestDot::test_dotcolumnvect2 PASSED [ 27%]
numpy/core/tests/test_multiarray.py::TestDot::test_dotvecscalar PASSED   [ 27%]
numpy/core/tests/test_multiarray.py::TestDot::test_dotvecscalar2 PASSED  [ 27%]
numpy/core/tests/test_multiarray.py::TestDot::test_all PASSED            [ 27%]
numpy/core/tests/test_multiarray.py::TestDot::test_vecobject PASSED      [ 27%]
numpy/core/tests/test_multiarray.py::TestDot::test_dot_2args PASSED      [ 27%]
numpy/core/tests/test_multiarray.py::TestDot::test_dot_3args PASSED      [ 27%]
numpy/core/tests/test_multiarray.py::TestDot::test_dot_3args_errors PASSED [ 27%]
numpy/core/tests/test_multiarray.py::TestDot::test_dot_array_order PASSED [ 27%]
numpy/core/tests/test_multiarray.py::TestDot::test_accelerate_framework_sgemv_fix PASSED [ 27%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_exceptions PASSED  [ 27%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_shapes PASSED      [ 28%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_result_types PASSED [ 28%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_scalar_output PASSED [ 28%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_vector_vector_values PASSED [ 28%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_vector_matrix_values PASSED [ 28%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_matrix_vector_values PASSED [ 28%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_matrix_matrix_values PASSED [ 28%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_out_arg PASSED     [ 28%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_out_contiguous PASSED [ 28%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args0] PASSED [ 28%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args1] PASSED [ 28%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args2] PASSED [ 28%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args3] PASSED [ 28%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args4] PASSED [ 29%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args5] PASSED [ 29%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args6] PASSED [ 29%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args7] PASSED [ 29%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args8] PASSED [ 29%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args9] PASSED [ 29%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args10] PASSED [ 29%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args11] PASSED [ 29%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args12] PASSED [ 29%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args13] PASSED [ 29%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args14] PASSED [ 29%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args15] PASSED [ 29%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args16] PASSED [ 29%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args17] PASSED [ 30%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args18] PASSED [ 30%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args19] PASSED [ 30%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args20] PASSED [ 30%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args21] PASSED [ 30%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args22] PASSED [ 30%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args23] PASSED [ 30%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args24] PASSED [ 30%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args25] PASSED [ 30%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args26] PASSED [ 30%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args27] PASSED [ 30%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args28] PASSED [ 30%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args29] PASSED [ 30%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args30] PASSED [ 30%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args31] PASSED [ 31%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args32] PASSED [ 31%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_matmul_object PASSED [ 31%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_matmul_object_type_scalar PASSED [ 31%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_matmul_empty PASSED [ 31%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_matmul_exception_multiply PASSED [ 31%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_matmul_exception_add PASSED [ 31%]
numpy/core/tests/test_multiarray.py::TestMatmul::test_matmul_bool PASSED [ 31%]
numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_exceptions PASSED [ 31%]
numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_shapes PASSED [ 31%]
numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_result_types PASSED [ 31%]
numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_scalar_output PASSED [ 31%]
numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_vector_vector_values PASSED [ 31%]
numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_vector_matrix_values PASSED [ 32%]
numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_matrix_vector_values PASSED [ 32%]
numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_matrix_matrix_values PASSED [ 32%]
numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_array_priority_override PASSED [ 32%]
numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_matmul_raises PASSED [ 32%]
numpy/core/tests/test_multiarray.py::test_matmul_inplace PASSED          [ 32%]
numpy/core/tests/test_multiarray.py::test_matmul_axes PASSED             [ 32%]
numpy/core/tests/test_multiarray.py::TestInner::test_inner_type_mismatch PASSED [ 32%]
numpy/core/tests/test_multiarray.py::TestInner::test_inner_scalar_and_vector PASSED [ 32%]
numpy/core/tests/test_multiarray.py::TestInner::test_vecself PASSED      [ 32%]
numpy/core/tests/test_multiarray.py::TestInner::test_inner_product_with_various_contiguities PASSED [ 32%]
numpy/core/tests/test_multiarray.py::TestInner::test_3d_tensor PASSED    [ 32%]
numpy/core/tests/test_multiarray.py::TestAlen::test_basic PASSED         [ 32%]
numpy/core/tests/test_multiarray.py::TestAlen::test_singleton PASSED     [ 33%]
numpy/core/tests/test_multiarray.py::TestChoose::test_basic PASSED       [ 33%]
numpy/core/tests/test_multiarray.py::TestChoose::test_broadcast1 PASSED  [ 33%]
numpy/core/tests/test_multiarray.py::TestChoose::test_broadcast2 PASSED  [ 33%]
numpy/core/tests/test_multiarray.py::TestRepeat::test_basic PASSED       [ 33%]
numpy/core/tests/test_multiarray.py::TestRepeat::test_broadcast1 PASSED  [ 33%]
numpy/core/tests/test_multiarray.py::TestRepeat::test_axis_spec PASSED   [ 33%]
numpy/core/tests/test_multiarray.py::TestRepeat::test_broadcast2 PASSED  [ 33%]
numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_simple2d[float] PASSED [ 33%]
numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_simple2d[object] PASSED [ 33%]
numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_mirror2d[float] PASSED [ 33%]
numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_mirror2d[object] PASSED [ 33%]
numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_simple[float] PASSED [ 33%]
numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_simple[object] PASSED [ 34%]
numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_mirror[float] PASSED [ 34%]
numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_mirror[object] PASSED [ 34%]
numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_circular[float] PASSED [ 34%]
numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_circular[object] PASSED [ 34%]
numpy/core/tests/test_multiarray.py::TestStackedNeighborhoodIter::test_simple_const PASSED [ 34%]
numpy/core/tests/test_multiarray.py::TestStackedNeighborhoodIter::test_simple_mirror PASSED [ 34%]
numpy/core/tests/test_multiarray.py::TestStackedNeighborhoodIter::test_simple_circular PASSED [ 34%]
numpy/core/tests/test_multiarray.py::TestStackedNeighborhoodIter::test_simple_strict_within PASSED [ 34%]
numpy/core/tests/test_multiarray.py::TestWarnings::test_complex_warning PASSED [ 34%]
numpy/core/tests/test_multiarray.py::TestMinScalarType::test_usigned_shortshort PASSED [ 34%]
numpy/core/tests/test_multiarray.py::TestMinScalarType::test_usigned_short PASSED [ 34%]
numpy/core/tests/test_multiarray.py::TestMinScalarType::test_usigned_int PASSED [ 34%]
numpy/core/tests/test_multiarray.py::TestMinScalarType::test_usigned_longlong PASSED [ 35%]
numpy/core/tests/test_multiarray.py::TestMinScalarType::test_object PASSED [ 35%]
numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_native_padding PASSED [ 35%]
numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_native_padding_2 PASSED [ 35%]
numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_trailing_padding PASSED [ 35%]
numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_native_padding_3 PASSED [ 35%]
numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_padding_with_array_inside_struct PASSED [ 35%]
numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_byteorder_inside_struct PASSED [ 35%]
numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_intra_padding PASSED [ 35%]
numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_char_vs_string PASSED [ 35%]
numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_field_order PASSED [ 35%]
numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_unnamed_fields PASSED [ 35%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_roundtrip PASSED [ 35%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_roundtrip_half PASSED [ 35%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_roundtrip_single_types PASSED [ 36%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_roundtrip_scalar PASSED [ 36%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_invalid_buffer_format PASSED [ 36%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_export_simple_1d PASSED [ 36%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_export_simple_nd PASSED [ 36%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_export_discontiguous PASSED [ 36%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_export_record PASSED [ 36%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_export_subarray PASSED [ 36%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_export_endian PASSED [ 36%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_export_flags PASSED [ 36%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_padding PASSED [ 36%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_reference_leak PASSED [ 36%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_padded_struct_array PASSED [ 36%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_relaxed_strides PASSED [ 37%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_out_of_order_fields PASSED [ 37%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_max_dims PASSED [ 37%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_error_too_many_dims PASSED [ 37%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_error_pointer_type PASSED [ 37%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_error_message_unsupported PASSED [ 37%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_ctypes_integer_via_memoryview PASSED [ 37%]
numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_ctypes_struct_via_memoryview PASSED [ 37%]
numpy/core/tests/test_multiarray.py::TestArrayAttributeDeletion::test_multiarray_writable_attributes_deletion PASSED [ 37%]
numpy/core/tests/test_multiarray.py::TestArrayAttributeDeletion::test_multiarray_not_writable_attributes_deletion PASSED [ 37%]
numpy/core/tests/test_multiarray.py::TestArrayAttributeDeletion::test_multiarray_flags_writable_attribute_deletion PASSED [ 37%]
numpy/core/tests/test_multiarray.py::TestArrayAttributeDeletion::test_multiarray_flags_not_writable_attribute_deletion PASSED [ 37%]
numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val0-iface0-0.5] PASSED [ 37%]
numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val1-iface1-expected1] PASSED [ 38%]
numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val2-iface2-expected2] PASSED [ 38%]
numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val3-iface3-0.5] PASSED [ 38%]
numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val4-iface4-TypeError] PASSED [ 38%]
numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val5-iface5-expected5] PASSED [ 38%]
numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val6-iface6-ValueError] PASSED [ 38%]
numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val7-iface7-0.5] PASSED [ 38%]
numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val8-iface8-ValueError] PASSED [ 38%]
numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val9-iface9-TypeError] PASSED [ 38%]
numpy/core/tests/test_multiarray.py::test_interface_no_shape PASSED      [ 38%]
numpy/core/tests/test_multiarray.py::test_array_interface_itemsize PASSED [ 38%]
numpy/core/tests/test_multiarray.py::test_array_interface_empty_shape PASSED [ 38%]
numpy/core/tests/test_multiarray.py::test_array_interface_offset PASSED  [ 38%]
numpy/core/tests/test_multiarray.py::test_flat_element_deletion PASSED   [ 39%]
numpy/core/tests/test_multiarray.py::test_scalar_element_deletion PASSED [ 39%]
numpy/core/tests/test_multiarray.py::TestMemEventHook::test_mem_seteventhook PASSED [ 39%]
numpy/core/tests/test_multiarray.py::TestMapIter::test_mapiter PASSED    [ 39%]
numpy/core/tests/test_multiarray.py::TestAsCArray::test_1darray PASSED   [ 39%]
numpy/core/tests/test_multiarray.py::TestAsCArray::test_2darray PASSED   [ 39%]
numpy/core/tests/test_multiarray.py::TestAsCArray::test_3darray PASSED   [ 39%]
numpy/core/tests/test_multiarray.py::TestConversion::test_array_scalar_relational_operation PASSED [ 39%]
numpy/core/tests/test_multiarray.py::TestConversion::test_to_bool_scalar PASSED [ 39%]
numpy/core/tests/test_multiarray.py::TestConversion::test_to_int_scalar PASSED [ 39%]
numpy/core/tests/test_multiarray.py::TestWhere::test_basic PASSED        [ 39%]
numpy/core/tests/test_multiarray.py::TestWhere::test_exotic PASSED       [ 39%]
numpy/core/tests/test_multiarray.py::TestWhere::test_ndim PASSED         [ 39%]
numpy/core/tests/test_multiarray.py::TestWhere::test_dtype_mix PASSED    [ 40%]
numpy/core/tests/test_multiarray.py::TestWhere::test_foreign PASSED      [ 40%]
numpy/core/tests/test_multiarray.py::TestWhere::test_error PASSED        [ 40%]
numpy/core/tests/test_multiarray.py::TestWhere::test_string PASSED       [ 40%]
numpy/core/tests/test_multiarray.py::TestWhere::test_empty_result PASSED [ 40%]
numpy/core/tests/test_multiarray.py::TestWhere::test_largedim PASSED     [ 40%]
numpy/core/tests/test_multiarray.py::TestSizeOf::test_empty_array PASSED [ 40%]
numpy/core/tests/test_multiarray.py::TestSizeOf::test_array_int32 PASSED [ 40%]
numpy/core/tests/test_multiarray.py::TestSizeOf::test_array_int64 PASSED [ 40%]
numpy/core/tests/test_multiarray.py::TestSizeOf::test_array_float32 PASSED [ 40%]
numpy/core/tests/test_multiarray.py::TestSizeOf::test_array_float64 PASSED [ 40%]
numpy/core/tests/test_multiarray.py::TestSizeOf::test_view PASSED        [ 40%]
numpy/core/tests/test_multiarray.py::TestSizeOf::test_reshape PASSED     [ 40%]
numpy/core/tests/test_multiarray.py::TestSizeOf::test_resize PASSED      [ 40%]
numpy/core/tests/test_multiarray.py::TestSizeOf::test_error PASSED       [ 41%]
numpy/core/tests/test_multiarray.py::TestHashing::test_arrays_not_hashable PASSED [ 41%]
numpy/core/tests/test_multiarray.py::TestHashing::test_collections_hashable PASSED [ 41%]
numpy/core/tests/test_multiarray.py::TestArrayPriority::test_ndarray_subclass PASSED [ 41%]
numpy/core/tests/test_multiarray.py::TestArrayPriority::test_ndarray_other PASSED [ 41%]
numpy/core/tests/test_multiarray.py::TestArrayPriority::test_subclass_subclass PASSED [ 41%]
numpy/core/tests/test_multiarray.py::TestArrayPriority::test_subclass_other PASSED [ 41%]
numpy/core/tests/test_multiarray.py::TestBytestringArrayNonzero::test_empty_bstring_array_is_falsey PASSED [ 41%]
numpy/core/tests/test_multiarray.py::TestBytestringArrayNonzero::test_whitespace_bstring_array_is_falsey PASSED [ 41%]
numpy/core/tests/test_multiarray.py::TestBytestringArrayNonzero::test_all_null_bstring_array_is_falsey PASSED [ 41%]
numpy/core/tests/test_multiarray.py::TestBytestringArrayNonzero::test_null_inside_bstring_array_is_truthy PASSED [ 41%]
numpy/core/tests/test_multiarray.py::TestUnicodeArrayNonzero::test_empty_ustring_array_is_falsey PASSED [ 41%]
numpy/core/tests/test_multiarray.py::TestUnicodeArrayNonzero::test_whitespace_ustring_array_is_falsey PASSED [ 41%]
numpy/core/tests/test_multiarray.py::TestUnicodeArrayNonzero::test_all_null_ustring_array_is_falsey PASSED [ 42%]
numpy/core/tests/test_multiarray.py::TestUnicodeArrayNonzero::test_null_inside_ustring_array_is_truthy PASSED [ 42%]
numpy/core/tests/test_multiarray.py::TestFormat::test_0d PASSED          [ 42%]
numpy/core/tests/test_multiarray.py::TestFormat::test_1d_no_format PASSED [ 42%]
numpy/core/tests/test_multiarray.py::TestFormat::test_1d_format PASSED   [ 42%]
numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_is_available PASSED [ 42%]
numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_is_not_available PASSED [ 42%]
numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[1d] PASSED [ 42%]
numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[2d] PASSED [ 42%]
numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[structured] PASSED [ 42%]
numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[overlapping] PASSED [ 42%]
numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[object] PASSED [ 42%]
numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[empty] PASSED [ 42%]
numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[empty-2d] PASSED [ 43%]
numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[readonly] PASSED [ 43%]
numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_as_parameter_holds_reference PASSED [ 43%]
numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_argmax_with_out PASSED [ 43%]
numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_argmin_with_out PASSED [ 43%]
numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_insert_noncontiguous PASSED [ 43%]
numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_put_noncontiguous PASSED [ 43%]
numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_putmask_noncontiguous PASSED [ 43%]
numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_take_mode_raise PASSED [ 43%]
numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_choose_mod_raise PASSED [ 43%]
numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_flatiter__array__ PASSED [ 43%]
numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_dot_out PASSED [ 43%]
numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_view_assign PASSED [ 43%]
numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_dealloc_warning PASSED [ 44%]
numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_view_discard_refcount PASSED [ 44%]
numpy/core/tests/test_multiarray.py::TestArange::test_infinite PASSED    [ 44%]
numpy/core/tests/test_multiarray.py::TestArange::test_nan_step PASSED    [ 44%]
numpy/core/tests/test_multiarray.py::TestArange::test_zero_step PASSED   [ 44%]
numpy/core/tests/test_multiarray.py::TestArrayFinalize::test_receives_base PASSED [ 44%]
numpy/core/tests/test_multiarray.py::TestArrayFinalize::test_lifetime_on_error PASSED [ 44%]
numpy/core/tests/test_multiarray.py::test_orderconverter_with_nonASCII_unicode_ordering PASSED [ 44%]
numpy/core/tests/test_multiarray.py::test_equal_override PASSED          [ 44%]
numpy/core/tests/test_multiarray.py::test_npymath_complex PASSED         [ 44%]
numpy/core/tests/test_multiarray.py::test_npymath_real PASSED            [ 44%]
numpy/core/tests/test_multiarray.py::test_uintalignment_and_alignment PASSED [ 44%]
numpy/core/tests/test_multiarray.py::TestAlignment::test_various_alignments PASSED [ 44%]
numpy/core/tests/test_multiarray.py::TestAlignment::test_strided_loop_alignments PASSED [ 45%]
numpy/core/tests/test_multiarray.py::test_getfield PASSED                [ 45%]
numpy/lib/tests/test_function_base.py::TestRot90::test_basic PASSED      [ 45%]
numpy/lib/tests/test_function_base.py::TestRot90::test_axes PASSED       [ 45%]
numpy/lib/tests/test_function_base.py::TestRot90::test_rotation_axes PASSED [ 45%]
numpy/lib/tests/test_function_base.py::TestFlip::test_axes PASSED        [ 45%]
numpy/lib/tests/test_function_base.py::TestFlip::test_basic_lr PASSED    [ 45%]
numpy/lib/tests/test_function_base.py::TestFlip::test_basic_ud PASSED    [ 45%]
numpy/lib/tests/test_function_base.py::TestFlip::test_3d_swap_axis0 PASSED [ 45%]
numpy/lib/tests/test_function_base.py::TestFlip::test_3d_swap_axis1 PASSED [ 45%]
numpy/lib/tests/test_function_base.py::TestFlip::test_3d_swap_axis2 PASSED [ 45%]
numpy/lib/tests/test_function_base.py::TestFlip::test_4d PASSED          [ 45%]
numpy/lib/tests/test_function_base.py::TestFlip::test_default_axis PASSED [ 45%]
numpy/lib/tests/test_function_base.py::TestFlip::test_multiple_axes PASSED [ 45%]
numpy/lib/tests/test_function_base.py::TestAny::test_basic PASSED        [ 46%]
numpy/lib/tests/test_function_base.py::TestAny::test_nd PASSED           [ 46%]
numpy/lib/tests/test_function_base.py::TestAll::test_basic PASSED        [ 46%]
numpy/lib/tests/test_function_base.py::TestAll::test_nd PASSED           [ 46%]
numpy/lib/tests/test_function_base.py::TestCopy::test_basic PASSED       [ 46%]
numpy/lib/tests/test_function_base.py::TestCopy::test_order PASSED       [ 46%]
numpy/lib/tests/test_function_base.py::TestAverage::test_basic PASSED    [ 46%]
numpy/lib/tests/test_function_base.py::TestAverage::test_weights PASSED  [ 46%]
numpy/lib/tests/test_function_base.py::TestAverage::test_returned PASSED [ 46%]
numpy/lib/tests/test_function_base.py::TestAverage::test_subclasses PASSED [ 46%]
numpy/lib/tests/test_function_base.py::TestAverage::test_upcasting PASSED [ 46%]
numpy/lib/tests/test_function_base.py::TestAverage::test_object_dtype PASSED [ 46%]
numpy/lib/tests/test_function_base.py::TestSelect::test_basic PASSED     [ 46%]
numpy/lib/tests/test_function_base.py::TestSelect::test_broadcasting PASSED [ 47%]
numpy/lib/tests/test_function_base.py::TestSelect::test_return_dtype PASSED [ 47%]
numpy/lib/tests/test_function_base.py::TestSelect::test_deprecated_empty PASSED [ 47%]
numpy/lib/tests/test_function_base.py::TestSelect::test_non_bool_deprecation PASSED [ 47%]
numpy/lib/tests/test_function_base.py::TestSelect::test_many_arguments PASSED [ 47%]
numpy/lib/tests/test_function_base.py::TestInsert::test_basic PASSED     [ 47%]
numpy/lib/tests/test_function_base.py::TestInsert::test_multidim PASSED  [ 47%]
numpy/lib/tests/test_function_base.py::TestInsert::test_0d PASSED        [ 47%]
numpy/lib/tests/test_function_base.py::TestInsert::test_subclass PASSED  [ 47%]
numpy/lib/tests/test_function_base.py::TestInsert::test_index_array_copied PASSED [ 47%]
numpy/lib/tests/test_function_base.py::TestInsert::test_structured_array PASSED [ 47%]
numpy/lib/tests/test_function_base.py::TestAmax::test_basic PASSED       [ 47%]
numpy/lib/tests/test_function_base.py::TestAmin::test_basic PASSED       [ 47%]
numpy/lib/tests/test_function_base.py::TestPtp::test_basic PASSED        [ 48%]
numpy/lib/tests/test_function_base.py::TestCumsum::test_basic PASSED     [ 48%]
numpy/lib/tests/test_function_base.py::TestProd::test_basic PASSED       [ 48%]
numpy/lib/tests/test_function_base.py::TestCumprod::test_basic PASSED    [ 48%]
numpy/lib/tests/test_function_base.py::TestDiff::test_basic PASSED       [ 48%]
numpy/lib/tests/test_function_base.py::TestDiff::test_axis PASSED        [ 48%]
numpy/lib/tests/test_function_base.py::TestDiff::test_nd PASSED          [ 48%]
numpy/lib/tests/test_function_base.py::TestDiff::test_n PASSED           [ 48%]
numpy/lib/tests/test_function_base.py::TestDiff::test_times PASSED       [ 48%]
numpy/lib/tests/test_function_base.py::TestDiff::test_subclass PASSED    [ 48%]
numpy/lib/tests/test_function_base.py::TestDiff::test_prepend PASSED     [ 48%]
numpy/lib/tests/test_function_base.py::TestDiff::test_append PASSED      [ 48%]
numpy/lib/tests/test_function_base.py::TestDelete::test_slices PASSED    [ 48%]
numpy/lib/tests/test_function_base.py::TestDelete::test_fancy PASSED     [ 49%]
numpy/lib/tests/test_function_base.py::TestDelete::test_single PASSED    [ 49%]
numpy/lib/tests/test_function_base.py::TestDelete::test_0d PASSED        [ 49%]
numpy/lib/tests/test_function_base.py::TestDelete::test_subclass PASSED  [ 49%]
numpy/lib/tests/test_function_base.py::TestDelete::test_array_order_preserve PASSED [ 49%]
numpy/lib/tests/test_function_base.py::TestGradient::test_basic PASSED   [ 49%]
numpy/lib/tests/test_function_base.py::TestGradient::test_args PASSED    [ 49%]
numpy/lib/tests/test_function_base.py::TestGradient::test_badargs PASSED [ 49%]
numpy/lib/tests/test_function_base.py::TestGradient::test_datetime64 PASSED [ 49%]
numpy/lib/tests/test_function_base.py::TestGradient::test_masked PASSED  [ 49%]
numpy/lib/tests/test_function_base.py::TestGradient::test_second_order_accurate PASSED [ 49%]
numpy/lib/tests/test_function_base.py::TestGradient::test_spacing PASSED [ 49%]
numpy/lib/tests/test_function_base.py::TestGradient::test_specific_axes PASSED [ 49%]
numpy/lib/tests/test_function_base.py::TestGradient::test_timedelta64 PASSED [ 50%]
numpy/lib/tests/test_function_base.py::TestGradient::test_inexact_dtypes PASSED [ 50%]
numpy/lib/tests/test_function_base.py::TestGradient::test_values PASSED  [ 50%]
numpy/lib/tests/test_function_base.py::TestGradient::test_f_decreasing_unsigned_int[uint8] PASSED [ 50%]
numpy/lib/tests/test_function_base.py::TestGradient::test_f_decreasing_unsigned_int[uint16] PASSED [ 50%]
numpy/lib/tests/test_function_base.py::TestGradient::test_f_decreasing_unsigned_int[uint32] PASSED [ 50%]
numpy/lib/tests/test_function_base.py::TestGradient::test_f_decreasing_unsigned_int[uint64] PASSED [ 50%]
numpy/lib/tests/test_function_base.py::TestGradient::test_f_signed_int_big_jump[int8] PASSED [ 50%]
numpy/lib/tests/test_function_base.py::TestGradient::test_f_signed_int_big_jump[int16] PASSED [ 50%]
numpy/lib/tests/test_function_base.py::TestGradient::test_f_signed_int_big_jump[int32] PASSED [ 50%]
numpy/lib/tests/test_function_base.py::TestGradient::test_f_signed_int_big_jump[int64] PASSED [ 50%]
numpy/lib/tests/test_function_base.py::TestGradient::test_x_decreasing_unsigned[uint8] FAILED [ 50%]
numpy/lib/tests/test_function_base.py::TestGradient::test_x_decreasing_unsigned[uint16] FAILED [ 50%]
numpy/lib/tests/test_function_base.py::TestGradient::test_x_decreasing_unsigned[uint32] FAILED [ 50%]
numpy/lib/tests/test_function_base.py::TestGradient::test_x_decreasing_unsigned[uint64] FAILED [ 51%]
numpy/lib/tests/test_function_base.py::TestGradient::test_x_signed_int_big_jump[int8] FAILED [ 51%]
numpy/lib/tests/test_function_base.py::TestGradient::test_x_signed_int_big_jump[int16] FAILED [ 51%]
numpy/lib/tests/test_function_base.py::TestGradient::test_x_signed_int_big_jump[int32] FAILED [ 51%]
numpy/lib/tests/test_function_base.py::TestGradient::test_x_signed_int_big_jump[int64] FAILED [ 51%]
numpy/lib/tests/test_function_base.py::TestAngle::test_basic PASSED      [ 51%]
numpy/lib/tests/test_function_base.py::TestAngle::test_subclass PASSED   [ 51%]
numpy/lib/tests/test_function_base.py::TestTrimZeros::test_basic PASSED  [ 51%]
numpy/lib/tests/test_function_base.py::TestTrimZeros::test_leading_skip PASSED [ 51%]
numpy/lib/tests/test_function_base.py::TestTrimZeros::test_trailing_skip PASSED [ 51%]
numpy/lib/tests/test_function_base.py::TestExtins::test_basic PASSED     [ 51%]
numpy/lib/tests/test_function_base.py::TestExtins::test_place PASSED     [ 51%]
numpy/lib/tests/test_function_base.py::TestExtins::test_both PASSED      [ 51%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_simple PASSED [ 52%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_scalar PASSED [ 52%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_large PASSED  [ 52%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_ufunc PASSED  [ 52%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_keywords PASSED [ 52%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_keywords_no_func_code PASSED [ 52%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_keywords2_ticket_2100 PASSED [ 52%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_keywords3_ticket_2100 PASSED [ 52%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_keywords4_ticket_2100 PASSED [ 52%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_keywords5_ticket_2100 PASSED [ 52%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_coverage1_ticket_2100 PASSED [ 52%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_assigning_docstring PASSED [ 52%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_UnboundMethod_ticket_1156 PASSED [ 52%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_execution_order_ticket_1487 PASSED [ 53%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_string_ticket_1892 PASSED [ 53%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_cache PASSED  [ 53%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_otypes PASSED [ 53%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_parse_gufunc_signature PASSED [ 53%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_simple PASSED [ 53%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_mean_last PASSED [ 53%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_center PASSED [ 53%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_two_outputs PASSED [ 53%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_outer PASSED [ 53%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_computed_size PASSED [ 53%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_excluded PASSED [ 53%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_otypes PASSED [ 53%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_invalid_inputs PASSED [ 54%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_invalid_outputs PASSED [ 54%]
numpy/lib/tests/test_function_base.py::TestVectorize::test_size_zero_output PASSED [ 54%]
numpy/lib/tests/test_function_base.py::TestLeaks::test_frompyfunc_leaks[bound-20] PASSED [ 54%]
numpy/lib/tests/test_function_base.py::TestLeaks::test_frompyfunc_leaks[unbound-0] PASSED [ 54%]
numpy/lib/tests/test_function_base.py::TestDigitize::test_forward PASSED [ 54%]
numpy/lib/tests/test_function_base.py::TestDigitize::test_reverse PASSED [ 54%]
numpy/lib/tests/test_function_base.py::TestDigitize::test_random PASSED  [ 54%]
numpy/lib/tests/test_function_base.py::TestDigitize::test_right_basic PASSED [ 54%]
numpy/lib/tests/test_function_base.py::TestDigitize::test_right_open PASSED [ 54%]
numpy/lib/tests/test_function_base.py::TestDigitize::test_right_open_reverse PASSED [ 54%]
numpy/lib/tests/test_function_base.py::TestDigitize::test_right_open_random PASSED [ 54%]
numpy/lib/tests/test_function_base.py::TestDigitize::test_monotonic PASSED [ 54%]
numpy/lib/tests/test_function_base.py::TestDigitize::test_casting_error PASSED [ 55%]
numpy/lib/tests/test_function_base.py::TestDigitize::test_return_type PASSED [ 55%]
numpy/lib/tests/test_function_base.py::TestDigitize::test_large_integers_increasing PASSED [ 55%]
numpy/lib/tests/test_function_base.py::TestDigitize::test_large_integers_decreasing XFAIL [ 55%]
numpy/lib/tests/test_function_base.py::TestUnwrap::test_simple PASSED    [ 55%]
numpy/lib/tests/test_function_base.py::TestFilterwindows::test_hanning PASSED [ 55%]
numpy/lib/tests/test_function_base.py::TestFilterwindows::test_hamming PASSED [ 55%]
numpy/lib/tests/test_function_base.py::TestFilterwindows::test_bartlett PASSED [ 55%]
numpy/lib/tests/test_function_base.py::TestFilterwindows::test_blackman PASSED [ 55%]
numpy/lib/tests/test_function_base.py::TestTrapz::test_simple PASSED     [ 55%]
numpy/lib/tests/test_function_base.py::TestTrapz::test_ndim PASSED       [ 55%]
numpy/lib/tests/test_function_base.py::TestTrapz::test_masked PASSED     [ 55%]
numpy/lib/tests/test_function_base.py::TestSinc::test_simple PASSED      [ 55%]
numpy/lib/tests/test_function_base.py::TestSinc::test_array_like PASSED  [ 55%]
numpy/lib/tests/test_function_base.py::TestUnique::test_simple PASSED    [ 56%]
numpy/lib/tests/test_function_base.py::TestCheckFinite::test_simple PASSED [ 56%]
numpy/lib/tests/test_function_base.py::TestCheckFinite::test_dtype_order PASSED [ 56%]
numpy/lib/tests/test_function_base.py::TestCorrCoef::test_non_array PASSED [ 56%]
numpy/lib/tests/test_function_base.py::TestCorrCoef::test_simple PASSED  [ 56%]
numpy/lib/tests/test_function_base.py::TestCorrCoef::test_ddof PASSED    [ 56%]
numpy/lib/tests/test_function_base.py::TestCorrCoef::test_bias PASSED    [ 56%]
numpy/lib/tests/test_function_base.py::TestCorrCoef::test_complex PASSED [ 56%]
numpy/lib/tests/test_function_base.py::TestCorrCoef::test_xy PASSED      [ 56%]
numpy/lib/tests/test_function_base.py::TestCorrCoef::test_empty PASSED   [ 56%]
numpy/lib/tests/test_function_base.py::TestCorrCoef::test_extreme PASSED [ 56%]
numpy/lib/tests/test_function_base.py::TestCov::test_basic PASSED        [ 56%]
numpy/lib/tests/test_function_base.py::TestCov::test_complex PASSED      [ 56%]
numpy/lib/tests/test_function_base.py::TestCov::test_xy PASSED           [ 57%]
numpy/lib/tests/test_function_base.py::TestCov::test_empty PASSED        [ 57%]
numpy/lib/tests/test_function_base.py::TestCov::test_wrong_ddof PASSED   [ 57%]
numpy/lib/tests/test_function_base.py::TestCov::test_1D_rowvar PASSED    [ 57%]
numpy/lib/tests/test_function_base.py::TestCov::test_1D_variance PASSED  [ 57%]
numpy/lib/tests/test_function_base.py::TestCov::test_fweights PASSED     [ 57%]
numpy/lib/tests/test_function_base.py::TestCov::test_aweights PASSED     [ 57%]
numpy/lib/tests/test_function_base.py::TestCov::test_unit_fweights_and_aweights PASSED [ 57%]
numpy/lib/tests/test_function_base.py::Test_I0::test_simple PASSED       [ 57%]
numpy/lib/tests/test_function_base.py::Test_I0::test_non_array PASSED    [ 57%]
numpy/lib/tests/test_function_base.py::TestKaiser::test_simple PASSED    [ 57%]
numpy/lib/tests/test_function_base.py::TestKaiser::test_int_beta PASSED  [ 57%]
numpy/lib/tests/test_function_base.py::TestMsort::test_simple PASSED     [ 57%]
numpy/lib/tests/test_function_base.py::TestMeshgrid::test_simple PASSED  [ 58%]
numpy/lib/tests/test_function_base.py::TestMeshgrid::test_single_input PASSED [ 58%]
numpy/lib/tests/test_function_base.py::TestMeshgrid::test_no_input PASSED [ 58%]
numpy/lib/tests/test_function_base.py::TestMeshgrid::test_indexing PASSED [ 58%]
numpy/lib/tests/test_function_base.py::TestMeshgrid::test_sparse PASSED  [ 58%]
numpy/lib/tests/test_function_base.py::TestMeshgrid::test_invalid_arguments PASSED [ 58%]
numpy/lib/tests/test_function_base.py::TestMeshgrid::test_return_type PASSED [ 58%]
numpy/lib/tests/test_function_base.py::TestMeshgrid::test_writeback PASSED [ 58%]
numpy/lib/tests/test_function_base.py::TestPiecewise::test_simple PASSED [ 58%]
numpy/lib/tests/test_function_base.py::TestPiecewise::test_two_conditions PASSED [ 58%]
numpy/lib/tests/test_function_base.py::TestPiecewise::test_scalar_domains_three_conditions PASSED [ 58%]
numpy/lib/tests/test_function_base.py::TestPiecewise::test_default PASSED [ 58%]
numpy/lib/tests/test_function_base.py::TestPiecewise::test_0d PASSED     [ 58%]
numpy/lib/tests/test_function_base.py::TestPiecewise::test_0d_comparison PASSED [ 59%]
numpy/lib/tests/test_function_base.py::TestPiecewise::test_0d_0d_condition PASSED [ 59%]
numpy/lib/tests/test_function_base.py::TestPiecewise::test_multidimensional_extrafunc PASSED [ 59%]
numpy/lib/tests/test_function_base.py::TestBincount::test_simple PASSED  [ 59%]
numpy/lib/tests/test_function_base.py::TestBincount::test_simple2 PASSED [ 59%]
numpy/lib/tests/test_function_base.py::TestBincount::test_simple_weight PASSED [ 59%]
numpy/lib/tests/test_function_base.py::TestBincount::test_simple_weight2 PASSED [ 59%]
numpy/lib/tests/test_function_base.py::TestBincount::test_with_minlength PASSED [ 59%]
numpy/lib/tests/test_function_base.py::TestBincount::test_with_minlength_smaller_than_maxvalue PASSED [ 59%]
numpy/lib/tests/test_function_base.py::TestBincount::test_with_minlength_and_weights PASSED [ 59%]
numpy/lib/tests/test_function_base.py::TestBincount::test_empty PASSED   [ 59%]
numpy/lib/tests/test_function_base.py::TestBincount::test_empty_with_minlength PASSED [ 59%]
numpy/lib/tests/test_function_base.py::TestBincount::test_with_incorrect_minlength PASSED [ 59%]
numpy/lib/tests/test_function_base.py::TestBincount::test_dtype_reference_leaks PASSED [ 60%]
numpy/lib/tests/test_function_base.py::TestInterp::test_exceptions PASSED [ 60%]
numpy/lib/tests/test_function_base.py::TestInterp::test_basic PASSED     [ 60%]
numpy/lib/tests/test_function_base.py::TestInterp::test_right_left_behavior PASSED [ 60%]
numpy/lib/tests/test_function_base.py::TestInterp::test_scalar_interpolation_point PASSED [ 60%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_behavior_exact_x PASSED [ 60%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_any_nan[real] PASSED [ 60%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_any_nan[complex-real] PASSED [ 60%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_any_nan[complex-imag] PASSED [ 60%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_any_nan[complex-both] PASSED [ 60%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_inf[real] PASSED [ 60%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_inf[complex-real] PASSED [ 60%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_inf[complex-imag] PASSED [ 60%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_inf[complex-both] PASSED [ 60%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_xf[real] PASSED [ 61%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_xf[complex-real] PASSED [ 61%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_xf[complex-imag] PASSED [ 61%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_xf[complex-both] PASSED [ 61%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_x[real] PASSED [ 61%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_x[complex-real] PASSED [ 61%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_x[complex-imag] PASSED [ 61%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_x[complex-both] PASSED [ 61%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_f[real] PASSED [ 61%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_f[complex-real] PASSED [ 61%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_f[complex-imag] PASSED [ 61%]
numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_f[complex-both] PASSED [ 61%]
numpy/lib/tests/test_function_base.py::TestInterp::test_complex_interp PASSED [ 61%]
numpy/lib/tests/test_function_base.py::TestInterp::test_zero_dimensional_interpolation_point PASSED [ 62%]
numpy/lib/tests/test_function_base.py::TestInterp::test_if_len_x_is_small PASSED [ 62%]
numpy/lib/tests/test_function_base.py::TestInterp::test_period PASSED    [ 62%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_basic PASSED [ 62%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_fraction PASSED [ 62%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_api PASSED   [ 62%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_2D PASSED    [ 62%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_linear PASSED [ 62%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_lower_higher PASSED [ 62%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_midpoint PASSED [ 62%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_nearest PASSED [ 62%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_sequence PASSED [ 62%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_axis PASSED  [ 62%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_scalar_q PASSED [ 63%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_exception PASSED [ 63%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_percentile_list PASSED [ 63%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_percentile_out PASSED [ 63%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_percentile_empty_dim PASSED [ 63%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_percentile_no_overwrite PASSED [ 63%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_no_p_overwrite PASSED [ 63%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_percentile_overwrite PASSED [ 63%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_extended_axis PASSED [ 63%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_extended_axis_invalid PASSED [ 63%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_keepdims PASSED [ 63%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_out PASSED   [ 63%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_out_nan PASSED [ 63%]
numpy/lib/tests/test_function_base.py::TestPercentile::test_nan_behavior PASSED [ 64%]
numpy/lib/tests/test_function_base.py::TestQuantile::test_basic PASSED   [ 64%]
numpy/lib/tests/test_function_base.py::TestQuantile::test_fraction PASSED [ 64%]
numpy/lib/tests/test_function_base.py::TestQuantile::test_no_p_overwrite PASSED [ 64%]
numpy/lib/tests/test_function_base.py::TestMedian::test_basic PASSED     [ 64%]
numpy/lib/tests/test_function_base.py::TestMedian::test_axis_keyword PASSED [ 64%]
numpy/lib/tests/test_function_base.py::TestMedian::test_overwrite_keyword PASSED [ 64%]
numpy/lib/tests/test_function_base.py::TestMedian::test_array_like PASSED [ 64%]
numpy/lib/tests/test_function_base.py::TestMedian::test_subclass PASSED  [ 64%]
numpy/lib/tests/test_function_base.py::TestMedian::test_out PASSED       [ 64%]
numpy/lib/tests/test_function_base.py::TestMedian::test_out_nan PASSED   [ 64%]
numpy/lib/tests/test_function_base.py::TestMedian::test_nan_behavior PASSED [ 64%]
numpy/lib/tests/test_function_base.py::TestMedian::test_empty PASSED     [ 64%]
numpy/lib/tests/test_function_base.py::TestMedian::test_object PASSED    [ 65%]
numpy/lib/tests/test_function_base.py::TestMedian::test_extended_axis PASSED [ 65%]
numpy/lib/tests/test_function_base.py::TestMedian::test_extended_axis_invalid PASSED [ 65%]
numpy/lib/tests/test_function_base.py::TestMedian::test_keepdims PASSED  [ 65%]
numpy/lib/tests/test_function_base.py::TestAdd_newdoc_ufunc::test_ufunc_arg PASSED [ 65%]
numpy/lib/tests/test_function_base.py::TestAdd_newdoc_ufunc::test_string_arg PASSED [ 65%]
numpy/lib/tests/test_function_base.py::TestAdd_newdoc::test_add_doc PASSED [ 65%]
numpy/lib/tests/test_function_base.py::TestSortComplex::test_sort_real[l-D] PASSED [ 65%]
numpy/lib/tests/test_function_base.py::TestSortComplex::test_sort_real[h-F] PASSED [ 65%]
numpy/lib/tests/test_function_base.py::TestSortComplex::test_sort_real[H-F] PASSED [ 65%]
numpy/lib/tests/test_function_base.py::TestSortComplex::test_sort_real[b-F] PASSED [ 65%]
numpy/lib/tests/test_function_base.py::TestSortComplex::test_sort_real[B-F] PASSED [ 65%]
numpy/lib/tests/test_function_base.py::TestSortComplex::test_sort_real[g-G] PASSED [ 65%]
numpy/lib/tests/test_function_base.py::TestSortComplex::test_sort_complex PASSED [ 65%]
numpy/linalg/tests/test_linalg.py::TestSolve::test_sq_cases PASSED       [ 66%]
numpy/linalg/tests/test_linalg.py::TestSolve::test_empty_sq_cases PASSED [ 66%]
numpy/linalg/tests/test_linalg.py::TestSolve::test_generalized_sq_cases PASSED [ 66%]
numpy/linalg/tests/test_linalg.py::TestSolve::test_generalized_empty_sq_cases PASSED [ 66%]
numpy/linalg/tests/test_linalg.py::TestSolve::test_types[float32] PASSED [ 66%]
numpy/linalg/tests/test_linalg.py::TestSolve::test_types[float64] PASSED [ 66%]
numpy/linalg/tests/test_linalg.py::TestSolve::test_types[complex64] PASSED [ 66%]
numpy/linalg/tests/test_linalg.py::TestSolve::test_types[complex128] PASSED [ 66%]
numpy/linalg/tests/test_linalg.py::TestSolve::test_0_size PASSED         [ 66%]
numpy/linalg/tests/test_linalg.py::TestSolve::test_0_size_k PASSED       [ 66%]
numpy/linalg/tests/test_linalg.py::TestInv::test_sq_cases PASSED         [ 66%]
numpy/linalg/tests/test_linalg.py::TestInv::test_empty_sq_cases PASSED   [ 66%]
numpy/linalg/tests/test_linalg.py::TestInv::test_generalized_sq_cases PASSED [ 66%]
numpy/linalg/tests/test_linalg.py::TestInv::test_generalized_empty_sq_cases PASSED [ 67%]
numpy/linalg/tests/test_linalg.py::TestInv::test_types[float32] PASSED   [ 67%]
numpy/linalg/tests/test_linalg.py::TestInv::test_types[float64] PASSED   [ 67%]
numpy/linalg/tests/test_linalg.py::TestInv::test_types[complex64] PASSED [ 67%]
numpy/linalg/tests/test_linalg.py::TestInv::test_types[complex128] PASSED [ 67%]
numpy/linalg/tests/test_linalg.py::TestInv::test_0_size PASSED           [ 67%]
numpy/linalg/tests/test_linalg.py::TestEigvals::test_sq_cases PASSED     [ 67%]
numpy/linalg/tests/test_linalg.py::TestEigvals::test_empty_sq_cases PASSED [ 67%]
numpy/linalg/tests/test_linalg.py::TestEigvals::test_generalized_sq_cases PASSED [ 67%]
numpy/linalg/tests/test_linalg.py::TestEigvals::test_generalized_empty_sq_cases PASSED [ 67%]
numpy/linalg/tests/test_linalg.py::TestEigvals::test_types[float32] PASSED [ 67%]
numpy/linalg/tests/test_linalg.py::TestEigvals::test_types[float64] PASSED [ 67%]
numpy/linalg/tests/test_linalg.py::TestEigvals::test_types[complex64] PASSED [ 67%]
numpy/linalg/tests/test_linalg.py::TestEigvals::test_types[complex128] PASSED [ 68%]
numpy/linalg/tests/test_linalg.py::TestEigvals::test_0_size PASSED       [ 68%]
numpy/linalg/tests/test_linalg.py::TestEig::test_sq_cases PASSED         [ 68%]
numpy/linalg/tests/test_linalg.py::TestEig::test_empty_sq_cases PASSED   [ 68%]
numpy/linalg/tests/test_linalg.py::TestEig::test_generalized_sq_cases PASSED [ 68%]
numpy/linalg/tests/test_linalg.py::TestEig::test_generalized_empty_sq_cases PASSED [ 68%]
numpy/linalg/tests/test_linalg.py::TestEig::test_types[float32] PASSED   [ 68%]
numpy/linalg/tests/test_linalg.py::TestEig::test_types[float64] PASSED   [ 68%]
numpy/linalg/tests/test_linalg.py::TestEig::test_types[complex64] PASSED [ 68%]
numpy/linalg/tests/test_linalg.py::TestEig::test_types[complex128] PASSED [ 68%]
numpy/linalg/tests/test_linalg.py::TestEig::test_0_size PASSED           [ 68%]
numpy/linalg/tests/test_linalg.py::TestSVD::test_sq_cases PASSED         [ 68%]
numpy/linalg/tests/test_linalg.py::TestSVD::test_empty_sq_cases PASSED   [ 68%]
numpy/linalg/tests/test_linalg.py::TestSVD::test_generalized_sq_cases PASSED [ 69%]
numpy/linalg/tests/test_linalg.py::TestSVD::test_generalized_empty_sq_cases PASSED [ 69%]
numpy/linalg/tests/test_linalg.py::TestSVD::test_types[float32] PASSED   [ 69%]
numpy/linalg/tests/test_linalg.py::TestSVD::test_types[float64] PASSED   [ 69%]
numpy/linalg/tests/test_linalg.py::TestSVD::test_types[complex64] PASSED [ 69%]
numpy/linalg/tests/test_linalg.py::TestSVD::test_types[complex128] PASSED [ 69%]
numpy/linalg/tests/test_linalg.py::TestSVD::test_empty_identity PASSED   [ 69%]
numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_herm_cases PASSED [ 69%]
numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_empty_herm_cases PASSED [ 69%]
numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_generalized_herm_cases PASSED [ 69%]
numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_generalized_empty_herm_cases PASSED [ 69%]
numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_types[float32] PASSED [ 69%]
numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_types[float64] PASSED [ 69%]
numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_types[complex64] PASSED [ 70%]
numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_types[complex128] PASSED [ 70%]
numpy/linalg/tests/test_linalg.py::TestCond::test_sq_cases PASSED        [ 70%]
numpy/linalg/tests/test_linalg.py::TestCond::test_empty_sq_cases PASSED  [ 70%]
numpy/linalg/tests/test_linalg.py::TestCond::test_generalized_sq_cases PASSED [ 70%]
numpy/linalg/tests/test_linalg.py::TestCond::test_generalized_empty_sq_cases PASSED [ 70%]
numpy/linalg/tests/test_linalg.py::TestCond::test_basic_nonsvd PASSED    [ 70%]
numpy/linalg/tests/test_linalg.py::TestCond::test_singular PASSED        [ 70%]
numpy/linalg/tests/test_linalg.py::TestCond::test_nan PASSED             [ 70%]
numpy/linalg/tests/test_linalg.py::TestCond::test_stacked_singular PASSED [ 70%]
numpy/linalg/tests/test_linalg.py::TestPinv::test_sq_cases PASSED        [ 70%]
numpy/linalg/tests/test_linalg.py::TestPinv::test_empty_sq_cases PASSED  [ 70%]
numpy/linalg/tests/test_linalg.py::TestPinv::test_nonsq_cases PASSED     [ 70%]
numpy/linalg/tests/test_linalg.py::TestPinv::test_empty_nonsq_cases PASSED [ 70%]
numpy/linalg/tests/test_linalg.py::TestPinv::test_generalized_sq_cases PASSED [ 71%]
numpy/linalg/tests/test_linalg.py::TestPinv::test_generalized_empty_sq_cases PASSED [ 71%]
numpy/linalg/tests/test_linalg.py::TestPinv::test_generalized_nonsq_cases PASSED [ 71%]
numpy/linalg/tests/test_linalg.py::TestPinv::test_generalized_empty_nonsq_cases PASSED [ 71%]
numpy/linalg/tests/test_linalg.py::TestPinvHermitian::test_herm_cases PASSED [ 71%]
numpy/linalg/tests/test_linalg.py::TestPinvHermitian::test_empty_herm_cases PASSED [ 71%]
numpy/linalg/tests/test_linalg.py::TestPinvHermitian::test_generalized_herm_cases PASSED [ 71%]
numpy/linalg/tests/test_linalg.py::TestPinvHermitian::test_generalized_empty_herm_cases PASSED [ 71%]
numpy/linalg/tests/test_linalg.py::TestDet::test_sq_cases PASSED         [ 71%]
numpy/linalg/tests/test_linalg.py::TestDet::test_empty_sq_cases PASSED   [ 71%]
numpy/linalg/tests/test_linalg.py::TestDet::test_generalized_sq_cases PASSED [ 71%]
numpy/linalg/tests/test_linalg.py::TestDet::test_generalized_empty_sq_cases PASSED [ 71%]
numpy/linalg/tests/test_linalg.py::TestDet::test_zero PASSED             [ 71%]
numpy/linalg/tests/test_linalg.py::TestDet::test_types[float32] PASSED   [ 72%]
numpy/linalg/tests/test_linalg.py::TestDet::test_types[float64] PASSED   [ 72%]
numpy/linalg/tests/test_linalg.py::TestDet::test_types[complex64] PASSED [ 72%]
numpy/linalg/tests/test_linalg.py::TestDet::test_types[complex128] PASSED [ 72%]
numpy/linalg/tests/test_linalg.py::TestDet::test_0_size PASSED           [ 72%]
numpy/linalg/tests/test_linalg.py::TestLstsq::test_sq_cases PASSED       [ 72%]
numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_sq_cases PASSED [ 72%]
numpy/linalg/tests/test_linalg.py::TestLstsq::test_nonsq_cases PASSED    [ 72%]
numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_nonsq_cases PASSED [ 72%]
numpy/linalg/tests/test_linalg.py::TestLstsq::test_future_rcond PASSED   [ 72%]
numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_a_b[4-2-2] PASSED [ 72%]
numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_a_b[0-4-1] PASSED [ 72%]
numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_a_b[0-4-2] PASSED [ 72%]
numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_a_b[4-0-1] PASSED [ 73%]
numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_a_b[4-0-2] PASSED [ 73%]
numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_a_b[4-2-0] PASSED [ 73%]
numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_a_b[0-0-0] PASSED [ 73%]
numpy/linalg/tests/test_linalg.py::TestLstsq::test_incompatible_dims PASSED [ 73%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt0] PASSED [ 73%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt1] PASSED [ 73%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt2] PASSED [ 73%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt3] PASSED [ 73%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt4] PASSED [ 73%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt5] PASSED [ 73%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt6] PASSED [ 73%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt7] PASSED [ 73%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt8] PASSED [ 74%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt9] PASSED [ 74%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt10] PASSED [ 74%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt11] PASSED [ 74%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt12] PASSED [ 74%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt13] PASSED [ 74%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt14] PASSED [ 74%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt15] PASSED [ 74%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt16] PASSED [ 74%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt0] PASSED [ 74%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt1] PASSED [ 74%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt2] PASSED [ 74%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt3] PASSED [ 74%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt4] PASSED [ 75%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt5] PASSED [ 75%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt6] PASSED [ 75%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt7] PASSED [ 75%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt8] PASSED [ 75%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt9] PASSED [ 75%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt10] PASSED [ 75%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt11] PASSED [ 75%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt12] PASSED [ 75%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt13] PASSED [ 75%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt14] PASSED [ 75%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt15] PASSED [ 75%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt16] PASSED [ 75%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt0] PASSED [ 75%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt1] PASSED [ 76%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt2] PASSED [ 76%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt3] PASSED [ 76%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt4] PASSED [ 76%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt5] PASSED [ 76%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt6] PASSED [ 76%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt7] PASSED [ 76%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt8] PASSED [ 76%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt9] PASSED [ 76%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt10] PASSED [ 76%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt11] PASSED [ 76%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt12] PASSED [ 76%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt13] PASSED [ 76%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt14] PASSED [ 77%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt15] PASSED [ 77%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt16] PASSED [ 77%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt0] PASSED [ 77%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt1] PASSED [ 77%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt2] PASSED [ 77%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt3] PASSED [ 77%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt4] PASSED [ 77%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt5] PASSED [ 77%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt6] PASSED [ 77%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt7] PASSED [ 77%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt8] PASSED [ 77%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt9] PASSED [ 77%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt10] PASSED [ 78%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt11] PASSED [ 78%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt12] PASSED [ 78%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt13] PASSED [ 78%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt14] PASSED [ 78%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt15] PASSED [ 78%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt16] PASSED [ 78%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt0] PASSED [ 78%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt1] PASSED [ 78%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt2] PASSED [ 78%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt3] PASSED [ 78%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt4] PASSED [ 78%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt5] PASSED [ 78%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt6] PASSED [ 79%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt7] PASSED [ 79%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt8] PASSED [ 79%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt9] PASSED [ 79%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt10] PASSED [ 79%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt11] PASSED [ 79%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt12] PASSED [ 79%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt13] PASSED [ 79%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt14] PASSED [ 79%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt15] PASSED [ 79%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt16] PASSED [ 79%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt0] PASSED [ 79%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt1] PASSED [ 79%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt2] PASSED [ 80%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt3] PASSED [ 80%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt4] PASSED [ 80%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt5] PASSED [ 80%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt6] PASSED [ 80%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt7] PASSED [ 80%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt8] PASSED [ 80%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt9] PASSED [ 80%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt10] PASSED [ 80%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt11] PASSED [ 80%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt12] PASSED [ 80%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt13] PASSED [ 80%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt14] PASSED [ 80%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt15] PASSED [ 80%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt16] PASSED [ 81%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt0] PASSED [ 81%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt1] PASSED [ 81%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt2] PASSED [ 81%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt3] PASSED [ 81%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt4] PASSED [ 81%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt5] PASSED [ 81%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt6] PASSED [ 81%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt7] PASSED [ 81%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt8] PASSED [ 81%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt9] PASSED [ 81%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt10] PASSED [ 81%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt11] PASSED [ 81%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt12] PASSED [ 82%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt13] PASSED [ 82%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt14] PASSED [ 82%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt15] PASSED [ 82%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt16] PASSED [ 82%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt0] PASSED [ 82%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt1] PASSED [ 82%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt2] PASSED [ 82%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt3] PASSED [ 82%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt4] PASSED [ 82%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt5] PASSED [ 82%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt6] PASSED [ 82%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt7] PASSED [ 82%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt8] PASSED [ 83%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt9] PASSED [ 83%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt10] PASSED [ 83%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt11] PASSED [ 83%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt12] PASSED [ 83%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt13] PASSED [ 83%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt14] PASSED [ 83%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt15] PASSED [ 83%]
numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt16] PASSED [ 83%]
numpy/linalg/tests/test_linalg.py::TestEigvalshCases::test_herm_cases PASSED [ 83%]
numpy/linalg/tests/test_linalg.py::TestEigvalshCases::test_empty_herm_cases PASSED [ 83%]
numpy/linalg/tests/test_linalg.py::TestEigvalshCases::test_generalized_herm_cases PASSED [ 83%]
numpy/linalg/tests/test_linalg.py::TestEigvalshCases::test_generalized_empty_herm_cases PASSED [ 83%]
numpy/linalg/tests/test_linalg.py::TestEigvalsh::test_types[float32] PASSED [ 84%]
numpy/linalg/tests/test_linalg.py::TestEigvalsh::test_types[float64] PASSED [ 84%]
numpy/linalg/tests/test_linalg.py::TestEigvalsh::test_types[complex64] PASSED [ 84%]
numpy/linalg/tests/test_linalg.py::TestEigvalsh::test_types[complex128] PASSED [ 84%]
numpy/linalg/tests/test_linalg.py::TestEigvalsh::test_invalid PASSED     [ 84%]
numpy/linalg/tests/test_linalg.py::TestEigvalsh::test_UPLO PASSED        [ 84%]
numpy/linalg/tests/test_linalg.py::TestEigvalsh::test_0_size PASSED      [ 84%]
numpy/linalg/tests/test_linalg.py::TestEighCases::test_herm_cases PASSED [ 84%]
numpy/linalg/tests/test_linalg.py::TestEighCases::test_empty_herm_cases PASSED [ 84%]
numpy/linalg/tests/test_linalg.py::TestEighCases::test_generalized_herm_cases PASSED [ 84%]
numpy/linalg/tests/test_linalg.py::TestEighCases::test_generalized_empty_herm_cases PASSED [ 84%]
numpy/linalg/tests/test_linalg.py::TestEigh::test_types[float32] PASSED  [ 84%]
numpy/linalg/tests/test_linalg.py::TestEigh::test_types[float64] PASSED  [ 84%]
numpy/linalg/tests/test_linalg.py::TestEigh::test_types[complex64] PASSED [ 85%]
numpy/linalg/tests/test_linalg.py::TestEigh::test_types[complex128] PASSED [ 85%]
numpy/linalg/tests/test_linalg.py::TestEigh::test_invalid PASSED         [ 85%]
numpy/linalg/tests/test_linalg.py::TestEigh::test_UPLO PASSED            [ 85%]
numpy/linalg/tests/test_linalg.py::TestEigh::test_0_size PASSED          [ 85%]
numpy/linalg/tests/test_linalg.py::TestNorm_NonSystematic::test_longdouble_norm PASSED [ 85%]
numpy/linalg/tests/test_linalg.py::TestNorm_NonSystematic::test_intmin PASSED [ 85%]
numpy/linalg/tests/test_linalg.py::TestNorm_NonSystematic::test_complex_high_ord PASSED [ 85%]
numpy/linalg/tests/test_linalg.py::TestNormDouble::test_empty PASSED     [ 85%]
numpy/linalg/tests/test_linalg.py::TestNormDouble::test_vector_return_type PASSED [ 85%]
numpy/linalg/tests/test_linalg.py::TestNormDouble::test_vector PASSED    [ 85%]
numpy/linalg/tests/test_linalg.py::TestNormDouble::test_axis PASSED      [ 85%]
numpy/linalg/tests/test_linalg.py::TestNormDouble::test_keepdims PASSED  [ 85%]
numpy/linalg/tests/test_linalg.py::TestNormDouble::test_matrix_empty PASSED [ 85%]
numpy/linalg/tests/test_linalg.py::TestNormDouble::test_matrix_return_type PASSED [ 86%]
numpy/linalg/tests/test_linalg.py::TestNormDouble::test_matrix_2x2 PASSED [ 86%]
numpy/linalg/tests/test_linalg.py::TestNormDouble::test_matrix_3x3 PASSED [ 86%]
numpy/linalg/tests/test_linalg.py::TestNormDouble::test_bad_args PASSED  [ 86%]
numpy/linalg/tests/test_linalg.py::TestNormSingle::test_empty PASSED     [ 86%]
numpy/linalg/tests/test_linalg.py::TestNormSingle::test_vector_return_type PASSED [ 86%]
numpy/linalg/tests/test_linalg.py::TestNormSingle::test_vector PASSED    [ 86%]
numpy/linalg/tests/test_linalg.py::TestNormSingle::test_axis PASSED      [ 86%]
numpy/linalg/tests/test_linalg.py::TestNormSingle::test_keepdims PASSED  [ 86%]
numpy/linalg/tests/test_linalg.py::TestNormSingle::test_matrix_empty PASSED [ 86%]
numpy/linalg/tests/test_linalg.py::TestNormSingle::test_matrix_return_type PASSED [ 86%]
numpy/linalg/tests/test_linalg.py::TestNormSingle::test_matrix_2x2 PASSED [ 86%]
numpy/linalg/tests/test_linalg.py::TestNormSingle::test_matrix_3x3 PASSED [ 86%]
numpy/linalg/tests/test_linalg.py::TestNormSingle::test_bad_args PASSED  [ 87%]
numpy/linalg/tests/test_linalg.py::TestNormInt64::test_empty PASSED      [ 87%]
numpy/linalg/tests/test_linalg.py::TestNormInt64::test_vector_return_type PASSED [ 87%]
numpy/linalg/tests/test_linalg.py::TestNormInt64::test_vector PASSED     [ 87%]
numpy/linalg/tests/test_linalg.py::TestNormInt64::test_axis PASSED       [ 87%]
numpy/linalg/tests/test_linalg.py::TestNormInt64::test_keepdims PASSED   [ 87%]
numpy/linalg/tests/test_linalg.py::TestNormInt64::test_matrix_empty PASSED [ 87%]
numpy/linalg/tests/test_linalg.py::TestNormInt64::test_matrix_return_type PASSED [ 87%]
numpy/linalg/tests/test_linalg.py::TestNormInt64::test_matrix_2x2 PASSED [ 87%]
numpy/linalg/tests/test_linalg.py::TestNormInt64::test_matrix_3x3 PASSED [ 87%]
numpy/linalg/tests/test_linalg.py::TestNormInt64::test_bad_args PASSED   [ 87%]
numpy/linalg/tests/test_linalg.py::TestMatrixRank::test_matrix_rank PASSED [ 87%]
numpy/linalg/tests/test_linalg.py::TestMatrixRank::test_symmetric_rank PASSED [ 87%]
numpy/linalg/tests/test_linalg.py::test_reduced_rank PASSED              [ 88%]
numpy/linalg/tests/test_linalg.py::TestQR::test_qr_empty[3-0] PASSED     [ 88%]
numpy/linalg/tests/test_linalg.py::TestQR::test_qr_empty[0-3] PASSED     [ 88%]
numpy/linalg/tests/test_linalg.py::TestQR::test_qr_empty[0-0] PASSED     [ 88%]
numpy/linalg/tests/test_linalg.py::TestQR::test_mode_raw PASSED          [ 88%]
numpy/linalg/tests/test_linalg.py::TestQR::test_mode_all_but_economic PASSED [ 88%]
numpy/linalg/tests/test_linalg.py::TestCholesky::test_basic_property PASSED [ 88%]
numpy/linalg/tests/test_linalg.py::TestCholesky::test_0_size PASSED      [ 88%]
numpy/linalg/tests/test_linalg.py::test_byteorder_check PASSED           [ 88%]
numpy/linalg/tests/test_linalg.py::test_generalized_raise_multiloop PASSED [ 88%]
numpy/linalg/tests/test_linalg.py::test_xerbla_override PASSED           [ 88%]
numpy/linalg/tests/test_linalg.py::test_sdot_bug_8577 PASSED             [ 88%]
numpy/linalg/tests/test_linalg.py::TestMultiDot::test_basic_function_with_three_arguments PASSED [ 88%]
numpy/linalg/tests/test_linalg.py::TestMultiDot::test_basic_function_with_two_arguments PASSED [ 89%]
numpy/linalg/tests/test_linalg.py::TestMultiDot::test_basic_function_with_dynamic_programing_optimization PASSED [ 89%]
numpy/linalg/tests/test_linalg.py::TestMultiDot::test_vector_as_first_argument PASSED [ 89%]
numpy/linalg/tests/test_linalg.py::TestMultiDot::test_vector_as_last_argument PASSED [ 89%]
numpy/linalg/tests/test_linalg.py::TestMultiDot::test_vector_as_first_and_last_argument PASSED [ 89%]
numpy/linalg/tests/test_linalg.py::TestMultiDot::test_dynamic_programming_logic PASSED [ 89%]
numpy/linalg/tests/test_linalg.py::TestMultiDot::test_too_few_input_arrays PASSED [ 89%]
numpy/linalg/tests/test_linalg.py::TestTensorinv::test_non_square_handling[arr0-2] PASSED [ 89%]
numpy/linalg/tests/test_linalg.py::TestTensorinv::test_non_square_handling[arr1-1] PASSED [ 89%]
numpy/linalg/tests/test_linalg.py::TestTensorinv::test_tensorinv_shape[shape0-2] PASSED [ 89%]
numpy/linalg/tests/test_linalg.py::TestTensorinv::test_tensorinv_shape[shape1-1] PASSED [ 89%]
numpy/linalg/tests/test_linalg.py::TestTensorinv::test_tensorinv_ind_limit[0] PASSED [ 89%]
numpy/linalg/tests/test_linalg.py::TestTensorinv::test_tensorinv_ind_limit[-2] PASSED [ 89%]
numpy/linalg/tests/test_linalg.py::TestTensorinv::test_tensorinv_result PASSED [ 90%]
numpy/linalg/tests/test_linalg.py::test_unsupported_commontype PASSED    [ 90%]
numpy/linalg/tests/test_linalg.py::test_blas64_dot XFAIL                 [ 90%]
numpy/linalg/tests/test_linalg.py::test_blas64_geqrf_lwork_smoketest XFAIL [ 90%]
numpy/random/tests/test_extending.py::test_cython FAILED                 [ 90%]
numpy/random/tests/test_extending.py::test_numba SKIPPED                 [ 90%]
numpy/random/tests/test_extending.py::test_cffi SKIPPED                  [ 90%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_array_rank1_eq PASSED [ 90%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_array_rank1_noteq PASSED [ 90%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_array_rank2_eq PASSED [ 90%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_array_diffshape PASSED [ 90%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_objarray PASSED  [ 90%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_array_likes PASSED [ 90%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_generic_rank1 PASSED [ 90%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_0_ndim_array PASSED [ 91%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_generic_rank3 PASSED [ 91%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_nan_array PASSED [ 91%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_string_arrays PASSED [ 91%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_recarrays PASSED [ 91%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_masked_nan_inf PASSED [ 91%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_subclass_that_overrides_eq PASSED [ 91%]
numpy/testing/tests/test_utils.py::TestArrayEqual::test_subclass_that_does_not_implement_npall PASSED [ 91%]
numpy/testing/tests/test_utils.py::TestBuildErrorMessage::test_build_err_msg_defaults PASSED [ 91%]
numpy/testing/tests/test_utils.py::TestBuildErrorMessage::test_build_err_msg_no_verbose PASSED [ 91%]
numpy/testing/tests/test_utils.py::TestBuildErrorMessage::test_build_err_msg_custom_names PASSED [ 91%]
numpy/testing/tests/test_utils.py::TestBuildErrorMessage::test_build_err_msg_custom_precision PASSED [ 91%]
numpy/testing/tests/test_utils.py::TestEqual::test_array_rank1_eq PASSED [ 91%]
numpy/testing/tests/test_utils.py::TestEqual::test_array_rank1_noteq PASSED [ 92%]
numpy/testing/tests/test_utils.py::TestEqual::test_array_rank2_eq PASSED [ 92%]
numpy/testing/tests/test_utils.py::TestEqual::test_array_diffshape PASSED [ 92%]
numpy/testing/tests/test_utils.py::TestEqual::test_objarray PASSED       [ 92%]
numpy/testing/tests/test_utils.py::TestEqual::test_array_likes PASSED    [ 92%]
numpy/testing/tests/test_utils.py::TestEqual::test_generic_rank1 PASSED  [ 92%]
numpy/testing/tests/test_utils.py::TestEqual::test_0_ndim_array PASSED   [ 92%]
numpy/testing/tests/test_utils.py::TestEqual::test_generic_rank3 PASSED  [ 92%]
numpy/testing/tests/test_utils.py::TestEqual::test_nan_array PASSED      [ 92%]
numpy/testing/tests/test_utils.py::TestEqual::test_string_arrays PASSED  [ 92%]
numpy/testing/tests/test_utils.py::TestEqual::test_recarrays PASSED      [ 92%]
numpy/testing/tests/test_utils.py::TestEqual::test_masked_nan_inf PASSED [ 92%]
numpy/testing/tests/test_utils.py::TestEqual::test_subclass_that_overrides_eq PASSED [ 92%]
numpy/testing/tests/test_utils.py::TestEqual::test_subclass_that_does_not_implement_npall PASSED [ 93%]
numpy/testing/tests/test_utils.py::TestEqual::test_nan_items PASSED      [ 93%]
numpy/testing/tests/test_utils.py::TestEqual::test_inf_items PASSED      [ 93%]
numpy/testing/tests/test_utils.py::TestEqual::test_datetime PASSED       [ 93%]
numpy/testing/tests/test_utils.py::TestEqual::test_nat_items PASSED      [ 93%]
numpy/testing/tests/test_utils.py::TestEqual::test_non_numeric PASSED    [ 93%]
numpy/testing/tests/test_utils.py::TestEqual::test_complex_item PASSED   [ 93%]
numpy/testing/tests/test_utils.py::TestEqual::test_negative_zero PASSED  [ 93%]
numpy/testing/tests/test_utils.py::TestEqual::test_complex PASSED        [ 93%]
numpy/testing/tests/test_utils.py::TestEqual::test_error_message PASSED  [ 93%]
numpy/testing/tests/test_utils.py::TestEqual::test_object PASSED         [ 93%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_array_rank1_eq PASSED [ 93%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_array_rank1_noteq PASSED [ 93%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_array_rank2_eq PASSED [ 94%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_array_diffshape PASSED [ 94%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_objarray PASSED [ 94%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_array_likes PASSED [ 94%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_closeness PASSED [ 94%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_simple PASSED [ 94%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_nan PASSED [ 94%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_inf PASSED [ 94%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_subclass PASSED [ 94%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_subclass_that_cannot_be_bool PASSED [ 94%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_array_rank1_eq PASSED [ 94%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_array_rank1_noteq PASSED [ 94%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_array_rank2_eq PASSED [ 94%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_array_diffshape PASSED [ 95%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_objarray PASSED [ 95%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_array_likes PASSED [ 95%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_closeness PASSED [ 95%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_nan_item PASSED [ 95%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_inf_item PASSED [ 95%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_simple_item PASSED [ 95%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_complex_item PASSED [ 95%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_complex PASSED  [ 95%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_error_message PASSED [ 95%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_error_message_2 PASSED [ 95%]
numpy/testing/tests/test_utils.py::TestAlmostEqual::test_subclass_that_cannot_be_bool PASSED [ 95%]
numpy/testing/tests/test_utils.py::TestApproxEqual::test_simple_arrays PASSED [ 95%]
numpy/testing/tests/test_utils.py::TestApproxEqual::test_simple_items PASSED [ 95%]
numpy/testing/tests/test_utils.py::TestApproxEqual::test_nan_array PASSED [ 96%]
numpy/testing/tests/test_utils.py::TestApproxEqual::test_nan_items PASSED [ 96%]
numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_simple_arrays PASSED [ 96%]
numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_rank2 PASSED [ 96%]
numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_rank3 PASSED [ 96%]
numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_simple_items PASSED [ 96%]
numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_nan_noncompare PASSED [ 96%]
numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_nan_noncompare_array PASSED [ 96%]
numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_inf_compare PASSED [ 96%]
numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_inf_compare_array PASSED [ 96%]
numpy/testing/tests/test_utils.py::TestRaises::test_correct_catch SKIPPED [ 96%]
numpy/testing/tests/test_utils.py::TestRaises::test_wrong_exception SKIPPED [ 96%]
numpy/testing/tests/test_utils.py::TestRaises::test_catch_no_raise SKIPPED [ 96%]
numpy/testing/tests/test_utils.py::TestWarns::test_warn PASSED           [ 97%]
numpy/testing/tests/test_utils.py::TestWarns::test_context_manager PASSED [ 97%]
numpy/testing/tests/test_utils.py::TestWarns::test_warn_wrong_warning PASSED [ 97%]
numpy/testing/tests/test_utils.py::TestAssertAllclose::test_simple PASSED [ 97%]
numpy/testing/tests/test_utils.py::TestAssertAllclose::test_min_int PASSED [ 97%]
numpy/testing/tests/test_utils.py::TestAssertAllclose::test_report_fail_percentage PASSED [ 97%]
numpy/testing/tests/test_utils.py::TestAssertAllclose::test_equal_nan PASSED [ 97%]
numpy/testing/tests/test_utils.py::TestAssertAllclose::test_not_equal_nan PASSED [ 97%]
numpy/testing/tests/test_utils.py::TestAssertAllclose::test_equal_nan_default PASSED [ 97%]
numpy/testing/tests/test_utils.py::TestAssertAllclose::test_report_max_relative_error PASSED [ 97%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_float64_pass PASSED [ 97%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_float64_fail PASSED [ 97%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_float32_pass PASSED [ 97%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_float32_fail PASSED [ 98%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_float16_pass PASSED [ 98%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_float16_fail PASSED [ 98%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_complex128_pass PASSED [ 98%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_complex128_fail PASSED [ 98%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_complex64_pass PASSED [ 98%]
numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_complex64_fail PASSED [ 98%]
numpy/testing/tests/test_utils.py::TestULP::test_equal PASSED            [ 98%]
numpy/testing/tests/test_utils.py::TestULP::test_single PASSED           [ 98%]
numpy/testing/tests/test_utils.py::TestULP::test_double PASSED           [ 98%]
numpy/testing/tests/test_utils.py::TestULP::test_inf PASSED              [ 98%]
numpy/testing/tests/test_utils.py::TestULP::test_nan PASSED              [ 98%]
numpy/testing/tests/test_utils.py::TestStringEqual::test_simple PASSED   [ 98%]
numpy/testing/tests/test_utils.py::TestStringEqual::test_regex PASSED    [ 99%]
numpy/testing/tests/test_utils.py::test_warn_len_equal_call_scenarios PASSED [ 99%]
numpy/testing/tests/test_utils.py::test_clear_and_catch_warnings PASSED  [ 99%]
numpy/testing/tests/test_utils.py::test_suppress_warnings_module PASSED  [ 99%]
numpy/testing/tests/test_utils.py::test_suppress_warnings_type PASSED    [ 99%]
numpy/testing/tests/test_utils.py::test_suppress_warnings_decorate_no_record PASSED [ 99%]
numpy/testing/tests/test_utils.py::test_suppress_warnings_record PASSED  [ 99%]
numpy/testing/tests/test_utils.py::test_suppress_warnings_forwarding PASSED [ 99%]
numpy/testing/tests/test_utils.py::test_tempdir PASSED                   [ 99%]
numpy/testing/tests/test_utils.py::test_temppath PASSED                  [ 99%]
numpy/testing/tests/test_utils.py::test_clear_and_catch_warnings_inherit PASSED [ 99%]
numpy/testing/tests/test_utils.py::TestAssertNoGcCycles::test_passes PASSED [ 99%]
numpy/testing/tests/test_utils.py::TestAssertNoGcCycles::test_asserts PASSED [ 99%]
numpy/testing/tests/test_utils.py::TestAssertNoGcCycles::test_fails PASSED [100%]

=================================== FAILURES ===================================
________________ TestGradient.test_x_decreasing_unsigned[uint8] ________________
numpy/lib/tests/test_function_base.py:1109: in test_x_decreasing_unsigned
    assert_array_equal(dfdx, [-2]*len(x))
E   AssertionError: 
E   Arrays are not equal
E   
E   Mismatched elements: 3 / 3 (100%)
E   Max absolute difference: 2.00784314
E   Max relative difference: 1.00392157
E    x: array([0.007843, 0.007843, 0.007843])
E    y: array([-2, -2, -2])
_______________ TestGradient.test_x_decreasing_unsigned[uint16] ________________
numpy/lib/tests/test_function_base.py:1109: in test_x_decreasing_unsigned
    assert_array_equal(dfdx, [-2]*len(x))
E   AssertionError: 
E   Arrays are not equal
E   
E   Mismatched elements: 3 / 3 (100%)
E   Max absolute difference: 2.00003052
E   Max relative difference: 1.00001526
E    x: array([3.051804e-05, 3.051804e-05, 3.051804e-05])
E    y: array([-2, -2, -2])
_______________ TestGradient.test_x_decreasing_unsigned[uint32] ________________
numpy/lib/tests/test_function_base.py:1109: in test_x_decreasing_unsigned
    assert_array_equal(dfdx, [-2]*len(x))
E   AssertionError: 
E   Arrays are not equal
E   
E   Mismatched elements: 3 / 3 (100%)
E   Max absolute difference: 2.
E   Max relative difference: 1.
E    x: array([4.656613e-10, 4.656613e-10, 4.656613e-10])
E    y: array([-2, -2, -2])
_______________ TestGradient.test_x_decreasing_unsigned[uint64] ________________
numpy/lib/tests/test_function_base.py:1109: in test_x_decreasing_unsigned
    assert_array_equal(dfdx, [-2]*len(x))
E   AssertionError: 
E   Arrays are not equal
E   
E   Mismatched elements: 3 / 3 (100%)
E   Max absolute difference: 2.
E   Max relative difference: 1.
E    x: array([1.084202e-19, 1.084202e-19, 1.084202e-19])
E    y: array([-2, -2, -2])
________________ TestGradient.test_x_signed_int_big_jump[int8] _________________
numpy/lib/tests/test_function_base.py:1119: in test_x_signed_int_big_jump
    assert_array_equal(dfdx, [0.5, 0.5])
E   AssertionError: 
E   Arrays are not equal
E   
E   Mismatched elements: 2 / 2 (100%)
E   Max absolute difference: 1.
E   Max relative difference: 2.
E    x: array([-0.5, -0.5])
E    y: array([0.5, 0.5])
________________ TestGradient.test_x_signed_int_big_jump[int16] ________________
numpy/lib/tests/test_function_base.py:1119: in test_x_signed_int_big_jump
    assert_array_equal(dfdx, [0.5, 0.5])
E   AssertionError: 
E   Arrays are not equal
E   
E   Mismatched elements: 2 / 2 (100%)
E   Max absolute difference: 1.
E   Max relative difference: 2.
E    x: array([-0.5, -0.5])
E    y: array([0.5, 0.5])
________________ TestGradient.test_x_signed_int_big_jump[int32] ________________
numpy/lib/tests/test_function_base.py:1119: in test_x_signed_int_big_jump
    assert_array_equal(dfdx, [0.5, 0.5])
E   AssertionError: 
E   Arrays are not equal
E   
E   Mismatched elements: 2 / 2 (100%)
E   Max absolute difference: 1.
E   Max relative difference: 2.
E    x: array([-0.5, -0.5])
E    y: array([0.5, 0.5])
________________ TestGradient.test_x_signed_int_big_jump[int64] ________________
numpy/lib/tests/test_function_base.py:1119: in test_x_signed_int_big_jump
    assert_array_equal(dfdx, [0.5, 0.5])
E   AssertionError: 
E   Arrays are not equal
E   
E   Mismatched elements: 2 / 2 (100%)
E   Max absolute difference: 1.
E   Max relative difference: 2.
E    x: array([-0.5, -0.5])
E    y: array([0.5, 0.5])
_________________________________ test_cython __________________________________
numpy/random/tests/test_extending.py:48: in test_cython
    cwd=str(tmp_path / '_examples' / 'cython'))
/usr/local/lib/python3.5/subprocess.py:271: in check_call
    raise CalledProcessError(retcode, cmd)
E   subprocess.CalledProcessError: Command '['/usr/local/bin/python', 'setup.py', 'build']' returned non-zero exit status 1
----------------------------- Captured stderr call -----------------------------
Traceback (most recent call last):
  File "setup.py", line 8, in <module>
    import numpy as np
ImportError: No module named 'numpy'
==================================== PASSES ====================================
=========================== short test summary info ============================
PASSED numpy/core/tests/test_multiarray.py::TestFlags::test_writeable
PASSED numpy/core/tests/test_multiarray.py::TestFlags::test_writeable_any_base
PASSED numpy/core/tests/test_multiarray.py::TestFlags::test_writeable_from_readonly
PASSED numpy/core/tests/test_multiarray.py::TestFlags::test_writeable_from_buffer
PASSED numpy/core/tests/test_multiarray.py::TestFlags::test_writeable_pickle
PASSED numpy/core/tests/test_multiarray.py::TestFlags::test_writeable_from_c_data
PASSED numpy/core/tests/test_multiarray.py::TestFlags::test_warnonwrite
PASSED numpy/core/tests/test_multiarray.py::TestFlags::test_otherflags
PASSED numpy/core/tests/test_multiarray.py::TestFlags::test_string_align
PASSED numpy/core/tests/test_multiarray.py::TestFlags::test_void_align
PASSED numpy/core/tests/test_multiarray.py::TestHash::test_int
PASSED numpy/core/tests/test_multiarray.py::TestAttributes::test_attributes
PASSED numpy/core/tests/test_multiarray.py::TestAttributes::test_dtypeattr
PASSED numpy/core/tests/test_multiarray.py::TestAttributes::test_int_subclassing
PASSED numpy/core/tests/test_multiarray.py::TestAttributes::test_stridesattr
PASSED numpy/core/tests/test_multiarray.py::TestAttributes::test_set_stridesattr
PASSED numpy/core/tests/test_multiarray.py::TestAttributes::test_fill
PASSED numpy/core/tests/test_multiarray.py::TestAttributes::test_fill_max_uint64
PASSED numpy/core/tests/test_multiarray.py::TestAttributes::test_fill_struct_array
PASSED numpy/core/tests/test_multiarray.py::TestArrayConstruction::test_array
PASSED numpy/core/tests/test_multiarray.py::TestArrayConstruction::test_array_empty
PASSED numpy/core/tests/test_multiarray.py::TestArrayConstruction::test_array_copy_false
PASSED numpy/core/tests/test_multiarray.py::TestArrayConstruction::test_array_copy_true
PASSED numpy/core/tests/test_multiarray.py::TestArrayConstruction::test_array_cont
PASSED numpy/core/tests/test_multiarray.py::TestAssignment::test_assignment_broadcasting
PASSED numpy/core/tests/test_multiarray.py::TestAssignment::test_assignment_errors
PASSED numpy/core/tests/test_multiarray.py::TestAssignment::test_unicode_assignment
PASSED numpy/core/tests/test_multiarray.py::TestAssignment::test_stringlike_empty_list
PASSED numpy/core/tests/test_multiarray.py::TestAssignment::test_longdouble_assignment
PASSED numpy/core/tests/test_multiarray.py::TestAssignment::test_cast_to_string
PASSED numpy/core/tests/test_multiarray.py::TestDtypedescr::test_construction
PASSED numpy/core/tests/test_multiarray.py::TestDtypedescr::test_byteorders
PASSED numpy/core/tests/test_multiarray.py::TestDtypedescr::test_structured_non_void
PASSED numpy/core/tests/test_multiarray.py::TestZeroRank::test_ellipsis_subscript
PASSED numpy/core/tests/test_multiarray.py::TestZeroRank::test_empty_subscript
PASSED numpy/core/tests/test_multiarray.py::TestZeroRank::test_invalid_subscript
PASSED numpy/core/tests/test_multiarray.py::TestZeroRank::test_ellipsis_subscript_assignment
PASSED numpy/core/tests/test_multiarray.py::TestZeroRank::test_empty_subscript_assignment
PASSED numpy/core/tests/test_multiarray.py::TestZeroRank::test_invalid_subscript_assignment
PASSED numpy/core/tests/test_multiarray.py::TestZeroRank::test_newaxis
PASSED numpy/core/tests/test_multiarray.py::TestZeroRank::test_invalid_newaxis
PASSED numpy/core/tests/test_multiarray.py::TestZeroRank::test_constructor
PASSED numpy/core/tests/test_multiarray.py::TestZeroRank::test_output
PASSED numpy/core/tests/test_multiarray.py::TestZeroRank::test_real_imag
PASSED numpy/core/tests/test_multiarray.py::TestScalarIndexing::test_ellipsis_subscript
PASSED numpy/core/tests/test_multiarray.py::TestScalarIndexing::test_empty_subscript
PASSED numpy/core/tests/test_multiarray.py::TestScalarIndexing::test_invalid_subscript
PASSED numpy/core/tests/test_multiarray.py::TestScalarIndexing::test_invalid_subscript_assignment
PASSED numpy/core/tests/test_multiarray.py::TestScalarIndexing::test_newaxis
PASSED numpy/core/tests/test_multiarray.py::TestScalarIndexing::test_invalid_newaxis
PASSED numpy/core/tests/test_multiarray.py::TestScalarIndexing::test_overlapping_assignment
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_from_attribute
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_from_string
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_void
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_too_big_error
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_zeros
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_zeros_big
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_zeros_obj
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_zeros_obj_obj
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_zeros_like_like_zeros
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_empty_unicode
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_sequence_non_homogenous
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_non_sequence_sequence
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_no_len_object_type
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_false_len_sequence
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_failed_len_sequence
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_array_too_big
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_jagged_ndim_object
PASSED numpy/core/tests/test_multiarray.py::TestCreation::test_jagged_shape_object
PASSED numpy/core/tests/test_multiarray.py::TestStructured::test_subarray_field_access
PASSED numpy/core/tests/test_multiarray.py::TestStructured::test_subarray_comparison
PASSED numpy/core/tests/test_multiarray.py::TestStructured::test_casting
PASSED numpy/core/tests/test_multiarray.py::TestStructured::test_objview
PASSED numpy/core/tests/test_multiarray.py::TestStructured::test_setfield
PASSED numpy/core/tests/test_multiarray.py::TestStructured::test_setfield_object
PASSED numpy/core/tests/test_multiarray.py::TestStructured::test_zero_width_string
PASSED numpy/core/tests/test_multiarray.py::TestStructured::test_base_attr
PASSED numpy/core/tests/test_multiarray.py::TestStructured::test_assignment
PASSED numpy/core/tests/test_multiarray.py::TestStructured::test_structuredscalar_indexing
PASSED numpy/core/tests/test_multiarray.py::TestStructured::test_multiindex_titles
PASSED numpy/core/tests/test_multiarray.py::TestBool::test_test_interning
PASSED numpy/core/tests/test_multiarray.py::TestBool::test_sum
PASSED numpy/core/tests/test_multiarray.py::TestBool::test_count_nonzero
PASSED numpy/core/tests/test_multiarray.py::TestBool::test_count_nonzero_all
PASSED numpy/core/tests/test_multiarray.py::TestBool::test_count_nonzero_unaligned
PASSED numpy/core/tests/test_multiarray.py::TestBool::test_cast_from_void
PASSED numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_create
PASSED numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_sort
PASSED numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_argsort
PASSED numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_partition
PASSED numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_argpartition
PASSED numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_resize
PASSED numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_view
PASSED numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_dumps
PASSED numpy/core/tests/test_multiarray.py::TestZeroSizeFlexible::test_pickle
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_compress
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_choose
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_prod
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_repeat
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_reshape
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_round
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_squeeze
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_transpose
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_sort
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_void_sort
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_sort_raises
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_sort_degraded
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_copy
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_sort_order
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_argsort
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_sort_unicode_kind
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_searchsorted
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_searchsorted_unicode
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_searchsorted_with_sorter
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_searchsorted_return_type
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_argpartition_out_of_range
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_partition_out_of_range
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_argpartition_integer
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_partition_integer
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_partition_empty_array
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_argpartition_empty_array
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_partition
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_partition_iterative
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_partition_cdtype
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_partition_unicode_kind
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_partition_fuzz
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_argpartition_gh5524
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_flatten
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_flatten_invalid_order
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_arr_mult[dot]
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_arr_mult[matmul]
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[i-dot]
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[i-matmul]
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[f-dot]
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[f-matmul]
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[d-dot]
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[d-matmul]
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[F-dot]
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[F-matmul]
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[D-dot]
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_no_dgemv[D-matmul]
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_dot
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_dot_type_mismatch
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_dot_out_mem_overlap
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_dot_matmul_out
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_dot_matmul_inner_array_casting_fails
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_matmul_out
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_diagonal
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_diagonal_view_notwriteable
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_diagonal_memleak
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_size_zero_memleak
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_trace
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_trace_subclass
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_put
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_ravel
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_ravel_subclass
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_swapaxes
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test_conjugate
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test__complex__
PASSED numpy/core/tests/test_multiarray.py::TestMethods::test__complex__should_not_work
PASSED numpy/core/tests/test_multiarray.py::TestCequenceMethods::test_array_contains
PASSED numpy/core/tests/test_multiarray.py::TestBinop::test_inplace
PASSED numpy/core/tests/test_multiarray.py::TestBinop::test_ufunc_binop_interaction
PASSED numpy/core/tests/test_multiarray.py::TestBinop::test_ufunc_override_normalize_signature
PASSED numpy/core/tests/test_multiarray.py::TestBinop::test_array_ufunc_index
PASSED numpy/core/tests/test_multiarray.py::TestBinop::test_out_override
PASSED numpy/core/tests/test_multiarray.py::TestBinop::test_pow_override_with_errors
PASSED numpy/core/tests/test_multiarray.py::TestBinop::test_pow_array_object_dtype
PASSED numpy/core/tests/test_multiarray.py::TestBinop::test_pos_array_ufunc_override
PASSED numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_extension_incref_elide
PASSED numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_extension_incref_elide_stack
PASSED numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_temporary_with_cast
PASSED numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_elide_broadcast
PASSED numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_elide_scalar
PASSED numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_elide_scalar_readonly
PASSED numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_elide_readonly
PASSED numpy/core/tests/test_multiarray.py::TestTemporaryElide::test_elide_updateifcopy
PASSED numpy/core/tests/test_multiarray.py::TestCAPI::test_IsPythonScalar
PASSED numpy/core/tests/test_multiarray.py::TestSubscripting::test_test_zero_rank
PASSED numpy/core/tests/test_multiarray.py::TestPickling::test_correct_protocol5_error_message
PASSED numpy/core/tests/test_multiarray.py::TestPickling::test_record_array_with_object_dtype
PASSED numpy/core/tests/test_multiarray.py::TestPickling::test_non_contiguous_array
PASSED numpy/core/tests/test_multiarray.py::TestPickling::test_roundtrip
PASSED numpy/core/tests/test_multiarray.py::TestPickling::test_version0_int8
PASSED numpy/core/tests/test_multiarray.py::TestPickling::test_version0_float32
PASSED numpy/core/tests/test_multiarray.py::TestPickling::test_version0_object
PASSED numpy/core/tests/test_multiarray.py::TestPickling::test_version1_int8
PASSED numpy/core/tests/test_multiarray.py::TestPickling::test_version1_float32
PASSED numpy/core/tests/test_multiarray.py::TestPickling::test_version1_object
PASSED numpy/core/tests/test_multiarray.py::TestPickling::test_subarray_int_shape
PASSED numpy/core/tests/test_multiarray.py::TestPickling::test_datetime64_byteorder
PASSED numpy/core/tests/test_multiarray.py::TestFancyIndexing::test_list
PASSED numpy/core/tests/test_multiarray.py::TestFancyIndexing::test_tuple
PASSED numpy/core/tests/test_multiarray.py::TestFancyIndexing::test_mask
PASSED numpy/core/tests/test_multiarray.py::TestFancyIndexing::test_mask2
PASSED numpy/core/tests/test_multiarray.py::TestFancyIndexing::test_assign_mask
PASSED numpy/core/tests/test_multiarray.py::TestFancyIndexing::test_assign_mask2
PASSED numpy/core/tests/test_multiarray.py::TestStringCompare::test_string
PASSED numpy/core/tests/test_multiarray.py::TestStringCompare::test_mixed
PASSED numpy/core/tests/test_multiarray.py::TestStringCompare::test_unicode
PASSED numpy/core/tests/test_multiarray.py::TestArgmax::test_all
PASSED numpy/core/tests/test_multiarray.py::TestArgmax::test_combinations
PASSED numpy/core/tests/test_multiarray.py::TestArgmax::test_output_shape
PASSED numpy/core/tests/test_multiarray.py::TestArgmax::test_argmax_unicode
PASSED numpy/core/tests/test_multiarray.py::TestArgmax::test_np_vs_ndarray
PASSED numpy/core/tests/test_multiarray.py::TestArgmax::test_object_argmax_with_NULLs
PASSED numpy/core/tests/test_multiarray.py::TestArgmin::test_all
PASSED numpy/core/tests/test_multiarray.py::TestArgmin::test_combinations
PASSED numpy/core/tests/test_multiarray.py::TestArgmin::test_minimum_signed_integers
PASSED numpy/core/tests/test_multiarray.py::TestArgmin::test_output_shape
PASSED numpy/core/tests/test_multiarray.py::TestArgmin::test_argmin_unicode
PASSED numpy/core/tests/test_multiarray.py::TestArgmin::test_np_vs_ndarray
PASSED numpy/core/tests/test_multiarray.py::TestArgmin::test_object_argmin_with_NULLs
PASSED numpy/core/tests/test_multiarray.py::TestMinMax::test_scalar
PASSED numpy/core/tests/test_multiarray.py::TestMinMax::test_axis
PASSED numpy/core/tests/test_multiarray.py::TestMinMax::test_datetime
PASSED numpy/core/tests/test_multiarray.py::TestNewaxis::test_basic
PASSED numpy/core/tests/test_multiarray.py::TestClip::test_basic
PASSED numpy/core/tests/test_multiarray.py::TestClip::test_record_array
PASSED numpy/core/tests/test_multiarray.py::TestClip::test_max_or_min
PASSED numpy/core/tests/test_multiarray.py::TestClip::test_nan
PASSED numpy/core/tests/test_multiarray.py::TestCompress::test_axis
PASSED numpy/core/tests/test_multiarray.py::TestCompress::test_truncate
PASSED numpy/core/tests/test_multiarray.py::TestCompress::test_flatten
PASSED numpy/core/tests/test_multiarray.py::TestPutmask::test_ip_types
PASSED numpy/core/tests/test_multiarray.py::TestPutmask::test_mask_size
PASSED numpy/core/tests/test_multiarray.py::TestPutmask::test_byteorder[>i4]
PASSED numpy/core/tests/test_multiarray.py::TestPutmask::test_byteorder[<i4]
PASSED numpy/core/tests/test_multiarray.py::TestPutmask::test_record_array
PASSED numpy/core/tests/test_multiarray.py::TestPutmask::test_overlaps
PASSED numpy/core/tests/test_multiarray.py::TestTake::test_ip_types
PASSED numpy/core/tests/test_multiarray.py::TestTake::test_raise
PASSED numpy/core/tests/test_multiarray.py::TestTake::test_clip
PASSED numpy/core/tests/test_multiarray.py::TestTake::test_wrap
PASSED numpy/core/tests/test_multiarray.py::TestTake::test_byteorder[>i4]
PASSED numpy/core/tests/test_multiarray.py::TestTake::test_byteorder[<i4]
PASSED numpy/core/tests/test_multiarray.py::TestTake::test_record_array
PASSED numpy/core/tests/test_multiarray.py::TestTake::test_out_overlap
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[uint8]
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[uint16]
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[uint32]
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[uint64]
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[int8]
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[int16]
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[int32]
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[int64]
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[float16]
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[float32]
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_basic[float64]
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_mixed
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_datetime
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_object
PASSED numpy/core/tests/test_multiarray.py::TestLexsort::test_invalid_axis
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_nofile
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_bool_fromstring
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_uint64_fromstring
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_int64_fromstring
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_empty_files_binary
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_empty_files_text
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_roundtrip_file
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_roundtrip_filename
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_roundtrip_pathlib
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_roundtrip_dump_pathlib
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_roundtrip_binary_str
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_roundtrip_str
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_roundtrip_repr
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_unseekable_fromfile
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_io_open_unbuffered_fromfile
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_largish_file
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_io_open_buffered_fromfile
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_file_position_after_fromfile
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_file_position_after_tofile
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_load_object_array_fromfile
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_fromfile_offset
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_nan
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_inf
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_numbers
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_binary
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_big_binary
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_string
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_counted_string
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_string_with_ws
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_counted_string_with_ws
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_ascii
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_malformed
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_long_sep
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_dtype
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_dtype_bool
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_tofile_sep
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_tofile_format
PASSED numpy/core/tests/test_multiarray.py::TestIO::test_fromfile_subarray_binary
PASSED numpy/core/tests/test_multiarray.py::TestFromBuffer::test_basic[float-<]
PASSED numpy/core/tests/test_multiarray.py::TestFromBuffer::test_basic[float->]
PASSED numpy/core/tests/test_multiarray.py::TestFromBuffer::test_basic[int-<]
PASSED numpy/core/tests/test_multiarray.py::TestFromBuffer::test_basic[int->]
PASSED numpy/core/tests/test_multiarray.py::TestFromBuffer::test_basic[complex-<]
PASSED numpy/core/tests/test_multiarray.py::TestFromBuffer::test_basic[complex->]
PASSED numpy/core/tests/test_multiarray.py::TestFromBuffer::test_empty
PASSED numpy/core/tests/test_multiarray.py::TestFlat::test_contiguous
PASSED numpy/core/tests/test_multiarray.py::TestFlat::test_discontiguous
PASSED numpy/core/tests/test_multiarray.py::TestFlat::test___array__
PASSED numpy/core/tests/test_multiarray.py::TestFlat::test_refcount
PASSED numpy/core/tests/test_multiarray.py::TestResize::test_basic
PASSED numpy/core/tests/test_multiarray.py::TestResize::test_check_reference
PASSED numpy/core/tests/test_multiarray.py::TestResize::test_int_shape
PASSED numpy/core/tests/test_multiarray.py::TestResize::test_none_shape
PASSED numpy/core/tests/test_multiarray.py::TestResize::test_0d_shape
PASSED numpy/core/tests/test_multiarray.py::TestResize::test_invalid_arguments
PASSED numpy/core/tests/test_multiarray.py::TestResize::test_freeform_shape
PASSED numpy/core/tests/test_multiarray.py::TestResize::test_zeros_appended
PASSED numpy/core/tests/test_multiarray.py::TestResize::test_obj_obj
PASSED numpy/core/tests/test_multiarray.py::TestResize::test_empty_view
PASSED numpy/core/tests/test_multiarray.py::TestResize::test_check_weakref
PASSED numpy/core/tests/test_multiarray.py::TestRecord::test_field_rename
PASSED numpy/core/tests/test_multiarray.py::TestRecord::test_multiple_field_name_occurrence
PASSED numpy/core/tests/test_multiarray.py::TestRecord::test_bytes_fields
PASSED numpy/core/tests/test_multiarray.py::TestRecord::test_multiple_field_name_unicode
PASSED numpy/core/tests/test_multiarray.py::TestRecord::test_fromarrays_unicode
PASSED numpy/core/tests/test_multiarray.py::TestRecord::test_unicode_order
PASSED numpy/core/tests/test_multiarray.py::TestRecord::test_field_names
PASSED numpy/core/tests/test_multiarray.py::TestRecord::test_record_hash
PASSED numpy/core/tests/test_multiarray.py::TestRecord::test_record_no_hash
PASSED numpy/core/tests/test_multiarray.py::TestRecord::test_empty_structure_creation
PASSED numpy/core/tests/test_multiarray.py::TestRecord::test_multifield_indexing_view
PASSED numpy/core/tests/test_multiarray.py::TestView::test_basic
PASSED numpy/core/tests/test_multiarray.py::TestStats::test_python_type
PASSED numpy/core/tests/test_multiarray.py::TestStats::test_keepdims
PASSED numpy/core/tests/test_multiarray.py::TestStats::test_out
PASSED numpy/core/tests/test_multiarray.py::TestStats::test_dtype_from_input
PASSED numpy/core/tests/test_multiarray.py::TestStats::test_dtype_from_dtype
PASSED numpy/core/tests/test_multiarray.py::TestStats::test_ddof
PASSED numpy/core/tests/test_multiarray.py::TestStats::test_ddof_too_big
PASSED numpy/core/tests/test_multiarray.py::TestStats::test_empty
PASSED numpy/core/tests/test_multiarray.py::TestStats::test_mean_values
PASSED numpy/core/tests/test_multiarray.py::TestStats::test_mean_float16
PASSED numpy/core/tests/test_multiarray.py::TestStats::test_var_values
PASSED numpy/core/tests/test_multiarray.py::TestStats::test_std_values
PASSED numpy/core/tests/test_multiarray.py::TestStats::test_subclass
PASSED numpy/core/tests/test_multiarray.py::TestVdot::test_basic
PASSED numpy/core/tests/test_multiarray.py::TestVdot::test_vdot_array_order
PASSED numpy/core/tests/test_multiarray.py::TestVdot::test_vdot_uncontiguous
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dotmatmat
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dotmatvec
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dotmatvec2
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dotvecmat
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dotvecmat2
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dotvecmat3
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dotvecvecouter
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dotvecvecinner
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dotcolumnvect1
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dotcolumnvect2
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dotvecscalar
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dotvecscalar2
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_all
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_vecobject
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dot_2args
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dot_3args
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dot_3args_errors
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_dot_array_order
PASSED numpy/core/tests/test_multiarray.py::TestDot::test_accelerate_framework_sgemv_fix
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_exceptions
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_shapes
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_result_types
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_scalar_output
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_vector_vector_values
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_vector_matrix_values
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_matrix_vector_values
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_matrix_matrix_values
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_out_arg
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_out_contiguous
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args0]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args1]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args2]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args3]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args4]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args5]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args6]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args7]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args8]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args9]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args10]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args11]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args12]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args13]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args14]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args15]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args16]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args17]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args18]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args19]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args20]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args21]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args22]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args23]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args24]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args25]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args26]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args27]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args28]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args29]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args30]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args31]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_dot_equivalent[args32]
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_matmul_object
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_matmul_object_type_scalar
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_matmul_empty
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_matmul_exception_multiply
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_matmul_exception_add
PASSED numpy/core/tests/test_multiarray.py::TestMatmul::test_matmul_bool
PASSED numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_exceptions
PASSED numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_shapes
PASSED numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_result_types
PASSED numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_scalar_output
PASSED numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_vector_vector_values
PASSED numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_vector_matrix_values
PASSED numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_matrix_vector_values
PASSED numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_matrix_matrix_values
PASSED numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_array_priority_override
PASSED numpy/core/tests/test_multiarray.py::TestMatmulOperator::test_matmul_raises
PASSED numpy/core/tests/test_multiarray.py::test_matmul_inplace
PASSED numpy/core/tests/test_multiarray.py::test_matmul_axes
PASSED numpy/core/tests/test_multiarray.py::TestInner::test_inner_type_mismatch
PASSED numpy/core/tests/test_multiarray.py::TestInner::test_inner_scalar_and_vector
PASSED numpy/core/tests/test_multiarray.py::TestInner::test_vecself
PASSED numpy/core/tests/test_multiarray.py::TestInner::test_inner_product_with_various_contiguities
PASSED numpy/core/tests/test_multiarray.py::TestInner::test_3d_tensor
PASSED numpy/core/tests/test_multiarray.py::TestAlen::test_basic
PASSED numpy/core/tests/test_multiarray.py::TestAlen::test_singleton
PASSED numpy/core/tests/test_multiarray.py::TestChoose::test_basic
PASSED numpy/core/tests/test_multiarray.py::TestChoose::test_broadcast1
PASSED numpy/core/tests/test_multiarray.py::TestChoose::test_broadcast2
PASSED numpy/core/tests/test_multiarray.py::TestRepeat::test_basic
PASSED numpy/core/tests/test_multiarray.py::TestRepeat::test_broadcast1
PASSED numpy/core/tests/test_multiarray.py::TestRepeat::test_axis_spec
PASSED numpy/core/tests/test_multiarray.py::TestRepeat::test_broadcast2
PASSED numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_simple2d[float]
PASSED numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_simple2d[object]
PASSED numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_mirror2d[float]
PASSED numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_mirror2d[object]
PASSED numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_simple[float]
PASSED numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_simple[object]
PASSED numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_mirror[float]
PASSED numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_mirror[object]
PASSED numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_circular[float]
PASSED numpy/core/tests/test_multiarray.py::TestNeighborhoodIter::test_circular[object]
PASSED numpy/core/tests/test_multiarray.py::TestStackedNeighborhoodIter::test_simple_const
PASSED numpy/core/tests/test_multiarray.py::TestStackedNeighborhoodIter::test_simple_mirror
PASSED numpy/core/tests/test_multiarray.py::TestStackedNeighborhoodIter::test_simple_circular
PASSED numpy/core/tests/test_multiarray.py::TestStackedNeighborhoodIter::test_simple_strict_within
PASSED numpy/core/tests/test_multiarray.py::TestWarnings::test_complex_warning
PASSED numpy/core/tests/test_multiarray.py::TestMinScalarType::test_usigned_shortshort
PASSED numpy/core/tests/test_multiarray.py::TestMinScalarType::test_usigned_short
PASSED numpy/core/tests/test_multiarray.py::TestMinScalarType::test_usigned_int
PASSED numpy/core/tests/test_multiarray.py::TestMinScalarType::test_usigned_longlong
PASSED numpy/core/tests/test_multiarray.py::TestMinScalarType::test_object
PASSED numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_native_padding
PASSED numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_native_padding_2
PASSED numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_trailing_padding
PASSED numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_native_padding_3
PASSED numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_padding_with_array_inside_struct
PASSED numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_byteorder_inside_struct
PASSED numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_intra_padding
PASSED numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_char_vs_string
PASSED numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_field_order
PASSED numpy/core/tests/test_multiarray.py::TestPEP3118Dtype::test_unnamed_fields
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_roundtrip
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_roundtrip_half
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_roundtrip_single_types
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_roundtrip_scalar
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_invalid_buffer_format
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_export_simple_1d
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_export_simple_nd
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_export_discontiguous
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_export_record
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_export_subarray
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_export_endian
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_export_flags
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_padding
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_reference_leak
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_padded_struct_array
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_relaxed_strides
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_out_of_order_fields
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_max_dims
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_error_too_many_dims
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_error_pointer_type
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_error_message_unsupported
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_ctypes_integer_via_memoryview
PASSED numpy/core/tests/test_multiarray.py::TestNewBufferProtocol::test_ctypes_struct_via_memoryview
PASSED numpy/core/tests/test_multiarray.py::TestArrayAttributeDeletion::test_multiarray_writable_attributes_deletion
PASSED numpy/core/tests/test_multiarray.py::TestArrayAttributeDeletion::test_multiarray_not_writable_attributes_deletion
PASSED numpy/core/tests/test_multiarray.py::TestArrayAttributeDeletion::test_multiarray_flags_writable_attribute_deletion
PASSED numpy/core/tests/test_multiarray.py::TestArrayAttributeDeletion::test_multiarray_flags_not_writable_attribute_deletion
PASSED numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val0-iface0-0.5]
PASSED numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val1-iface1-expected1]
PASSED numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val2-iface2-expected2]
PASSED numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val3-iface3-0.5]
PASSED numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val4-iface4-TypeError]
PASSED numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val5-iface5-expected5]
PASSED numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val6-iface6-ValueError]
PASSED numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val7-iface7-0.5]
PASSED numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val8-iface8-ValueError]
PASSED numpy/core/tests/test_multiarray.py::TestArrayInterface::test_scalar_interface[val9-iface9-TypeError]
PASSED numpy/core/tests/test_multiarray.py::test_interface_no_shape
PASSED numpy/core/tests/test_multiarray.py::test_array_interface_itemsize
PASSED numpy/core/tests/test_multiarray.py::test_array_interface_empty_shape
PASSED numpy/core/tests/test_multiarray.py::test_array_interface_offset
PASSED numpy/core/tests/test_multiarray.py::test_flat_element_deletion
PASSED numpy/core/tests/test_multiarray.py::test_scalar_element_deletion
PASSED numpy/core/tests/test_multiarray.py::TestMemEventHook::test_mem_seteventhook
PASSED numpy/core/tests/test_multiarray.py::TestMapIter::test_mapiter
PASSED numpy/core/tests/test_multiarray.py::TestAsCArray::test_1darray
PASSED numpy/core/tests/test_multiarray.py::TestAsCArray::test_2darray
PASSED numpy/core/tests/test_multiarray.py::TestAsCArray::test_3darray
PASSED numpy/core/tests/test_multiarray.py::TestConversion::test_array_scalar_relational_operation
PASSED numpy/core/tests/test_multiarray.py::TestConversion::test_to_bool_scalar
PASSED numpy/core/tests/test_multiarray.py::TestConversion::test_to_int_scalar
PASSED numpy/core/tests/test_multiarray.py::TestWhere::test_basic
PASSED numpy/core/tests/test_multiarray.py::TestWhere::test_exotic
PASSED numpy/core/tests/test_multiarray.py::TestWhere::test_ndim
PASSED numpy/core/tests/test_multiarray.py::TestWhere::test_dtype_mix
PASSED numpy/core/tests/test_multiarray.py::TestWhere::test_foreign
PASSED numpy/core/tests/test_multiarray.py::TestWhere::test_error
PASSED numpy/core/tests/test_multiarray.py::TestWhere::test_string
PASSED numpy/core/tests/test_multiarray.py::TestWhere::test_empty_result
PASSED numpy/core/tests/test_multiarray.py::TestWhere::test_largedim
PASSED numpy/core/tests/test_multiarray.py::TestSizeOf::test_empty_array
PASSED numpy/core/tests/test_multiarray.py::TestSizeOf::test_array_int32
PASSED numpy/core/tests/test_multiarray.py::TestSizeOf::test_array_int64
PASSED numpy/core/tests/test_multiarray.py::TestSizeOf::test_array_float32
PASSED numpy/core/tests/test_multiarray.py::TestSizeOf::test_array_float64
PASSED numpy/core/tests/test_multiarray.py::TestSizeOf::test_view
PASSED numpy/core/tests/test_multiarray.py::TestSizeOf::test_reshape
PASSED numpy/core/tests/test_multiarray.py::TestSizeOf::test_resize
PASSED numpy/core/tests/test_multiarray.py::TestSizeOf::test_error
PASSED numpy/core/tests/test_multiarray.py::TestHashing::test_arrays_not_hashable
PASSED numpy/core/tests/test_multiarray.py::TestHashing::test_collections_hashable
PASSED numpy/core/tests/test_multiarray.py::TestArrayPriority::test_ndarray_subclass
PASSED numpy/core/tests/test_multiarray.py::TestArrayPriority::test_ndarray_other
PASSED numpy/core/tests/test_multiarray.py::TestArrayPriority::test_subclass_subclass
PASSED numpy/core/tests/test_multiarray.py::TestArrayPriority::test_subclass_other
PASSED numpy/core/tests/test_multiarray.py::TestBytestringArrayNonzero::test_empty_bstring_array_is_falsey
PASSED numpy/core/tests/test_multiarray.py::TestBytestringArrayNonzero::test_whitespace_bstring_array_is_falsey
PASSED numpy/core/tests/test_multiarray.py::TestBytestringArrayNonzero::test_all_null_bstring_array_is_falsey
PASSED numpy/core/tests/test_multiarray.py::TestBytestringArrayNonzero::test_null_inside_bstring_array_is_truthy
PASSED numpy/core/tests/test_multiarray.py::TestUnicodeArrayNonzero::test_empty_ustring_array_is_falsey
PASSED numpy/core/tests/test_multiarray.py::TestUnicodeArrayNonzero::test_whitespace_ustring_array_is_falsey
PASSED numpy/core/tests/test_multiarray.py::TestUnicodeArrayNonzero::test_all_null_ustring_array_is_falsey
PASSED numpy/core/tests/test_multiarray.py::TestUnicodeArrayNonzero::test_null_inside_ustring_array_is_truthy
PASSED numpy/core/tests/test_multiarray.py::TestFormat::test_0d
PASSED numpy/core/tests/test_multiarray.py::TestFormat::test_1d_no_format
PASSED numpy/core/tests/test_multiarray.py::TestFormat::test_1d_format
PASSED numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_is_available
PASSED numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_is_not_available
PASSED numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[1d]
PASSED numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[2d]
PASSED numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[structured]
PASSED numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[overlapping]
PASSED numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[object]
PASSED numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[empty]
PASSED numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[empty-2d]
PASSED numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_data_as_holds_reference[readonly]
PASSED numpy/core/tests/test_multiarray.py::TestCTypes::test_ctypes_as_parameter_holds_reference
PASSED numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_argmax_with_out
PASSED numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_argmin_with_out
PASSED numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_insert_noncontiguous
PASSED numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_put_noncontiguous
PASSED numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_putmask_noncontiguous
PASSED numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_take_mode_raise
PASSED numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_choose_mod_raise
PASSED numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_flatiter__array__
PASSED numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_dot_out
PASSED numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_view_assign
PASSED numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_dealloc_warning
PASSED numpy/core/tests/test_multiarray.py::TestWritebackIfCopy::test_view_discard_refcount
PASSED numpy/core/tests/test_multiarray.py::TestArange::test_infinite
PASSED numpy/core/tests/test_multiarray.py::TestArange::test_nan_step
PASSED numpy/core/tests/test_multiarray.py::TestArange::test_zero_step
PASSED numpy/core/tests/test_multiarray.py::TestArrayFinalize::test_receives_base
PASSED numpy/core/tests/test_multiarray.py::TestArrayFinalize::test_lifetime_on_error
PASSED numpy/core/tests/test_multiarray.py::test_orderconverter_with_nonASCII_unicode_ordering
PASSED numpy/core/tests/test_multiarray.py::test_equal_override
PASSED numpy/core/tests/test_multiarray.py::test_npymath_complex
PASSED numpy/core/tests/test_multiarray.py::test_npymath_real
PASSED numpy/core/tests/test_multiarray.py::test_uintalignment_and_alignment
PASSED numpy/core/tests/test_multiarray.py::TestAlignment::test_various_alignments
PASSED numpy/core/tests/test_multiarray.py::TestAlignment::test_strided_loop_alignments
PASSED numpy/core/tests/test_multiarray.py::test_getfield
PASSED numpy/lib/tests/test_function_base.py::TestRot90::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestRot90::test_axes
PASSED numpy/lib/tests/test_function_base.py::TestRot90::test_rotation_axes
PASSED numpy/lib/tests/test_function_base.py::TestFlip::test_axes
PASSED numpy/lib/tests/test_function_base.py::TestFlip::test_basic_lr
PASSED numpy/lib/tests/test_function_base.py::TestFlip::test_basic_ud
PASSED numpy/lib/tests/test_function_base.py::TestFlip::test_3d_swap_axis0
PASSED numpy/lib/tests/test_function_base.py::TestFlip::test_3d_swap_axis1
PASSED numpy/lib/tests/test_function_base.py::TestFlip::test_3d_swap_axis2
PASSED numpy/lib/tests/test_function_base.py::TestFlip::test_4d
PASSED numpy/lib/tests/test_function_base.py::TestFlip::test_default_axis
PASSED numpy/lib/tests/test_function_base.py::TestFlip::test_multiple_axes
PASSED numpy/lib/tests/test_function_base.py::TestAny::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestAny::test_nd
PASSED numpy/lib/tests/test_function_base.py::TestAll::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestAll::test_nd
PASSED numpy/lib/tests/test_function_base.py::TestCopy::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestCopy::test_order
PASSED numpy/lib/tests/test_function_base.py::TestAverage::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestAverage::test_weights
PASSED numpy/lib/tests/test_function_base.py::TestAverage::test_returned
PASSED numpy/lib/tests/test_function_base.py::TestAverage::test_subclasses
PASSED numpy/lib/tests/test_function_base.py::TestAverage::test_upcasting
PASSED numpy/lib/tests/test_function_base.py::TestAverage::test_object_dtype
PASSED numpy/lib/tests/test_function_base.py::TestSelect::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestSelect::test_broadcasting
PASSED numpy/lib/tests/test_function_base.py::TestSelect::test_return_dtype
PASSED numpy/lib/tests/test_function_base.py::TestSelect::test_deprecated_empty
PASSED numpy/lib/tests/test_function_base.py::TestSelect::test_non_bool_deprecation
PASSED numpy/lib/tests/test_function_base.py::TestSelect::test_many_arguments
PASSED numpy/lib/tests/test_function_base.py::TestInsert::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestInsert::test_multidim
PASSED numpy/lib/tests/test_function_base.py::TestInsert::test_0d
PASSED numpy/lib/tests/test_function_base.py::TestInsert::test_subclass
PASSED numpy/lib/tests/test_function_base.py::TestInsert::test_index_array_copied
PASSED numpy/lib/tests/test_function_base.py::TestInsert::test_structured_array
PASSED numpy/lib/tests/test_function_base.py::TestAmax::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestAmin::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestPtp::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestCumsum::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestProd::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestCumprod::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestDiff::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestDiff::test_axis
PASSED numpy/lib/tests/test_function_base.py::TestDiff::test_nd
PASSED numpy/lib/tests/test_function_base.py::TestDiff::test_n
PASSED numpy/lib/tests/test_function_base.py::TestDiff::test_times
PASSED numpy/lib/tests/test_function_base.py::TestDiff::test_subclass
PASSED numpy/lib/tests/test_function_base.py::TestDiff::test_prepend
PASSED numpy/lib/tests/test_function_base.py::TestDiff::test_append
PASSED numpy/lib/tests/test_function_base.py::TestDelete::test_slices
PASSED numpy/lib/tests/test_function_base.py::TestDelete::test_fancy
PASSED numpy/lib/tests/test_function_base.py::TestDelete::test_single
PASSED numpy/lib/tests/test_function_base.py::TestDelete::test_0d
PASSED numpy/lib/tests/test_function_base.py::TestDelete::test_subclass
PASSED numpy/lib/tests/test_function_base.py::TestDelete::test_array_order_preserve
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_args
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_badargs
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_datetime64
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_masked
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_second_order_accurate
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_spacing
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_specific_axes
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_timedelta64
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_inexact_dtypes
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_values
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_f_decreasing_unsigned_int[uint8]
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_f_decreasing_unsigned_int[uint16]
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_f_decreasing_unsigned_int[uint32]
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_f_decreasing_unsigned_int[uint64]
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_f_signed_int_big_jump[int8]
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_f_signed_int_big_jump[int16]
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_f_signed_int_big_jump[int32]
PASSED numpy/lib/tests/test_function_base.py::TestGradient::test_f_signed_int_big_jump[int64]
PASSED numpy/lib/tests/test_function_base.py::TestAngle::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestAngle::test_subclass
PASSED numpy/lib/tests/test_function_base.py::TestTrimZeros::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestTrimZeros::test_leading_skip
PASSED numpy/lib/tests/test_function_base.py::TestTrimZeros::test_trailing_skip
PASSED numpy/lib/tests/test_function_base.py::TestExtins::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestExtins::test_place
PASSED numpy/lib/tests/test_function_base.py::TestExtins::test_both
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_simple
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_scalar
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_large
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_ufunc
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_keywords
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_keywords_no_func_code
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_keywords2_ticket_2100
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_keywords3_ticket_2100
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_keywords4_ticket_2100
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_keywords5_ticket_2100
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_coverage1_ticket_2100
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_assigning_docstring
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_UnboundMethod_ticket_1156
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_execution_order_ticket_1487
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_string_ticket_1892
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_cache
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_otypes
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_parse_gufunc_signature
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_simple
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_mean_last
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_center
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_two_outputs
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_outer
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_computed_size
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_excluded
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_otypes
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_invalid_inputs
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_signature_invalid_outputs
PASSED numpy/lib/tests/test_function_base.py::TestVectorize::test_size_zero_output
PASSED numpy/lib/tests/test_function_base.py::TestLeaks::test_frompyfunc_leaks[bound-20]
PASSED numpy/lib/tests/test_function_base.py::TestLeaks::test_frompyfunc_leaks[unbound-0]
PASSED numpy/lib/tests/test_function_base.py::TestDigitize::test_forward
PASSED numpy/lib/tests/test_function_base.py::TestDigitize::test_reverse
PASSED numpy/lib/tests/test_function_base.py::TestDigitize::test_random
PASSED numpy/lib/tests/test_function_base.py::TestDigitize::test_right_basic
PASSED numpy/lib/tests/test_function_base.py::TestDigitize::test_right_open
PASSED numpy/lib/tests/test_function_base.py::TestDigitize::test_right_open_reverse
PASSED numpy/lib/tests/test_function_base.py::TestDigitize::test_right_open_random
PASSED numpy/lib/tests/test_function_base.py::TestDigitize::test_monotonic
PASSED numpy/lib/tests/test_function_base.py::TestDigitize::test_casting_error
PASSED numpy/lib/tests/test_function_base.py::TestDigitize::test_return_type
PASSED numpy/lib/tests/test_function_base.py::TestDigitize::test_large_integers_increasing
PASSED numpy/lib/tests/test_function_base.py::TestUnwrap::test_simple
PASSED numpy/lib/tests/test_function_base.py::TestFilterwindows::test_hanning
PASSED numpy/lib/tests/test_function_base.py::TestFilterwindows::test_hamming
PASSED numpy/lib/tests/test_function_base.py::TestFilterwindows::test_bartlett
PASSED numpy/lib/tests/test_function_base.py::TestFilterwindows::test_blackman
PASSED numpy/lib/tests/test_function_base.py::TestTrapz::test_simple
PASSED numpy/lib/tests/test_function_base.py::TestTrapz::test_ndim
PASSED numpy/lib/tests/test_function_base.py::TestTrapz::test_masked
PASSED numpy/lib/tests/test_function_base.py::TestSinc::test_simple
PASSED numpy/lib/tests/test_function_base.py::TestSinc::test_array_like
PASSED numpy/lib/tests/test_function_base.py::TestUnique::test_simple
PASSED numpy/lib/tests/test_function_base.py::TestCheckFinite::test_simple
PASSED numpy/lib/tests/test_function_base.py::TestCheckFinite::test_dtype_order
PASSED numpy/lib/tests/test_function_base.py::TestCorrCoef::test_non_array
PASSED numpy/lib/tests/test_function_base.py::TestCorrCoef::test_simple
PASSED numpy/lib/tests/test_function_base.py::TestCorrCoef::test_ddof
PASSED numpy/lib/tests/test_function_base.py::TestCorrCoef::test_bias
PASSED numpy/lib/tests/test_function_base.py::TestCorrCoef::test_complex
PASSED numpy/lib/tests/test_function_base.py::TestCorrCoef::test_xy
PASSED numpy/lib/tests/test_function_base.py::TestCorrCoef::test_empty
PASSED numpy/lib/tests/test_function_base.py::TestCorrCoef::test_extreme
PASSED numpy/lib/tests/test_function_base.py::TestCov::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestCov::test_complex
PASSED numpy/lib/tests/test_function_base.py::TestCov::test_xy
PASSED numpy/lib/tests/test_function_base.py::TestCov::test_empty
PASSED numpy/lib/tests/test_function_base.py::TestCov::test_wrong_ddof
PASSED numpy/lib/tests/test_function_base.py::TestCov::test_1D_rowvar
PASSED numpy/lib/tests/test_function_base.py::TestCov::test_1D_variance
PASSED numpy/lib/tests/test_function_base.py::TestCov::test_fweights
PASSED numpy/lib/tests/test_function_base.py::TestCov::test_aweights
PASSED numpy/lib/tests/test_function_base.py::TestCov::test_unit_fweights_and_aweights
PASSED numpy/lib/tests/test_function_base.py::Test_I0::test_simple
PASSED numpy/lib/tests/test_function_base.py::Test_I0::test_non_array
PASSED numpy/lib/tests/test_function_base.py::TestKaiser::test_simple
PASSED numpy/lib/tests/test_function_base.py::TestKaiser::test_int_beta
PASSED numpy/lib/tests/test_function_base.py::TestMsort::test_simple
PASSED numpy/lib/tests/test_function_base.py::TestMeshgrid::test_simple
PASSED numpy/lib/tests/test_function_base.py::TestMeshgrid::test_single_input
PASSED numpy/lib/tests/test_function_base.py::TestMeshgrid::test_no_input
PASSED numpy/lib/tests/test_function_base.py::TestMeshgrid::test_indexing
PASSED numpy/lib/tests/test_function_base.py::TestMeshgrid::test_sparse
PASSED numpy/lib/tests/test_function_base.py::TestMeshgrid::test_invalid_arguments
PASSED numpy/lib/tests/test_function_base.py::TestMeshgrid::test_return_type
PASSED numpy/lib/tests/test_function_base.py::TestMeshgrid::test_writeback
PASSED numpy/lib/tests/test_function_base.py::TestPiecewise::test_simple
PASSED numpy/lib/tests/test_function_base.py::TestPiecewise::test_two_conditions
PASSED numpy/lib/tests/test_function_base.py::TestPiecewise::test_scalar_domains_three_conditions
PASSED numpy/lib/tests/test_function_base.py::TestPiecewise::test_default
PASSED numpy/lib/tests/test_function_base.py::TestPiecewise::test_0d
PASSED numpy/lib/tests/test_function_base.py::TestPiecewise::test_0d_comparison
PASSED numpy/lib/tests/test_function_base.py::TestPiecewise::test_0d_0d_condition
PASSED numpy/lib/tests/test_function_base.py::TestPiecewise::test_multidimensional_extrafunc
PASSED numpy/lib/tests/test_function_base.py::TestBincount::test_simple
PASSED numpy/lib/tests/test_function_base.py::TestBincount::test_simple2
PASSED numpy/lib/tests/test_function_base.py::TestBincount::test_simple_weight
PASSED numpy/lib/tests/test_function_base.py::TestBincount::test_simple_weight2
PASSED numpy/lib/tests/test_function_base.py::TestBincount::test_with_minlength
PASSED numpy/lib/tests/test_function_base.py::TestBincount::test_with_minlength_smaller_than_maxvalue
PASSED numpy/lib/tests/test_function_base.py::TestBincount::test_with_minlength_and_weights
PASSED numpy/lib/tests/test_function_base.py::TestBincount::test_empty
PASSED numpy/lib/tests/test_function_base.py::TestBincount::test_empty_with_minlength
PASSED numpy/lib/tests/test_function_base.py::TestBincount::test_with_incorrect_minlength
PASSED numpy/lib/tests/test_function_base.py::TestBincount::test_dtype_reference_leaks
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_exceptions
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_right_left_behavior
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_scalar_interpolation_point
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_behavior_exact_x
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_any_nan[real]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_any_nan[complex-real]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_any_nan[complex-imag]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_any_nan[complex-both]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_inf[real]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_inf[complex-real]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_inf[complex-imag]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_inf[complex-both]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_xf[real]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_xf[complex-real]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_xf[complex-imag]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_xf[complex-both]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_x[real]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_x[complex-real]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_x[complex-imag]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_x[complex-both]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_f[real]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_f[complex-real]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_f[complex-imag]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_non_finite_half_inf_f[complex-both]
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_complex_interp
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_zero_dimensional_interpolation_point
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_if_len_x_is_small
PASSED numpy/lib/tests/test_function_base.py::TestInterp::test_period
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_fraction
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_api
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_2D
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_linear
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_lower_higher
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_midpoint
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_nearest
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_sequence
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_axis
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_scalar_q
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_exception
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_percentile_list
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_percentile_out
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_percentile_empty_dim
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_percentile_no_overwrite
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_no_p_overwrite
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_percentile_overwrite
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_extended_axis
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_extended_axis_invalid
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_keepdims
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_out
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_out_nan
PASSED numpy/lib/tests/test_function_base.py::TestPercentile::test_nan_behavior
PASSED numpy/lib/tests/test_function_base.py::TestQuantile::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestQuantile::test_fraction
PASSED numpy/lib/tests/test_function_base.py::TestQuantile::test_no_p_overwrite
PASSED numpy/lib/tests/test_function_base.py::TestMedian::test_basic
PASSED numpy/lib/tests/test_function_base.py::TestMedian::test_axis_keyword
PASSED numpy/lib/tests/test_function_base.py::TestMedian::test_overwrite_keyword
PASSED numpy/lib/tests/test_function_base.py::TestMedian::test_array_like
PASSED numpy/lib/tests/test_function_base.py::TestMedian::test_subclass
PASSED numpy/lib/tests/test_function_base.py::TestMedian::test_out
PASSED numpy/lib/tests/test_function_base.py::TestMedian::test_out_nan
PASSED numpy/lib/tests/test_function_base.py::TestMedian::test_nan_behavior
PASSED numpy/lib/tests/test_function_base.py::TestMedian::test_empty
PASSED numpy/lib/tests/test_function_base.py::TestMedian::test_object
PASSED numpy/lib/tests/test_function_base.py::TestMedian::test_extended_axis
PASSED numpy/lib/tests/test_function_base.py::TestMedian::test_extended_axis_invalid
PASSED numpy/lib/tests/test_function_base.py::TestMedian::test_keepdims
PASSED numpy/lib/tests/test_function_base.py::TestAdd_newdoc_ufunc::test_ufunc_arg
PASSED numpy/lib/tests/test_function_base.py::TestAdd_newdoc_ufunc::test_string_arg
PASSED numpy/lib/tests/test_function_base.py::TestAdd_newdoc::test_add_doc
PASSED numpy/lib/tests/test_function_base.py::TestSortComplex::test_sort_real[l-D]
PASSED numpy/lib/tests/test_function_base.py::TestSortComplex::test_sort_real[h-F]
PASSED numpy/lib/tests/test_function_base.py::TestSortComplex::test_sort_real[H-F]
PASSED numpy/lib/tests/test_function_base.py::TestSortComplex::test_sort_real[b-F]
PASSED numpy/lib/tests/test_function_base.py::TestSortComplex::test_sort_real[B-F]
PASSED numpy/lib/tests/test_function_base.py::TestSortComplex::test_sort_real[g-G]
PASSED numpy/lib/tests/test_function_base.py::TestSortComplex::test_sort_complex
PASSED numpy/linalg/tests/test_linalg.py::TestSolve::test_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestSolve::test_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestSolve::test_generalized_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestSolve::test_generalized_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestSolve::test_types[float32]
PASSED numpy/linalg/tests/test_linalg.py::TestSolve::test_types[float64]
PASSED numpy/linalg/tests/test_linalg.py::TestSolve::test_types[complex64]
PASSED numpy/linalg/tests/test_linalg.py::TestSolve::test_types[complex128]
PASSED numpy/linalg/tests/test_linalg.py::TestSolve::test_0_size
PASSED numpy/linalg/tests/test_linalg.py::TestSolve::test_0_size_k
PASSED numpy/linalg/tests/test_linalg.py::TestInv::test_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestInv::test_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestInv::test_generalized_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestInv::test_generalized_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestInv::test_types[float32]
PASSED numpy/linalg/tests/test_linalg.py::TestInv::test_types[float64]
PASSED numpy/linalg/tests/test_linalg.py::TestInv::test_types[complex64]
PASSED numpy/linalg/tests/test_linalg.py::TestInv::test_types[complex128]
PASSED numpy/linalg/tests/test_linalg.py::TestInv::test_0_size
PASSED numpy/linalg/tests/test_linalg.py::TestEigvals::test_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEigvals::test_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEigvals::test_generalized_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEigvals::test_generalized_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEigvals::test_types[float32]
PASSED numpy/linalg/tests/test_linalg.py::TestEigvals::test_types[float64]
PASSED numpy/linalg/tests/test_linalg.py::TestEigvals::test_types[complex64]
PASSED numpy/linalg/tests/test_linalg.py::TestEigvals::test_types[complex128]
PASSED numpy/linalg/tests/test_linalg.py::TestEigvals::test_0_size
PASSED numpy/linalg/tests/test_linalg.py::TestEig::test_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEig::test_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEig::test_generalized_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEig::test_generalized_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEig::test_types[float32]
PASSED numpy/linalg/tests/test_linalg.py::TestEig::test_types[float64]
PASSED numpy/linalg/tests/test_linalg.py::TestEig::test_types[complex64]
PASSED numpy/linalg/tests/test_linalg.py::TestEig::test_types[complex128]
PASSED numpy/linalg/tests/test_linalg.py::TestEig::test_0_size
PASSED numpy/linalg/tests/test_linalg.py::TestSVD::test_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestSVD::test_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestSVD::test_generalized_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestSVD::test_generalized_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestSVD::test_types[float32]
PASSED numpy/linalg/tests/test_linalg.py::TestSVD::test_types[float64]
PASSED numpy/linalg/tests/test_linalg.py::TestSVD::test_types[complex64]
PASSED numpy/linalg/tests/test_linalg.py::TestSVD::test_types[complex128]
PASSED numpy/linalg/tests/test_linalg.py::TestSVD::test_empty_identity
PASSED numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_empty_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_generalized_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_generalized_empty_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_types[float32]
PASSED numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_types[float64]
PASSED numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_types[complex64]
PASSED numpy/linalg/tests/test_linalg.py::TestSVDHermitian::test_types[complex128]
PASSED numpy/linalg/tests/test_linalg.py::TestCond::test_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestCond::test_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestCond::test_generalized_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestCond::test_generalized_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestCond::test_basic_nonsvd
PASSED numpy/linalg/tests/test_linalg.py::TestCond::test_singular
PASSED numpy/linalg/tests/test_linalg.py::TestCond::test_nan
PASSED numpy/linalg/tests/test_linalg.py::TestCond::test_stacked_singular
PASSED numpy/linalg/tests/test_linalg.py::TestPinv::test_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestPinv::test_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestPinv::test_nonsq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestPinv::test_empty_nonsq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestPinv::test_generalized_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestPinv::test_generalized_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestPinv::test_generalized_nonsq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestPinv::test_generalized_empty_nonsq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestPinvHermitian::test_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestPinvHermitian::test_empty_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestPinvHermitian::test_generalized_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestPinvHermitian::test_generalized_empty_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestDet::test_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestDet::test_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestDet::test_generalized_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestDet::test_generalized_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestDet::test_zero
PASSED numpy/linalg/tests/test_linalg.py::TestDet::test_types[float32]
PASSED numpy/linalg/tests/test_linalg.py::TestDet::test_types[float64]
PASSED numpy/linalg/tests/test_linalg.py::TestDet::test_types[complex64]
PASSED numpy/linalg/tests/test_linalg.py::TestDet::test_types[complex128]
PASSED numpy/linalg/tests/test_linalg.py::TestDet::test_0_size
PASSED numpy/linalg/tests/test_linalg.py::TestLstsq::test_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_sq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestLstsq::test_nonsq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_nonsq_cases
PASSED numpy/linalg/tests/test_linalg.py::TestLstsq::test_future_rcond
PASSED numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_a_b[4-2-2]
PASSED numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_a_b[0-4-1]
PASSED numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_a_b[0-4-2]
PASSED numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_a_b[4-0-1]
PASSED numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_a_b[4-0-2]
PASSED numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_a_b[4-2-0]
PASSED numpy/linalg/tests/test_linalg.py::TestLstsq::test_empty_a_b[0-0-0]
PASSED numpy/linalg/tests/test_linalg.py::TestLstsq::test_incompatible_dims
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt0]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt1]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt2]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt3]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt4]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt5]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt6]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt7]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt8]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt9]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt10]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt11]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt12]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt13]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt14]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt15]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_large_power[dt16]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt0]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt1]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt2]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt3]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt4]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt5]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt6]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt7]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt8]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt9]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt10]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt11]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt12]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt13]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt14]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt15]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_zero[dt16]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt0]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt1]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt2]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt3]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt4]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt5]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt6]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt7]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt8]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt9]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt10]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt11]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt12]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt13]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt14]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt15]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_one[dt16]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt0]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt1]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt2]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt3]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt4]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt5]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt6]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt7]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt8]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt9]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt10]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt11]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt12]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt13]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt14]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt15]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_two[dt16]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt0]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt1]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt2]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt3]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt4]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt5]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt6]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt7]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt8]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt9]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt10]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt11]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt12]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt13]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt14]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt15]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_power_is_minus_one[dt16]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt0]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt1]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt2]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt3]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt4]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt5]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt6]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt7]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt8]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt9]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt10]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt11]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt12]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt13]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt14]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt15]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_bad_power[dt16]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt0]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt1]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt2]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt3]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt4]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt5]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt6]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt7]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt8]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt9]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt10]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt11]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt12]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt13]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt14]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt15]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_non_square[dt16]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt0]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt1]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt2]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt3]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt4]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt5]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt6]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt7]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt8]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt9]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt10]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt11]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt12]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt13]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt14]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt15]
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixPower::test_exceptions_not_invertible[dt16]
PASSED numpy/linalg/tests/test_linalg.py::TestEigvalshCases::test_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEigvalshCases::test_empty_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEigvalshCases::test_generalized_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEigvalshCases::test_generalized_empty_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEigvalsh::test_types[float32]
PASSED numpy/linalg/tests/test_linalg.py::TestEigvalsh::test_types[float64]
PASSED numpy/linalg/tests/test_linalg.py::TestEigvalsh::test_types[complex64]
PASSED numpy/linalg/tests/test_linalg.py::TestEigvalsh::test_types[complex128]
PASSED numpy/linalg/tests/test_linalg.py::TestEigvalsh::test_invalid
PASSED numpy/linalg/tests/test_linalg.py::TestEigvalsh::test_UPLO
PASSED numpy/linalg/tests/test_linalg.py::TestEigvalsh::test_0_size
PASSED numpy/linalg/tests/test_linalg.py::TestEighCases::test_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEighCases::test_empty_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEighCases::test_generalized_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEighCases::test_generalized_empty_herm_cases
PASSED numpy/linalg/tests/test_linalg.py::TestEigh::test_types[float32]
PASSED numpy/linalg/tests/test_linalg.py::TestEigh::test_types[float64]
PASSED numpy/linalg/tests/test_linalg.py::TestEigh::test_types[complex64]
PASSED numpy/linalg/tests/test_linalg.py::TestEigh::test_types[complex128]
PASSED numpy/linalg/tests/test_linalg.py::TestEigh::test_invalid
PASSED numpy/linalg/tests/test_linalg.py::TestEigh::test_UPLO
PASSED numpy/linalg/tests/test_linalg.py::TestEigh::test_0_size
PASSED numpy/linalg/tests/test_linalg.py::TestNorm_NonSystematic::test_longdouble_norm
PASSED numpy/linalg/tests/test_linalg.py::TestNorm_NonSystematic::test_intmin
PASSED numpy/linalg/tests/test_linalg.py::TestNorm_NonSystematic::test_complex_high_ord
PASSED numpy/linalg/tests/test_linalg.py::TestNormDouble::test_empty
PASSED numpy/linalg/tests/test_linalg.py::TestNormDouble::test_vector_return_type
PASSED numpy/linalg/tests/test_linalg.py::TestNormDouble::test_vector
PASSED numpy/linalg/tests/test_linalg.py::TestNormDouble::test_axis
PASSED numpy/linalg/tests/test_linalg.py::TestNormDouble::test_keepdims
PASSED numpy/linalg/tests/test_linalg.py::TestNormDouble::test_matrix_empty
PASSED numpy/linalg/tests/test_linalg.py::TestNormDouble::test_matrix_return_type
PASSED numpy/linalg/tests/test_linalg.py::TestNormDouble::test_matrix_2x2
PASSED numpy/linalg/tests/test_linalg.py::TestNormDouble::test_matrix_3x3
PASSED numpy/linalg/tests/test_linalg.py::TestNormDouble::test_bad_args
PASSED numpy/linalg/tests/test_linalg.py::TestNormSingle::test_empty
PASSED numpy/linalg/tests/test_linalg.py::TestNormSingle::test_vector_return_type
PASSED numpy/linalg/tests/test_linalg.py::TestNormSingle::test_vector
PASSED numpy/linalg/tests/test_linalg.py::TestNormSingle::test_axis
PASSED numpy/linalg/tests/test_linalg.py::TestNormSingle::test_keepdims
PASSED numpy/linalg/tests/test_linalg.py::TestNormSingle::test_matrix_empty
PASSED numpy/linalg/tests/test_linalg.py::TestNormSingle::test_matrix_return_type
PASSED numpy/linalg/tests/test_linalg.py::TestNormSingle::test_matrix_2x2
PASSED numpy/linalg/tests/test_linalg.py::TestNormSingle::test_matrix_3x3
PASSED numpy/linalg/tests/test_linalg.py::TestNormSingle::test_bad_args
PASSED numpy/linalg/tests/test_linalg.py::TestNormInt64::test_empty
PASSED numpy/linalg/tests/test_linalg.py::TestNormInt64::test_vector_return_type
PASSED numpy/linalg/tests/test_linalg.py::TestNormInt64::test_vector
PASSED numpy/linalg/tests/test_linalg.py::TestNormInt64::test_axis
PASSED numpy/linalg/tests/test_linalg.py::TestNormInt64::test_keepdims
PASSED numpy/linalg/tests/test_linalg.py::TestNormInt64::test_matrix_empty
PASSED numpy/linalg/tests/test_linalg.py::TestNormInt64::test_matrix_return_type
PASSED numpy/linalg/tests/test_linalg.py::TestNormInt64::test_matrix_2x2
PASSED numpy/linalg/tests/test_linalg.py::TestNormInt64::test_matrix_3x3
PASSED numpy/linalg/tests/test_linalg.py::TestNormInt64::test_bad_args
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixRank::test_matrix_rank
PASSED numpy/linalg/tests/test_linalg.py::TestMatrixRank::test_symmetric_rank
PASSED numpy/linalg/tests/test_linalg.py::test_reduced_rank
PASSED numpy/linalg/tests/test_linalg.py::TestQR::test_qr_empty[3-0]
PASSED numpy/linalg/tests/test_linalg.py::TestQR::test_qr_empty[0-3]
PASSED numpy/linalg/tests/test_linalg.py::TestQR::test_qr_empty[0-0]
PASSED numpy/linalg/tests/test_linalg.py::TestQR::test_mode_raw
PASSED numpy/linalg/tests/test_linalg.py::TestQR::test_mode_all_but_economic
PASSED numpy/linalg/tests/test_linalg.py::TestCholesky::test_basic_property
PASSED numpy/linalg/tests/test_linalg.py::TestCholesky::test_0_size
PASSED numpy/linalg/tests/test_linalg.py::test_byteorder_check
PASSED numpy/linalg/tests/test_linalg.py::test_generalized_raise_multiloop
PASSED numpy/linalg/tests/test_linalg.py::test_xerbla_override
PASSED numpy/linalg/tests/test_linalg.py::test_sdot_bug_8577
PASSED numpy/linalg/tests/test_linalg.py::TestMultiDot::test_basic_function_with_three_arguments
PASSED numpy/linalg/tests/test_linalg.py::TestMultiDot::test_basic_function_with_two_arguments
PASSED numpy/linalg/tests/test_linalg.py::TestMultiDot::test_basic_function_with_dynamic_programing_optimization
PASSED numpy/linalg/tests/test_linalg.py::TestMultiDot::test_vector_as_first_argument
PASSED numpy/linalg/tests/test_linalg.py::TestMultiDot::test_vector_as_last_argument
PASSED numpy/linalg/tests/test_linalg.py::TestMultiDot::test_vector_as_first_and_last_argument
PASSED numpy/linalg/tests/test_linalg.py::TestMultiDot::test_dynamic_programming_logic
PASSED numpy/linalg/tests/test_linalg.py::TestMultiDot::test_too_few_input_arrays
PASSED numpy/linalg/tests/test_linalg.py::TestTensorinv::test_non_square_handling[arr0-2]
PASSED numpy/linalg/tests/test_linalg.py::TestTensorinv::test_non_square_handling[arr1-1]
PASSED numpy/linalg/tests/test_linalg.py::TestTensorinv::test_tensorinv_shape[shape0-2]
PASSED numpy/linalg/tests/test_linalg.py::TestTensorinv::test_tensorinv_shape[shape1-1]
PASSED numpy/linalg/tests/test_linalg.py::TestTensorinv::test_tensorinv_ind_limit[0]
PASSED numpy/linalg/tests/test_linalg.py::TestTensorinv::test_tensorinv_ind_limit[-2]
PASSED numpy/linalg/tests/test_linalg.py::TestTensorinv::test_tensorinv_result
PASSED numpy/linalg/tests/test_linalg.py::test_unsupported_commontype
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_array_rank1_eq
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_array_rank1_noteq
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_array_rank2_eq
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_array_diffshape
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_objarray
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_array_likes
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_generic_rank1
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_0_ndim_array
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_generic_rank3
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_nan_array
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_string_arrays
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_recarrays
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_masked_nan_inf
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_subclass_that_overrides_eq
PASSED numpy/testing/tests/test_utils.py::TestArrayEqual::test_subclass_that_does_not_implement_npall
PASSED numpy/testing/tests/test_utils.py::TestBuildErrorMessage::test_build_err_msg_defaults
PASSED numpy/testing/tests/test_utils.py::TestBuildErrorMessage::test_build_err_msg_no_verbose
PASSED numpy/testing/tests/test_utils.py::TestBuildErrorMessage::test_build_err_msg_custom_names
PASSED numpy/testing/tests/test_utils.py::TestBuildErrorMessage::test_build_err_msg_custom_precision
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_array_rank1_eq
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_array_rank1_noteq
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_array_rank2_eq
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_array_diffshape
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_objarray
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_array_likes
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_generic_rank1
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_0_ndim_array
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_generic_rank3
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_nan_array
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_string_arrays
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_recarrays
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_masked_nan_inf
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_subclass_that_overrides_eq
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_subclass_that_does_not_implement_npall
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_nan_items
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_inf_items
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_datetime
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_nat_items
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_non_numeric
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_complex_item
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_negative_zero
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_complex
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_error_message
PASSED numpy/testing/tests/test_utils.py::TestEqual::test_object
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_array_rank1_eq
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_array_rank1_noteq
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_array_rank2_eq
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_array_diffshape
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_objarray
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_array_likes
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_closeness
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_simple
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_nan
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_inf
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_subclass
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqual::test_subclass_that_cannot_be_bool
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_array_rank1_eq
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_array_rank1_noteq
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_array_rank2_eq
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_array_diffshape
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_objarray
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_array_likes
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_closeness
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_nan_item
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_inf_item
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_simple_item
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_complex_item
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_complex
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_error_message
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_error_message_2
PASSED numpy/testing/tests/test_utils.py::TestAlmostEqual::test_subclass_that_cannot_be_bool
PASSED numpy/testing/tests/test_utils.py::TestApproxEqual::test_simple_arrays
PASSED numpy/testing/tests/test_utils.py::TestApproxEqual::test_simple_items
PASSED numpy/testing/tests/test_utils.py::TestApproxEqual::test_nan_array
PASSED numpy/testing/tests/test_utils.py::TestApproxEqual::test_nan_items
PASSED numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_simple_arrays
PASSED numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_rank2
PASSED numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_rank3
PASSED numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_simple_items
PASSED numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_nan_noncompare
PASSED numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_nan_noncompare_array
PASSED numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_inf_compare
PASSED numpy/testing/tests/test_utils.py::TestArrayAssertLess::test_inf_compare_array
PASSED numpy/testing/tests/test_utils.py::TestWarns::test_warn
PASSED numpy/testing/tests/test_utils.py::TestWarns::test_context_manager
PASSED numpy/testing/tests/test_utils.py::TestWarns::test_warn_wrong_warning
PASSED numpy/testing/tests/test_utils.py::TestAssertAllclose::test_simple
PASSED numpy/testing/tests/test_utils.py::TestAssertAllclose::test_min_int
PASSED numpy/testing/tests/test_utils.py::TestAssertAllclose::test_report_fail_percentage
PASSED numpy/testing/tests/test_utils.py::TestAssertAllclose::test_equal_nan
PASSED numpy/testing/tests/test_utils.py::TestAssertAllclose::test_not_equal_nan
PASSED numpy/testing/tests/test_utils.py::TestAssertAllclose::test_equal_nan_default
PASSED numpy/testing/tests/test_utils.py::TestAssertAllclose::test_report_max_relative_error
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_float64_pass
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_float64_fail
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_float32_pass
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_float32_fail
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_float16_pass
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_float16_fail
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_complex128_pass
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_complex128_fail
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_complex64_pass
PASSED numpy/testing/tests/test_utils.py::TestArrayAlmostEqualNulp::test_complex64_fail
PASSED numpy/testing/tests/test_utils.py::TestULP::test_equal
PASSED numpy/testing/tests/test_utils.py::TestULP::test_single
PASSED numpy/testing/tests/test_utils.py::TestULP::test_double
PASSED numpy/testing/tests/test_utils.py::TestULP::test_inf
PASSED numpy/testing/tests/test_utils.py::TestULP::test_nan
PASSED numpy/testing/tests/test_utils.py::TestStringEqual::test_simple
PASSED numpy/testing/tests/test_utils.py::TestStringEqual::test_regex
PASSED numpy/testing/tests/test_utils.py::test_warn_len_equal_call_scenarios
PASSED numpy/testing/tests/test_utils.py::test_clear_and_catch_warnings
PASSED numpy/testing/tests/test_utils.py::test_suppress_warnings_module
PASSED numpy/testing/tests/test_utils.py::test_suppress_warnings_type
PASSED numpy/testing/tests/test_utils.py::test_suppress_warnings_decorate_no_record
PASSED numpy/testing/tests/test_utils.py::test_suppress_warnings_record
PASSED numpy/testing/tests/test_utils.py::test_suppress_warnings_forwarding
PASSED numpy/testing/tests/test_utils.py::test_tempdir
PASSED numpy/testing/tests/test_utils.py::test_temppath
PASSED numpy/testing/tests/test_utils.py::test_clear_and_catch_warnings_inherit
PASSED numpy/testing/tests/test_utils.py::TestAssertNoGcCycles::test_passes
PASSED numpy/testing/tests/test_utils.py::TestAssertNoGcCycles::test_asserts
PASSED numpy/testing/tests/test_utils.py::TestAssertNoGcCycles::test_fails
SKIPPED [1] numpy/random/tests/test_extending.py:55: requires cffi
SKIPPED [3] numpy/testing/tests/test_utils.py: The raises decorator depends on Nose
SKIPPED [1] numpy/core/tests/test_multiarray.py:1551: requires pickle protocol 5
SKIPPED [1] numpy/core/tests/test_multiarray.py:985: Not Python 2
SKIPPED [1] numpy/core/tests/test_multiarray.py:5254: Not Python 2
SKIPPED [1] numpy/core/tests/test_multiarray.py:5268: Not Python 2
SKIPPED [1] numpy/random/tests/test_extending.py:50: requires numba and cffi
SKIPPED [1] numpy/core/tests/_locales.py:72: No French locale available
SKIPPED [1] numpy/core/tests/test_multiarray.py:3865: requires pickle protocol 5
XFAIL numpy/core/tests/test_multiarray.py::TestBool::test_cast_from_unicode
  See gh-9847
XFAIL numpy/core/tests/test_multiarray.py::TestBool::test_cast_from_bytes
  See gh-9847
XFAIL numpy/lib/tests/test_function_base.py::TestDigitize::test_large_integers_decreasing
  gh-11022: np.core.multiarray._monoticity loses precision
XFAIL numpy/linalg/tests/test_linalg.py::test_blas64_dot
  reason: [NOTRUN] Numpy not compiled with 64-bit BLAS/LAPACK
XFAIL numpy/linalg/tests/test_linalg.py::test_blas64_geqrf_lwork_smoketest
  Numpy not compiled with 64-bit BLAS/LAPACK
FAILED numpy/lib/tests/test_function_base.py::TestGradient::test_x_decreasing_unsigned[uint8]
FAILED numpy/lib/tests/test_function_base.py::TestGradient::test_x_decreasing_unsigned[uint16]
FAILED numpy/lib/tests/test_function_base.py::TestGradient::test_x_decreasing_unsigned[uint32]
FAILED numpy/lib/tests/test_function_base.py::TestGradient::test_x_decreasing_unsigned[uint64]
FAILED numpy/lib/tests/test_function_base.py::TestGradient::test_x_signed_int_big_jump[int8]
FAILED numpy/lib/tests/test_function_base.py::TestGradient::test_x_signed_int_big_jump[int16]
FAILED numpy/lib/tests/test_function_base.py::TestGradient::test_x_signed_int_big_jump[int32]
FAILED numpy/lib/tests/test_function_base.py::TestGradient::test_x_signed_int_big_jump[int64]
FAILED numpy/random/tests/test_extending.py::test_cython - subprocess.CalledP...
============ 9 failed, 1295 passed, 11 skipped, 5 xfailed in 32.56s ============
+ echo VERIFICATION_END
VERIFICATION_END
