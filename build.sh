#!/bin/bash
set -eu

MYDIR=$(cd "$(dirname "$(readlink -f -n "${BASH_SOURCE[0]}" )" )" && pwd -P)

#export CMAKE_Platform=${CMAKE_Platform:?"Please set the CMAKE_Platform environment variable, e.g. [macosx.gnu|linux.gnu|linux.intel|hera.intel|...]"}
export CMAKE_C_COMPILER=${CMAKE_C_COMPILER:-mpicc}
export CMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER:-mpicxx}
export CMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER:-mpif90}

export NETCDF=${NETCDF:?"Please set NETCDF environment variable"}
export BACIO_LIB4=${BACIO_LIB4:-/home/mpotts/NCEPLIBS/build-develop/install/bacio-2.4.0/lib/libbacio_4.a}
export NEMSIO_INC=${NEMSIO_INC:-/home/mpotts/NCEPLIBS/build-develop/install/nemsio-2.5.1/include}
export NEMSIO_LIB=${NEMSIO_LIB:-/home/mpotts/NCEPLIBS/build-develop/install/nemsio-2.5.1/lib/libnemsio.a}
export SP_LIBd=${SP_LIBd:-/home/mpotts/NCEPLIBS/build-develop/install/sp-2.3.0/lib/libsp_d.a}
export W3EMC_LIBd=${W3EMC_LIBd:-/home/mpotts/NCEPLIBS/build-develop/install/w3emc-2.7.0/lib/libw3emc_d.a}
export W3NCO_LIBd=${W3NCO_LIBd:-/home/mpotts/NCEPLIBS/build-develop/install/w3nco-2.4.0/lib/libw3nco_d.a}
export NETCDF=${NETCDF}
export ESMFMKFILE=${ESMFMKFILE:?"Please set ESMFMKFILE environment variable"}

BUILD_DIR=${MYDIR}/build
rm -rf ${BUILD_DIR}
mkdir ${BUILD_DIR}

CCPP_SUITES="${CCPP_SUITES:-FV3_GFS_2017_gfdlmp}"
CMAKE_FLAGS+=" -DCCPP_SUITES=${CCPP_SUITES} -DNETCDF_DIR=${NETCDF}"
CMAKE_FLAGS+=" -DCMAKE_BUILD_TYPE=Debug -DDEBUG=ON"

cd ${BUILD_DIR}
cmake .. ${CMAKE_FLAGS}
make -j ${BUILD_JOBS:-4}
cp NEMS.exe ${MYDIR}/ufs_weather_model
