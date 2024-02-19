#!/bin/bash

echo ""
echo "#########################################################"
echo "# AzerothCore "
echo "#########################################################"
echo ""

source scripts/functions.sh
if [ "$1" = "" ]; then error "no configuration file passed"; else source $1; fi

# Create the directory everything will go into
mkdir -p "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/etc" || error "failed to create etc/ directory"
mkdir -p "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin" || error "failed to create bin/ directory"

# Clone AzerothCore
if [ -d "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}" ];
then
  info "AzerothCore repository already pulled. Updating..."
  cd "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}"
  git pull || error "failed to git pull AzerothCore repository"
  cd $WHERE_WAS_I
else
  git clone https://github.com/azerothcore/azerothcore-wotlk.git \
    --branch $AZEROTHCORE_SOURCE_BRANCH \
    --single-branch \
    --depth 1 \
    "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}" \
    || error "failed to clone AzerothCore"
fi

cd $WHERE_WAS_I