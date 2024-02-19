#!/bin/bash

echo ""
echo "#########################################################"
echo "# Base OS"
echo "#########################################################"
echo ""

# Update OS packages
sudo apt update
if [ ! $? -eq 0 ]; then echo "Package metadata update failed. Stopping." && exit 1; fi

# Install the required packages (requires root)
# (This is the MariaDB set of packages)
# This disables dumb TUI popups, preventing automated installs
sudo DEBIAN_FRONTEND=noninteractive apt install -yq git cmake make gcc g++ clang libssl-dev libbz2-dev libreadline-dev libncurses-dev libboost-all-dev mariadb-server mariadb-client libmariadb-dev libmariadb-dev-compat unzip ufw
if [ ! $? -eq 0 ]; then echo "AzerothCore dependency installation failed. Stopping." && exit 1; fi

# Install extra nice to have
sudo DEBIAN_FRONTEND=noninteractive apt install -yq fail2ban lsof net-tools
if [ ! $? -eq 0 ]; then echo "Non-mandatory package installation failed. Continuing..."; fi

# A bit of clean up
sudo DEBIAN_FRONTEND=noninteractive apt autoremove
if [ ! $? -eq 0 ]; then echo "Clean stage failed. Continuing..."; fi

cd $WHERE_WAS_I