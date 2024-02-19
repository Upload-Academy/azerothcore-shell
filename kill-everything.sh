#!/bin/bash

echo ""
echo "#########################################################"
echo "# KILL EVERYTHING!"
echo "#########################################################"
echo ""

source scripts/functions.sh
if [ "$1" = "" ]; then error "no configuration file passed"; else source $1; fi

echo "!!! This script is _dangerous_ !!!"
echo "!!! It will KILL your entire Azeroth Core setup !!!"
echo "!!! You have been warned !!!"
echo ""
echo "NOW is your chance to bail: hit Control + C if running this script was a mistake..."
read -p "(or press any key to continue...)" -n1 -s

# Just so the sudo prompts get a new line. Avoids confusion.
echo ""

# Stop services
sudo systemctl disable ${AZEROTHCORE_SERVER_DIR}-auth.service || warning "failed to disable authserver service"
sudo systemctl disable ${AZEROTHCORE_SERVER_DIR}-world.service || warning "failed to disable worldserver service"
sudo systemctl stop ${AZEROTHCORE_SERVER_DIR}-auth.service || warning "failed to stop authserver service"
sudo systemctl stop ${AZEROTHCORE_SERVER_DIR}-world.service || warning "failed to stop worldserver service"

sudo rm -f /etc/systemd/system/${AZEROTHCORE_SERVER_DIR}-auth.service || warning "failed to delete ${AZEROTHCORE_SERVER_DIR}-auth.service file"
sudo rm -f /etc/systemd/system/${AZEROTHCORE_SERVER_DIR}-world.service || warning "failed to delete ${AZEROTHCORE_SERVER_DIR}-world.service file"

# Backup DB
source scripts/backup-database.sh $1

# Drop ALL tables AFTER a backup...
mysql -u acore mysql -e "DROP DATABASE $AZEROTHCORE_WORLD_DATABASE;" || warning "failed to drop $AZEROTHCORE_WORLD_DATABASE"
mysql -u acore mysql -e "DROP DATABASE $AZEROTHCORE_AUTH_DATABASE;" || warning "failed to drop $AZEROTHCORE_AUTH_DATABASE"
mysql -u acore mysql -e "DROP DATABASE $AZEROTHCORE_CHARACTERS_DATABASE;" || warning "failed to drop $AZEROTHCORE_CHARACTERS_DATABASE"

# Stop the DB
sudo systemctl stop mariadb || warning "failed to stop MariaDB"

# Now KILL __ALL__ AzerothCore files on disk
rm -rf "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}" || warning "failed to delete server installation directory"
rm -rf "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}" || warning "failed to delete AzerothCore source directory"

info "done"
