#!/bin/bash

# Pull and "install" the modules we want to compile in
rm -rf modules/mod-solo-lfg; git clone --depth 1 https://github.com/milestorme/mod-solo-lfg modules/mod-solo-lfg
rm -rf modules/mod-solocraft; git clone --depth 1 https://github.com/azerothcore/mod-solocraft.git modules/mod-solocraft

# Apply the solo-lfg patch to our core's code
cd ..
git apply modules/mod-solo-lfg/lfg-solo.patch
cd build

# Apply the SQL required for mod-solocraft
sudo mysql < modules/mod-solocraft/data/sql/db-characters/mod_solo_craft.sql
