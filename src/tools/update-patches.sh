#!/bin/sh

for filename in container-artefacts/issuebot container-artefacts/i2pjump container-artefacts/docker-atlassian-stash container-artefacts/mybackup container-artefacts/freqtrade container-artefacts/redmine container-artefacts/passbolt_docker
do
	cd "${filename}"
	git diff >"../../src/patches/$(basename "${filename}").patch"
	cd ../..
done
