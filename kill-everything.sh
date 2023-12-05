#!/bin/bash

echo "!!! This script is _dangerous_ !!!"
echo "!!! It will KILL your entire AzerothCore setup !!!"
echo "!!! You have been warned !!!"
echo ""
echo "NOW is your chance to bail: hit Control + C if running this script was a mistake..."
read -p "(or press any key to continue...)" -n1 -s

source $1
export WHERE_WAS_I=$(pwd)

# Stop services
sudo systemctl disable azerothcore-auth-server.service
sudo systemctl disable azerothcore-auth-server.service
sudo systemctl stop azerothcore-world-server.service
sudo systemctl stop azerothcore-world-server.service

sudo rm -f /etc/systemd/system/azerothcore-world-server.service
sudo rm -f /etc/systemd/system/azerothcore-auth-server.service

# Drop ALL tables AFTER a backup...
echo "Backing up database."
mkdir -p "${HOME}/backups/database/${AZEROTHCORE_WORLD_DATABASE}/"
NOW=$(date '+%Y%m%d_%H%M%S')
mysqldump -u acore $AZEROTHCORE_WORLD_DATABASE > "${HOME}/backups/database/${AZEROTHCORE_WORLD_DATABASE}/${NOW}.sql"
if [ $? -gt 0 ]; then echo "Backing up of database failed! Stopping."; exit 1; fi

mysql -u acore -c "DROP DATABASE $AZEROTHCORE_WORLD_DATABASE;"
mysql -u acore -c "DROP DATABASE $AZEROTHCORE_AUTH_DATABASE;"
mysql -u acore -c "DROP DATABASE $AZEROTHCORE_CHARACTERS_DATABASE;"

# Stop the DB
sudo systemctl stop mariadb

# Now KILL all the files on disk
rm -rf "${HOME}/${AZEROTHCORE_SERVER_DIR}"
rm -rf "${HOME}/${AZEROTHCORE_SOURCE_DIR}"

# Done
echo "Done."
