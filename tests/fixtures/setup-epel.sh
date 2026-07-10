#!/bin/sh

# https://rpms.remirepo.net/wizard/
# TODO get rid of this script when build and install recipes are correctly decoupled

set -eu

OS_VERSION=$(grep -E '^VERSION_ID=' /etc/os-release | awk -F= '{print $2}' | sed 's/\"//g')
OS_VERSION_MAJOR=$(echo ${OS_VERSION:0:1} | bc)

dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-"${OS_VERSION_MAJOR}".noarch.rpm -y
