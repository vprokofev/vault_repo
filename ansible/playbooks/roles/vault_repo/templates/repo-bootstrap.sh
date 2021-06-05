#!/bin/bash

APTLY_MIRROR_CREATE='aptly mirror create'
APTLY_MIRROR_UPDATE='aptly mirror update'
APTLY_SNAPSHOT_CREATE='aptly snapshot create'
APTLY_SNAPSHOT_SUFFIX=`date --date= +%Y%m%d`
APTLY_PUBLISH_SNAPSHOT='aptly publish snapshot'

ARCHIVE_UBUNTU_COM='http://au.archive.ubuntu.com/ubuntu/'
ESM_UBUNTU_COM='https://esm.ubuntu.com/infra/ubuntu/'
DOWNLOAD_CEPH_PACIFIC='https://au.ceph.com/debian-pacific/'
DOWNLOAD_CEPH_NAUTILUS='https://au.ceph.com/debian-nautilus/'
DOWNLOAD_CEPH_LUMINOUS='https://au.ceph.com/debian-luminous/'
DOWNLOAD_CEPH_JEWEL='https://au.ceph.com/debian-jewel/'
UBUNTU_CLOUD_ARCHIVE='http://ubuntu-cloud.archive.canonical.com/ubuntu/'

UBUNTU_FOCAL_MAIN='ubuntu/focal/main'
UBUNTU_FOCAL_RESTRICTED='ubuntu/focal/restricted'
UBUNTU_FOCAL_UNIVERSE='ubuntu/focal/universe'
UBUNTU_FOCAL_MULTIVERSE='ubuntu/focal/multiverse'
UBUNTU_FOCAL_UPDATES_MAIN='ubuntu/focal-updates/main'
UBUNTU_FOCAL_UPDATES_RESTRICTED='ubuntu/focal-updates/restricted'
UBUNTU_FOCAL_UPDATES_UNIVERSE='ubuntu/focal-updates/universe'
UBUNTU_FOCAL_UPDATES_MULTIVERSE='ubuntu/focal-updates/multiverse'
UBUNTU_FOCAL_SECURITY_MAIN='ubuntu/focal-security/main'
UBUNTU_FOCAL_SECURITY_RESTRICTED='ubuntu/focal-security/restricted'
UBUNTU_FOCAL_SECURITY_UNIVERSE='ubuntu/focal-security/universe'
UBUNTU_FOCAL_SECURITY_MULTIVERSE='ubuntu/focal-security/multiverse'
UBUNTU_FOCAL_BACKPORTS_MAIN='ubuntu/focal-backports/main'
UBUNTU_FOCAL_BACKPORTS_RESTRICTED='ubuntu/focal-backports/restricted'
UBUNTU_FOCAL_BACKPORTS_UNIVERSE='ubuntu/focal-backports/universe'
UBUNTU_FOCAL_BACKPORTS_MULTIVERSE='ubuntu/focal-backports/multiverse'
UBUNTU_BIONIC_MAIN='ubuntu/bionic/main'
UBUNTU_BIONIC_RESTRICTED='ubuntu/bionic/restricted'
UBUNTU_BIONIC_UNIVERSE='ubuntu/bionic/universe'
UBUNTU_BIONIC_MULTIVERSE='ubuntu/bionic/multiverse'
UBUNTU_BIONIC_UPDATES_MAIN='ubuntu/bionic-updates/main'
UBUNTU_BIONIC_UPDATES_RESTRICTED='ubuntu/bionic-updates/restricted'
UBUNTU_BIONIC_UPDATES_UNIVERSE='ubuntu/bionic-updates/universe'
UBUNTU_BIONIC_UPDATES_MULTIVERSE='ubuntu/bionic-updates/multiverse'
UBUNTU_BIONIC_SECURITY_MAIN='ubuntu/bionic-security/main'
UBUNTU_BIONIC_SECURITY_RESTRICTED='ubuntu/bionic-security/restricted'
UBUNTU_BIONIC_SECURITY_UNIVERSE='ubuntu/bionic-security/universe'
UBUNTU_BIONIC_SECURITY_MULTIVERSE='ubuntu/bionic-security/multiverse'
UBUNTU_BIONIC_BACKPORTS_MAIN='ubuntu/bionic-backports/main'
UBUNTU_BIONIC_BACKPORTS_RESTRICTED='ubuntu/bionic-backports/restricted'
UBUNTU_BIONIC_BACKPORTS_UNIVERSE='ubuntu/bionic-backports/universe'
UBUNTU_BIONIC_BACKPORTS_MULTIVERSE='ubuntu/bionic-backports/multiverse'
UBUNTU_XENIAL_MAIN='ubuntu/xenial/main'
UBUNTU_XENIAL_RESTRICTED='ubuntu/xenial/restricted'
UBUNTU_XENIAL_UNIVERSE='ubuntu/xenial/universe'
UBUNTU_XENIAL_MULTIVERSE='ubuntu/xenial/multiverse'
UBUNTU_XENIAL_UPDATES_MAIN='ubuntu/xenial-updates/main'
UBUNTU_XENIAL_UPDATES_RESTRICTED='ubuntu/xenial-updates/restricted'
UBUNTU_XENIAL_UPDATES_UNIVERSE='ubuntu/xenial-updates/universe'
UBUNTU_XENIAL_UPDATES_MULTIVERSE='ubuntu/xenial-updates/multiverse'
UBUNTU_XENIAL_SECURITY_MAIN='ubuntu/xenial-security/main'
UBUNTU_XENIAL_SECURITY_RESTRICTED='ubuntu/xenial-security/restricted'
UBUNTU_XENIAL_SECURITY_UNIVERSE='ubuntu/xenial-security/universe'
UBUNTU_XENIAL_SECURITY_MULTIVERSE='ubuntu/xenial-security/multiverse'
UBUNTU_XENIAL_BACKPORTS_MAIN='ubuntu/xenial-backports/main'
UBUNTU_XENIAL_BACKPORTS_RESTRICTED='ubuntu/xenial-backports/restricted'
UBUNTU_XENIAL_BACKPORTS_UNIVERSE='ubuntu/xenial-backports/universe'
UBUNTU_XENIAL_BACKPORTS_MULTIVERSE='ubuntu/xenial-backports/multiverse'

UBUNTU_FOCAL_INFRA_SECURITY='ubuntu/focal-infra-security/main'
UBUNTU_FOCAL_INFRA_UPDATES='ubuntu/focal-infra-updates/main'
UBUNTU_BIONIC_INFRA_SECURITY='ubuntu/bionic-infra-security/main'
UBUNTU_BIONIC_INFRA_UPDATES='ubuntu/bionic-infra-updates/main'
UBUNTU_XENIAL_INFRA_SECURITY='ubuntu/xenial-infra-security/main'
UBUNTU_XENIAL_INFRA_UPDATES='ubuntu/xenial-infra-updates/main'

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

$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_MAIN $ARCHIVE_UBUNTU_COM focal main
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_MAIN
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_RESTRICTED $ARCHIVE_UBUNTU_COM focal restricted
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_RESTRICTED
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_RESTRICTED
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_UNIVERSE $ARCHIVE_UBUNTU_COM focal universe
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_UNIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_UNIVERSE
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_MULTIVERSE $ARCHIVE_UBUNTU_COM focal multiverse
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_MULTIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_MULTIVERSE
$APTLY_PUBLISH_SNAPSHOT -component=,,, $UBUNTU_FOCAL_MAIN/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_FOCAL_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_FOCAL_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_FOCAL_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_UPDATES_MAIN $ARCHIVE_UBUNTU_COM focal-updates main
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_UPDATES_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_UPDATES_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_UPDATES_MAIN
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_UPDATES_RESTRICTED $ARCHIVE_UBUNTU_COM focal-updates restricted
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_UPDATES_RESTRICTED
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_UPDATES_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_UPDATES_RESTRICTED
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_UPDATES_UNIVERSE $ARCHIVE_UBUNTU_COM focal-updates universe
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_UPDATES_UNIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_UPDATES_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_UPDATES_UNIVERSE
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_UPDATES_MULTIVERSE $ARCHIVE_UBUNTU_COM focal-updates multiverse
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_UPDATES_MULTIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_UPDATES_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_UPDATES_MULTIVERSE
$APTLY_PUBLISH_SNAPSHOT -component=,,, $UBUNTU_FOCAL_UPDATES_MAIN/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_FOCAL_UPDATES_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_FOCAL_UPDATES_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_FOCAL_UPDATES_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_BACKPORTS_MAIN $ARCHIVE_UBUNTU_COM focal-backports main
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_BACKPORTS_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_BACKPORTS_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_BACKPORTS_MAIN
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_BACKPORTS_RESTRICTED $ARCHIVE_UBUNTU_COM focal-backports restricted
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_BACKPORTS_RESTRICTED
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_BACKPORTS_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_BACKPORTS_RESTRICTED
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_BACKPORTS_UNIVERSE $ARCHIVE_UBUNTU_COM focal-backports universe
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_BACKPORTS_UNIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_BACKPORTS_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_BACKPORTS_UNIVERSE
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_BACKPORTS_MULTIVERSE $ARCHIVE_UBUNTU_COM focal-backports multiverse
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_BACKPORTS_MULTIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_BACKPORTS_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_BACKPORTS_MULTIVERSE
$APTLY_PUBLISH_SNAPSHOT -component=,,, $UBUNTU_FOCAL_BACKPORTS_MAIN/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_FOCAL_BACKPORTS_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_FOCAL_BACKPORTS_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_FOCAL_BACKPORTS_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_SECURITY_MAIN $ARCHIVE_UBUNTU_COM focal-security main
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_SECURITY_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_SECURITY_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_SECURITY_MAIN
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_SECURITY_RESTRICTED $ARCHIVE_UBUNTU_COM focal-security restricted
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_SECURITY_RESTRICTED
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_SECURITY_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_SECURITY_RESTRICTED
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_SECURITY_UNIVERSE $ARCHIVE_UBUNTU_COM focal-security universe
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_SECURITY_UNIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_SECURITY_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_SECURITY_UNIVERSE
$APTLY_MIRROR_CREATE $UBUNTU_FOCAL_SECURITY_MULTIVERSE $ARCHIVE_UBUNTU_COM focal-security multiverse
$APTLY_MIRROR_UPDATE $UBUNTU_FOCAL_SECURITY_MULTIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_FOCAL_SECURITY_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_FOCAL_SECURITY_MULTIVERSE
$APTLY_PUBLISH_SNAPSHOT -component=,,, $UBUNTU_FOCAL_SECURITY_MAIN/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_FOCAL_SECURITY_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_FOCAL_SECURITY_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_FOCAL_SECURITY_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_MAIN $ARCHIVE_UBUNTU_COM bionic main
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_MAIN
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_RESTRICTED $ARCHIVE_UBUNTU_COM bionic restricted
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_RESTRICTED
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_RESTRICTED
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_UNIVERSE $ARCHIVE_UBUNTU_COM bionic universe
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_UNIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_UNIVERSE
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_MULTIVERSE $ARCHIVE_UBUNTU_COM bionic multiverse
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_MULTIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_MULTIVERSE
$APTLY_PUBLISH_SNAPSHOT -component=,,, $UBUNTU_BIONIC_MAIN/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_BIONIC_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_BIONIC_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_BIONIC_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_UPDATES_MAIN $ARCHIVE_UBUNTU_COM bionic-updates main
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_UPDATES_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_UPDATES_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_UPDATES_MAIN
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_UPDATES_RESTRICTED $ARCHIVE_UBUNTU_COM bionic-updates restricted
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_UPDATES_RESTRICTED
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_UPDATES_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_UPDATES_RESTRICTED
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_UPDATES_UNIVERSE $ARCHIVE_UBUNTU_COM bionic-updates universe
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_UPDATES_UNIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_UPDATES_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_UPDATES_UNIVERSE
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_UPDATES_MULTIVERSE $ARCHIVE_UBUNTU_COM bionic-updates multiverse
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_UPDATES_MULTIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_UPDATES_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_UPDATES_MULTIVERSE
$APTLY_PUBLISH_SNAPSHOT -component=,,, $UBUNTU_BIONIC_UPDATES_MAIN/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_BIONIC_UPDATES_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_BIONIC_UPDATES_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_BIONIC_UPDATES_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_BACKPORTS_MAIN $ARCHIVE_UBUNTU_COM bionic-backports main
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_BACKPORTS_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_BACKPORTS_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_BACKPORTS_MAIN
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_BACKPORTS_RESTRICTED $ARCHIVE_UBUNTU_COM bionic-backports restricted
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_BACKPORTS_RESTRICTED
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_BACKPORTS_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_BACKPORTS_RESTRICTED
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_BACKPORTS_UNIVERSE $ARCHIVE_UBUNTU_COM bionic-backports universe
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_BACKPORTS_UNIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_BACKPORTS_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_BACKPORTS_UNIVERSE
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_BACKPORTS_MULTIVERSE $ARCHIVE_UBUNTU_COM bionic-backports multiverse
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_BACKPORTS_MULTIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_BACKPORTS_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_BACKPORTS_MULTIVERSE
$APTLY_PUBLISH_SNAPSHOT -component=,,, $UBUNTU_BIONIC_BACKPORTS_MAIN/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_BIONIC_BACKPORTS_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_BIONIC_BACKPORTS_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_BIONIC_BACKPORTS_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_SECURITY_MAIN $ARCHIVE_UBUNTU_COM bionic-security main
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_SECURITY_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_SECURITY_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_SECURITY_MAIN
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_SECURITY_RESTRICTED $ARCHIVE_UBUNTU_COM bionic-security restricted
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_SECURITY_RESTRICTED
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_SECURITY_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_SECURITY_RESTRICTED
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_SECURITY_UNIVERSE $ARCHIVE_UBUNTU_COM bionic-security universe
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_SECURITY_UNIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_SECURITY_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_SECURITY_UNIVERSE
$APTLY_MIRROR_CREATE $UBUNTU_BIONIC_SECURITY_MULTIVERSE $ARCHIVE_UBUNTU_COM bionic-security multiverse
$APTLY_MIRROR_UPDATE $UBUNTU_BIONIC_SECURITY_MULTIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_BIONIC_SECURITY_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_BIONIC_SECURITY_MULTIVERSE
$APTLY_PUBLISH_SNAPSHOT -component=,,, $UBUNTU_BIONIC_SECURITY_MAIN/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_BIONIC_SECURITY_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_BIONIC_SECURITY_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_BIONIC_SECURITY_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_MAIN $ARCHIVE_UBUNTU_COM xenial main
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_MAIN
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_RESTRICTED $ARCHIVE_UBUNTU_COM xenial restricted
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_RESTRICTED
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_RESTRICTED
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_UNIVERSE $ARCHIVE_UBUNTU_COM xenial universe
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_UNIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_UNIVERSE
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_MULTIVERSE $ARCHIVE_UBUNTU_COM xenial multiverse
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_MULTIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_MULTIVERSE
$APTLY_PUBLISH_SNAPSHOT -component=,,, $UBUNTU_XENIAL_MAIN/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_XENIAL_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_XENIAL_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_XENIAL_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_UPDATES_MAIN $ARCHIVE_UBUNTU_COM xenial-updates main
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_UPDATES_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_UPDATES_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_UPDATES_MAIN
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_UPDATES_RESTRICTED $ARCHIVE_UBUNTU_COM xenial-updates restricted
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_UPDATES_RESTRICTED
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_UPDATES_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_UPDATES_RESTRICTED
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_UPDATES_UNIVERSE $ARCHIVE_UBUNTU_COM xenial-updates universe
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_UPDATES_UNIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_UPDATES_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_UPDATES_UNIVERSE
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_UPDATES_MULTIVERSE $ARCHIVE_UBUNTU_COM xenial-updates multiverse
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_UPDATES_MULTIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_UPDATES_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_UPDATES_MULTIVERSE
$APTLY_PUBLISH_SNAPSHOT -component=,,, $UBUNTU_XENIAL_UPDATES_MAIN/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_XENIAL_UPDATES_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_XENIAL_UPDATES_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_XENIAL_UPDATES_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_BACKPORTS_MAIN $ARCHIVE_UBUNTU_COM xenial-backports main
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_BACKPORTS_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_BACKPORTS_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_BACKPORTS_MAIN
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_BACKPORTS_RESTRICTED $ARCHIVE_UBUNTU_COM xenial-backports restricted
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_BACKPORTS_RESTRICTED
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_BACKPORTS_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_BACKPORTS_RESTRICTED
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_BACKPORTS_UNIVERSE $ARCHIVE_UBUNTU_COM xenial-backports universe
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_BACKPORTS_UNIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_BACKPORTS_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_BACKPORTS_UNIVERSE
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_BACKPORTS_MULTIVERSE $ARCHIVE_UBUNTU_COM xenial-backports multiverse
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_BACKPORTS_MULTIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_BACKPORTS_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_BACKPORTS_MULTIVERSE
$APTLY_PUBLISH_SNAPSHOT -component=,,, $UBUNTU_XENIAL_BACKPORTS_MAIN/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_XENIAL_BACKPORTS_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_XENIAL_BACKPORTS_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_XENIAL_BACKPORTS_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX ubuntu
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_SECURITY_MAIN $ARCHIVE_UBUNTU_COM xenial-security main
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_SECURITY_MAIN
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_SECURITY_MAIN/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_SECURITY_MAIN
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_SECURITY_RESTRICTED $ARCHIVE_UBUNTU_COM xenial-security restricted
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_SECURITY_RESTRICTED
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_SECURITY_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_SECURITY_RESTRICTED
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_SECURITY_UNIVERSE $ARCHIVE_UBUNTU_COM xenial-security universe
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_SECURITY_UNIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_SECURITY_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_SECURITY_UNIVERSE
$APTLY_MIRROR_CREATE $UBUNTU_XENIAL_SECURITY_MULTIVERSE $ARCHIVE_UBUNTU_COM xenial-security multiverse
$APTLY_MIRROR_UPDATE $UBUNTU_XENIAL_SECURITY_MULTIVERSE
$APTLY_SNAPSHOT_CREATE $UBUNTU_XENIAL_SECURITY_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX from mirror $UBUNTU_XENIAL_SECURITY_MULTIVERSE
$APTLY_PUBLISH_SNAPSHOT -component=,,, $UBUNTU_XENIAL_SECURITY_MAIN/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_XENIAL_SECURITY_RESTRICTED/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_XENIAL_SECURITY_UNIVERSE/$APTLY_SNAPSHOT_SUFFIX $UBUNTU_XENIAL_SECURITY_MULTIVERSE/$APTLY_SNAPSHOT_SUFFIX ubuntu

$APTLY_MIRROR_CREATE $CEPH_PACIFIC_FOCAL $DOWNLOAD_CEPH_PACIFIC focal main
$APTLY_MIRROR_UPDATE $CEPH_PACIFIC_FOCAL
$APTLY_SNAPSHOT_CREATE $CEPH_PACIFIC_FOCAL/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_PACIFIC_FOCAL
$APTLY_PUBLISH_SNAPSHOT $CEPH_PACIFIC_FOCAL/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_MIRROR_CREATE $CEPH_PACIFIC_BIONIC $DOWNLOAD_CEPH_PACIFIC bionic main
$APTLY_MIRROR_UPDATE $CEPH_PACIFIC_BIONIC
$APTLY_SNAPSHOT_CREATE $CEPH_PACIFIC_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_PACIFIC_BIONIC
$APTLY_PUBLISH_SNAPSHOT $CEPH_PACIFIC_BIONIC/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_MIRROR_CREATE $CEPH_PACIFIC_XENIAL $DOWNLOAD_CEPH_PACIFIC xenial main
$APTLY_MIRROR_UPDATE $CEPH_PACIFIC_XENIAL
$APTLY_SNAPSHOT_CREATE $CEPH_PACIFIC_XENIAL/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_PACIFIC_XENIAL
$APTLY_PUBLISH_SNAPSHOT $CEPH_PACIFIC_XENIAL/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_MIRROR_CREATE $CEPH_NAUTILUS_FOCAL $DOWNLOAD_CEPH_NAUTILUS focal main
$APTLY_MIRROR_UPDATE $CEPH_NAUTILUS_FOCAL
$APTLY_SNAPSHOT_CREATE $CEPH_NAUTILUS_FOCAL/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_NAUTILUS_FOCAL
$APTLY_PUBLISH_SNAPSHOT $CEPH_NAUTILUS_FOCAL/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_MIRROR_CREATE $CEPH_NAUTILUS_BIONIC $DOWNLOAD_CEPH_NAUTILUS bionic main
$APTLY_MIRROR_UPDATE $CEPH_NAUTILUS_BIONIC
$APTLY_SNAPSHOT_CREATE $CEPH_NAUTILUS_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_NAUTILUS_BIONIC
$APTLY_PUBLISH_SNAPSHOT $CEPH_NAUTILUS_BIONIC/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_MIRROR_CREATE $CEPH_NAUTILUS_XENIAL $DOWNLOAD_CEPH_NAUTILUS xenial main
$APTLY_MIRROR_UPDATE $CEPH_NAUTILUS_XENIAL
$APTLY_SNAPSHOT_CREATE $CEPH_NAUTILUS_XENIAL/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_NAUTILUS_XENIAL
$APTLY_PUBLISH_SNAPSHOT $CEPH_NAUTILUS_XENIAL/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_MIRROR_CREATE $CEPH_LUMINOUS_BIONIC $DOWNLOAD_CEPH_LUMINOUS bionic main
$APTLY_MIRROR_UPDATE $CEPH_LUMINOUS_BIONIC
$APTLY_SNAPSHOT_CREATE $CEPH_LUMINOUS_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_LUMINOUS_BIONIC
$APTLY_PUBLISH_SNAPSHOT $CEPH_LUMINOUS_BIONIC/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_MIRROR_CREATE $CEPH_LUMINOUS_XENIAL $DOWNLOAD_CEPH_LUMINOUS xenial main
$APTLY_MIRROR_UPDATE $CEPH_LUMINOUS_XENIAL
$APTLY_SNAPSHOT_CREATE $CEPH_LUMINOUS_XENIAL/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_LUMINOUS_XENIAL
$APTLY_PUBLISH_SNAPSHOT $CEPH_LUMINOUS_XENIAL/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_MIRROR_CREATE $CEPH_JEWEL_BIONIC $DOWNLOAD_CEPH_JEWEL bionic main
$APTLY_MIRROR_UPDATE $CEPH_JEWEL_BIONIC
$APTLY_SNAPSHOT_CREATE $CEPH_JEWEL_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_JEWEL_BIONIC
$APTLY_PUBLISH_SNAPSHOT $CEPH_JEWEL_BIONIC/$APTLY_SNAPSHOT_SUFFIX ceph
$APTLY_MIRROR_CREATE $CEPH_JEWEL_XENIAL $DOWNLOAD_CEPH_JEWEL xenial main
$APTLY_MIRROR_UPDATE $CEPH_JEWEL_XENIAL
$APTLY_SNAPSHOT_CREATE $CEPH_JEWEL_XENIAL/$APTLY_SNAPSHOT_SUFFIX from mirror $CEPH_JEWEL_XENIAL
$APTLY_PUBLISH_SNAPSHOT $CEPH_JEWEL_XENIAL/$APTLY_SNAPSHOT_SUFFIX ceph

$APTLY_MIRROR_CREATE $OPENSTACK_OCATA_XENIAL $UBUNTU_CLOUD_ARCHIVE xenial-updates/ocata main
$APTLY_MIRROR_UPDATE $OPENSTACK_OCATA_XENIAL
$APTLY_SNAPSHOT_CREATE $OPENSTACK_OCATA_XENIAL/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_OCATA_XENIAL
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_OCATA_XENIAL/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_MIRROR_CREATE $OPENSTACK_PIKE_XENIAL $UBUNTU_CLOUD_ARCHIVE xenial-updates/pike main
$APTLY_MIRROR_UPDATE $OPENSTACK_PIKE_XENIAL
$APTLY_SNAPSHOT_CREATE $OPENSTACK_PIKE_XENIAL/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_PIKE_XENIAL
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_PIKE_XENIAL/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_MIRROR_CREATE $OPENSTACK_QUEENS_XENIAL $UBUNTU_CLOUD_ARCHIVE xenial-updates/queens main
$APTLY_MIRROR_UPDATE $OPENSTACK_QUEENS_XENIAL
$APTLY_SNAPSHOT_CREATE $OPENSTACK_QUEENS_XENIAL/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_QUEENS_XENIAL
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_QUEENS_XENIAL/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_MIRROR_CREATE $OPENSTACK_ROCKY_BIONIC $UBUNTU_CLOUD_ARCHIVE bionic-updates/rocky main
$APTLY_MIRROR_UPDATE $OPENSTACK_ROCKY_BIONIC
$APTLY_SNAPSHOT_CREATE $OPENSTACK_ROCKY_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_ROCKY_BIONIC
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_ROCKY_BIONIC/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_MIRROR_CREATE $OPENSTACK_STEIN_BIONIC $UBUNTU_CLOUD_ARCHIVE bionic-updates/stein main
$APTLY_MIRROR_UPDATE $OPENSTACK_STEIN_BIONIC
$APTLY_SNAPSHOT_CREATE $OPENSTACK_STEIN_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_STEIN_BIONIC
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_STEIN_BIONIC/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_MIRROR_CREATE $OPENSTACK_TRAIN_BIONIC $UBUNTU_CLOUD_ARCHIVE bionic-updates/train main
$APTLY_MIRROR_UPDATE $OPENSTACK_TRAIN_BIONIC
$APTLY_SNAPSHOT_CREATE $OPENSTACK_TRAIN_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_TRAIN_BIONIC
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_TRAIN_BIONIC/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_MIRROR_CREATE $OPENSTACK_USSURI_BIONIC $UBUNTU_CLOUD_ARCHIVE bionic-updates/ussuri main
$APTLY_MIRROR_UPDATE $OPENSTACK_USSURI_BIONIC
$APTLY_SNAPSHOT_CREATE $OPENSTACK_USSURI_BIONIC/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_USSURI_BIONIC
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_USSURI_BIONIC/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_MIRROR_CREATE $OPENSTACK_VICTORIA_FOCAL $UBUNTU_CLOUD_ARCHIVE focal-updates/victoria main
$APTLY_MIRROR_UPDATE $OPENSTACK_VICTORIA_FOCAL
$APTLY_SNAPSHOT_CREATE $OPENSTACK_VICTORIA_FOCAL/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_VICTORIA_FOCAL
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_VICTORIA_FOCAL/$APTLY_SNAPSHOT_SUFFIX openstack
$APTLY_MIRROR_CREATE $OPENSTACK_WALLABY_FOCAL $UBUNTU_CLOUD_ARCHIVE focal-updates/wallaby main
$APTLY_MIRROR_UPDATE $OPENSTACK_WALLABY_FOCAL
$APTLY_SNAPSHOT_CREATE $OPENSTACK_WALLABY_FOCAL/$APTLY_SNAPSHOT_SUFFIX from mirror $OPENSTACK_WALLABY_FOCAL
$APTLY_PUBLISH_SNAPSHOT $OPENSTACK_WALLABY_FOCAL/$APTLY_SNAPSHOT_SUFFIX openstack

wget -r -np -nH --cut-dirs=5 -P {{ vault_repo_workdir }}/public/upgrade/focal/ -R index.html* $ARCHIVE_UBUNTU_COM/dists/focal-updates/main/dist-upgrader-all/
wget -r -np -nH --cut-dirs=5 -P {{ vault_repo_workdir }}/public/upgrade/bionic/ -R index.html* $ARCHIVE_UBUNTU_COM/dists/bionic-updates/main/dist-upgrader-all/
wget -r -np -nH --cut-dirs=5 -P {{ vault_repo_workdir }}/public/upgrade/xenial/ -R index.html* $ARCHIVE_UBUNTU_COM/dists/xenial-updates/main/dist-upgrader-all/