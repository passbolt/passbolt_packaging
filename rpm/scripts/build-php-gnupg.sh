#!/bin/bash

set -e

PHP_VERSION="${1:-8.2}"
DEPENDENCIES="vim git wget rpmdevtools rpmlint rsync selinux-policy-devel rpm-build bc gcc php-devel php-pear"
GPGME_DEVEL_URL="https://dl.rockylinux.org/pub/rocky/9/CRB/x86_64/os/Packages/g/gpgme-devel-1.15.1-6.el9.x86_64.rpm"
LIBASSUAN_DEVEL_URL="https://dl.rockylinux.org/pub/rocky/9/CRB/x86_64/os/Packages/l/libassuan-devel-2.5.5-3.el9.x86_64.rpm"
PHP_GNUPHP_REMI_REPO_URL="https://git.remirepo.net/git/rpms/php/pecl/php-pecl-gnupg.git"
PHP_GNUPHP_URL="https://pecl.php.net/get/gnupg"

function setup-php {
	if [ "$PHP_VERSION" == "8.0" ]; then
		yum install php -y
	else
		yum module reset php -y
		yum module install php:"${PHP_VERSION}" -y
	fi
}

setup-php

yum install ${DEPENDENCIES} -y
wget "$GPGME_DEVEL_URL" -O gpgme.rpm
wget "$LIBASSUAN_DEVEL_URL" -O libassuan.rpm
yum localinstall libassuan.rpm -y
yum localinstall gpgme.rpm -y

git clone "$PHP_GNUPHP_REMI_REPO_URL"
cd php-pecl-gnupg/
wget "$PHP_GNUPHP_URL"
mkdir -p /root/rpmbuild/SOURCES
mv gnupg /root/rpmbuild/SOURCES/gnupg-1.5.1.tgz
rpmbuild -ba php-pecl-gnupg.spec
