#!/bin/bash

# Setup build environment
cd"${HOME}/${AZEROTHCORE_SOURCE_DIR}"
mkdir -p build
cd build

# cmake the configuration, ready for compilation
cmake ../ -DCMAKE_INSTALL_PREFIX="${HOME}/${AZEROTHCORE_SERVER_DIR}/" \
          -DCMAKE_C_COMPILER=/usr/bin/clang \
          -DCMAKE_CXX_COMPILER=/usr/bin/clang++ \
          -DWITH_WARNINGS=1 \
          -DTOOLS_BUILD=all \
          -DSCRIPTS=static \
          -DMODULES=static

# Pull and "install" the modules we want to compile in
rm -rf modules/mod-autobalance; git clone --depth 1 https://github.com/azerothcore/mod-autobalance modules/
rm -rf modules/mod-solo-lfg; git clone --depth 1 https://github.com/milestorme/mod-solo-lfg modules/
rm -rf modules/mod-ah-bot; git clone --depth 1 https://github.com/azerothcore/mod-ah-bot  modules/
rm -rf modules/mod-learn-spells; git clone --depth 1 https://github.com/azerothcore/mod-learn-spells  modules/
rm -rf modules/mod-wos; git clone --depth 1 https://github.com/mrcrilly/mod-wos  modules/

# make/compile our project and install it to AZEROTHCORE_SERVER_DIR
make -j $(nproc --all)
make install
