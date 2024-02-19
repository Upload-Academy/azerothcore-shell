#!/bin/bash

echo ""
echo "#########################################################"
echo "# First run of World Server"
echo "#########################################################"
echo ""

cd $WHERE_WAS_I

mkdir -p "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/etc/modules/"
cp configurations/modules/*.conf.dist "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/etc/modules/"

# Now we need to run the worldserver so that the database is populated
echo ""
echo "===================================================================================="
echo ""
echo "World Server is about to be run to initialize DB and accounts."
echo "When its finished running, and you see the AC> prompt, create whatever accounts"
echo "you need NOW, then Contrl+C so the script can finalise the setup preocess."
echo ""
echo "See here for creating account: https://www.azerothcore.org/wiki/creating-accounts"
echo ""
echo "===================================================================================="
echo ""

# Shutdown an existing server, if applicable
sudo systemctl stop azerothcore-world-server.service

# Make the Console is enabled first
# sed -i 's/Console.Enable = 0/Console.Enable = 1/g' "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/etc/worldserver.conf"

read -p "Press any key to run worldserver..."
cd "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/"
./worldserver

# I disable the console at this point because I'm running the service using systemd.
sed -i 's/Console.Enable = 1/Console.Enable = 0/g' "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/etc/worldserver.conf"
cd $WHERE_WAS_I