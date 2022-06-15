#!/bin/bash

 /opt/intel/bin/compilervars.sh intel64
 export CC=/opt/intel/bin/icc
 export CPP="/opt/intel/bin/icc -E"
 export CXX=/opt/intel/bin/icpc
 export FC=/opt/intel/bin/ifort
 export F9X=/opt/intel/bin/ifort
 export CFLAGS='-I/home/devicon/instalacao-intel2020.4.304/libraries/include'
 export LIBS='-L/opt/intel/lib/intel64 -limf -L/home/devicon/instalacao-intel2020.4.304/libraries/lib -lz -lsz'
 export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/intel/lib/intel64:/home/devicon/instalacao-intel2020.4.304/libraries/lib

 ./configure --prefix="/home/devicon/instalacao-intel2020.4.304/libraries" --enable-fortran --with-default-api-version=v18

 make && make check
 make install
