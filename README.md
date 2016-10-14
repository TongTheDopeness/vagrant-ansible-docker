## Prerequisite(Tested)

* Virtual Box 5.0.26
* Vagrant 1.8.6

## Base Image

* ubuntu/trusty64 (official)

## Ansible Playbook

* rbenv 1.0.0
* ruby 2.1.3
* docker 12.2
* docker-compose 1.8.1

## Getting Started

### Setting Vagrantfile

```
config.vm.network "forwarded_port", guest: 80, host: 8080 # for nginx
config.vm.network "forwarded_port", guest: 3000, host: 3080 # for rails
config.vm.network "forwarded_port", guest: 5432, host: 5432 # for

config.vm.provider :virtualbox do |v|
  v.memory = 3072
  v.cpus = 2
end
```

### Provisioning

    $ git clone https://github.com/TongTheDopeness/vagrant-ansible-docker.git
    $ cd vagrant-ansible-docker
    $ vagrant up

### Login

    $ vagrant ssh

for windows

    host: localhost
    port: 2222
    user: vagrant
    password vagrant
