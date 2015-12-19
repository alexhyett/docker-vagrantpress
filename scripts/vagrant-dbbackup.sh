#!/bin/bash
echo "Running vagrant-dbackup.sh"
ID="$(docker ps | grep mysql | awk -F ' ' '{print $1}')"
echo "mysql docker container is $ID"
docker exec -it $ID /scripts/docker-dbbackup.sh
echo "Finished vagrant-dbbackup.sh"
