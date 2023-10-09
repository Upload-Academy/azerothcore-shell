#!/bin/bash

function import() {
    echo "Importing: $1"
    mysql -u acore acore_world < $1
    if [ $? -gt 0 ]; then echo "MySQL import of '${1}' failed. Stopping."; exit 1; fi
}

# We _always_ do a backup of the database before we
# import _any_ SQL
mkdir -p $HOME/backups/database/acore_world/
NOW=$(date '+%Y%m%d_%H%M%S')
mysqldump -u acore acore_world > "${HOME}/backups/database/acore_world/${NOW}.sql"
if [ $? -gt 0 ]; then echo "Backing up of database failed! Stopping."; exit 1; fi

# These are manually written SQL files and are not
# directly written to by Python or any other scripts
import "sql/M-01-quality-of-life.sql"
import "sql/M-02-starting-mount-accessiblity.sql"
import "sql/M-03-better-herb-spawns.sql"
import "sql/M-04-better-mining-spawns.sql"
import "sql/M-05-various-spawnable-objects.sql"
import "sql/M-06-various-spawnable-npcs.sql"
import "sql/M-07-the-argent-dawn.DELETE.sql"

# These are automatically generated SQL files and as
# such, we have to use wildcards to find and apply them
# VG = Vendor Groups
# AV = Alliance Vanguard
for sqlfile in $(ls sql/A-VG-*.sql); do import $sqlfile; done
for sqlfile in $(ls sql/A-AV-*.sql); do import $sqlfile; done
