#!/bin/bash -eux
CHEF_DEB=chef_11.12.2-1_amd64.deb
TARGET="/tmp/${CHEF_DEB}"

wget -nc -O "${TARGET}" "https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/13.04/x86_64/${CHEF_DEB}"
dpkg -i "${TARGET}"
rm -f "${TARGET}"
