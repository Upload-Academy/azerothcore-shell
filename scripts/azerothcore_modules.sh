#!/bin/bash


echo ""
echo "#########################################################"
echo "# AzerothCore - Modules"
echo "#########################################################"
echo ""

function module {
    rm -rf "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/${1}"
    git clone --depth 1 $2 "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/${1}"
}

function patch {
    cd "${HOME}/${AZEROTHCORE_SOURCE_DIR}"
    git apply "${1}" # needed core patch
    cd $WHERE_WAS_I
}

function sql {
    mysql -u acore $1 < "${HOME}/${AZEROTHCORE_SOURCE_DIR}/${2}"
}

function sql_raw {
    mysql -u acore $1 -e "${1}"
}

module mod-solocraft https://github.com/azerothcore/mod-solocraft.git
sql $AZEROTHCORE_CHARACTERS_DATABASE "modules/mod-solocraft/data/sql/db-characters/mod_solo_craft.sql"

module mod-solo-lfg https://github.com/milestorme/mod-solo-lfg.git
patch modules/mod-solo-lfg/lfg-solo.patch

module mod-autobalance https://github.com/azerothcore/mod-autobalance.git
module mod-eluna https://github.com/azerothcore/mod-eluna.git

cd $WHERE_WAS_I