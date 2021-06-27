#!/bin/sh

DIR="$(cd "$(dirname $0)" >/dev/null && pwd)"

SERVICE="test-ci"

docker-compose up --build $SERVICE && docker-compose rm -fsv $SERVICE
