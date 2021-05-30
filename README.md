# vault_aptly
aptly + ansible + docker

# What it does?
Running this playbook will create an aptly deployment inside docker container with nginx for published repos.

# Requirements.
Ubuntu 20.04 LTS \
ansible >= 2.10 \
ansible-galaxy collection install community.docker

# How to run?
You need to create a public key to sign your repositories first. You can do it like this(*on a clean system*): \
`gpg1 --gen-key` \
`gpg1 --export --armor --keyring pubring.gpg > repo.key` \
this will create 3 files: \
~/.gnupg/pubring.gpg # public key \
~/.gnupg/secring.gpg # private key \
repo.key # ASCII export of public key \
copy all three to ansible/playbooks/roles/aptly/files/ \
\
there's a variable in ansible/inventory/group_vars/all/all.yml\
`aptly_workdir: '/srv/aptly'`\
this is the base directory where ansible will do all its job and aptly will hold repositories and db. You can set it to whatever path you like. 

Inventory is specified in ansible/inventory/inventory.ini\
\
you can run the playbook now: \
`ansible-playbook playbooks/aptly.yml`

# How to manage aptly?
You can start a bash session inside a container on target host: \
`docker exec -ti docker_aptly_1 /bin/bash` \
there you can run all the common aptly commands like `aptly mirror create` or `aptly publish`. Refer to official documentation for full list: https://www.aptly.info/doc/commands/ \
\
You will need to trust repositories keys to mirror them. Since it is impossible to add all the possible keys in advance, trustedkeys.gpg comes with few example keys from Ubuntu Archives, Openstack, and CEPH repositories. Aptly will hint you how to add additional keys. They will persist through container lifespan and playbook rerun so you will only need to add them once per new mirror source.

# How to use published repos?
After you've published a repo you can add they key you used to sign it as trusted on apt client host. Public key is in the web root: \
`curl -L http://<aptly_node_fqdn_or_ip>/repo.key | sudo apt-key add -` \
after that you can add your repository as any other, for example: \
`deb http://<aptly_node_fqdn_or_ip>/ focal main` \
and run `apt update` or any other `apt` command

# Why no API?
So aptly has a REST API, but it lacks functionality: creating mirrors through API is not supported. \
API process also locks DB files, which makes it impossible to run multiple API processes for HA, or use CLI concurrently with active API. \
For these reasons this playbook does not start API and is designed to work only with CLI. \
If you ever decide to try it out, note that aptly REST API has no authentication mechanisms, so it is advised to hide it behind a reverse-proxy with auth and SSL termination capabilities, i.e. haproxy, nginx, etc.

# repo-bootstrap.sh
Variable `run_bootstrap: False` in `ansible/inventory/group_vars/all/all.yml` is responsible for running repository bootstrap. It is `False` by default. \
repo-bootstrap.sh will create and publish mirrors for Ubuntu Xenial, Bionic, and Focal releases, as well as CEPH 10, 12, 14, 16 and Openstack Ocata through Wallaby release. It will also make some hacks to allow running `do-release-upgrade` with published repositories. \
Be warned: it will have to download over 500GB of data. \
Set variable `repo_fqdn` to your repository FQDN.
