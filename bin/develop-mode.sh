#!/bin/sh

# Run docker compose configuration for local development
XDEBUG_MODE=${XDEBUG_MODE:-off} docker compose -f docker-compose.yaml \
                -f docker-compose.dev.yaml \
                --env-file .env.local \
                up "$@"
