#!/bin/bash


echo ""
echo "#########################################################"
echo "# AzerothCore - Modules"
echo "#########################################################"
echo ""

function module {
    if [ -e "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}/modules/${1}" ]
    then
        echo "Skipping ${1} as directory exists."
    else
        git clone --depth 1 --branch $2 $3 "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}/modules/${1}"
    fi
}

function patch {
    cd "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}"
    git apply "${1}"
    cd $WHERE_WAS_I
}

function sql {
    mysql -u acore $1 < "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}/${2}"
}

function sql_raw {
    mysql -u acore $1 -e "${1}"
}

for module in "${AZEROTHCORE_MODULES[@]}"; do eval $module; done

cd $WHERE_WAS_I