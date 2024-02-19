#!/bin/bash

# Need a config file to work with
if [ "$1" = "" ];
then
    echo "Did you forget to provide a configuration file?"
    echo "Usage: kill-everything.sh <config.sh>"
    exit 1
fi

echo "!!! This script is _dangerous_ !!!"
echo "!!! It will KILL your entire Azeroth Core setup !!!"
echo "!!! You have been warned !!!"
echo ""
echo "NOW is your chance to bail: hit Control + C if running this script was a mistake..."
read -p "(or press any key to continue...)" -n1 -s

source $1
export WHERE_WAS_I=$(pwd)

# Just so the sudo prompts get a new line. Avoids confusion.
echo ""

# Stop services
sudo systemctl disable ${AZEROTHCORE_SERVER_DIR}-auth.service
sudo systemctl disable ${AZEROTHCORE_SERVER_DIR}-world.service
sudo systemctl stop ${AZEROTHCORE_SERVER_DIR}-auth.service
sudo systemctl stop ${AZEROTHCORE_SERVER_DIR}-world.service

sudo rm -f /etc/systemd/system/${AZEROTHCORE_SERVER_DIR}-auth.service
sudo rm -f /etc/systemd/system/${AZEROTHCORE_SERVER_DIR}-world.service

# Backup DB
source scripts/backup-database.sh $1

# Drop ALL tables AFTER a backup...
mysql -u acore mysql -e "DROP DATABASE $AZEROTHCORE_WORLD_DATABASE;"
mysql -u acore mysql -e "DROP DATABASE $AZEROTHCORE_AUTH_DATABASE;"
mysql -u acore mysql -e "DROP DATABASE $AZEROTHCORE_CHARACTERS_DATABASE;"

# Stop the DB
sudo systemctl stop mariadb

# Now KILL all the files on disk
rm -rf "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}"
rm -rf "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}"

echo "Done."
