#!/bin/bash

mkdir build
cd build

 module load intel/intel_2019.5-compilers
 export CC=/home/devicon/instalacao-intel2019.5/libraries/bin/mpicc
 export FC=/home/devicon/instalacao-intel2019.5/libraries/bin/mpif90
 export FFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
 export CFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
 export LIBS='-L/home/devicon/instalacao-intel2019.5/libraries/lib -lz -lsz -lhdf5 -lcurl -lnetcdf -lnetcdff'
 export CPPFLAGS='-I/home/devicon/instalacao-intel2019.5/libraries/include'
 export LD_LIBRARY_PATH=/home/devicon/instalacao-intel2019.5/libraries/lib:${LD_LIBRARY_PATH}
 export PATH=$PATH:/home/devicon/instalacao-intel2019.5/libraries/bin

 /home/devicon/instalacao-intel2019.5/libraries/bin/cmake -DCMAKE_C_COMPILER=/home/devicon/instalacao-intel2019.5/libraries/bin/mpicc -DCMAKE_Fortran_COMPILER=/home/devicon/instalacao-intel2019.5/libraries/bin/mpif90 -DCMAKE_INSTALL_PREFIX=/home/devicon/instalacao-intel2019.5/libraries -DENABLE_NETCDF=ON -DNETCDF_PATH=/home/devicon/instalacao-intel2019.5/libraries/lib -DENABLE_JPG=OFF -DENABLE_PNG=OFF -DENABLE_PYTHON=OFF -DENABLE_FORTRAN=ON -DBUILD_SHARED_LIBS=BOTH /home/devicon/instalacao-intel2019.5/libraries/eccodes-2.21.0-Source

 make 
 ctest
 make install
