#!/bin/bash -xl

 source /home/devicon/.bashrc
 module load gcc/7.5.0
 echo $LD_LIBRARY_PATH

 export LDFLAGS="-L/home/devicon/instalacao-gcc7.5.0/libraries/lib"
 export LIBS="-L/home/devicon/instalacao-gcc7.5.0/libraries/lib -leccodes_f90 -leccodes -llibaec.a -lnetcdf -lnetcdff -lgfortran -lhdf5 -lz -lsz -lhdf5_hl -lxml2"
export ICON_FCFLAGS='-std=legacy'
 #export FCFLAGS="-I/home/devicon/instalacao-gcc7.5.0/libraries/include -Wno-argument-mismatch" # -fallow-argument-mismatch equivalent
 export FCFLAGS="-I/home/devicon/instalacao-gcc7.5.0/libraries/include -fmodule-private -fimplicit-none -fmax-identifier-length=63 -Wall -Wcharacter-truncation -Wconversion -Wunderflow -Wunused-parameter -Wno-surprising -fall-intrinsics -g -march=native -fbacktrace -fbounds-check -fstack-protector-all -finit-real=nan -finit-integer=-2147483648 -finit-character=127 -O2"
 export CFLAGS='-g -march=native'
 export EXTRA_CONFIG_ARGS='--enable-openmp --enable-grib2 --enable-mixed-precision'
# export F77='/usr/bin/gfortran'
 export CC='mpicc'
 export FC='mpif90'
 export ICON_CFLAGS='-O3'
 export ICON_BUNDLED_CFLAGS='-O2'
 export CPPFLAGS="${CPPFLAGS-}"
 export MPI_LAUNCH='mpiexec'
 /home/devicon/instalacao-gcc7.5.0/binaries/icon-2.6.3/configure --enable-openmp --enable-mixed-precision --enable-active-target-sync --enable-grib2 --enable-loop-exchange --disable-coupling --disable-jsbach --disable-ocean

 #make -j 8
 #make install
