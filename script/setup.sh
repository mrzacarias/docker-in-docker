#!/bin/sh

set -e

cd "$(dirname "$0")/.."

echo "==> Building docker containers and initializing everything..."
docker-compose up --build -d service1
docker-compose up --build -d service2

echo "==> Containers are up and ready to go!"
