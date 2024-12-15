#!/bin/bash
docker compose -f docker_compose.yml exec database bash -c "chmod 0775 docker-entrypoint-initdb.d/init-database.sh"
docker compose -f docker_compose.yml exec database bash -c "./docker-entrypoint-initdb.d/init-database.sh"
docker compose -f docker_compose.yml exec database bash -c "chmod 0775 /etc/mysql/conf.d/my.cnf"