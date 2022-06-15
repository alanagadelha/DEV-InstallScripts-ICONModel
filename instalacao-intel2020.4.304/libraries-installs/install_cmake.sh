#!/bin/bash

 /opt/intel/bin/compilervars.sh intel64
 export CC=/opt/intel/bin/icc
 export CXX=/opt/intel/bin/icpc
 export F9X=/opt/intel/bin/ifort
 export CPP="/opt/intel/bin/icc -E"
 export LIBS='-L/opt/intel/lib/intel64 -limf -L/home/devicon/instalacao-intel2020.4.304/libraries/lib -lz -lsz -lcurl -lnetcdf -lhdf5'
 export CPPFLAGS='-I/home/devicon/instalacao-intel2020.4.304/libraries/include'
 export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/intel/lib/intel64:/home/devicon/instalacao-intel2020.4.304/libraries/lib

 ./bootstrap --prefix=/home/devicon/instalacao-intel2020.4.304/libraries
 make
 make install
