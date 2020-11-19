#!/bin/bash
# Author: Nathan Duckett
# Script to rebuild the docker containers within the machine (Assumes configuration is already set up and docker is configured)
# User running script must be authenticated within the docker group

# Change to configurations directory for docker-compose files. This should be assumed either running from root folder or scripts.
if [[ $(pwd) =~ scripts ]]; then
	# Change directory or fail exit if can't get to correct location
	cd ../compose || exit 1
else
	# Change directory or fail exit if can't get to correct location
	cd compose || exit 1
fi

for COMPOSE_FILE in *; do
	docker-compose -f "$COMPOSE_FILE" down
	docker-compose -f "$COMPOSE_FILE" up -d
done

# This uses glob expansion for docker-compose files which might trigger shellcheck warnings

# Take down all existing docker containers
#docker-compose -f "./*.docker-compose.yml down

# Bring up all configuration files matching pattern *.docker-compose.yml
#docker-compose -f ./*.docker-compose.yml up -d
