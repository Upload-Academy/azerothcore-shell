#!/bin/bash

# ** Backup your data/configs/files **

# This script **is not** idempotent: it's a one-time thing.
# If you do run it several times, then things should be OK,
# but there's no guarantee.

source scripts/functions.sh

# Need a config file to work with
if [ "$1" = "" ]; then error "Did you forget to provide a configuration file?"; else source $1; fi

[ "$RUN_OS" == true ] && . scripts/os.sh
[ "$RUN_FIREWALL" == true ] && . scripts/firewall.sh
[ "$RUN_AZEROTHCORE_SOURCE" == true ] && . scripts/azerothcore_source.sh
[ "$RUN_AZEROTHCORE_DATABASE" == true ] && . scripts/azerothcore_database.sh
[ "$RUN_AZEROTHCORE_DATA" == true ] && . scripts/azerothcore_data.sh
[ "$RUN_AZEROTHCORE_MODULES" == true ] && . scripts/azerothcore_modules.sh
[ "$RUN_AZEROTHCORE_COMPILE" == true ] && . scripts/azerothcore_compile.sh
[ "$RUN_AZEROTHCORE_CONFIGS" == true ] && . scripts/azerothcore_configs.sh
[ "$RUN_IMPORT_SQL" == true ] && . scripts/import_sql.sh
[ "$RUN_SYSTEMD" == true ] && . scripts/systemd.sh
