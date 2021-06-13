# vault_repo
rsync + bandersnatch + cephfs

# What it does?
Running this playbook will download and publish full Ubuntu, Openstack, CEPH: Jewel, Luminous, Nautilus, Pacific; PyPI repositories.

# Requirements.
Ubuntu 18.04 LTS or 20.04 LTS on repository nodes.\
CephFS directory at repo_workdir on repository nodes. \
ansible >= 2.10 \
ansible-galaxy collection install community.docker

# How to run?
!!! WARNING !!! \
!!! This playbook will download ~10TB of data, which will take about a week at 200Mb/s download speed. I suggest taking this into consideration and running it in `screen` !!! \
\
Check the `ansible/playbooks/defaults/config.yml` for available configuration options. \
Configure your inventory in `ansible/inventory/inventory.ini` \
After that run: \
`cd vault_repo/ansible/` \
`ansible-playbook playbooks/vault_repo.yml`

# Playbook finished. What now?
Your repositories are available at the following URLs: \
http://your.repo.fqdn/deb/ubuntu/stable/ \
http://your.repo.fqdn/deb/ubuntu/latest/ \
http://your.repo.fqdn/deb/openstack/stable/ \
http://your.repo.fqdn/deb/openstack/latest/ \
http://your.repo.fqdn/deb/ceph/stable/ \
http://your.repo.fqdn/deb/ceph/latest/ \
http://your.repo.fqdn/pypi/stable/ \
http://your.repo.fqdn/pypi/latest/ \
Stable points to the initial CephFS snapshot. \
Latest points to the current repository folder. \
If you run rsync/bandersnatch again, 'latest' will change, while 'stable' will stay the same until you configure it otherwise. \
Rotating snapshots for version control is beyond the scope of this playbook. \
\
Running `ansible-playbook playbooks/vault_repo_client.yml` will point your Ubuntu apt and pip clients configured in inventory to your repository.
