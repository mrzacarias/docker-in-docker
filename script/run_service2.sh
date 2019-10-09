#!/bin/sh

set -e

cd "$(dirname "$0")/.."

echo "==> Running service2..."
docker-compose run master docker exec -it daa_service2 /service2
