#!/bin/bash

echo ""
echo "#########################################################"
echo "# AzerothCore - Compile"
echo "#########################################################"
echo ""

source scripts/functions.sh
if [ "$1" = "" ]; then error "Did you forget to provide a configuration file?"; else source $1; fi

if [ -e "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/worldserver" ];
then
    info "the worldserver binary is already in place; compiling not needed(?)"
    return
fi

if [ -e "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/authserver" ];
then
    info "the authserver binary is already in place; compiling not needed(?)"
    return
fi

# Setup build environment
cd "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}" || error "failed to change to source directory"
mkdir -p build/ || error "failed to create build directory"
cd build

# cmake the configuration, ready for compilation
cmake ../ -DCMAKE_INSTALL_PREFIX="${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/" \
        -DCMAKE_C_COMPILER=/usr/bin/clang \
        -DCMAKE_CXX_COMPILER=/usr/bin/clang++ \
        -DWITH_WARNINGS=1 \
        -DTOOLS_BUILD=all \
        -DSCRIPTS=static \
        -DMODULES=static \
        || error "cmake failed to process project"

# make/compile our project and install it to AZEROTHCORE_SERVER_DIR
make -j $(nproc --all) || error "failed to compile core"
make install || error "failed to install compiled core"

cd $WHERE_WAS_I