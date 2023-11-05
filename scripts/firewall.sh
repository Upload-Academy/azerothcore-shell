#!/bin/bash

echo ""
echo "#########################################################"
echo "# Firewall"
echo "#########################################################"
echo ""

# Install the required packages (requires root)
# (This is the MariaDB set of packages)
# This disables dumb TUI popups, preventing automated installs
sudo DEBIAN_FRONTEND=noninteractive apt install -yq git cmake make gcc g++ clang libssl-dev libbz2-dev libreadline-dev libncurses-dev libboost-all-dev mariadb-server mariadb-client libmariadb-dev libmariadb-dev-compat unzip ufw

# Install extra nice to have
sudo DEBIAN_FRONTEND=noninteractive apt install -yq fail2ban lsof net-tools

# A bit of clean up
sudo DEBIAN_FRONTEND=noninteractive apt autoremove

# Prepare firewall for remote access
# You can disable these lines if you don't want a firewall in place
source scripts/firewall.sh

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow from 0.0.0.0/0 to any port 22 # SSH - restrict the crap out this!!
sudo ufw allow from 0.0.0.0/0 to any port $AZEROTHCORE_SERVER_BIND_PORT # world server
sudo ufw allow from 0.0.0.0/0 to any port 3724 # auth server
sudo ufw allow from 0.0.0.0/0 to any port 3306 # MariaDB server
sudo ufw --force enable
