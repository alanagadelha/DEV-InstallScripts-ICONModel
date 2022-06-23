#!/bin/bash

 # comment: load version 5.4.0 of GCC compiler suite using 'module load gcc/5.4.0'
 #          unset LD_LIBRARY_PATH if neccessary
 module load gcc/7.5.0
 source /home/devicon/.bashrc
 
 export CC=/usr/bin/gcc
 export CXX=/usr/bin/g++
 export CPLUS_INCLUDE_PATH=/usr/include/c++/7
 export CPP='/usr/bin/gcc -E'
 export CPPFLAGS='-I/usr/lib64/gcc/x86_64-suse-linux/7/include -I/usr/lib64/gcc/x86_64-suse-linux/7/finclude -I/usr/lib64/gcc/x86_64-suse-linux/7/include-fixed -I/home/devicon/instalacao-gcc7.5.0/libraries/include'
# cmake -DCMAKE_C_COMPILER=/opt/intel/intel_2019/bin/icc -DCMAKE_CXX_COMPILER=/opt/intel/intel_2019/bin/icpc -DCMAKE_Fortran_COMPILER=/opt/intel/intel_2019/bin/ifort

./configure --prefix=/home/devicon/instalacao-gcc7.5.0/libraries CFLAGS=-fPIC
# ./bootstrap --prefix=/home/gast/intel_19.0.2/libraries/cmake-3.14.0

 make && make check
 make install 

