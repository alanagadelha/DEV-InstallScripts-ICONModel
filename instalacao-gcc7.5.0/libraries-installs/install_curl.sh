#!/bin/bash

 module load gcc/7.5.0
 source /home/devicon/.bashrc

 export CC=/usr/bin/gcc
 export CXX=/usr/bin/g++
 export CPLUS_INCLUDE_PATH=/usr/include/c++/7
 export CPP='/usr/bin/gcc -E'
 export CPPFLAGS='-I/usr/lib64/gcc/x86_64-suse-linux/7/include -I/usr/lib64/gcc/x86_64-suse-linux/7/finclude -I/usr/lib64/gcc/x86_64-suse-linux/7/include-fixed -I/home/devicon/instalacao-gcc7.5.0/libraries/include'

# cmake -G "Unix Makefiles" -H/home/devicon/instalacao-gcc7.5.0/libraries/jasper-2.0.33 -B/home/devicon/instalacao-gcc7.5.0/libraries/jasper-2.0.33/build_gcc -DCMAKE_INSTALL_PREFIX=/home/devicon/instalacao-gcc7.5.0/libraries -DJAS_ENABLE_SHARED=false
 #cmake CFLAGS=-fPIC -DCMAKE_INSTALL_PREFIX=/home/devicon/instalacao-gcc7.5.0/libraries
 ./configure --prefix="/home/devicon/instalacao-gcc7.5.0/libraries" --with-openssl CFLAGS=-fPIC

 make && make check
 make install
