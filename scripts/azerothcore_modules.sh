#!/bin/bash

echo ""
echo "#########################################################"
echo "# AzerothCore - Modules"
echo "#########################################################"
echo ""

source scripts/functions.sh
if [ "$1" = "" ]; then error "Did you forget to provide a configuration file?"; else source $1; fi

function module {
    if [ -e "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}/modules/${1}" ]
    then
        warning "skipping ${1} as directory exists"
    else
        git clone \
            --depth 1 \
            --branch $2 \
            $3 \
            "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}/modules/${1}" \
            || error "failed to clone module ${3}"
    fi
}

function patch {
    cd "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}" || error "failed to change into source directory"
    git apply "${1}" || error "failed to git apply patch to core"
    cd $WHERE_WAS_I
}

function sql {
    mysql -u acore $1 < "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}/${2}" || erro "failed to import SQL file"
}

function sql_raw {
    mysql -u acore $1 -e "${1}" || error "failed to execute raw SQL"
}

for module in "${AZEROTHCORE_MODULES[@]}"; do eval $module; done
cd $WHERE_WAS_I
