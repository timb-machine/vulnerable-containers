#!/bin/sh

cd issuebot && docker build -t issuebot:twadhwab . && cd ..
cd mybackup && docker compose build && cd ..
cd i2pjump && docker build -t i2pjump:twadhwab . && cd ..
cd docker-atlassian-stash && docker build -t docker-atlassian-stash:twadhwab . && cd ..
cd freqtrade && docker build -t freqtrade:twadhwab . && cd ..
cd redmine/5.0 && docker build -t redmine_5.0:twadhwab . && cd ../..
cd passbolt_docker && docker build -t passbolt_docker_dev:twadhwab -f dev/Dockerfile . && cd ..
