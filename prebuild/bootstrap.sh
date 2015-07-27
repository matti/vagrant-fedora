sudo su

dnf groupinstall "C Development Tools and Libraries" -y
dnf install kernel-devel-4.0.4-301.fc22.x86_64 -y

#TODO: this might hang...
#echo "Silently downloading VirtualBox guest additions ..."
#curl -sS -O http://download.virtualbox.org/virtualbox/5.0.0/VBoxGuestAdditions_5.0.0.iso > /dev/null

echo "Downloading VirtualBox guest additions ..."
curl -O http://download.virtualbox.org/virtualbox/5.0.0/VBoxGuestAdditions_5.0.0.iso

mkdir /media/VBoxGuestAdditions
mount -o loop,ro VBoxGuestAdditions_5.0.0.iso /media/VBoxGuestAdditions

sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run

umount /media/VBoxGuestAdditions
rmdir /media/VBoxGuestAdditions

rm VBoxGuestAdditions_5.0.0.iso

cd /home/vagrant

mkdir .ssh
curl https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub > .ssh/authorized_keys
chmod -R u=rw,g=,o= .ssh

ls -la
cat .ssh/authorized_keys
