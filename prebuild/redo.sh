#!/usr/bin/env bash

set -e

vagrant halt
vagrant destroy -f

$(cd .. && wget -nc https://download.fedoraproject.org/pub/fedora/linux/releases/22/Cloud/x86_64/Images/Fedora-Cloud-Base-Vagrant-22-20150521.x86_64.vagrant-virtualbox.box)

vagrant up

curl https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant > .vagrant/machines/fedora/virtualbox/private_key

# aaaaaaaand halting will replace the key AGAIN!
#vagrant halt
vagrant package

mv package.box ..
