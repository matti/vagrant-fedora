# vagrant-fedora

Builds a Fedora Vagrant box for VirtualBox with guest additions.

Published as https://atlas.hashicorp.com/matti/boxes/fedora-22

## Setup

    brew update && brew cask update
    brew cask install --force vagrant virtualbox

Check versions

    VBoxManage -v   // 5.0.0r101573
    vagrant -v      // Vagrant 1.7.4
    jq --version    // jq-1.4

## Build a box

    cd prebuild && ./redo.sh

Box is generated in root as package.box

## Test a box

    cd postbuild && vagrant up

## Publish a box

    ./publish.sh TOKEN matti/fedora-22 TODO.TODO.TODO

## Install from atlas

    cd atlas && vagrant box update
    vagrant up
