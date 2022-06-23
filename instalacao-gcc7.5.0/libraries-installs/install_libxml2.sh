#!/bin/bash

 module load gcc/7.5.0
 source /home/devicon/.bashrc

 export CC=/usr/bin/gcc
 export CXX=/usr/bin/g++
 export F77=/usr/bin/gfortran
 export FC=/usr/bin/gfortran

 ./configure --prefix=/home/devicon/instalacao-gcc7.5.0/libraries --without-python CFLAGS=-fPIC

 make && make check
 make install
