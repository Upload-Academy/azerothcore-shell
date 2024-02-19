#!/bin/bash

echo ""
echo "#########################################################"
echo "# Import Custom SQL"
echo "#########################################################"
echo ""

source scripts/functions.sh
if [ "$1" = "" ]; then error "Did you forget to provide a configuration file?"; else source $1; fi

cd $WHERE_WAS_I
IMPORT_LOCK_PATH="${HOME}/${AZEROTHCORE_INSTALL_PARENT_DIR}/${AZEROTHCORE_SERVER_DIR}/locks"

function import_auth() {
    LOCK_FILE="${IMPORT_LOCK_PATH}/sqlimport.auth.$(basename $1).lock"
    if [ -e $LOCK_FILE ];
    then
        warning "file $1 already imported"
        return
    fi

    info "SQL importing: $1"
    mysql -u acore $AZEROTHCORE_AUTH_DATABASE < $1 || error "SQL import of '${1}' failed"
    touch $LOCK_FILE || error "failed to create lockfile"
}

function import_world() {
    LOCK_FILE="${IMPORT_LOCK_PATH}/sqlimport.world.$(basename $1).lock"
    if [ -e $LOCK_FILE ];
    then
        warning "file $1 already imported"
        return
    fi

    info "SQL importing: $1"
    mysql -u acore $AZEROTHCORE_WORLD_DATABASE < $1 || error "SQL import of '${1}' failed"
    touch $LOCK_FILE || error "failed to create lockfile"
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