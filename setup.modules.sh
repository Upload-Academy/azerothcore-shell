#!/bin/bash

# Pull and "install" the modules we want to compile in
rm -rf "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-solo-lfg"; git clone --depth 1 https://github.com/milestorme/mod-solo-lfg "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-solo-lfg"
rm -rf "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-solocraft"; git clone --depth 1 https://github.com/azerothcore/mod-solocraft.git "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-solocraft"
rm -rf "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-guildhouse"; git clone --depth 1 https://github.com/azerothcore/mod-guildhouse.git "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-guildhouse"

# Apply the solo-lfg patch to our core's code
cd "${HOME}/${AZEROTHCORE_SOURCE_DIR}"
git apply "modules/mod-solo-lfg/lfg-solo.patch" # needed core patch
cd $WHERE_WAS_I

# Apply the SQL required for mod-solocraft
mysql -u acore $AZEROTHCORE_CHARACTERS_DATABASE < "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-solocraft/data/sql/db-characters/mod_solo_craft.sql"

# Apply the SQL for mod-guildhouse
mysql -u acore $AZEROTHCORE_CHARACTERS_DATABASE < "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-guildhouse/sql/characters/guildhouse.sql"
mysql -u acore $AZEROTHCORE_WORLD_DATABASE < "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-guildhouse/sql/world/creatures_objects.sql"
mysql -u acore $AZEROTHCORE_WORLD_DATABASE < "${HOME}/${AZEROTHCORE_SOURCE_DIR}/modules/mod-guildhouse/sql/world/guildhouse_spawns.sql"
