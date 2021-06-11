#/bin/bash

# handle command-not-found database
# apt-mirror will not download it
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal-updates/main/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal-updates/main/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal-updates/restricted/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal-updates/restricted/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal-updates/universe/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal-updates/universe/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal-updates/multiverse/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal-updates/multiverse/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal/main/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal/main/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal/restricted/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal/restricted/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal/universe/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal/universe/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal/multiverse/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal/multiverse/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal-security/main/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal-security/main/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal-security/restricted/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal-security/restricted/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal-security/universe/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal-security/universe/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal-security/multiverse/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal-security/multiverse/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal-backports/main/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal-backports/main/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal-backports/restricted/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal-backports/restricted/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal-backports/universe/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal-backports/universe/cnf/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal-backports/multiverse/cnf/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal-backports/multiverse/cnf/

# handle dist-upgrader-all
# apt-mirror will not download it
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/focal-updates/main/dist-upgrader-all/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/focal-updates/main/dist-upgrader-all/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/bionic-updates/main/dist-upgrader-all/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/bionic-updates/main/dist-upgrader-all/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_repo_url }}/ubuntu/dists/xenial-updates/main/dist-upgrader-all/ /var/spool/apt-mirror/mirror/{{ repo_url.ubuntu_repo | urlsplit('hostname') }}/ubuntu/dists/xenial-updates/main/dist-upgrader-all/
