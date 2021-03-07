#!/bin/bash

# Generate file locations
mkdir -p ~/.guacamole/db
mkdir config/guacamole_db_init/

# Create init script for guacamole DB
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgres > config/guacamole_db_init/initdb.sql

# Start stack
docker-compose --env-file env/guacamole.env -f compose/guacamole.docker-compose.yml up -d