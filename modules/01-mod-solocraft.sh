
# Clone the module
if [ -d "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-solocraft" ];
then
    cd "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-solocraft"
    git pull
else
    mkdir -p "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/"
    git clone https://github.com/azerothcore/mod-solocraft.git --branch master --single-branch --depth 1 "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-solocraft"
fi

cd "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-solocraft"
sudo mysql < data/sql/db-characters/mod_solo_craft.sql

# Required at the end of every module
cd $WHERE_WAS_I