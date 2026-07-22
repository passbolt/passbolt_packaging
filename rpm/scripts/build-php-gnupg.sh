#!/bin/bash

set -e

PROJECT_DIRECTORY="$(pwd)"
PHP_VERSION="${1:-8.2}"
DEPENDENCIES="git wget rpmdevtools rpmlint selinux-policy-devel rpm-build bc gcc php-devel php-pear gpgme-devel libassuan-devel"
PHP_GNUPHP_REMI_REPO_URL="https://git.remirepo.net/git/rpms/php/pecl/php-pecl-gnupg.git"
PHP_GNUPHP_URL="https://pecl.php.net/get/gnupg"

# Create the meeting point directory
mkdir "${PROJECT_DIRECTORY}"/rpms/

# Enable and install the right PHP version
dnf module reset php -y
dnf module install php:"${PHP_VERSION}" -y

# Enable CRB (CodeReady Builder) repository
# (used for gpgme-devel and libassuan-devel)
dnf install dnf-plugins-core -y
dnf config-manager --set-enabled crb
dnf install ${DEPENDENCIES} -y

# Clone Remi-repo's php-pecl-gnupg
git clone "$PHP_GNUPHP_REMI_REPO_URL"
cd php-pecl-gnupg/
PHP_GNUPG_VER=$(grep "%global upstream_version" php-pecl-gnupg.spec | head -n 1 | rev | cut -d " " -f1 | rev)

# Download GnuPG PECL and put it where expected and build the RPM
wget "$PHP_GNUPHP_URL"
mkdir -p /root/rpmbuild/SOURCES
mv gnupg /root/rpmbuild/SOURCES/gnupg-"${PHP_GNUPG_VER}".tgz
rpmbuild -ba php-pecl-gnupg.spec

# Move the built RPM to a meeting point
mv /root/rpmbuild/RPMS/x86_64/php-pecl-gnupg-"${PHP_GNUPG_VER}"-*.rpm "${PROJECT_DIRECTORY}"/rpms/

