#!/bin/bash

echo ""
echo "#########################################################"
echo "# Backup Database(s)"
echo "#########################################################"
echo ""

source scripts/functions.sh
if [ "$1" = "" ]; then error "Did you forget to provide a configuration file?"; else source $1; fi

BACKUP_TO="${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/backups/${AZEROTHCORE_SERVER_DIR}/database"
NOW=$(date '+%Y%m%d_%H%M%S')

mkdir -p "${BACKUP_TO}/${AZEROTHCORE_WORLD_DATABASE}/" || error "failed to create world database backup directory"
mkdir -p "${BACKUP_TO}/${AZEROTHCORE_AUTH_DATABASE}/" || error "failed to create auth database backup directory"
mkdir -p "${BACKUP_TO}/${AZEROTHCORE_CHARACTERS_DATABASE}/" || error "failed to create characters database backup directory"

mysqldump -u acore $AZEROTHCORE_WORLD_DATABASE > "${BACKUP_TO}/${AZEROTHCORE_WORLD_DATABASE}/${NOW}.sql" \
    || error "backing up of '${AZEROTHCORE_WORLD_DATABASE}' database failed"

mysqldump -u acore $AZEROTHCORE_AUTH_DATABASE > "${BACKUP_TO}/${AZEROTHCORE_AUTH_DATABASE}/${NOW}.sql" \
    || error "backing up of '${AZEROTHCORE_AUTH_DATABASE}' database failed"

mysqldump -u acore $AZEROTHCORE_CHARACTERS_DATABASE > "${BACKUP_TO}/${AZEROTHCORE_CHARACTERS_DATABASE}/${NOW}.sql" \
    || error "backing up of '${AZEROTHCORE_CHARACTERS_DATABASE}' database failed"
