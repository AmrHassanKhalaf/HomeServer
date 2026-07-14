#!/bin/bash

BACKUP_DIR="$HOME/HomeServer/backups/database"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$BACKUP_DIR"

docker exec mariadb mariadb-dump \
-uportfolio \
-pAa##1234 \
portfolio_api \
> "$BACKUP_DIR/portfolio_api_$DATE.sql"

find "$BACKUP_DIR" -type f -mtime +30 -delete

echo "Database Backup Completed"
