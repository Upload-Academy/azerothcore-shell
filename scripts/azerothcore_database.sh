#!/bin/bash

echo ""
echo "#########################################################"
echo "# Initialise Database"
echo "#########################################################"
echo ""

cd $WHERE_WAS_I

# Prepare MariaDB server for AzerothCore (need to be root)
# NOTE: you should probably lock down MySQL, especially the root user
# sudo mysql < sql/m-00-initial-database-setup.main.sql

# Obviously need to make sure the server is active
sudo systemctl restart mariadb

# Check for the "purge" subcommand being passed to the script
if [ "$1" = "purge" ];
then
  echo "Purging lockfiles to force SQL run..."
  rm -f "${DATABASE_LOCK_DIR}/database.*.lock"
fi

# Create lock directory if it doesn't already exist.
mkdir -p $DATABASE_LOCK_DIR

if [ "$DB_CREATE" == true ];
then
  if [ ! -f "${DATABASE_LOCK_DIR}/database.create.lock" ];
  then
    echo "Creating the databases..."
    sudo mysql < "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}/data/sql/create/create_mysql.sql"
    touch "${DATABASE_LOCK_DIR}/database.create.lock"
  else
    echo "Database already created, skiping..."
  fi
fi

if [ "$DB_MANAGE_AUTH" == true ];
then
  if [ ! -f "${DATABASE_LOCK_DIR}/database.${AZEROTHCORE_AUTH_DATABASE}.lock" ];
  then
    touch "${DATABASE_LOCK_DIR}/database.${AZEROTHCORE_AUTH_DATABASE}.lock"
    echo "Creating the auth tables..."
    cd "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}/data/sql/base/db_auth/"
    for sqlfile in $(ls *.sql); do sudo mysql $AZEROTHCORE_AUTH_DATABASE < $sqlfile; done
  else
    echo "Auth tables already created, skipping..."
  fi
fi

if [ "$DB_MANAGE_CHARACTERS" == true ];
then
  if [ ! -f "${DATABASE_LOCK_DIR}/database.${AZEROTHCORE_CHARACTERS_DATABASE}.lock" ];
  then
    touch "${DATABASE_LOCK_DIR}/database.${AZEROTHCORE_CHARACTERS_DATABASE}.lock"
    echo "Creating the character tables..."
    cd "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}/data/sql/base/db_characters/"
    for sqlfile in $(ls *.sql); do sudo mysql $AZEROTHCORE_CHARACTERS_DATABASE < $sqlfile; done
  else
    echo "Character tables already created, skipping..."
  fi
fi

if [ "$DB_MANAGE_WORLD" == true ];
then
  if [ ! -f "${DATABASE_LOCK_DIR}/database.${AZEROTHCORE_WORLD_DATABASE}.lock" ];
  then
    touch "${DATABASE_LOCK_DIR}/database.${AZEROTHCORE_WORLD_DATABASE}.lock"
    echo "Creating the world tables..."
    cd "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}/data/sql/base/db_world/"
    for sqlfile in $(ls *.sql); do sudo mysql $AZEROTHCORE_WORLD_DATABASE < $sqlfile; done
  else
    echo "World tables already created, skipping..."
  fi
fi

# Prevent the need to type the password all the time
cat <<EOF > $HOME/.my.cnf 
[client]
password=acore
EOF

if [ ! -f "${DATABASE_LOCK_DIR}/database.realmupdate.lock" ];
then
  touch "${DATABASE_LOCK_DIR}/database.realmupdate.lock"

  echo "Update the default realm to match our details..."
  mysql -u acore $AZEROTHCORE_AUTH_DATABASE -e "UPDATE realmlist SET name = \"${AZEROTHCORE_SERVER_REALM_NAME}\" WHERE id = 1;"
  mysql -u acore $AZEROTHCORE_AUTH_DATABASE -e "UPDATE realmlist SET address = '${AZEROTHCORE_SERVER_REMOTE_ENDPOINT}' WHERE id = 1;"
  mysql -u acore $AZEROTHCORE_AUTH_DATABASE -e "UPDATE realmlist SET localAddress = '${AZEROTHCORE_SERVER_BIND_IP}' WHERE id = 1;"
  mysql -u acore $AZEROTHCORE_AUTH_DATABASE -e "UPDATE realmlist SET localSubnetMask = '${AZEROTHCORE_SERVER_LOCAL_SUBNETMASK}' WHERE id = 1;"
  mysql -u acore $AZEROTHCORE_AUTH_DATABASE -e "UPDATE realmlist SET port = '${AZEROTHCORE_SERVER_BIND_PORT}' WHERE id = 1;"
else
  echo "Realm update has already happened, skipping..."
fi

cd $WHERE_WAS_I