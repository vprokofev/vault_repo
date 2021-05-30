#!/bin/bash

APTLY_MIRROR_CREATE='aptly mirror create'
APTLY_MIRROR_UPDATE='aptly mirror update'
APTLY_SNAPSHOT_CREATE='aptly snapshot create'
APTLY_SNAPSHOT_SUFFIX='latest'
APTLY_PUBLISH_SNAPSHOT='aptly publish snapshot'

ARCHIVE_UBUNTU_COM='http://au.archive.ubuntu.com/ubuntu/'
DOWNLOAD_CEPH_PACIFIC='https://au.ceph.com/debian-pacific/'
DOWNLOAD_CEPH_NAUTILUS='https://au.ceph.com/debian-nautilus/'
DOWNLOAD_CEPH_LUMINOUS='https://au.ceph.com/debian-luminous/'
DOWNLOAD_CEPH_JEWEL='https://au.ceph.com/debian-jewel/'
UBUNTU_CLOUD_ARCHIVE='http://ubuntu-cloud.au.archive.canonical.com/'

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

$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_MAIN $ARCHIVE_UBUNTU_COM focal main restricted universe multiverse
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_UPDATES $ARCHIVE_UBUNTU_COM focal-updates main restricted universe multiverse
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_SECURITY $ARCHIVE_UBUNTU_COM focal-security main restricted universe multiverse
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_BACKPORTS $ARCHIVE_UBUNTU_COM focal-backports main restricted universe multiverse
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_MAIN $ARCHIVE_UBUNTU_COM bionic main restricted universe multiverse
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_UPDATES $ARCHIVE_UBUNTU_COM bionic-updates main restricted universe multiverse
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_SECURITY $ARCHIVE_UBUNTU_COM bionic-security main restricted universe multiverse
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_BACKPORTS $ARCHIVE_UBUNTU_COM bionic-backports main restricted universe multiverse
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_MAIN $ARCHIVE_UBUNTU_COM xenial main restricted universe multiverse
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_UPDATES $ARCHIVE_UBUNTU_COM xenial-updates main restricted universe multiverse
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_SECURITY $ARCHIVE_UBUNTU_COM xenial-security main restricted universe multiverse
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_BACKPORTS $ARCHIVE_UBUNTU_COM xenial-backports main restricted universe multiverse
$APTLY_MIRROR_CREATE $CEPH_PACIFIC_FOCAL $DOWNLOAD_CEPH_PACIFIC focal main
$APTLY_MIRROR_CREATE $CEPH_PACIFIC_BIONIC $DOWNLOAD_CEPH_PACIFIC bionic main
$APTLY_MIRROR_CREATE $CEPH_PACIFIC_XENIAL $DOWNLOAD_CEPH_PACIFIC xenial main
$APTLY_MIRROR_CREATE $CEPH_NAUTILUS_FOCAL $DOWNLOAD_CEPH_NAUTILUS focal main
$APTLY_MIRROR_CREATE $CEPH_NAUTILUS_BIONIC $DOWNLOAD_CEPH_NAUTILUS bionic main
$APTLY_MIRROR_CREATE $CEPH_NAUTILUS_XENIAL $DOWNLOAD_CEPH_NAUTILUS xenial main
$APTLY_MIRROR_CREATE $CEPH_LUMINOUS_BIONIC $DOWNLOAD_CEPH_LUMINOUS bionic main
$APTLY_MIRROR_CREATE $CEPH_LUMINOUS_XENIAL $DOWNLOAD_CEPH_LUMINOUS xenial main
$APTLY_MIRROR_CREATE $CEPH_JEWEL_BIONIC $DOWNLOAD_CEPH_JEWEL bionic main
$APTLY_MIRROR_CREATE $CEPH_JEWEL_XENIAL $DOWNLOAD_CEPH_JEWEL xenial main
$APTLY_MIRROR_CREATE $OPENSTACK_OCATA_XENIAL $UBUNTU_CLOUD_ARCHIVE xenial-updates/ocata main
$APTLY_MIRROR_CREATE $OPENSTACK_PIKE_XENIAL $UBUNTU_CLOUD_ARCHIVE xenial-updates/pike main
$APTLY_MIRROR_CREATE $OPENSTACK_QUEENS_XENIAL $UBUNTU_CLOUD_ARCHIVE xenial-updates/queens main
$APTLY_MIRROR_CREATE $OPENSTACK_ROCKY_BIONIC $UBUNTU_CLOUD_ARCHIVE bionic-updates/rocky main
$APTLY_MIRROR_CREATE $OPENSTACK_STEIN_BIONIC $UBUNTU_CLOUD_ARCHIVE bionic-updates/stein main
$APTLY_MIRROR_CREATE $OPENSTACK_TRAIN_BIONIC $UBUNTU_CLOUD_ARCHIVE bionic-updates/train main
$APTLY_MIRROR_CREATE $OPENSTACK_USSURI_BIONIC $UBUNTU_CLOUD_ARCHIVE bionic-updates/ussuri main
$APTLY_MIRROR_CREATE $OPENSTACK_VICTORIA_FOCAL $UBUNTU_CLOUD_ARCHIVE focal-updates/victoria main
$APTLY_MIRROR_CREATE $OPENSTACK_WALLABY_FOCAL $UBUNTU_CLOUD_ARCHIVE focal-updates/wallaby main

$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_MAIN
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_UPDATES
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_SECURITY
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_BACKPORTS
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_MAIN
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_UPDATES
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_SECURITY
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_BACKPORTS
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_MAIN
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_UPDATES
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_SECURITY
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_BACKPORTS
$APTLY_MIRROR_UPDATE $CEPH_PACIFIC_FOCAL
$APTLY_MIRROR_UPDATE $CEPH_PACIFIC_BIONIC
$APTLY_MIRROR_UPDATE $CEPH_PACIFIC_XENIAL
$APTLY_MIRROR_UPDATE $CEPH_NAUTILUS_FOCAL
$APTLY_MIRROR_UPDATE $CEPH_NAUTILUS_BIONIC
$APTLY_MIRROR_UPDATE $CEPH_NAUTILUS_XENIAL
$APTLY_MIRROR_UPDATE $CEPH_LUMINOUS_BIONIC
$APTLY_MIRROR_UPDATE $CEPH_LUMINOUS_XENIAL
$APTLY_MIRROR_UPDATE $CEPH_JEWEL_BIONIC
$APTLY_MIRROR_UPDATE $CEPH_JEWEL_XENIAL
$APTLY_MIRROR_UPDATE $OPENSTACK_OCATA_XENIAL
$APTLY_MIRROR_UPDATE $OPENSTACK_PIKE_XENIAL
$APTLY_MIRROR_UPDATE $OPENSTACK_QUEENS_XENIAL
$APTLY_MIRROR_UPDATE $OPENSTACK_ROCKY_BIONIC
$APTLY_MIRROR_UPDATE $OPENSTACK_STEIN_BIONIC
$APTLY_MIRROR_UPDATE $OPENSTACK_TRAIN_BIONIC
$APTLY_MIRROR_UPDATE $OPENSTACK_USSURI_BIONIC
$APTLY_MIRROR_UPDATE $OPENSTACK_VICTORIA_FOCAL
$APTLY_MIRROR_UPDATE $OPENSTACK_WALLABY_FOCAL

$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_UPDATES/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_UPDATES
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_SECURITY/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_SECURITY
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_BACKPORTS/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_BACKPORTS
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_UPDATES/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_UPDATES
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_SECURITY/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_SECURITY
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_BACKPORTS/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_BACKPORTS
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_UPDATES/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_UPDATES
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_SECURITY/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_SECURITY
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_BACKPORTS/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_BACKPORTS
$APTLY_SNAPSHOT_CREATE $CEPH_PACIFIC_FOCAL/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_PACIFIC_FOCAL
$APTLY_SNAPSHOT_CREATE $CEPH_PACIFIC_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_PACIFIC_BIONIC
$APTLY_SNAPSHOT_CREATE $CEPH_PACIFIC_XENIAL/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_PACIFIC_XENIAL
$APTLY_SNAPSHOT_CREATE $CEPH_NAUTILUS_FOCAL/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_NAUTILUS_FOCAL
$APTLY_SNAPSHOT_CREATE $CEPH_NAUTILUS_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_NAUTILUS_BIONIC
$APTLY_SNAPSHOT_CREATE $CEPH_NAUTILUS_XENIAL/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_NAUTILUS_XENIAL
$APTLY_SNAPSHOT_CREATE $CEPH_LUMINOUS_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_LUMINOUS_BIONIC
$APTLY_SNAPSHOT_CREATE $CEPH_LUMINOUS_XENIAL/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_LUMINOUS_XENIAL
$APTLY_SNAPSHOT_CREATE $CEPH_JEWEL_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_JEWEL_BIONIC
$APTLY_SNAPSHOT_CREATE $CEPH_JEWEL_XENIAL/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_JEWEL_XENIAL
$APTLY_SNAPSHOT_CREATE $OPENSTACK_OCATA_XENIAL/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_OCATA_XENIAL
$APTLY_SNAPSHOT_CREATE $OPENSTACK_PIKE_XENIAL/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_PIKE_XENIAL
$APTLY_SNAPSHOT_CREATE $OPENSTACK_QUEENS_XENIAL/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_QUEENS_XENIAL
$APTLY_SNAPSHOT_CREATE $OPENSTACK_ROCKY_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_ROCKY_BIONIC
$APTLY_SNAPSHOT_CREATE $OPENSTACK_STEIN_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_STEIN_BIONIC
$APTLY_SNAPSHOT_CREATE $OPENSTACK_TRAIN_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_TRAIN_BIONIC
$APTLY_SNAPSHOT_CREATE $OPENSTACK_USSURI_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_USSURI_BIONIC
$APTLY_SNAPSHOT_CREATE $OPENSTACK_VICTORIA_FOCAL/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_VICTORIA_FOCAL
$APTLY_SNAPSHOT_CREATE $OPENSTACK_WALLABY_FOCAL/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_WALLABY_FOCAL

$APTLY_PUBLISH_SNAPSHOT $UBUNTU_FOCAL_MAIN/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_PUBLISH_SNAPSHOT $UBUNTU_FOCAL_UPDATES/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_PUBLISH_SNAPSHOT $UBUNTU_FOCAL_SECURITY/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_PUBLISH_SNAPSHOT $UBUNTU_FOCAL_BACKPORTS/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_PUBLISH_SNAPSHOT $UBUNTU_BIONIC_MAIN/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_PUBLISH_SNAPSHOT $UBUNTU_BIONIC_UPDATES/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_PUBLISH_SNAPSHOT $UBUNTU_BIONIC_SECURITY/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_PUBLISH_SNAPSHOT $UBUNTU_BIONIC_BACKPORTS/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_PUBLISH_SNAPSHOT $UBUNTU_XENIAL_MAIN/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_PUBLISH_SNAPSHOT $UBUNTU_XENIAL_UPDATES/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_PUBLISH_SNAPSHOT $UBUNTU_XENIAL_SECURITY/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_PUBLISH_SNAPSHOT $UBUNTU_XENIAL_BACKPORTS/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_PUBLISH_SNAPSHOT $CEPH_PACIFIC_FOCAL/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_PUBLISH_SNAPSHOT $CEPH_PACIFIC_BIONIC/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_PUBLISH_SNAPSHOT $CEPH_PACIFIC_XENIAL/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_PUBLISH_SNAPSHOT $CEPH_NAUTILUS_FOCAL/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_PUBLISH_SNAPSHOT $CEPH_NAUTILUS_BIONIC/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_PUBLISH_SNAPSHOT $CEPH_NAUTILUS_XENIAL/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_PUBLISH_SNAPSHOT $CEPH_LUMINOUS_BIONIC/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_PUBLISH_SNAPSHOT $CEPH_LUMINOUS_XENIAL/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_PUBLISH_SNAPSHOT $CEPH_JEWEL_BIONIC/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_PUBLISH_SNAPSHOT $CEPH_JEWEL_XENIAL/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_OCATA_XENIAL/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_PIKE_XENIAL/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_QUEENS_XENIAL/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_ROCKY_BIONIC/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_STEIN_BIONIC/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_TRAIN_BIONIC/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_USSURI_BIONIC/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_VICTORIA_FOCAL/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_VICTORIA_FOCAL/$APTLY_SNAPSHOT_SUFFIX openstack

wget -r -np -nH --cut-dirs=5 -P {{ aptly_workdir }}/public/upgrade/focal/ -R index.html* $ARCHIVE_UBUNTU_COM/dists/focal-updates/main/dist-upgrader-all/
wget -r -np -nH --cut-dirs=5 -P {{ aptly_workdir }}/public/upgrade/bionic/ -R index.html* $ARCHIVE_UBUNTU_COM/dists/bionic-updates/main/dist-upgrader-all/
wget -r -np -nH --cut-dirs=5 -P {{ aptly_workdir }}/public/upgrade/xenial/ -R index.html* $ARCHIVE_UBUNTU_COM/dists/xenial-updates/main/dist-upgrader-all/
