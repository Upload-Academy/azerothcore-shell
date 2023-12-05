#!/bin/bash

# This script **is not** idempotent: it's a one-time thing.
# If you do run it several times, then things should be OK,
# but there's no guarantee.

source $1
export WHERE_WAS_I=$(pwd)

if [ "$RUN_OS" == true ]; then; . scripts/os.sh; fi
if [ "$RUN_FIREWALL" == true ]; then; . scripts/firewall.sh; fi
if [ "$RUN_AZEROTHCORE_SOURCE" == true ]; then; . scripts/azerothcore_source.sh; fi
if [ "$RUN_AZEROTHCORE_DATABASE" == true ]; then; . scripts/azerothcore_database.sh; fi
if [ "$RUN_AZEROTHCORE_DATA" == true ]; then; . scripts/azerothcore_data.sh; fi
if [ "$RUN_AZEROTHCORE_MODULES" == true ]; then; . scripts/azerothcore_modules.sh; fi
if [ "$RUN_AZEROTHCORE_COMPILE" == true ]; then; . scripts/azerothcore_compile.sh; fi
if [ "$RUN_AZEROTHCORE_CONFIGS" == true ]; then; . scripts/azerothcore_configs.sh; fi
if [ "$RUN_AZEROTHCORE_WORLDSERVER_RUN" == true ]; then; . scripts/azerothcore_worldserver_run.sh; fi
if [ "$RUN_IMPORT_SQL" == true ]; then; . scripts/import_sql.sh; fi
if [ "$RUN_SYSTEMD" == true ]; then; . scripts/systemd.sh; fi
