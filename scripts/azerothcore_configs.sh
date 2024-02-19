#!/bin/bash

echo ""
echo "#########################################################"
echo "# Server Configuration Files"
echo "#########################################################"
echo ""

cd $WHERE_WAS_I

ETC_PATH="${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/etc"

# Check for the "purge" subcommand being passed to the script
if [ "$1" = "purge" ];
then
  echo "Purging existing configurations..."
  NOW=$(date '+%Y%m%d_%H%M%S')
  cp "${ETC_PATH}/worldserver.conf" "${ETC_PATH}/worldserver.conf.backup.${NOW}"
  cp "${ETC_PATH}/authserver.conf" "${ETC_PATH}/authserver.conf.backup.${NOW}"
  rm -f "${ETC_PATH}/worldserver.conf"
  rm -f "${ETC_PATH}/authserver.conf"
fi

# Move our configurations in place
# ... but only if they don't already exist, because there might be
# custom changes we'll end up overriding...
if [ ! -f "${ETC_PATH}/worldserver.conf" ];
then
  COPY_TO="${ETC_PATH}/worldserver.conf"
  echo "Copying worldserver.main.conf to $COPY_TO"
  cp configurations/worldserver.main.conf $COPY_TO

  echo "Updating $COPY_TO..."
  echo "BindIP = $AZEROTHCORE_SERVER_BIND_IP" >> "${ETC_PATH}/worldserver.conf"
  echo "WorldServerPort = $AZEROTHCORE_SERVER_BIND_PORT" >> "${ETC_PATH}/worldserver.conf"
  echo "WorldDatabaseInfo = \"${AZEROTHCORE_SERVER_BIND_IP};3306;acore;acore;$AZEROTHCORE_WORLD_DATABASE\"" >> "${ETC_PATH}/worldserver.conf"
  echo "LoginDatabaseInfo = \"${AZEROTHCORE_SERVER_BIND_IP};3306;acore;acore;$AZEROTHCORE_AUTH_DATABASE\"" >> "${ETC_PATH}/worldserver.conf"
  echo "CharacterDatabaseInfo = \"${AZEROTHCORE_SERVER_BIND_IP};3306;acore;acore;$AZEROTHCORE_CHARACTERS_DATABASE\"" >> "${ETC_PATH}/worldserver.conf"
else
  echo "Leaving existing ${ETC_PATH}/worldserver.conf alone"
fi

if [ ! -f "${ETC_PATH}/authserver.conf" ];
then
  COPY_TO="${ETC_PATH}/authserver.conf"
  echo "Copying authserver.conf to $COPY_TO"
  cp configurations/authserver.conf $COPY_TO

  echo "Updating $COPY_TO..."
  echo "BindIP = $AZEROTHCORE_SERVER_BIND_IP" >> $COPY_TO
  echo "LoginDatabaseInfo = \"${AZEROTHCORE_SERVER_BIND_IP};3306;acore;acore;$AZEROTHCORE_AUTH_DATABASE\"" >> $COPY_TO
else
  echo "Leaving existing ${ETC_PATH}/authserver.conf alone"
fi

cd $WHERE_WAS_I