#!/bin/bash

 module load intel/intel_2019.5-compilers

# export CC=/opt/intel/intel_2019.5/bin/icc
# export CPP="/opt/intel/intel_2019.5/bin/icc -E"
# export CXX=/opt/intel/intel_2019.5/bin/icpc
# export FC=/opt/intel/intel_2019.5/bin/ifort
# export F77=/opt/intel/intel_2019.5/bin/ifort
# export F90=/opt/intel/intel_2019.5/bin/ifort
 export FFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
 export CFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
 export CXXFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
# export CXXCPP='/opt/intel/bin/icpc -E'
 export LIBS='-L/home/devicon/instalacao-intel2019.5/libraries/lib -lz -lsz -lhdf5 -lcurl -lnetcdf -lnetcdff'
 export CPPFLAGS='-I/home/devicon/instalacao-intel2019.5/libraries/include'
 export LD_LIBRARY_PATH=/home/devicon/instalacao-intel2019.5/libraries/lib:${LD_LIBRARY_PATH}

 ./configure --prefix="/home/devicon/instalacao-intel2019.5/libraries"

 make && make check
 make install
