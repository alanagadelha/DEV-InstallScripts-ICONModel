#!/bin/bash

 module load gcc/7.5.0
 source /home/devicon/.bashrc

 export CC=/usr/bin/gcc
 export CXX=/usr/bin/g++
 export CPLUS_INCLUDE_PATH=/usr/include/c++/7
 export F77=/usr/bin/gfortran
 export FC=/usr/bin/gfortran
 export CPPFLAGS='-I/usr/lib64/gcc/x86_64-suse-linux/7/include -I/usr/lib64/gcc/x86_64-suse-linux/7/finclude -I/usr/lib64/gcc/x86_64-suse-linux/7/include-fixed -I/home/devicon/instalacao-gcc7.5.0/libraries/include'

 ./configure --with-netcdf=/home/devicon/instalacao-gcc7.5.0/libraries --with-hdf5=/home/devicon/instalacao-gcc7.5.0/libraries --with-szlib=/home/devicon/instalacao-gcc7.5.0/libraries --with-curl=/home/devicon/instalacao-gcc7.5.0/libraries --with-libxml2=/home/devicon/instalacao-gcc7.5.0/libraries --with-eccodes=/home/devicon/instalacao-gcc7.5.0/libraries --prefix=/home/devicon/instalacao-gcc7.5.0/libraries CFLAGS=-fPIC --enable-cdi-lib

 make && make check
 make install
