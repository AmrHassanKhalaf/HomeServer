#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIR="$HOME/HomeServer/backups/volumes"

mkdir -p "$BACKUP_DIR"

docker run --rm \
-v mariadb_data:/volume \
-v "$BACKUP_DIR":/backup \
alpine \
tar czf /backup/mariadb_data_$DATE.tar.gz -C /volume .

echo "Volume Backup Completed"
