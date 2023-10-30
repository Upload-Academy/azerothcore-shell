#!/bin/bash

# This script **is not** idempotent: it's a one-time thing.
# If you do run it several times, then things should be OK,
# but there's not guarantee.

export WHERE_WAS_I=$(pwd)

source config.ptr.sh

# Clone AzerothCore
if [ -d "${HOME}/${AZEROTHCORE_SOURCE_DIR}" ];
then
  cd "${HOME}/${AZEROTHCORE_SOURCE_DIR}"
  git pull
  cd $WHERE_WAS_I
else
  git clone https://github.com/azerothcore/azerothcore-wotlk.git --branch $AZEROTHCORE_SOURCE_BRANCH --single-branch --depth 1 "${HOME}/${AZEROTHCORE_SOURCE_DIR}"
fi

echo ""
echo "#########################################################"
echo "# AzerothCore - Modules"
echo "#########################################################"
echo ""

# Pull and "install" the modules we want to compile in
rm -rf "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-solo-lfg"; git clone --depth 1 https://github.com/milestorme/mod-solo-lfg "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-solo-lfg"
rm -rf "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-solocraft"; git clone --depth 1 https://github.com/azerothcore/mod-solocraft.git "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-solocraft"
# rm -rf "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-wos-mechanical-chicken"; git clone --depth 1 https://github.com/mrcrilly/mod-wos-mechanical-chicken.git "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-wos-mechanical-chicken"

# Apply the solo-lfg patch to our core's code
cd "${HOME}/${AZEROTHCORE_SOURCE_DIR}"
git apply "modules/mod-solo-lfg/lfg-solo.patch" # needed core patch
cd $WHERE_WAS_I

echo ""
echo "#########################################################"
echo "# AzerothCore - compile all"
echo "#########################################################"
echo ""

# Include our compile script (including modules)
source compile.sh

# Return HOME
cd $WHERE_WAS_I

# Configure our world content
source import_sql.sh

# Restart the PTR
sudo systemctl restart azerothcore-ptr-world-server.service
