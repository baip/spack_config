module rm binutils cmake emacs gcc impi intel python
module add binutils/2.28 cmake/3.9.3 gcc/7.2.0 spack/git
# module add intel/2016/update3
# module add impi/5.1.3.223/intel_singlethread
# module add intel/2017/update4
# module add impi/2017/update3_singlethread
module add intel/2018/release
# module add intel-mpi-2018.1.163-gcc-7.2.0.itasca-gu7gry6
module add impi/2018/release_singlethread

impi_use_intel() {
    export I_MPI_CC=icc
    export I_MPI_CXX=icpc
    export I_MPI_F90=ifort
    export I_MPI_F77=ifort
}

impi_use_gcc() {
    export I_MPI_CC=gcc
    export I_MPI_CXX=g++
    export I_MPI_F90=gfortran
    export I_MPI_F77=gfortran
}

impi_use_intel
