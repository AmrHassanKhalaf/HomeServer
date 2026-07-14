#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

echo "Updating Docker images..."

cd "$REPO_ROOT"

docker compose pull

docker compose up -d

docker image prune -f

echo "Update completed."
