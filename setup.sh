#!/bin/bash

# This script **is not** idempotent: it's a one-time thing.
# If you do run it several times, then things should be OK,
# but there's no guarantee.

source config.sh
export WHERE_WAS_I=$(pwd)

. scripts/os.sh
. scripts/firewall.sh
. scripts/azerothcore_source.sh
. scripts/database.sh
. scripts/azerothcore_data.sh
. scripts/azerothcore_modules.sh
. scripts/azerothcore_compile.sh
. scripts/azerothcore_configs.sh
. scripts/azerothcore_worldserver_run.sh
. scripts/import_sql.sh
. scripts/systemd.sh
