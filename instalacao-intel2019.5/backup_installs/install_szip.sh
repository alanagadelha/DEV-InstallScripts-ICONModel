#!/bin/bash
 
 module load intel/intel_2019.5-compilers
 export CC=/opt/intel/intel_2019.5/bin/icc
 export CPP="/opt/intel/intel_2019.5/bin/icc -E"
 export CXX=/opt/intel/intel_2019.5/bin/icpc
 export FC=/opt/intel/intel_2019.5/bin/ifort
 export LD_LIBRARY_PATH=/home/devicon/instalacao-intel2019.5/libraries/lib:${LD_LIBRARY_PATH}
# export LIBS='-L/home/devicon/instalacao-intel2019.5/libraries/lib -lz lcurl'
 export CPPFLAGS='-I/home/devicon/instalacao-intel2019.5/libraries/include'

 ./configure --prefix="/home/devicon/instalacao-intel2019.5/libraries"

 make && make check
 make install
