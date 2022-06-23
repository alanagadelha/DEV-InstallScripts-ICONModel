#!/bin/bash

 module load intel/intel_2019.5-compilers 
# export CC=/opt/intel/intel_2019.5/bin/icc
# export CXX=/opt/intel/intel_2019.5/bin/icpc
# export F77=/opt/intel/intel_2019.5/bin/ifort
# export FC=/opt/intel/intel_2019.5/bin/ifort
# export F9X=/opt/intel/intel_2019.5/bin/ifort
# export CPP="/opt/intel/intel_2019.5/bin/icc -E"
# export CXXCPP='/opt/intel/intel_2019.5/bin/icpc -E'
# export FFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
# export CFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
# export CXXFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
 export CC=/home/devicon/instalacao-intel2019.5/libraries/bin/mpicc
 export CFLAGS='-I/home/devicon/instalacao-intel2019.5/libraries/include'
 export FCFLAGS='-I/home/devicon/instalacao-intel2019.5/libraries/include'
 export CPPFLAGS='-I/home/devicon/instalacao-intel2019.5/libraries/include'
 export LDFLAGS='-L/home/devicon/instalacao-intel2019.5/libraries/lib'
 export LIBS='-L/home/devicon/instalacao-intel2019.5/libraries/lib -lz -lsz -lhdf5 -lcurl'
 export LD_LIBRARY_PATH=/home/devicon/instalacao-intel2019.5/libraries/lib:/home/devicon/instalacao-intel2019.5/libraries/lib64:${LD_LIBRARY_PATH}

 #./configure --prefix="/home/devicon/instalacao-intel2019.5/libraries" --enable-pnetcdf --enable-parallel-tests
 ./configure --prefix="/home/devicon/instalacao-intel2019.5/libraries" --enable-parallel-tests

 make && make check
 #make install
