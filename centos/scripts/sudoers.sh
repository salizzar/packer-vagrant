#
# Sudoers steps.
#

vagrant=<<-VAGRANT
Defaults:%admin !requiretty
%admin ALL=(ALL) NOPASSWD:ALL
VAGRANT

# centos 5 does not have sudoers.d dir
if [ ! -d /etc/sudoers.d ] ; then
  echo "$vagrant" >> /etc/sudoers
else
  # create file
  echo "$vagrant" > /etc/sudoers.d/vagrant

  # fix permission
  chmod 0440 /etc/sudoers.d/vagrant
fi

