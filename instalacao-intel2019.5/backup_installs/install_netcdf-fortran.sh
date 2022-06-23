#!/bin/bash
 
 module load intel/intel_2019.5-compilers
 export CC=/home/devicon/instalacao-intel2019.5/libraries/bin/mpicc
 export CFLAGS='-I/home/devicon/instalacao-intel2019.5/libraries/include'
 export FC=/home/devicon/instalacao-intel2019.5/libraries/bin/mpif90
 export F77=/home/devicon/instalacao-intel2019.5/libraries/bin/mpif90
 export FCFLAGS='-I/home/devicon/instalacao-intel2019.5/libraries/include'
 export LIBS='-L/home/devicon/instalacao-intel2019.5/libraries/lib -lz -lsz -lhdf5 -lcurl'
 export CPPFLAGS='-I/home/devicon/instalacao-intel2019.5/libraries/include'
 export LD_LIBRARY_PATH=/home/devicon/instalacao-intel2019.5/libraries/lib:${LD_LIBRARY_PATH}

 ./configure --prefix="/home/devicon/instalacao-intel2019.5/libraries/" --enable-parallel-tests

 make && make check
 make install

