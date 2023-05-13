#!/bin/sh

for filename in docker-atlassian-stash i2pjump mybackup passbolt_docker freqtrade issuebot redmine
do
	cd "${filename}"
	git diff >"../patches/${filename}.patch"
	cd ..
done
