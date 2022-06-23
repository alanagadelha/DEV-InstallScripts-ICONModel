#!/bin/bash

 module load intel/intel_2019.5-compilers
 export CC='/opt/intel/intel_2019.5/bin/icc -Wredundant-decls'
 export CPP="/opt/intel/intel_2019.5/bin/icc -E"
 export CXX=/opt/intel/intel_2019.5/bin/icpc
 export FC=/opt/intel/intel_2019.5/bin/ifort
 export FFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
 export CFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
 export CXXFLAGS='-O3 -xHost -ip -no-prec-div -static-intel' 
 export CXXCPP='/opt/intel/intel_2019.5/bin/icpc -E'

 ./configure --prefix="/home/devicon/instalacao-intel2019.5/libraries" --without-python CFLAGS=-fPIC
 
 make && make check
 make install
