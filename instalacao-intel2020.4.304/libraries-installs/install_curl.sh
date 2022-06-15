#!/bin/bash

 export CC=/opt/intel/bin/icc
 /opt/intel/bin/compilervars.sh intel64
 export CPP="/opt/intel/bin/icc -E"
 export CXX=/opt/intel/bin/icpc
 export FC=/opt/intel/bin/ifort
# export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}${LD_LIBRARY_PATH:+':'}/opt/intel/lib/intel64
 export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/intel/lib/intel64
 
 ./configure --prefix="/home/devicon/instalacao-intel2020.4.304/libraries" --with-openssl
 
 make && make check
 make install
