#!/bin/bash

 source /home/devicon/.bashrc
 module load gcc/7.5.0
 echo $LD_LIBRARY_PATH

 export CC=/usr/bin/gcc
 export CPP="/usr/bin/gcc -E"
 export CXX=/usr/bin/g++
 export FC=/usr/bin/gfortran

# ./configure --prefix="/home/devicon/instalacao-intel2020.4.304/libraries"
cmake -DCMAKE_INSTALL_PREFIX=/home/devicon/instalacao-gcc7.5.0/libraries

 make && make check
 make install
