#!/bin/bash

# Setup build environment
cd "${HOME}/${AZEROTHCORE_SOURCE_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}"
mkdir -p build/
cd build

# cmake the configuration, ready for compilation
cmake ../ -DCMAKE_INSTALL_PREFIX="${HOME}/${AZEROTHCORE_SOURCE_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/" \
          -DCMAKE_C_COMPILER=/usr/bin/clang \
          -DCMAKE_CXX_COMPILER=/usr/bin/clang++ \
          -DWITH_WARNINGS=1 \
          -DTOOLS_BUILD=all \
          -DSCRIPTS=static \
          -DMODULES=static

if [ $? -gt 0 ]; then echo "CMake failed! Stopping."; exit 1; fi

# make/compile our project and install it to AZEROTHCORE_SERVER_DIR
make -j $(nproc --all)
make install

cd $WHERE_WAS_I