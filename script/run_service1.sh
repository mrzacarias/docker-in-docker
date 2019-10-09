#!/bin/sh

set -e

cd "$(dirname "$0")/.."

echo "==> Running service1..."
docker-compose run master docker exec -it daa_service1 /service1
