#!/bin/bash

export AZEROTHCORE_SOURCE_DIR=azerothcore
export AZEROTHCORE_SERVER_DIR=azerothcore-server
export AZEROTHCORE_SERVER_ENDPOINT=127.0.0.1
export MYSQL_SERVER_ROOT_PASSWORD="superbadpassword"

# Used to return back later
export WHERE_WAS_I=$(pwd)

# Install the required packages (requires root)
sudo apt update

# This is the MariaDB set of packages
sudo apt install -y git cmake make gcc g++ clang libssl-dev libbz2-dev libreadline-dev libncurses-dev libboost-all-dev mariadb-server mariadb-client libmariadb-dev libmariadb-dev-compat unzip ufw

# Prepare firewall for remote access
# You can disable these lines if you don't want a firewall in place
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow from 0.0.0.0/0 to any port 8085 # world server
sudo ufw allow from 0.0.0.0/0 to any port 3724 # auth server
sudo ufw enable

# Prepare MariaDB server for AzerothCore (need to be root)
# NOTE: you should probably lock down MySQL, especially the root user
sudo mysql < sql/00-initial-database-setup.sql

# Clone AzerothCore
rm -rf "${HOME}/${AZEROTHCORE_SOURCE_DIR}"
git clone https://github.com/azerothcore/azerothcore-wotlk.git --branch master --single-branch --depth 1 "${HOME}/${AZEROTHCORE_SOURCE_DIR}"

# Include our compile script
source compile.sh

# Return HOME
cd $WHERE_WAS_I

# Setup directory for world/client data files
mkdir "${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/data"

# We download the v16 maps, mmaps, VMOs, cameras, etc.
wget https://github.com/wowgaming/client-data/releases/download/v16/data.zip /tmp/data.zip

# Extract them to the server's data directory
unzip /tmp/data.zip -d "${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/data"
rm /tmp/data.zip

# Move our configurations in place
cp confs/worldserver.conf "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/"
cp confs/modules/*.conf "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/modules/"

# Additional SQL steps
mysql -u acore -p acore "use acore_auth; UPDATE realmlist SET address = ${AZEROTHCORE_SERVER_ENDPOINT} WHERE id = 1;"
mysql -u acore -p acore < sql/01-quality-of-life.sql

# Create systemd .service files
sudo cat <<EOF > /etc/systemd/system/azerothcore-world-server.service
[Unit]
Description=AzerothCore 3.3.5a World Server
After=network.target

[Service]
PrivateTmp=true
Type=simple
PIDFile=/run/azerothcore/worldserver.pid
WorkingDirectory="${HOME}/${AZEROTHSERVER_SERVER_DIR}/bin/"
ExecStart="${HOME}/${AZEROTHSERVER_SERVER_DIR}/bin/worldserver"

[Install]
WantedBy=multi-user.target
EOF

sudo cat <<EOF > /etc/systemd/system/azerothcore-auth-server.service
[Unit]
Description=AzerothCore 3.3.5a Auth Server
After=network.target

[Service]
PrivateTmp=true
Type=simple
PIDFile=/run/azerothcore/authserver.pid
WorkingDirectory="${HOME}/${AZEROTHSERVER_SERVER_DIR}/bin/"
ExecStart="${HOME}/${AZEROTHSERVER_SERVER_DIR}/bin/authserver"

[Install]
WantedBy=multi-user.target
EOF

# Enable and start our services
sudo systemctl enable azerothcore-auth-server.service
sudo systemctl start azerothcore-auth-server.service

sudo systemctl enable azerothcore-world-server.service
sudo systemctl start azerothcore-world-server.service
