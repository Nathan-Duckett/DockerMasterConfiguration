# DockerServices

This repo stores the docker-compose configuration for all containers hosted on the home server.

## Usage:

This repo will automatically be deployed using CI/CD on the designated host. To add a new container create a new docker-compose file within the `compose/` folder.
This file should be named in the format `SERVICE.docker-compose.yml` where `SERVICE` is a relevant stack name for the compose file.
Any code pushed should be automatically built and configured on the host.
