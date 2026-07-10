#!/bin/sh

# https://rpms.remirepo.net/wizard/
# TODO get rid of this script when build and install recipes are correctly decoupled

set -eu

OS_VERSION_MAJOR=$(grep -E '^VERSION_ID=' /etc/os-release | grep -E '[0-9]*' -m 1 -o | head -1)

dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-"${OS_VERSION_MAJOR}".noarch.rpm -y
