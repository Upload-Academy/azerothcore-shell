#!/bin/bash

echo ""
echo "#########################################################"
echo "# Initialise Database"
echo "#########################################################"
echo ""

source scripts/functions.sh
if [ "$1" = "" ]; then error "Did you forget to provide a configuration file?"; else source $1; fi

cd $WHERE_WAS_I

# Obviously need to make sure the server is active
sudo systemctl restart mariadb || error "Unable to restart MariaDB."

# Check for the "purge" subcommand being passed to the script
if [ "$1" = "purge" ];
then
  info "Purging lockfiles to force SQL run..."
  rm -f "${DATABASE_LOCK_DIR}/database.*.lock" || error "Unable to remove lock files for purge."
fi

# Create lock directory if it doesn't already exist.
mkdir -p $DATABASE_LOCK_DIR || error "Unable to create directory for lock files."

if [ "$DB_CREATE" == true ];
then
  if [ ! -f "${DATABASE_LOCK_DIR}/database.create.lock" ];
  then
    info "Creating the databases..."
    touch "${DATABASE_LOCK_DIR}/database.create.lock" || error "Failed to create database lock file."
    sudo mysql < "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}/data/sql/create/create_mysql.sql" || error "Unable to import create_mysql.sql."
  else
    warning "Database already created, skiping..."
  fi
fi

if [ "$DB_MANAGE_AUTH" == true ];
then
  if [ ! -f "${DATABASE_LOCK_DIR}/database.${AZEROTHCORE_AUTH_DATABASE}.lock" ];
  then
    info "Creating the auth tables..."
    touch "${DATABASE_LOCK_DIR}/database.${AZEROTHCORE_AUTH_DATABASE}.lock" || error "Failed to create database lock file."
    cd "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}/data/sql/base/db_auth/" || error "Failed to change AzerothCore SQL directory."
    for sqlfile in $(ls *.sql);
    do
      sudo mysql $AZEROTHCORE_AUTH_DATABASE < $sqlfile || error "Unable to import ${sqlfile} into ${AZEROTHCORE_AUTH_DATABASE}."
    done
  else
    info "Auth tables already created, skipping..."
  fi
fi

if [ "$DB_MANAGE_CHARACTERS" == true ];
then
  if [ ! -f "${DATABASE_LOCK_DIR}/database.${AZEROTHCORE_CHARACTERS_DATABASE}.lock" ];
  then
    info "Creating the character tables..."
    touch "${DATABASE_LOCK_DIR}/database.${AZEROTHCORE_CHARACTERS_DATABASE}.lock" || error "Failed to create database lock file."
    cd "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}/data/sql/base/db_characters/" || error "Failed to change AzerothCore SQL directory."
    for sqlfile in $(ls *.sql);
    do
      sudo mysql $AZEROTHCORE_CHARACTERS_DATABASE < $sqlfile || error "Unable to import ${sqlfile} into ${AZEROTHCORE_CHARACTERS_DATABASE}."
    done
  else
    info "Character tables already created, skipping..."
  fi
fi

if [ "$DB_MANAGE_WORLD" == true ];
then
  if [ ! -f "${DATABASE_LOCK_DIR}/database.${AZEROTHCORE_WORLD_DATABASE}.lock" ];
  then
    info "Creating the world tables..."
    touch "${DATABASE_LOCK_DIR}/database.${AZEROTHCORE_WORLD_DATABASE}.lock" || error "Failed to create database lock file."
    cd "${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SOURCE_DIR}/data/sql/base/db_world/" || error "Failed to change AzerothCore SQL directory."
    for sqlfile in $(ls *.sql);
    do
      sudo mysql $AZEROTHCORE_WORLD_DATABASE < $sqlfile || error "Unable to import ${sqlfile} into ${AZEROTHCORE_WORLD_DATABASE}."
    done
  else
    warning "Character tables already created, skipping..."
  fi
fi

# Prevent the need to type the password all the time
cat <<EOF > $HOME/.my.cnf 
[client]
password=acore
EOF

if [ ! -f "${DATABASE_LOCK_DIR}/database.realmupdate.lock" ];
then
  touch "${DATABASE_LOCK_DIR}/database.realmupdate.lock" || error "Unable to create database lock file."

  info "Update the default realm to match our details..."
  mysql \
    -u acore $AZEROTHCORE_AUTH_DATABASE \
    -e "UPDATE realmlist SET name = \"${AZEROTHCORE_SERVER_REALM_NAME}\" WHERE id = 1;" \
    || error "Failed to update realmlist and set name."

  mysql \
    -u acore $AZEROTHCORE_AUTH_DATABASE \
    -e "UPDATE realmlist SET address = '${AZEROTHCORE_SERVER_REMOTE_ENDPOINT}' WHERE id = 1;" \
    || error "Failed to update realmlist and set address."

  mysql \
    -u acore $AZEROTHCORE_AUTH_DATABASE \
    -e "UPDATE realmlist SET localAddress = '${AZEROTHCORE_SERVER_BIND_IP}' WHERE id = 1;" \
    || error "Failed to update realmlist and set localAddress."

  mysql \
    -u acore $AZEROTHCORE_AUTH_DATABASE \
    -e "UPDATE realmlist SET localSubnetMask = '${AZEROTHCORE_SERVER_LOCAL_SUBNETMASK}' WHERE id = 1;" \
    || error "Failed to update realmlist and set localSubnetMask."

  mysql \
    -u acore $AZEROTHCORE_AUTH_DATABASE \
    -e "UPDATE realmlist SET port = '${AZEROTHCORE_SERVER_BIND_PORT}' WHERE id = 1;" \
    || error "Failed to update realmlist and set port."
else
  warning "Realm update has already happened."
fi

cd $WHERE_WAS_I