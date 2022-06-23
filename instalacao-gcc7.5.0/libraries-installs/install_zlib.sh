#!/bin/bash

 # comment: load version 7.5.0 of GCC compiler suite using 'module load gcc/7.5.0'

 ./configure --prefix=/home/devicon/instalacao-gcc7.5.0/libraries

 make && make check
 make install
