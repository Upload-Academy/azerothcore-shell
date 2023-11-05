#!/bin/bash

cd $WHERE_WAS_I

# Create systemd .service files
cat <<EOF > azerothcore-world-server.service
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

cat <<EOF > azerothcore-auth-server.service
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
sudo cat <<EOF > /etc/sudoers.d/999-wos 
%admin ALL = (root) NOPASSWD: /usr/bin/systemctl start azerothcore-world-server.service
%admin ALL = (root) NOPASSWD: /usr/bin/systemctl start azerothcore-auth-server.service
%admin ALL = (root) NOPASSWD: /usr/bin/systemctl stop azerothcore-world-server.service
%admin ALL = (root) NOPASSWD: /usr/bin/systemctl stop azerothcore-auth-server.service
EOF

# Move the service files into place
sudo mv azerothcore-world-server.service /etc/systemd/system/azerothcore-world-server.service
sudo mv azerothcore-auth-server.service /etc/systemd/system/azerothcore-auth-server.service

# Enable and start our services
sudo systemctl enable azerothcore-auth-server.service
sudo systemctl start azerothcore-auth-server.service

sudo systemctl enable azerothcore-world-server.service
sudo systemctl start azerothcore-world-server.service

cd $WHERE_WAS_I