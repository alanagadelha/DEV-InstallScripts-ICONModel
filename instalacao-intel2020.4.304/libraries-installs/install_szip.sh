#!/bin/bash

 /opt/intel/bin/compilervars.sh intel64
 export CC=/opt/intel/bin/icc
 export CPP="/opt/intel/bin/icc -E"
 export CXX=/opt/intel/bin/icpc
 export FC=/opt/intel/bin/ifort
 #export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/intel/lib/intel64:/home/devicon/instalacao-intel2020.4.304/libraries/lib
 
 export LIBS='-L/home/devicon/instalacao-intel2020.4.304/libraries/lib -lz'
 export CPPFLAGS='-I/home/devicon/instalacao-intel2020.4.304/libraries/include'

 ./configure --prefix="/home/devicon/instalacao-intel2020.4.304/libraries"

 make && make check
 make install
