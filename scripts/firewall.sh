#!/bin/bash

echo ""
echo "#########################################################"
echo "# Firewall"
echo "#########################################################"
echo ""

source scripts/functions.sh
if [ "$1" = "" ]; then error "no configuration file passed"; else source $1; fi

sudo ufw default allow outgoing || error "allowing outgoing network traffic failed"
sudo ufw allow from 0.0.0.0/0 to any port 22 || error "allowing SSH network traffic failed"
sudo ufw allow from 0.0.0.0/0 to any port 3724 || error "allowing Auth Server network traffic failed"

# This rule is more dynamic as you can run multiple worlds
# across multiple ports, but the authserver (above) only
# runs once
sudo ufw allow from 0.0.0.0/0 to any port $AZEROTHCORE_SERVER_BIND_PORT || error "allowing World Server port ${AZEROTHCORE_SERVER_BIND_PORT} failed"

# The database must be kept closed off from the world
sudo ufw allow from $AZEROTHCORE_SERVER_BIND_IP to any port 3306 || error "failed to restrict port 3306 to ${AZEROTHCORE_SERVER_BIND_IP}"
sudo ufw allow from 127.0.0.1 to any port 3306 || error "failed to restrict port 3306 to 127.0.0.1"

# Block absolutely everything else
sudo ufw default deny incoming || error "failed to set default deny policy on incoming traffic"
sudo ufw --force enable || error "failed to (forcefully) enable ufw"

cd $WHERE_WAS_I