#!/bin/bash

export AZEROTHCORE_SOURCE_DIR=azerothcore
export AZEROTHCORE_SERVER_DIR=azerothcore-server

rm -rf "${HOME}/${AZEROTHCORE_SOURCE_DIR}"
rm -rf "${HOME}/${AZEROTHCORE_SERVER_DIR}"

sudo mysql -e "drop database acore_auth;"
sudo mysql -e "drop database acore_characters;"
sudo mysql -e "drop database acore_world;"
