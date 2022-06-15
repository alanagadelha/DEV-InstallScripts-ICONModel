#!/bin/bash

mkdir build
cd build

 export CC=/opt/intel/bin/icc
 export CXX=/opt/intel/bin/icpc
 export F77=/opt/intel/bin/ifort
 export FC=/opt/intel/bin/ifort
 export F90=/opt/intel/bin/ifort
 export CPP="/opt/intel/bin/icc -E"
 export FFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
 export CFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
 export CXXFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
 export CXXCPP='/opt/intel/bin/icpc -E'
 export LIBS='-L/home/devicon/instalacao-intel2020.4.304/libraries/lib -lz -lsz -lhdf5 -lcurl -lnetcdf -lnetcdff'
 export CPPFLAGS='-I/home/devicon/instalacao-intel2020.4.304/libraries/include -I/opt/intel/include/intel64 -I/opt/intel/include'
 export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/intel/lib/intel64:/home/devicon/instalacao-intel2020.4.304/libraries/lib

 /home/devicon/instalacao-intel2020.4.304/libraries/bin/cmake -DCMAKE_C_COMPILER=/opt/intel/bin/icc -DCMAKE_Fortran_COMPILER=/opt/intel/bin/ifort -DCMAKE_INSTALL_PREFIX=/home/devicon/instalacao-intel2020.4.304/libraries -DENABLE_NETCDF=ON -DNETCDF_PATH=/home/devicon/instalacao-intel2020.4.304/libraries/lib -DENABLE_JPG=OFF -DENABLE_PNG=OFF -DENABLE_PYTHON=OFF -DENABLE_FORTRAN=ON -DBUILD_SHARED_LIBS=BOTH CFLAGS=-fPIC /home/devicon/instalacao-intel2020.4.304/libraries/eccodes-2.21.0-Source


 make 
 ctest
 make install
