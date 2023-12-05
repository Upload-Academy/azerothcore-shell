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
WorkingDirectory=${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/
ExecStart=${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/worldserver

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
WorkingDirectory=${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/
ExecStart=${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/authserver

[Install]
WantedBy=multi-user.target
EOF

# This ensures the admin group, of which the user installing WoS should be a member,
# can manage the auth and world server systemd services without a password. This is
# required for the scheduled living-world scripts.
cat <<EOF > 999-wos 
%admin ALL = (root) NOPASSWD: /usr/bin/systemctl start ${AZEROTHCORE_SERVER_DIR}-world.service
%admin ALL = (root) NOPASSWD: /usr/bin/systemctl start ${AZEROTHCORE_SERVER_DIR}-auth.service
%admin ALL = (root) NOPASSWD: /usr/bin/systemctl stop ${AZEROTHCORE_SERVER_DIR}-world.service
%admin ALL = (root) NOPASSWD: /usr/bin/systemctl stop ${AZEROTHCORE_SERVER_DIR}-auth.service
EOF

sudo mv 999-wos /etc/sudoers.d/
sudo chown root:root /etc/sudoers.d/999-wos

# Move the service files into place
sudo mv ${AZEROTHCORE_SERVER_DIR}-world.service /etc/systemd/system/${AZEROTHCORE_SERVER_DIR}-world.service
sudo mv ${AZEROTHCORE_SERVER_DIR}-auth.service /etc/systemd/system/${AZEROTHCORE_SERVER_DIR}-auth.service

# Enable and start our services
sudo systemctl enable ${AZEROTHCORE_SERVER_DIR}-auth.service
sudo systemctl start ${AZEROTHCORE_SERVER_DIR}-auth.service

sudo systemctl enable ${AZEROTHCORE_SERVER_DIR}-world.service
sudo systemctl start ${AZEROTHCORE_SERVER_DIR}-world.service

cd $WHERE_WAS_I