#/bin/bash

rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_ubuntu_repo_url }} {{ repo_workdir }}/deb/ubuntu/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_openstack_repo_url }} {{ repo_workdir }}/deb/openstack/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_ceph_repo_url }}debian-pacific/ {{ repo_workdir }}/deb/ceph/debian-pacific/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_ceph_repo_url }}debian-nautilus/ {{ repo_workdir }}/deb/ceph/debian-nautilus/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_ceph_repo_url }}debian-luminous/ {{ repo_workdir }}/deb/ceph/debian-luminous/
rsync --recursive --links --perms --times --compress --progress --delete {{ rsync_ceph_repo_url }}debian-jewel/ {{ repo_workdir }}/deb/ceph/debian-jewel/
