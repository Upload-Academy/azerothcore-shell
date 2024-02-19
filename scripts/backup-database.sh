#!/bin/bash

# Need a config file to work with
if [ "$1" = "" ];
then
    echo "Did you forget to provide a configuration file?"
    echo "Usage: backup-database.sh <config.sh>"
    exit 1
fi

source $1

echo "Backing up database..."

BACKUP_TO="${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/backups/${AZEROTHCORE_SERVER_DIR}/database"
NOW=$(date '+%Y%m%d_%H%M%S')

mkdir -p "${BACKUP_TO}/${AZEROTHCORE_WORLD_DATABASE}/"
mkdir -p "${BACKUP_TO}/${AZEROTHCORE_AUTH_DATABASE}/"
mkdir -p "${BACKUP_TO}/${AZEROTHCORE_CHARACTERS_DATABASE}/"

mysqldump -u acore $AZEROTHCORE_WORLD_DATABASE > "${BACKUP_TO}/${AZEROTHCORE_WORLD_DATABASE}/${NOW}.sql"
if [ $? -gt 0 ]; then echo "Backing up of '${AZEROTHCORE_WORLD_DATABASE}' database failed! Stopping."; exit 1; fi

mysqldump -u acore $AZEROTHCORE_AUTH_DATABASE > "${BACKUP_TO}/${AZEROTHCORE_AUTH_DATABASE}/${NOW}.sql"
if [ $? -gt 0 ]; then echo "Backing up of '${AZEROTHCORE_AUTH_DATABASE}' database failed! Stopping."; exit 1; fi

mysqldump -u acore $AZEROTHCORE_CHARACTERS_DATABASE > "${BACKUP_TO}/${AZEROTHCORE_CHARACTERS_DATABASE}/${NOW}.sql"
if [ $? -gt 0 ]; then echo "Backing up of '${AZEROTHCORE_CHARACTERS_DATABASE}' database failed! Stopping."; exit 1; fi
