module purge
module add cmake/3.9.4 spack/git
module add binutils-2.28-gcc-4.4.7-oh67qvy
module add gcc-6.4.0-gcc-4.4.7-bx5dbff
module add intel-parallel-studio-professional.2018.0-gcc-6.4.0-cuv5nrw

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
