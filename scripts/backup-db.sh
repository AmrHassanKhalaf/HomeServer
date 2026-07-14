#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
ENV_FILE="$REPO_ROOT/compose/.env"
BACKUP_DIR="$REPO_ROOT/backups/database"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

if [ -f "$ENV_FILE" ]; then
  set -a
  . "$ENV_FILE"
  set +a
fi

: "${MYSQL_USER:?MYSQL_USER is required in compose/.env}"
: "${MYSQL_PASSWORD:?MYSQL_PASSWORD is required in compose/.env}"
: "${MYSQL_DATABASE:?MYSQL_DATABASE is required in compose/.env}"

mkdir -p "$BACKUP_DIR"

docker exec mariadb mariadb-dump \
-u"$MYSQL_USER" \
-p"$MYSQL_PASSWORD" \
"$MYSQL_DATABASE" \
> "$BACKUP_DIR/${MYSQL_DATABASE}_$DATE.sql"

find "$BACKUP_DIR" -type f -mtime +30 -delete

echo "Database Backup Completed"
