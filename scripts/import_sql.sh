#!/bin/bash

# Need a config file to work with
if [ "$1" = "" ];
then
    echo "Did you forget to provide a configuration file?"
    echo "Usage: kill-everything.sh <config.sh>"
    exit 1
fi

cd $WHERE_WAS_I
IMPORT_LOCK_PATH="${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/locks"

function import_auth() {
    LOCK_FILE="${IMPORT_LOCK_PATH}/sqlimport.$(basename $1).lock"
    if [ -e $LOCK_FILE ];
    then
        echo "File $1 already imported. Ignoring."
        return
    fi

    echo "Importing: $1"
    mysql -u acore $AZEROTHCORE_AUTH_DATABASE < $1
    if [ $? -gt 0 ];
    then
        echo "MySQL import of '${1}' failed. Stopping."
        exit 1
    fi

    mkdir -p sql/imported/auth
    touch "sql/imported/auth/$(basename $1)"
}

function import_world() {
    LOCK_FILE="${IMPORT_LOCK_PATH}/sqlimport.$(basename $1).lock"
    if [ -e $LOCK_FILE ];
    then
        echo "File $1 already imported. Ignoring."
        return
    fi

    echo "Importing: $1"
    mysql -u acore $AZEROTHCORE_WORLD_DATABASE < $1
    if [ $? -gt 0 ];
    then
        echo "MySQL import of '${1}' failed. Stopping."
        exit 1
    fi

    mkdir -p sql/imported/world
    touch "sql/imported/world/$(basename $1)"
}

# We _always_ do a backup of the database before we
# import _any_ SQL
source scripts/backup-database.sh $1

# These are manually written SQL files and are not
# directly written to by Python or any other scripts
import_auth "sql/auth/a-00-initial-database-setup-gm-account.sql"
import_world "sql/world/a-01-quality-of-life.sql"
import_world "sql/world/a-02-starting-mount-accessiblity.sql"
import_world "sql/world/a-03-better-herb-spawns.sql"
import_world "sql/world/a-04-better-mining-spawns.sql"
import_world "sql/world/a-05-various-spawnable-objects.sql"
import_world "sql/world/a-06-various-spawnable-npcs.sql"

# Now we automatically import any SQL files included by
# the server adminstrator.We ignore anything that starts
# with "a-*", as that's handled above.
for sqlfile in $(ls sql/auth/*.sql | grep -v 'a-*'); do import_auth $sqlfile; done
for sqlfile in $(ls sql/world/*.sql | grep -v 'a-*'); do import_world $sqlfile; done

cd $WHERE_WAS_I