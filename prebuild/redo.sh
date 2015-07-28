#!/usr/bin/env bash

vagrant halt
vagrant destroy -f

$(cd .. && wget -nc https://download.fedoraproject.org/pub/fedora/linux/releases/22/Cloud/x86_64/Images/Fedora-Cloud-Base-Vagrant-22-20150521.x86_64.vagrant-virtualbox.box)

vagrant up

curl https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant > .vagrant/machines/fedora/virtualbox/private_key

vagrant halt
vagrant package

mv package.box ..

echo "Done, now cd ../postbuild && vagrant up to test"
