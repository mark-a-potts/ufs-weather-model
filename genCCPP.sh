#!/bin/bash
#set -eu
set -x
MYDIR=$(cd "$(dirname "$(readlink -f -n "${BASH_SOURCE[0]}" )" )" && pwd -P)

BUILD_DIR=${1:-${MYDIR}/build}

CCPP_SUITES="${CCPP_SUITES:-FV3_GFS_v15p2}"

./FV3/ccpp/framework/scripts/ccpp_prebuild.py \
    --config=FV3/ccpp/config/ccpp_prebuild_config.py \
    --static \
    --suites=${CCPP_SUITES} \
    --builddir=${BUILD_DIR}/FV3 > ${BUILD_DIR}/ccpp_prebuild.log 2>&1

#source ${BUILD_DIR}/FV3/ccpp/physics/CCPP_SCHEMES.sh
#source ${BUILD_DIR}/FV3/ccpp/physics/CCPP_CAPS.sh
#source ${BUILD_DIR}/FV3/ccpp/physics/CCPP_STATIC_API.sh

#CMAKE_FLAGS+=" -DCCPP=ON -DSTATIC=ON -DSUITES=${CCPP_SUITES} -DNETCDF_DIR=${NETCDF}"

#cd ${BUILD_DIR}
#cmake .. ${CMAKE_FLAGS}
#make -j ${BUILD_JOBS:-4}
#cp NEMS.exe ${MYDIR}/ufs_weather_model
