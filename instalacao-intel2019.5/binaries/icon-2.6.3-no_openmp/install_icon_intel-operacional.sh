#!/bin/bash -xl

source /home/devicon/.bashrc
module load intel/intel_2019.5-compilers 

which mpiexec

./configure CC='/home/devicon/instalacao-intel2019.5/libraries/bin/mpicc' CFLAGS="-I/home/devicon/instalacao-intel2019.5/libraries/include -I/home/devicon/instalacao-intel2019.5/libraries/libxml2-2.9.12/include -g -O2 -march=native -pc64" \
	FC='/home/devicon/instalacao-intel2019.5/libraries/bin/mpifort' FCFLAGS="-I/home/devicon/instalacao-intel2019.5/libraries/include -g -pc64 -assume realloc_lhs -O2 -msse2 -fltconsistency -traceback" \
	CPPFLAGS="-I/home/devicon/instalacao-intel2019.5/libraries/include -I/home/devicon/instalacao-intel2019.5/libraries/libxml2-2.9.12/include" \
	LDFLAGS="-L/home/devicon/instalacao-intel2019.5/libraries/lib" \
	LIBS="-Wl,--as-needed -lhdf5 -lnetcdf -lnetcdff -leccodes -leccodes_f90 -lz -lsz -lhdf5_hl -lxml2 -mkl=sequential" \
	MPI_LAUNCH='/home/devicon/instalacao-intel2019.5/libraries/bin/mpiexec' \
	--prefix="/home/devicon/instalacao-intel2019.5/binaries/icon-2.6.3-no_openmp/build_mpich_noopenmp" \
	--enable-mixed-precision --enable-active-target-sync --enable-grib2 --enable-loop-exchange --disable-coupling --disable-jsbach --disable-ocean --enable-vectorized-lrtm

make && make check
make install

#--enable-vectorized-lrtm --enable-parallel-netcdf

#./configure CC='icc' CPPFLAGS="-I/home/devicon/instalacao-intel2019.5/libraries/include -I/home/devicon/instalacao-intel2019.5/libraries/libxml2-2.9.12/include" CFLAGS="-lmpi -g -O2 -march=native -pc64" FC='ifort' LDFLAGS="-L/home/devicon/instalacao-intel2019.5/libraries/lib" FCFLAGS="-lmpi -I/home/devicon/instalacao-intel2019.5/libraries/include -g -pc64 -assume realloc_lhs -O2 -msse2 -fltconsistency -traceback" LIBS="-Wl,--as-needed -lhdf5 -lnetcdf -lnetcdff -leccodes -leccodes_f90 -lz -lsz -lhdf5_hl -lxml2 -mkl=sequential" --enable-grib2 MPI_LAUNCH='mpiexec'

#./configure CC='mpiicc' CPPFLAGS="-I/home/devicon/instalacao-intel2019.5/libraries/include -I/home/devicon/instalacao-intel2019.5/libraries/libxml2-2.9.12/include" CFLAGS="-g -O2 -march=native -pc64" FC='mpiifort' LDFLAGS="-L/home/devicon/instalacao-intel2019.5/libraries/lib" FCFLAGS="-I/home/devicon/instalacao-intel2019.5/libraries/include -g -pc64 -assume realloc_lhs -O2 -msse2 -fltconsistency -traceback" LIBS="-Wl,--as-needed -lhdf5 -lnetcdf -lnetcdff -leccodes -leccodes_f90 -lz -lsz -lhdf5_hl -lxml2 -mkl=sequential" --enable-grib2 MPI_LAUNCH='mpiexec'

#./configure CC='mpiicc' CPPFLAGS="-I/home/devicon/instalacao-intel2019.5/libraries/include -I/home/devicon/instalacao-intel2019.5/libraries/libxml2-2.9.12/include" CFLAGS="-gdwarf-4 -O3 -qno-opt-dynamic-align -ftz -march=native -g" FC='mpiifort' LDFLAGS="-L/home/devicon/instalacao-intel2019.5/libraries/lib" FCFLAGS="-I/home/devicon/instalacao-intel2019.5/libraries/include -gdwarf-4 -g -march=native -pc64 -fp-model source" LIBS="-Wl,--as-needed -lhdf5 -lnetcdf -lnetcdff -leccodes -leccodes_f90 -lz -lsz -lhdf5_hl -lxml2 -mkl=sequential" --enable-grib2 MPI_LAUNCH='mpiexec'

#./configure CC='mpiicc' CPPFLAGS="-I/home/devicon/instalacao-intel2019.5/libraries/include -I/home/devicon/instalacao-intel2019.5/libraries/libxml2-2.9.12/include" CFLAGS='-g -O2 -march=native -pc64' FC='mpiifort' LDFLAGS="-L/home/devicon/instalacao-intel2019.5/libraries/lib -L/home/devicon/instalacao-intel2019.5/libraries/libxml2-2.9.12/.libs" FCFLAGS="-I/home/devicon/instalacao-intel2019.5/libraries/include -g -pc64 -assume realloc_lhs -O2 -msse2 -fltconsistency -traceback" LIBS="-Wl,--as-needed -lhdf5 -lnetcdf -lnetcdff -leccodes -leccodes_f90 -lz -lsz -lhdf5_hl -lxml2 -mkl=sequential" --enable-grib2 MPI_LAUNCH='mpiexec'

#./configure CC=mpiicc CPPFLAGS=-I/home/devicon/instalacao-intel2019.5/libraries/include -I/home/devicon/instalacao-intel2019.5/libraries/libxml2-2.9.12/include FC=mpif90 LDFLAGS=-L/home/devicon/instalacao-intel2019.5/libraries/lib LIBS=-Wl,--as-needed -lhdf5 -lnetcdf -lnetcdff -leccodes -leccodes_f90 -lz -lsz -lhdf5_hl -lxml2 -mkl=sequential --enable-grib2 CFLAGS=-gdwarf-4 -O3 -qno-opt-dynamic-align -ftz -march=native -g  FCFLAGS=-I/home/devicon/instalacao-intel2019.5/libraries/include -gdwarf-4 -g -march=native -pc64 -fp-model source  MTIME_CFLAGS=-I/home/devicon/instalacao-intel2019.5/binaries/icon-2.6.3/externals/mtime/include MTIME_CLIBS= NETCDF_CFLAGS= NETCDF_CLIBS= XML2_CFLAGS= XML2_CLIBS= MPI_CFLAGS= MPI_CLIBS= MPI_FCFLAGS= MPI_FCLIBS= FORTRAN_LAPACK_CLIBS= --disable-maintainer-mode --enable-silent-rules=yes --enable-lib-only --enable-xml --enable-netcdf --enable-mpi=yes --with-external-lapack=fortran --with-external-mtime --enable-mpi-checks=yes acx_cv_c_lib_func_datetimeToString=/home/devicon/instalacao-intel2019.5/binaries/icon-2.6.3/externals/mtime/src/.libs/libmtime.a MPI_LAUNCH=/opt/hpe/hpc/mpt/mpt-2.24/bin/mpiexec --cache-file=/dev/null --srcdir=. --prefix=/usr/local --disable-option-checking

