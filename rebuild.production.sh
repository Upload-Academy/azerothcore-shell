#!/bin/bash

# This script **is not** idempotent: it's a one-time thing.
# If you do run it several times, then things should be OK,
# but there's not guarantee.

export WHERE_WAS_I=$(pwd)

source config.production.sh

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

source setup.modules.sh

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
sudo systemctl restart azerothcore-world-server.service
