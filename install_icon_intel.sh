#!/bin/bash -xl

source /home/devicon/.bashrc
module load intel/intel_2019.5-compilers 

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
