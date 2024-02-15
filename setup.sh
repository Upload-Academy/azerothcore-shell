#!/bin/bash

# This script **is not** idempotent: it's a one-time thing.
# If you do run it several times, then things should be OK,
# but there's no guarantee.

source $1
export WHERE_WAS_I=$(pwd)

[ "$RUN_OS" == true ] && . scripts/os.sh
[ "$RUN_FIREWALL" == true ] && . scripts/firewall.sh
[ "$RUN_AZEROTHCORE_SOURCE" == true ] && . scripts/azerothcore_source.sh
[ "$RUN_AZEROTHCORE_DATABASE" == true ] && . scripts/azerothcore_database.sh
[ "$RUN_AZEROTHCORE_DATA" == true ] && . scripts/azerothcore_data.sh
[ "$RUN_AZEROTHCORE_MODULES" == true ] && . scripts/azerothcore_modules.sh
[ "$RUN_AZEROTHCORE_COMPILE" == true ] && . scripts/azerothcore_compile.sh
[ "$RUN_AZEROTHCORE_CONFIGS" == true ] && . scripts/azerothcore_configs.sh
[ "$RUN_AZEROTHCORE_WORLDSERVER_RUN" == true ] && . scripts/azerothcore_worldserver_run.sh
[ "$RUN_IMPORT_SQL" == true ] && . scripts/import_sql.sh
[ "$RUN_SYSTEMD" == true ] && . scripts/systemd.sh
