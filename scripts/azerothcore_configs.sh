#!/bin/bash

echo ""
echo "#########################################################"
echo "# Server Configuration Files"
echo "#########################################################"
echo ""

source scripts/functions.sh
if [ "$1" = "" ]; then error "Did you forget to provide a configuration file?"; else source $1; fi

cd $WHERE_WAS_I

ETC_PATH="${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/etc"

# Check for the "purge" subcommand being passed to the script
if [ "$2" = "purge" ];
then
  info "purging existing configurations..."
  NOW=$(date '+%Y%m%d_%H%M%S')
  cp "${ETC_PATH}/worldserver.conf" "${ETC_PATH}/worldserver.conf.backup.${NOW}" || error "failed to backup world configuration file"
  cp "${ETC_PATH}/authserver.conf" "${ETC_PATH}/authserver.conf.backup.${NOW}" || error "failed to backup auth configuration file"
  rm -f "${ETC_PATH}/worldserver.conf"
  rm -f "${ETC_PATH}/authserver.conf"
fi

# Move our configurations in place
# ... but only if they don't already exist, because there might be
# custom changes we'll end up overriding...
if [ ! -f "${ETC_PATH}/worldserver.conf" ];
then
  COPY_TO="${ETC_PATH}/worldserver.conf"
  info "copying worldserver.main.conf to $COPY_TO"
  cp configurations/worldserver.main.conf $COPY_TO || error "failed to copy worldserver configuration file"

  info "updating $COPY_TO..."

  # Don't be a smart arse and replace these with 'info' calls
  echo "BindIP = $AZEROTHCORE_SERVER_BIND_IP" >> "${ETC_PATH}/worldserver.conf" || error "failed to update BindIP"
  echo "WorldServerPort = $AZEROTHCORE_SERVER_BIND_PORT" >> "${ETC_PATH}/worldserver.conf" || error "failed to update WorldServerPort"
  echo "WorldDatabaseInfo = \"${MARIADB_SERVER_IP};${MARIADB_SERVER_PORT};acore;acore;$AZEROTHCORE_WORLD_DATABASE\"" >> "${ETC_PATH}/worldserver.conf" || error "failed to update WorldDatabaseInfo"
  echo "LoginDatabaseInfo = \"${MARIADB_SERVER_IP};${MARIADB_SERVER_PORT};acore;acore;$AZEROTHCORE_AUTH_DATABASE\"" >> "${ETC_PATH}/worldserver.conf" || error "failed to update LoginDatabaseInfo"
  echo "CharacterDatabaseInfo = \"${MARIADB_SERVER_IP};${MARIADB_SERVER_PORT};acore;acore;$AZEROTHCORE_CHARACTERS_DATABASE\"" >> "${ETC_PATH}/worldserver.conf" || error "failed to update CharacterDatabaseInfo"
else
  info "leaving existing ${ETC_PATH}/worldserver.conf alone"
fi

if [ ! -f "${ETC_PATH}/authserver.conf" ];
then
  COPY_TO="${ETC_PATH}/authserver.conf"
  info "copying authserver.conf to $COPY_TO"
  cp configurations/authserver.conf $COPY_TO

  info "Updating $COPY_TO..."
  
  # Don't be a smart arse and replace these with 'info' calls
  echo "BindIP = $AZEROTHCORE_SERVER_BIND_IP" >> $COPY_TO || error "failed to update BindIP"
  echo "LoginDatabaseInfo = \"${MARIADB_SERVER_IP};${MARIADB_SERVER_PORT};acore;acore;$AZEROTHCORE_AUTH_DATABASE\"" >> $COPY_TO || error "failed to update LoginDatabaseInfo"
else
  info "leaving existing ${ETC_PATH}/authserver.conf alone"
fi

cd $WHERE_WAS_I