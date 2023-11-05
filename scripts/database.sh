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

if [ ! -f "./database.create.lock" ];
then
  echo "Creating the databases..."
  sudo mysql < "${HOME}/${AZEROTHCORE_SOURCE_DIR}/data/sql/create/create_mysql.sql"
  touch ./database.create.lock
else
  echo "Database already created, skiping..."
fi

if [ ! -f "./database.${AZEROTHCORE_AUTH_DATABASE}.lock" ];
then
  touch "./database.${AZEROTHCORE_AUTH_DATABASE}.lock"
  echo "Creating the auth tables..."
  cd "${HOME}/${AZEROTHCORE_SOURCE_DIR}/data/sql/base/db_auth/"
  for sqlfile in $(ls *.sql); do sudo mysql $AZEROTHCORE_AUTH_DATABASE < $sqlfile; done
else
  echo "Auth tables already created, skipping..."
fi

if [ ! -f "./database.${AZEROTHCORE_CHARACTERS_DATABASE}.lock" ];
then
  touch "./database.${AZEROTHCORE_CHARACTERS_DATABASE}.lock"
  echo "Creating the character tables..."
  cd "${HOME}/${AZEROTHCORE_SOURCE_DIR}/data/sql/base/db_characters/"
  for sqlfile in $(ls *.sql); do sudo mysql $AZEROTHCORE_CHARACTERS_DATABASE < $sqlfile; done
else
  echo "Character tables already created, skipping..."
fi

if [ ! -f "./database.${AZEROTHCORE_WORLD_DATABASE}.lock" ];
then
  touch "./database.${AZEROTHCORE_WORLD_DATABASE}.lock"
  echo "Creating the world tables..."
  cd "${HOME}/${AZEROTHCORE_SOURCE_DIR}/data/sql/base/db_world/"
  for sqlfile in $(ls *.sql); do sudo mysql $AZEROTHCORE_WORLD_DATABASE < $sqlfile; done
else
  echo "World tables already created, skipping..."
fi

cd $WHERE_WAS_I

# Prevent the need to type the password all the time
cat <<EOF > $HOME/.my.cnf 
[client]
password=acore
EOF
