#!/bin/bash

 # comment: do a 'module unload gcc/5.4.0' if neccessary
 #          unset LD_LIBRARY_PATH if neccessary
 # module load intel/20.4.304
 #export CC=/opt/intel/intel_2020/bin/icc
 #/opt/intel/intel_2020/bin/compilervars.sh intel64

 #./configure --prefix=/home/gast/intel_20.4.304/libraries

 /opt/intel/bin/compilervars.sh intel64
 export CC=/opt/intel/bin/icc
 export CPP="/opt/intel/bin/icc -E"
 export CXX=/opt/intel/bin/icpc
 export FC=/opt/intel/bin/ifort
 export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/intel/lib/intel64:/home/devicon/instalacao-intel2020.4.304/libraries/lib

 ./configure --prefix="/home/devicon/instalacao-intel2020.4.304/libraries"

 make && make check
 make install
