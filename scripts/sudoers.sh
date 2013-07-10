#!/bin/bash -eux

sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers
echo %root ALL=NOPASSWD:ALL>/etc/sudoers.d/root-nopasswd
chmod 0440 /etc/sudoers.d/root-nopasswd

usermod -a -G root vagrant
