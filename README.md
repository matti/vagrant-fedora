# vagrant-fedora

Builds a Fedora Vagrant box for VirtualBox with guest additions

## Setup

    brew update && brew cask update
    brew cask install --force vagrant virtualbox

Check versions

    VBoxManage -v   // 5.0.0r101573
    vagrant -v      // Vagrant 1.7.4

## Build a box

    cd prebuild && ./redo.sh
