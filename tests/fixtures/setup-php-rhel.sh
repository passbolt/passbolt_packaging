#!/bin/sh

# https://rpms.remirepo.net/wizard/

set -eu

OS_VERSION_MAJOR=$(grep -E '^VERSION_ID=' /etc/os-release | grep -E '[0-9]*' -m 1 -o | head -1)
PHP_VERSION=8.4

dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-"${OS_VERSION_MAJOR}".noarch.rpm -y
if ! rpm -qa | grep -q remi-release
then
  dnf install dnf-utils http://rpms.remirepo.net/enterprise/remi-release-"${OS_VERSION_MAJOR}".rpm -y
fi
dnf module reset php -y
dnf module enable php:remi-$PHP_VERSION -y
dnf install php -y
