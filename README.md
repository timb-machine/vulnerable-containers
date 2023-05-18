# vulnerable-containers`

## Usage

* ```src/tools/build.sh```
* ```src/tools/non-interactive.sh```

You can access the containers using the ```docker exec``` containers below. Tools can be copied in using ```docker cp```.

### Recommended tools

* https://github.com/CiscoCXSecurity/nopc
* https://github.com/CiscoCXSecurity/unix_collector
* https://github.com/CiscoCXSecurity/unix-privesc-check - note that there are 2 branches
* https://github.com/CiscoCXSecurity/sudo-parser
* https://github.com/slimm609/checksec.sh
* https://github.com/CiscoCXSecurity/UNIXSocketScanner
* https://gist.github.com/timb-machine/d624b39a6dc0022882479fb2a3c4fe58 - badrpath.sh (Linux version)
* https://github.com/timb-machine/local/blob/develop/scripts/mine/grace.sh

## Manipulated examples

### [issuebot](https://hub.docker.com/r/pecan/issuebot)

(see [/src/patches/issuebot.patch](../master/src/patches/issuebot.patch))

```docker exec -it issuebot /bin/sh```

* PATH
* umask
* API keys
* iptables

### [i2pjump](https://hub.docker.com/r/geti2p/i2pjump)

(see [/src/patches/i2pjump.patch](../master/src/patches/i2pjump.patch))

```docker exec -it i2pjump /bin/bash```

* old Debian release
* calls out to HTTP service

### [stash](https://hub.docker.com/r/atlassian/stash)

(see [/src/patches/docker-atlassian-stash.patch](../master/src/patches/docker-atlassian-stash.patch))

```docker exec -it stash /bin/bash```

* perms
* running user
* data in /tmp
* old Debian release
* readable from log: CREATE USER SA PASSWORD DIGEST 'd41d8cd98f00b204e9800998ecf8427e'
* staff perms on /usr/local
* logs generally
  * tomcat
  * /tmp
* admin, admin2 user
* salt
* admin perms on /opt/atlassian/stash/bin

## Fresh from the docks

### [mybackup](https://hub.docker.com/r/javanile/mybackup)

(see [/src/patches/mybackup.patch](../master/src/patches/mybackup.patch), technically we fixed the apt-get config and source URL so that it would build)

```docker exec -it mybackup /bin/bash```

* old Debian release
* weak config permissions
* port 80
* iptables

### [freqtrade](https://hub.docker.com/r/freqtradeorg/freqtrade)

(see [/src/patches/freqtrade.patch](../master/src/patches/freqtrade.patch), technically we changed the entrypoint)

```docker exec -it freqtrade /bin/bash```

* sudoers
  * root me
* LD_LIBRARY_PATH

### [redmine](https://hub.docker.com/_/redmine)

```docker exec -it redmine /bin/bash```

* web app creds
* perms
* port 3000

### [passbolt](https://hub.docker.com/r/passbolt/passbolt)

(see [/src/patches/passbolt_docker.patch](../master/src/patches/passbolt_docker.patch), technically we changed the entrypoint)

```docker exec -it passbolt /bin/bash```

* perms
  * www-root
* creds
* key material
* config options
