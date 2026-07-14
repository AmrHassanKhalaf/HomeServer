#!/bin/bash

set -e

echo "Updating Docker images..."

cd ~/HomeServer/compose

docker compose pull

docker compose up -d

docker image prune -f

echo "Update completed."
