#!/bin/bash

echo ""
echo "#########################################################"
echo "# Firewall"
echo "#########################################################"
echo ""

sudo ufw default allow outgoing

sudo ufw allow from 0.0.0.0/0 to any port 22 # SSH - restrict the crap out this!!
sudo ufw allow from 0.0.0.0/0 to any port $AZEROTHCORE_SERVER_BIND_PORT # world server
sudo ufw allow from 0.0.0.0/0 to any port 3724 # auth server

# The database must be kept closed off from the world
sudo ufw allow from $AZEROTHCORE_SERVER_BIND_IP to any port 3306 # MariaDB server
sudo ufw allow from 127.0.0.1 to any port 3306 # MariaDB server

sudo ufw default deny incoming
sudo ufw --force enable

cd $WHERE_WAS_I