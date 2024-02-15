#!/bin/bash

echo ""
echo "#########################################################"
echo "# AzerothCore - Data Files"
echo "#########################################################"
echo ""

# Return HOME
cd $WHERE_WAS_I

# Setup directory for world/client data files
mkdir -p "${HOME}/${AZEROTHCORE_SOURCE_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/data"

# We download the v16 maps, mmaps, VMOs, cameras, etc.
if [ ! -f "${HOME}/${AZEROTHCORE_SOURCE_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/data/v16.zip" ];
then
  wget https://github.com/wowgaming/client-data/releases/download/v16/data.zip
  mv data.zip "${HOME}/${AZEROTHCORE_SOURCE_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/data/v16.zip"
  # Extract them to the server's data directory
  unzip "${HOME}/${AZEROTHCORE_SOURCE_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/data/v16.zip" -d "${HOME}/${AZEROTHCORE_SOURCE_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/data"
fi

cd $WHERE_WAS_I