#!/bin/bash

echo ""
echo "#########################################################"
echo "# Firewall"
echo "#########################################################"
echo ""

# Need a config file to work with when executed directly
if [ "$1" = "" ];
then
    echo "Did you forget to provide a configuration file?"
    echo "Usage: firewall.sh <config.sh>"
    exit 1
fi

sudo ufw default allow outgoing
if [ ! $? -eq 0 ]; then echo "Package metadata update failed. Stopping." && exit 1; fi

sudo ufw allow from 0.0.0.0/0 to any port 22 # SSH - restrict the crap out this!!
sudo ufw allow from 0.0.0.0/0 to any port 3724 # auth server

# This rule is more dynamic as you can run multiple worlds
# across multiple ports, but the authserver (above) only
# runs once
sudo ufw allow from 0.0.0.0/0 to any port $AZEROTHCORE_SERVER_BIND_PORT # world server

# The database must be kept closed off from the world
sudo ufw allow from $AZEROTHCORE_SERVER_BIND_IP to any port 3306 # database server
sudo ufw allow from 127.0.0.1 to any port 3306 # database server

# Block absolutely everything else
sudo ufw default deny incoming
sudo ufw --force enable

cd $WHERE_WAS_I