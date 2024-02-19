#!/bin/bash

echo ""
echo "#########################################################"
echo "# Base OS updates and package installation."
echo "#########################################################"
echo ""

source scripts/functions.sh
if [ "$1" = "" ]; then error "no configuration file passed"; else source $1; fi

# Update OS packages
sudo apt update || error "package metadata update failed"

# Install the required packages (requires root)
# (This is the MariaDB set of packages)
# This disables dumb TUI popups, preventing automated installs
sudo DEBIAN_FRONTEND=noninteractive \
    apt install -yq \
    git \
    cmake \
    make \
    gcc \
    g++ \
    clang \
    libssl-dev \
    libbz2-dev \
    libreadline-dev \
    libncurses-dev \
    libboost-all-dev \
    mariadb-server \
    mariadb-client \
    libmariadb-dev \
    libmariadb-dev-compat \
    unzip \
    ufw \
    || error "AzerothCore dependency installation failed"

# Install extra nice to have
sudo DEBIAN_FRONTEND=noninteractive apt install -yq fail2ban lsof net-tools || warning "Non-mandatory package installation failed"

# A bit of clean up
sudo DEBIAN_FRONTEND=noninteractive apt autoremove || warning "clean stage failed"

cd $WHERE_WAS_I