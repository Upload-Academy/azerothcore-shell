#!/bin/bash

echo ""
echo "#########################################################"
echo "# AzerothCore "
echo "#########################################################"
echo ""

# Clone AzerothCore
if [ -d "${HOME}/${AZEROTHCORE_SOURCE_DIR}" ];
then
  cd "${HOME}/${AZEROTHCORE_SOURCE_DIR}"
  git pull
  cd $WHERE_WAS_I
else
  git clone https://github.com/azerothcore/azerothcore-wotlk.git --branch $AZEROTHCORE_SOURCE_BRANCH --single-branch --depth 1 "${HOME}/${AZEROTHCORE_SOURCE_DIR}"
fi
