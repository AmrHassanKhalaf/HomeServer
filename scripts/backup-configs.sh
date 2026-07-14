#!/bin/bash

BACKUP_DIR="$HOME/HomeServer/backups/configs"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/configs_$DATE.tar.gz" \
"$HOME/HomeServer/compose" \
"$HOME/HomeServer/docker" \
"$HOME/HomeServer/monitoring"

find "$BACKUP_DIR" -type f -mtime +30 -delete

echo "Configuration Backup Completed"
