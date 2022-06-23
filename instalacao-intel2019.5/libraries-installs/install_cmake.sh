#!/bin/bash

 module load intel/intel_2019.5-compilers 
 export CC=/home/devicon/instalacao-intel2019.5/libraries/bin/mpicc
 export CXX=/home/devicon/instalacao-intel2019.5/libraries/bin/mpic++
 export CFLAGS='-I/home/devicon/instalacao-intel2019.5/libraries/include'
 export FC=/home/devicon/instalacao-intel2019.5/libraries/bin/mpif90
 export F77=/home/devicon/instalacao-intel2019.5/libraries/bin/mpif90
 export FCFLAGS='-I/home/devicon/instalacao-intel2019.5/libraries/include'
 export LIBS='-L/home/devicon/instalacao-intel2019.5/libraries/lib -lz -lsz -lcurl -lnetcdf -lnetcdff -lhdf5'
 export CPPFLAGS='-I/home/devicon/instalacao-intel2019.5/libraries/include'
 export LD_LIBRARY_PATH=/home/devicon/instalacao-intel2019.5/libraries/lib:${LD_LIBRARY_PATH}

 ./bootstrap --prefix=/home/devicon/instalacao-intel2019.5/libraries
 make
 make install
