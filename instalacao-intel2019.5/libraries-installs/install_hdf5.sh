#!/bin/bash

 module load intel/intel_2019.5-compilers
 #export CC=/opt/intel/intel_2019.5/bin/icc
 #export CPP="/opt/intel/intel_2019.5/bin/icc -E"
 #export CXX=/opt/intel/intel_2019.5/bin/icpc
 #export FC=/opt/intel/intel_2019.5/bin/ifort
 #export F9X=/opt/intel/intel_2019.5/bin/ifort
 export CFLAGS='-I/home/devicon/instalacao-intel2019.5/libraries/include'
 export LIBS='-L/home/devicon/instalacao-intel2019.5/libraries/lib -lz -lsz -lcurl'
 export LD_LIBRARY_PATH=/home/devicon/instalacao-intel2019.5/libraries/lib:${LD_LIBRARY_PATH}

 ./configure --prefix="/home/devicon/instalacao-intel2019.5/libraries" \
	 --enable-fortran --enable-parallel --with-default-api-version=v18 \
	 --with-zlib=/home/devicon/instalacao-intel2019.5/libraries/include,/home/devicon/instalacao-intel2019.5/libraries/lib \
	 --with-szlib=/home/devicon/instalacao-intel2019.5/libraries/include,/home/devicon/instalacao-intel2019.5/libraries/lib

 make && make check
 make install
