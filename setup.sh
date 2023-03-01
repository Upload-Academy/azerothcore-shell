#!/bin/bash

export AZEROTHCORE_SOURCE_DIR=azerothcore
export AZEROTHCORE_SERVER_DIR=azerothcore-server
export AZEROTHCORE_SERVER_ENDPOINT=127.0.0.1
export AZEROTHCORE_SERVER_BIND_IP=192.168.88.48

# Used to return back later
export WHERE_WAS_I=$(pwd)

# Install the required packages (requires root)
# (This is the MariaDB set of packages)
sudo apt update
sudo apt install -y git cmake make gcc g++ clang libssl-dev libbz2-dev libreadline-dev libncurses-dev libboost-all-dev mariadb-server mariadb-client libmariadb-dev libmariadb-dev-compat unzip ufw

# Install extra nice to have
sudo apt install -y fail2ban lsof

# Prepare firewall for remote access
# You can disable these lines if you don't want a firewall in place
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow from 0.0.0.0/0 to any port 22 # SSH - restrict the crap out this!!
sudo ufw allow from 0.0.0.0/0 to any port 8085 # world server
sudo ufw allow from 0.0.0.0/0 to any port 3724 # auth server
sudo ufw enable

# Prepare MariaDB server for AzerothCore (need to be root)
# NOTE: you should probably lock down MySQL, especially the root user
sudo mysql < sql/00-initial-database-setup.sql

# Clone AzerothCore
if [ -d "${HOME}/${AZEROTHCORE_SOURCE_DIR}" ];
then
  cd "${HOME}/${AZEROTHCORE_SOURCE_DIR}"
  git pull
  cd $WHERE_WAS_I
else
  git clone https://github.com/azerothcore/azerothcore-wotlk.git --branch master --single-branch --depth 1 "${HOME}/${AZEROTHCORE_SOURCE_DIR}"
fi

# Include our compile script
source compile.sh

# Return HOME
cd $WHERE_WAS_I

# Setup directory for world/client data files
mkdir -p "${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/data"

# We download the v16 maps, mmaps, VMOs, cameras, etc.
if [ ! -f "${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/data/v16.zip" ];
then
  wget https://github.com/wowgaming/client-data/releases/download/v16/data.zip "${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/data/v16.zip"
  # Extract them to the server's data directory
  unzip "${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/data/v16.zip" -d "${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/data"
fi

# Move our configurations in place
cp confs/worldserver.conf "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/"
cat <<EOF > "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/worldserver.conf"
SourceDirectory = "${HOME}/${AZEROTHCORE_SOURCE_DIR}"
EOF

cp confs/authserver.conf "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/"
cat <<EOF > "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/authserver.conf"
BindIP = $AZEROTHCORE_SERVER_BIND_IP
SourceDirectory = "${HOME}/${AZEROTHCORE_SOURCE_DIR}"
MySQLExecutable = $(which mysql)
EOF

mkdir -p "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/modules/"
cp confs/modules/*.conf "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/modules/"

# Now we need to run the worldserver so that the database is populated
echo ""
echo "===================================================================================="
echo ""
echo "World Server is being being run to initialize DB and accounts."
echo "When it's running and you see the AC> prompt, create whatever accounts"
echo "you need NOW, then Contrl+C so the script and finalise the setup."
echo ""
echo "See here for creating account: https://www.azerothcore.org/wiki/creating-accounts"
echo ""
echo "===================================================================================="
echo ""

cd "${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/"
./worldserver

# Additional SQL steps
cd $WHERE_WAS_I
mysql -u acore -p acore_auth -e "UPDATE realmlist SET address = '${AZEROTHCORE_SERVER_ENDPOINT}' WHERE id = 1;"
mysql -u acore -p < sql/01-quality-of-life.sql

# Create systemd .service files
cat <<EOF > azerothcore-world-server.service
[Unit]
Description=AzerothCore 3.3.5a World Server
After=network.target

[Service]
PrivateTmp=true
Type=simple
PIDFile=/run/azerothcore/worldserver.pid
WorkingDirectory="${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/"
ExecStart="${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/worldserver"

[Install]
WantedBy=multi-user.target
EOF

sudo cat <<EOF > azerothcore-auth-server.service
[Unit]
Description=AzerothCore 3.3.5a Auth Server
After=network.target

[Service]
PrivateTmp=true
Type=simple
PIDFile=/run/azerothcore/authserver.pid
WorkingDirectory="${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/"
ExecStart="${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/authserver"

[Install]
WantedBy=multi-user.target
EOF

# Move the service files into place
sudo mv azerothcore-world-server.service /etc/systemd/system/azerothcore-world-server.service
sudo mv azerothcore-auth-server.service /etc/systemd/system/azerothcore-auth-server.service

# Enable and start our services
sudo systemctl enable azerothcore-auth-server.service
sudo systemctl start azerothcore-auth-server.service

sudo systemctl enable azerothcore-world-server.service
sudo systemctl start azerothcore-world-server.service
