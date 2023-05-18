#!/bin/sh

docker run --name=issuebot -td -p 8080:8080 issuebot:twadhwab
docker run --name=i2pjump -td -p 8081:8080 i2pjump:twadhwab
docker run --name=stash -td -p 7990:7990 -p 7999:7999 docker-atlassian-stash:twadhwab
docker run --name=mybackup -td -p 8082:80 mybackup_mybackup25
docker run --name=freqtrade -td freqtrade:twadhwab
docker run --name=redmine -td -p 3000:3000 redmine_5.0:twadhwab
docker run --name=passbolt -td -p 8083:80 -p 8443:443 passbolt_docker_dev:twadhwab
