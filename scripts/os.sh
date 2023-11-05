#!/bin/bash

echo ""
echo "#########################################################"
echo "# Base OS"
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

cd $WHERE_WAS_I