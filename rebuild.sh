#!/bin/bash

# This script **is not** idempotent: it's a one-time thing.
# If you do run it several times, then things should be OK,
# but there's no guarantee.

source config.sh
export WHERE_WAS_I=$(pwd)

. scripts/azerothcore_source.sh 
. scripts/azerothcore_modules.sh
. scripts/azerothcore_compile.sh
. scripts/import_sql.sh

sudo systemctl restart azerothcore-world-server.service
