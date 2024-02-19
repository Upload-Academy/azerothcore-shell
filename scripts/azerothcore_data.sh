#!/bin/bash

echo ""
echo "#########################################################"
echo "# AzerothCore - Data Files"
echo "#########################################################"
echo ""

source scripts/functions.sh
if [ "$1" = "" ]; then error "Did you forget to provide a configuration file?"; else source $1; fi

cd $WHERE_WAS_I

# Setup directory for world/client data files
mkdir -p "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/data" || error "failed to create bin/data directory"

# We download the v16 maps, mmaps, VMOs, cameras, etc.
if [ ! -f "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/data/v16.zip" ];
then
  # Sometimes people cancel this download partway through, and there's a rough
  # .zip file that breaks everything, so this clears it
  rm -f data.zip*

  wget https://github.com/wowgaming/client-data/releases/download/v16/data.zip || error "failed to wget data files from GitHub"
  mv data.zip "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/data/v16.zip" || failed "failed to move data files to installation directory"
  
  # Extract them to the server's data directory
  unzip "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/data/v16.zip" \
    -d "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/data" \
    || error "failed to unzip data files in installation directory"
else
  warning "skipping data file download and extraction as everything is in place(?)"
fi

cd $WHERE_WAS_I