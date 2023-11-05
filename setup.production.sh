#!/bin/bash

# This script **is not** idempotent: it's a one-time thing.
# If you do run it several times, then things should be OK,
# but there's not guarantee.

export WHERE_WAS_I=$(pwd)

. config.production.sh
. script/os.sh
. scripts/firewall.sh
. scripts/azerothcore.sh
. scripts/database.sh
. scripts/modules.sh
. scripts/compile.sh
. scripts/azerothcore_configs.sh
. scripts/azerothcore_worldserver_run.sh
. scripts/import_sql.sh
. scripts/systemd.sh
