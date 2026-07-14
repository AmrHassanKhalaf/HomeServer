#!/bin/bash

echo "Starting Backup..."

~/HomeServer/scripts/backup-db.sh

~/HomeServer/scripts/backup-configs.sh

~/HomeServer/scripts/backup-volumes.sh

echo "Backup Finished Successfully"
