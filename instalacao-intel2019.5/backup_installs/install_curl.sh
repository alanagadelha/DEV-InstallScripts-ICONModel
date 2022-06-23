#!/bin/bash
 
 module load intel/intel_2019.5-compilers
 export CC=/opt/intel/intel_2019.5/bin/icc
 export CPP="/opt/intel/intel_2019.5/bin/icc -E"
 export CXX=/opt/intel/intel_2019.5/bin/icpc
 export FC=/opt/intel/intel_2019.5/bin/ifort
 
 ./configure --prefix="/home/devicon/instalacao-intel2019.5/libraries" --with-openssl
 
 make && make check
 make install
