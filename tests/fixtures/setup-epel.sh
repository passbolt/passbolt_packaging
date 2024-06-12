#!/bin/sh

# https://rpms.remirepo.net/wizard/
# TODO get rid of this script when build and install recipes are correctly decoupled

set -eu

OS_VERSION=$(grep -E '^VERSION_ID=' /etc/os-release | awk -F= '{print $2}' | sed 's/\"//g')
OS_VERSION_MAJOR=$(echo ${OS_VERSION:0:1} | bc)

if [ "${OS_VERSION_MAJOR}" -eq 7 ]
then
    yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
elif [ "${OS_VERSION_MAJOR}" -eq 8 ]
then
    dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
elif [ "${OS_VERSION_MAJOR}" -eq 9 ]
then
    dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm -y
else
  exit 1
fi
