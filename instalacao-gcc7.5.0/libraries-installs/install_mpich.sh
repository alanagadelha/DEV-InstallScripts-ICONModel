#!/bin/bash

 module load gcc/7.5.0
 source /home/devicon/.bashrc

 export CC=/usr/bin/gcc
 export CXX=/usr/bin/g++
 export CPLUS_INCLUDE_PATH=/usr/include/c++/7 # Fundamental em diversas compilacoes!!!
 export F77=/usr/bin/gfortran
 export FC=/usr/bin/gfortran
 export LIBS='-L/home/devicon/instalacao-gcc7.5.0/libraries/lib -lz -lsz -lhdf5 -lcurl -lnetcdf -lnetcdff'
 export CPPFLAGS='-I/usr/lib64/gcc/x86_64-suse-linux/7/include -I/usr/lib64/gcc/x86_64-suse-linux/7/finclude -I/usr/lib64/gcc/x86_64-suse-linux/7/include-fixed -I/home/devicon/instalacao-gcc7.5.0/libraries/include'

 #export CPP="/usr/bin/gcc -E"
 #export FFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
 #export CFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
 #export CXXFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
 #export CXXCPP='/opt/intel/bin/icpc -E'
 #export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/intel/lib/intel64:/home/devicon/instalacao-intel2020.4.304/libraries/lib

 ./configure --prefix="/home/devicon/instalacao-gcc7.5.0/libraries" CFLAGS=-fPIC

 make && make check
 make install
