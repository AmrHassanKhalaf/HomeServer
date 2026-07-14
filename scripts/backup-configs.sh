#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
BACKUP_DIR="$REPO_ROOT/backups/configs"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/configs_$DATE.tar.gz" \
"$REPO_ROOT/compose" \
"$REPO_ROOT/docker" \
"$REPO_ROOT/monitoring"

find "$BACKUP_DIR" -type f -mtime +30 -delete

echo "Configuration Backup Completed"
