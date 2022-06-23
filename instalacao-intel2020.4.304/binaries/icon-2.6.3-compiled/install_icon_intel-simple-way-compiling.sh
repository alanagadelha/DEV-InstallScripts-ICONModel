#!/bin/bash -xl
#source /opt/intel/bin/compilervars.sh intel64
source /home/devicon/.bashrc

#module unload mpt/2.24
which mpirun
module load intel/intelcomp-mod
#module load intel/psxe-mod

./configure CC='mpiicc' CPPFLAGS="-I/home/devicon/instalacao-intel2020.4.304/libraries/include -I/usr/include/libxml2" CFLAGS='-g -O2 -march=native -pc64' FC='mpiifort' LDFLAGS=-L/home/devicon/instalacao-intel2020.4.304/libraries/lib FCFLAGS="-I/home/devicon/instalacao-intel2020.4.304/libraries/include -g -pc64 -assume realloc_lhs -O2 -msse2 -fltconsistency -traceback" LIBS="-Wl,--as-needed -lhdf5 -lnetcdf -lnetcdff -leccodes -leccodes_f90 -lz -lsz -lhdf5_hl -lxml2 -mkl=sequential" --enable-grib2 MPI_LAUNCH='mpiexec'


