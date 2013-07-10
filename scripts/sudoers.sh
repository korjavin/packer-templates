#!/bin/bash -eux

sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers
sed -i -e 's/%root ALL=(ALL) ALL/%root ALL=NOPASSWD:ALL/g' /etc/sudoers

usermod -a -G root vagrant