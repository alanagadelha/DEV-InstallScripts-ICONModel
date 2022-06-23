#!/bin/bash -xl
#source /opt/intel/bin/compilervars.sh intel64
source /home/devicon/.bashrc

#module unload mpt/2.24
which mpirun
module load intel/intelcomp-mod
#module load intel/psxe-mod

#ICON_FCFLAGS='-O2 -assume realloc_lhs -ftz -DDO_NOT_COMBINE_PUT_AND_NOCHECK'
#ICON_OCEAN_FCFLAGS='-O3 -assume norealloc_lhs -reentrancy threaded -qopt-report-file=stdout -qopt-report=0 -qopt-report-phase=vec'

#./configure CC='mpiicc' CPPFLAGS="-I/home/devicon/instalacao-intel2020.4.304/libraries/include -I/usr/include/libxml2" CFLAGS='-gdwarf-4 -O3 -qno-opt-dynamic-align -ftz -march=native -g' FC='mpif90' LDFLAGS=-L/home/devicon/instalacao-intel2020.4.304/libraries/lib FCFLAGS="-I/home/devicon/instalacao-intel2020.4.304/libraries/include -gdwarf-4 -g -march=native -pc64 -fp-model source" LIBS="-Wl,--as-needed -lhdf5 -lnetcdf -lnetcdff -leccodes -leccodes_f90 -lz -lsz -lhdf5_hl -lxml2 -mkl=sequential" --enable-grib2 MPI_LAUNCH='mpiexec'

#./configure --enable-grib2 CC='/opt/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpiicc' \
#	    CPPFLAGS="-I/home/devicon/instalacao-intel2020.4.304/libraries/include -I/usr/include/libxml2" \
#	    CFLAGS='-gdwarf-4 -O3 -qno-opt-dynamic-align -ftz -march=native -g' \
#	    FC='/opt/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpiifort' \
#	    LDFLAGS=-L/home/devicon/instalacao-intel2020.4.304/libraries/lib 
#	    FCFLAGS="-I/home/devicon/instalacao-intel2020.4.304/libraries/include -gdwarf-4 -g -march=native -pc64 -fp-model source" \
#	    LIBS="-Wl,--as-needed -lhdf5 -lnetcdf -lnetcdff -leccodes -leccodes_f90 -lz -lsz -lhdf5_hl -lxml2 -mkl=sequential" \
#	    MPI_LAUNCH='/opt/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpiexec'

./configure CC='/opt/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpiicc' CPPFLAGS="-I/home/devicon/instalacao-intel2020.4.304/libraries/include -I/usr/include/libxml2" CFLAGS='-gdwarf-4 -O3 -qno-opt-dynamic-align -ftz -march=native -g' FC='/opt/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpiifort' LDFLAGS='-L/home/devicon/instalacao-intel2020.4.304/libraries/lib' FCFLAGS="-I/home/devicon/instalacao-intel2020.4.304/libraries/include -gdwarf-4 -g -march=native -pc64 -fp-model source" LIBS="-Wl,--as-needed -lhdf5 -lnetcdf -lnetcdff -leccodes -leccodes_f90 -lz -lsz -lhdf5_hl -lxml2 -mkl=sequential" --enable-grib2 MPI_LAUNCH='/opt/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpiexec'
