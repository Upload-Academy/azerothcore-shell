#!/bin/bash

# This script **is not** idempotent: it's a one-time thing.
# If you do run it several times, then things should be OK,
# but there's no guarantee.

# This script is designed to make it easier to add a new
# module to the system, have it compiled against the latest
# code, have any new SQL imported, and that's it. It skips
# all the OS level stuff and assumes at least one run of
# setup.sh has taken place on the system.

source $1
export WHERE_WAS_I=$(pwd)

if [ "$RUN_AZEROTHCORE_SOURCE" == true ]; then; . scripts/azerothcore_source.sh; fi
if [ "$RUN_AZEROTHCORE_MODULES" == true ]; then; . scripts/azerothcore_modules.sh; fi
if [ "$RUN_AZEROTHCORE_COMPILE" == true ]; then; . scripts/azerothcore_compile.sh; fi
if [ "$RUN_IMPORT_SQL" == true ]; then; . scripts/import_sql.sh; fi

sudo systemctl restart azerothcore-world-server.service
