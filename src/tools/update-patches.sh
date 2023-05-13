#!/bin/sh

for filename in container-artefacts/docker-atlassian-stash container-artefacts/i2pjump container-artefacts/mybackup container-artefacts/passbolt_docker container-artefacts/freqtrade container-artefacts/issuebot container-artefacts/redmine
do
	cd "${filename}"
	git diff >"../../src/patches/${filename}.patch"
	cd ../..
done
