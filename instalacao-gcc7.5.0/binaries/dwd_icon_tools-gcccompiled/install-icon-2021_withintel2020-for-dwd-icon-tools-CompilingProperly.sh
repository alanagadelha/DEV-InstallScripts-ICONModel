#!/bin/bash

 # comment: unset LD_LIBRARY_PATH and load module intel reference in the calling shell too
unset LD_LIBRARY_PATH 
/opt/intel/bin/compilervars.sh intel64
source /home/devicon/.bashrc
export CPP="/opt/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpiicc -E"
export CC="/opt/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpiicc"
export CXX="/opt/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpiicpc"
export CXXCPP='/opt/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpiicpc -E'
export F77="/opt/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpiifort"
export FC="/opt/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpiifort"
export CFLAGS="-I/home/devicon/instalacao-intel2020.4.304/libraries/include -g -O2 -march=native -pc64"
export CXXFLAGS="-O2 -DNOMPI"
export FFLAGS="-fpp -g -O0 -fopenmp"
export FCFLAGS="$FCFLAGS -I/home/devicon/instalacao-intel2020.4.304/libraries/include -g -pc64 -fpp -assume realloc_lhs -O2 -msse2 -fltconsistency -DNOMPI" 
export LIBS="-L/home/devicon/instalacao-intel2020.4.304/libraries/lib -fopenmp"
export LIBS="$LIBS -Wl,--as-needed -leccodes_f90 -leccodes -lhdf5 -lnetcdf -lnetcdff -lz -lsz -lhdf5_hl -lxml2 -lifcore "
export CPPFLAGS='-I/home/devicon/instalacao-intel2020.4.304/libraries/include'

./configure --enable-static \
            --disable-shared \
            --disable-silent-rules \
            --with-netcdf=/home/devicon/instalacao-intel2020.4.304/libraries \
            --enable-grib2 \
            --with-eccodes=yes \
            --enable-iso-c-interface \
	    --prefix="/home/devicon/instalacao-intel2020.4.304/binaries/dwd_icon_tools"

make -j 8
make install
#
