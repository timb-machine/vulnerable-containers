#!/bin/sh

cd container-artefacts/issuebot && git reset --hard HEAD && git apply ../../src/patches/issuebot.patch && docker build -t issuebot:twadhwab . && cd ../..
cd container-artefacts/i2pjump && git reset --hard HEAD && git apply ../../src/patches/i2pjump.patch && docker build -t i2pjump:twadhwab . && cd ../..
cd container-artefacts/docker-atlassian-stash && git reset --hard HEAD && git apply ../../src/patches/docker-atlassian-stash.patch && docker build -t docker-atlassian-stash:twadhwab . && cd ../..
cd container-artefacts/mybackup && git reset --hard HEAD && git apply  ../../src/patches/mybackup.patch && docker compose build && cd ../..
cd container-artefacts/freqtrade && git reset --hard HEAD && git apply ../../src/patches/freqtrade.patch && docker build -t freqtrade:twadhwab . && cd ../..
cd container-artefacts/redmine/5.0 && git reset --hard HEAD && docker build -t redmine_5.0:twadhwab . && cd ../../..
cd container-artefacts/passbolt_docker && git reset --hard HEAD && git apply ../../src/patches/passbolt_docker.patch && docker build -t passbolt_docker_dev:twadhwab -f dev/Dockerfile . && cd ../..
