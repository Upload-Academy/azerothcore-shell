#!/bin/bash

# Setup build environment
cd "${HOME}/${AZEROTHCORE_SOURCE_DIR}"
mkdir -p build/modules 
cd build

# Pull and "install" the modules we want to compile in
rm -rf ../modules/mod-autobalance; git clone --depth 1 https://github.com/azerothcore/mod-autobalance ../modules/mod-autobalance
rm -rf ../modules/mod-ah-bot; git clone --depth 1 https://github.com/azerothcore/mod-ah-bot ../modules/mod-ah-bot
rm -rf ../modules/mod-learn-spells; git clone --depth 1 https://github.com/azerothcore/mod-learn-spells ../modules/mod-learn-spells
rm -rf ../modules/mod-wos; git clone --depth 1 https://github.com/mrcrilly/mod-wos ../modules/mod-wos
rm -rf ../modules/mod-solo-lfg; git clone --depth 1 https://github.com/milestorme/mod-solo-lfg ../modules/mod-solo-lfg

# Appply the solo-lfg patch to our core's code
cd ..
git apply modules/mod-solo-lfg/lfg-solo.patch
cd build

# cmake the configuration, ready for compilation
cmake ../ -DCMAKE_INSTALL_PREFIX="${HOME}/${AZEROTHCORE_SERVER_DIR}/" \
          -DCMAKE_C_COMPILER=/usr/bin/clang \
          -DCMAKE_CXX_COMPILER=/usr/bin/clang++ \
          -DWITH_WARNINGS=1 \
          -DTOOLS_BUILD=all \
          -DSCRIPTS=static \
          -DMODULES=static

# make/compile our project and install it to AZEROTHCORE_SERVER_DIR
make -j $(nproc --all)
make install
