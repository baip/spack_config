module rm python PrgEnv-cray PrgEnv-gnu PrgEnv-intel
module add spack/git
module add PrgEnv-intel
module rm cray-libsci

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
