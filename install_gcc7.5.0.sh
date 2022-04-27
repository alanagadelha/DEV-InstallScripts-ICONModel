#!/bin/bash

 module load gcc/7.5.0
 source /home/devicon/.bashrc

 export CC=/usr/bin/gcc
 export CXX=/usr/bin/g++
 export CPLUS_INCLUDE_PATH=/usr/include/c++/7
 export F77=/usr/bin/gfortran
 export FC=/usr/bin/gfortran
 export CPP='/usr/bin/gcc -E'
 export LIBS='-L/home/devicon/instalacao-gcc7.5.0/libraries/lib -lnetcdf -lhdf5_hl -lhdf5 -lz -lcurl'
 export CFLAGS='-I/home/gast/gcc_5.4.0/libraries/include -fPIC'
 export CPPFLAGS='-I/usr/lib64/gcc/x86_64-suse-linux/7/include -I/usr/lib64/gcc/x86_64-suse-linux/7/finclude -I/usr/lib64/gcc/x86_64-suse-linux/7/include-fixed -I/home/devicon/instalacao-gcc7.5.0/libraries/include'

 env
 exit 1
 #./configure --prefix="/home/devicon/instalacao-gcc7.5.0/libraries" CFLAGS=-fPIC
 #./configure --prefix="/home/devicon/instalacao-gcc7.5.0/libraries" --disable-shared
 ./configure --prefix="/home/devicon/instalacao-gcc7.5.0/libraries"

 make && make check
 make install
