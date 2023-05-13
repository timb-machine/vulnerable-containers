#!/bin/sh

cd container-artefacts/issuebot && docker build -t issuebot:twadhwab . && cd ../..
cd container-artefacts/mybackup && docker compose build && cd ../..
cd container-artefacts/i2pjump && docker build -t i2pjump:twadhwab . && cd ../..
cd container-artefacts/docker-atlassian-stash && docker build -t docker-atlassian-stash:twadhwab . && cd ../..
cd container-artefacts/freqtrade && docker build -t freqtrade:twadhwab . && cd ../..
cd container-artefacts/redmine/5.0 && docker build -t redmine_5.0:twadhwab . && cd ../../..
cd container-artefacts/passbolt_docker && docker build -t passbolt_docker_dev:twadhwab -f dev/Dockerfile . && cd ../..
