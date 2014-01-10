# install kernel source
yum install -y kernel-devel-$(uname -r)

# install X
yum groupinstall -y "X Window System"

# mount, run vbox guest additions and umount later
mount -o loop VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt

# restart vbox guest additions module
/etc/init.d/vboxadd start

# remove kernel source
yum remove -y kernel-devel-$(uname -r)

# remove X
yum groupremove -y "X Window System"

# remove packages
yum clean packages

