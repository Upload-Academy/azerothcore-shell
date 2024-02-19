#!/bin/bash

cd $WHERE_WAS_I

# Create systemd .service files
cat <<EOF > "${AZEROTHCORE_SERVER_DIR}-world.service"
[Unit]
Description=AzerothCore 3.3.5a World Server
After=network.target

[Service]
User=superman
Group=superman
PrivateTmp=true
Type=simple
PIDFile=/run/azerothcore/worldserver.pid
WorkingDirectory=${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/
ExecStart=${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/worldserver

[Install]
WantedBy=multi-user.target
EOF

cat <<EOF > "${AZEROTHCORE_SERVER_DIR}-auth.service"
[Unit]
Description=AzerothCore 3.3.5a Auth Server
After=network.target

[Service]
User=superman
Group=superman
PrivateTmp=true
Type=simple
PIDFile=/run/azerothcore/authserver.pid
WorkingDirectory=${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/
ExecStart=${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/bin/authserver

[Install]
WantedBy=multi-user.target
EOF

# Move the service files into place
sudo mv ${AZEROTHCORE_SERVER_DIR}-world.service /etc/systemd/system/${AZEROTHCORE_SERVER_DIR}-world.service
sudo mv ${AZEROTHCORE_SERVER_DIR}-auth.service /etc/systemd/system/${AZEROTHCORE_SERVER_DIR}-auth.service

# Enable and start our services
sudo systemctl enable ${AZEROTHCORE_SERVER_DIR}-auth.service
sudo systemctl start ${AZEROTHCORE_SERVER_DIR}-auth.service

sudo systemctl enable ${AZEROTHCORE_SERVER_DIR}-world.service
sudo systemctl start ${AZEROTHCORE_SERVER_DIR}-world.service

cd $WHERE_WAS_I