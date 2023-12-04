#!/bin/bash

# This is the PUBLIC IP address you want your server to be
# accessible from. 
# 
# A value of 127.0.0.1 means your local computer ONLY. This
# address cannot be reached from anywhere else, even your 
# local network.
# 
# If you want to be able to reach your server via
# the PUBLIC INTERNET, then you *must* use an Internet routable
# IP address. This is more complex and requires you to
# understand basic networking concepts like routing and IPv4.
export AZEROTHCORE_SERVER_REMOTE_ENDPOINT="127.0.0.1"

# This IP address is the LOCAL IP address AzrothCore's 
# components will listen for connections on. This (probably)
# Isn't your PUBLIC IP address. It's going to be a value
# like 127.0.0.1, 192.168.88.X, or 0.0.0.0.
# 
# A value of 127.0.0.1 means your local computer ONLY. This
# address cannot be reached from anywhere else, even your 
# local network.
# 
# A value of 0.0.0.0 means the server will bind to ANY and
# ALL IP addresses on your system, including 127.0.0.1. This
# is ideal if you want to be able to access the server from
# your local PC and other systems on the local area network.
# 
# If you have specific IP attached to your computer that you
# want to use, like "192.168.88.10", then use that. This
# means local clients must set their realmlist IPs to that
# address (or DNS that resolve to it.)
export AZEROTHCORE_SERVER_BIND_IP="127.0.0.1"

# You can probably ignore these flags
export AZEROTHCORE_SOURCE_DIR=azerothcore
export AZEROTHCORE_SOURCE_BRANCH=master
export AZEROTHCORE_SERVER_DIR=azerothcore-server
export AZEROTHCORE_SERVER_BACKUPS_DIR=azerothcore-server-backups
export AZEROTHCORE_SERVER_REALM_NAME=AzerothCore
export AZEROTHCORE_SERVER_BIND_PORT=8085
export AZEROTHCORE_SERVER_LOCAL_SUBNETMASK=255.255.255.0
export AZEROTHCORE_AUTH_DATABASE="acore_auth"
export AZEROTHCORE_WORLD_DATABASE="acore_world"
export AZEROTHCORE_CHARACTERS_DATABASE="acore_characters"
export DB_CREATE=true
export DB_MANAGE_AUTH=true
export DB_MANAGE_WORLD=true
export DB_MANAGE_CHARACTERS=true 