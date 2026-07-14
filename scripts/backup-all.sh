#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Starting Backup..."

"$SCRIPT_DIR/backup-db.sh"

"$SCRIPT_DIR/backup-configs.sh"

"$SCRIPT_DIR/backup-volumes.sh"

echo "Backup Finished Successfully"
