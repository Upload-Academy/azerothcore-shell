#!/bin/bash

echo ""
echo "#########################################################"
echo "# Firewall"
echo "#########################################################"
echo ""

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow from 0.0.0.0/0 to any port 22 # SSH - restrict the crap out this!!
sudo ufw allow from 0.0.0.0/0 to any port $AZEROTHCORE_SERVER_BIND_PORT # world server
sudo ufw allow from 0.0.0.0/0 to any port 3724 # auth server
sudo ufw allow from 0.0.0.0/0 to any port 3306 # MariaDB server
sudo ufw --force enable
