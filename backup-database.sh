#!/bin/bash

source $1

echo "Backing up database."
mkdir -p "${HOME}/backups/database/${AZEROTHCORE_WORLD_DATABASE}/"
NOW=$(date '+%Y%m%d_%H%M%S')
mysqldump -u acore $AZEROTHCORE_WORLD_DATABASE > "${HOME}/backups/database/${AZEROTHCORE_WORLD_DATABASE}/${NOW}.sql"
if [ $? -gt 0 ]; then echo "Backing up of database failed! Stopping."; exit 1; fi
