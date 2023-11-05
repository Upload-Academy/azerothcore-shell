#!/bin/bash

echo ""
echo "#########################################################"
echo "# Server Configuration Files"
echo "#########################################################"
echo ""

# Move our configurations in place
# ... but only if they don't already exist, because there might be
# custom changes we'll end up overriding...
if [ ! -f "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/worldserver.conf" ];
then
  cp confs/worldserver.main.conf "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/worldserver.conf"
fi

echo "BindIP = $AZEROTHCORE_SERVER_BIND_IP" >> "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/worldserver.conf"
echo "WorldServerPort = $AZEROTHCORE_SERVER_BIND_PORT" >> "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/worldserver.conf"
echo "WorldDatabaseInfo = \"${AZEROTHCORE_SERVER_BIND_IP};3306;acore;acore;$AZEROTHCORE_WORLD_DATABASE\"" >> "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/worldserver.conf"
echo "LoginDatabaseInfo = \"${AZEROTHCORE_SERVER_BIND_IP};3306;acore;acore;$AZEROTHCORE_AUTH_DATABASE\"" >> "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/worldserver.conf"
echo "CharacterDatabaseInfo = \"${AZEROTHCORE_SERVER_BIND_IP};3306;acore;acore;$AZEROTHCORE_CHARACTERS_DATABASE\"" >> "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/worldserver.conf"

if [ ! -f "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/authserver.conf" ];
then
  cp confs/authserver.conf "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/"
fi

echo "BindIP = $AZEROTHCORE_SERVER_BIND_IP" >> "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/authserver.conf"
