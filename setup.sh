#!/bin/bash

source config.sh

echo ""
echo "#########################################################"
echo "# Base OS"
echo "#########################################################"
echo ""

# Install the required packages (requires root)
# (This is the MariaDB set of packages)
sudo apt update
sudo apt install -y git cmake make gcc g++ clang libssl-dev libbz2-dev libreadline-dev libncurses-dev libboost-all-dev mariadb-server mariadb-client libmariadb-dev libmariadb-dev-compat unzip ufw

# Install extra nice to have
sudo apt install -y fail2ban lsof

# A bit of clean up
sudo apt autoremove

# Prepare firewall for remote access
# You can disable these lines if you don't want a firewall in place
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow from 0.0.0.0/0 to any port 22 # SSH - restrict the crap out this!!
sudo ufw allow from 0.0.0.0/0 to any port 8085 # world server
sudo ufw allow from 0.0.0.0/0 to any port 3724 # auth server
sudo ufw enable


echo ""
echo "#########################################################"
echo "# Initialise Database"
echo "#########################################################"
echo ""

# Prepare MariaDB server for AzerothCore (need to be root)
# NOTE: you should probably lock down MySQL, especially the root user
sudo mysql < sql/00-initial-database-setup.sql

# Prevent the need to type the password all the time
cat <<EOF > $HOME/.my.cnf 
[client]
password=acore
EOF


echo ""
echo "#########################################################"
echo "# AzerothCore "
echo "#########################################################"
echo ""

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
  wget https://github.com/wowgaming/client-data/releases/download/v16/data.zip
  mv data.zip "${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/data/v16.zip"
  # Extract them to the server's data directory
  unzip "${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/data/v16.zip" -d "${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/data"
fi


echo ""
echo "#########################################################"
echo "# Server Configuration Files"
echo "#########################################################"
echo ""

# Move our configurations in place
cp confs/worldserver.conf "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/"
echo "BindIP = $AZEROTHCORE_SERVER_BIND_IP" >> "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/worldserver.conf"

cp confs/authserver.conf "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/"
echo "BindIP = $AZEROTHCORE_SERVER_BIND_IP" >> "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/authserver.conf"

mkdir -p "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/modules/"
cp confs/modules/*.conf "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/modules/"

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

read -p "Press any key to run worldserver..."

cd "${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/"
./worldserver

# I disable the console at this point because I'm running the service using systemd.
sed -i 's/Console.Enable = 1/Console.Enable = 0/g' "${HOME}/${AZEROTHCORE_SERVER_DIR}/etc/worldserver.conf"

# Additional SQL steps
cd $WHERE_WAS_I
mysql -u acore acore_auth -e "UPDATE realmlist SET address = '${AZEROTHCORE_SERVER_REMOTE_ENDPOINT}' WHERE id = 1;"
mysql -u acore acore_auth -e "UPDATE realmlist SET localAddress = '${AZEROTHCORE_SERVER_BIND_IP}' WHERE id = 1;"
mysql -u acore acore_world < sql/01-quality-of-life.sql

# Create systemd .service files
cat <<EOF > azerothcore-world-server.service
[Unit]
Description=AzerothCore 3.3.5a World Server
After=network.target

[Service]
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
PrivateTmp=true
Type=simple
PIDFile=/run/azerothcore/authserver.pid
WorkingDirectory=${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/
ExecStart=${HOME}/${AZEROTHCORE_SERVER_DIR}/bin/authserver

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
