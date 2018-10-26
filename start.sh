#!/bin/bash
mkdir jenkins-data
# The user in container is jenkins(1000:1000)
chown -R 1000:1000 jenkins-data
docker-compose up -d
while true
do
    if [ -f "./jenkins-data/secrets/initialAdminPassword" ];then
        echo `cat jenkins-data/secrets/initialAdminPassword`
        break
    else
        sleep 5
    fi
done
