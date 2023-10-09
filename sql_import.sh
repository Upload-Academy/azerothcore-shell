#!/bin/bash

# We _always_ do a backup of the database before we
# import _any_ SQL
mkdir -p $HOME/backups/database/acore_world/
NOW=$(date '+%Y%m%d_%H%M%S')
mysqldump -u acore acore_world > "${HOME}/backups/database/acore_world/${NOW}.sql"

# These are manually written SQL files and are not
# directly written to by Python or any other scripts
mysql -u acore acore_world < sql/M-01-quality-of-life.sql
mysql -u acore acore_world < sql/M-02-starting-mount-accessiblity.sql
mysql -u acore acore_world < sql/M-03-better-herb-spawns.sql
mysql -u acore acore_world < sql/M-04-better-mining-spawns.sql
mysql -u acore acore_world < sql/M-05-various-spawnable-objects.sql
mysql -u acore acore_world < sql/M-06-various-spawnable-npcs.sql
mysql -u acore acore_world < sql/M-07-the-argent-dawn.sql

# These are automatically generated SQL files and as
# such, we have to use wildcards to find and apply them
# VG = Vendor Groups
for sqlfile in $(ls sql/A-VG-*.sql);
do
    mysql -u acore acore_world < $sqlfile
done

