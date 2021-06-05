#!/bin/bash

APTLY_MIRROR_CREATE='aptly mirror create'
APTLY_MIRROR_UPDATE='aptly mirror update'
APTLY_SNAPSHOT_CREATE='aptly snapshot create'
APTLY_SNAPSHOT_SUFFIX='latest'
APTLY_PUBLISH_SNAPSHOT='aptly publish snapshot'

ARCHIVE_UBUNTU_COM='http://archive.ubuntu.com/ubuntu/'
DOWNLOAD_CEPH_PACIFIC='https://download.ceph.com/debian-pacific/'
DOWNLOAD_CEPH_NAUTILUS='https://download.ceph.com/debian-nautilus/'
DOWNLOAD_CEPH_LUMINOUS='https://download.ceph.com/debian-luminous/'
DOWNLOAD_CEPH_JEWEL='https://download.ceph.com/debian-jewel/'
UBUNTU_CLOUD_ARCHIVE='http://ubuntu-cloud.archive.canonical.com/ubuntu/'

UBUNTU_FOCAL_MAIN='ubuntu/focal/main'
UBUNTU_FOCAL_UPDATES='ubuntu/focal/updates'
UBUNTU_FOCAL_SECURITY='ubuntu/focal/security'
UBUNTU_FOCAL_BACKPORTS='ubuntu/focal/backports'
UBUNTU_BIONIC_MAIN='ubuntu/bionic/main'
UBUNTU_BIONIC_UPDATES='ubuntu/bionic/updates'
UBUNTU_BIONIC_SECURITY='ubuntu/bionic/security'
UBUNTU_BIONIC_BACKPORTS='ubuntu/bionic/backports'
UBUNTU_XENIAL_MAIN='ubuntu/xenial/main'
UBUNTU_XENIAL_UPDATES='ubuntu/xenial/updates'
UBUNTU_XENIAL_SECURITY='ubuntu/xenial/security'
UBUNTU_XENIAL_BACKPORTS='ubuntu/xenial/backports'

CEPH_PACIFIC_FOCAL='ceph/pacific/focal'
CEPH_PACIFIC_BIONIC='ceph/pacific/bionic'
CEPH_PACIFIC_XENIAL='ceph/pacific/xenial'
CEPH_NAUTILUS_FOCAL='ceph/nautilus/focal'
CEPH_NAUTILUS_BIONIC='ceph/nautilus/bionic'
CEPH_NAUTILUS_XENIAL='ceph/nautilus/xenial'
CEPH_LUMINOUS_BIONIC='ceph/luminous/bionic'
CEPH_LUMINOUS_XENIAL='ceph/luminous/xenial'
CEPH_JEWEL_BIONIC='ceph/jewel/bionic'
CEPH_JEWEL_XENIAL='ceph/jewel/xenial'

OPENSTACK_OCATA_XENIAL='openstack/ocata/xenial'
OPENSTACK_PIKE_XENIAL='openstack/pike/xenial'
OPENSTACK_QUEENS_XENIAL='openstack/queens/xenial'
OPENSTACK_ROCKY_BIONIC='openstack/rocky/bionic'
OPENSTACK_STEIN_BIONIC='openstack/stein/bionic'
OPENSTACK_TRAIN_BIONIC='openstack/train/bionic'
OPENSTACK_USSURI_BIONIC='openstack/ussuri/bionic'
OPENSTACK_VICTORIA_FOCAL='openstack/victoria/focal'
OPENSTACK_WALLABY_FOCAL='openstack/wallaby/focal'

$APTLY_MIRROR_CREATE $OPENSTACK_WALLABY_FOCAL $UBUNTU_CLOUD_ARCHIVE focal-updates/wallaby main

$APTLY_MIRROR_UPDATE $OPENSTACK_WALLABY_FOCAL

$APTLY_SNAPSHOT_CREATE $OPENSTACK_WALLABY_FOCAL/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_WALLABY_FOCAL

$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_WALLABY_FOCAL/$APTLY_SNAPSHOT_SUFFIX openstack

wget -r -np -nH --cut-dirs=5 -P {{ vault_repo_workdir }}/public/upgrade/focal/ -R index.html* $ARCHIVE_UBUNTU_COM/dists/focal-updates/main/dist-upgrader-all/
wget -r -np -nH --cut-dirs=5 -P {{ vault_repo_workdir }}/public/upgrade/bionic/ -R index.html* $ARCHIVE_UBUNTU_COM/dists/bionic-updates/main/dist-upgrader-all/
wget -r -np -nH --cut-dirs=5 -P {{ vault_repo_workdir }}/public/upgrade/xenial/ -R index.html* $ARCHIVE_UBUNTU_COM/dists/xenial-updates/main/dist-upgrader-all/
