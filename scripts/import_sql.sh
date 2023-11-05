#!/bin/bash

cd $WHERE_WAS_I

function import() {
    imported_name="sql/imported/$(basename $1)"
    if [ -e $imported_name ];
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

    mkdir -p sql/imported/
    touch "sql/imported/$(basename $1)"
}

# We _always_ do a backup of the database before we
# import _any_ SQL
echo "Backing up database."
mkdir -p "${HOME}/backups/database/${AZEROTHCORE_WORLD_DATABASE}/"
NOW=$(date '+%Y%m%d_%H%M%S')
mysqldump -u acore $AZEROTHCORE_WORLD_DATABASE > "${HOME}/backups/database/${AZEROTHCORE_WORLD_DATABASE}/${NOW}.sql"
if [ $? -gt 0 ]; then echo "Backing up of database failed! Stopping."; exit 1; fi

# These are manually written SQL files and are not
# directly written to by Python or any other scripts
import "sql/m-01-quality-of-life.sql"
import "sql/m-02-starting-mount-accessiblity.sql"
import "sql/m-03-better-herb-spawns.sql"
import "sql/m-04-better-mining-spawns.sql"
import "sql/m-05-various-spawnable-objects.sql"
import "sql/m-06-various-spawnable-npcs.sql"

# These are automatically generated SQL files and as
# such, we have to use wildcards to find and apply them.
# 
# We ignore anything that starts with `m-*`.
for sqlfile in $(ls sql/*.sql | grep -v 'm-*'); do import $sqlfile; done

cd $WHERE_WAS_I