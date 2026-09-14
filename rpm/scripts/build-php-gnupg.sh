#!/bin/bash

set -euo pipefail

PROJECT_DIRECTORY="$(pwd)"
PHP_VERSION="${1:-8.2}"
DEPENDENCIES="git wget rpmdevtools selinux-policy-devel rpm-build bc gcc php-pear gpgme-devel libassuan-devel"
PHP_GNUPG_VERSION="1.5.4"
PHP_GNUPG_REMI_REPO_URL="https://git.remirepo.net/git/rpms/php/pecl/php-pecl-gnupg.git"
PHP_GNUPG_REMI_REPO_COMMIT="626c312ce15edb2343a313165bde470c3b1a9ccd"
PHP_GNUPG_PECL_NAME="gnupg-${PHP_GNUPG_VERSION}.tgz"
PHP_GNUPG_PECL_URL="https://pecl.php.net/get/${PHP_GNUPG_PECL_NAME}"
PHP_GNUPG_PECL_SHA256SUM="4d4a0980759bf259e4129ef02cb592bbeb103b4005e7b4bb6945d79488951a50"

# Install the right PHP version
if [ "${PHP_VERSION}" == "8.4" ]; then
    dnf install php8.4 php8.4-devel -y
else
    dnf module reset php -y
    dnf module install php:"${PHP_VERSION}" -y
    dnf install php-devel -y
fi

# Enable CRB (CodeReady Builder) repository
# (used for gpgme-devel and libassuan-devel)
dnf install dnf-plugins-core -y
dnf config-manager --set-enabled crb
dnf install ${DEPENDENCIES} -y

# Clone Remi-repo's php-pecl-gnupg
git clone --revision "${PHP_GNUPG_REMI_REPO_COMMIT}" "${PHP_GNUPG_REMI_REPO_URL}"
cd php-pecl-gnupg/
PHP_GNUPG_REMI_REPO_VERSION=$(grep "%global upstream_version" php-pecl-gnupg.spec | head -n 1 | rev | cut -d " " -f1 | rev)
if [[ "${PHP_GNUPG_VERSION}" != "${PHP_GNUPG_REMI_REPO_VERSION}" ]]; then
	echo "Expected PHP GnuPG version ${PHP_GNUPG_VERSION}, found ${PHP_GNUPG_REMI_REPO_VERSION} in Remirepo, bailing out..."
	exit 1
fi

# Download GnuPG PECL and put it where expected and build the RPM
wget -O "${PHP_GNUPG_PECL_NAME}" "${PHP_GNUPG_PECL_URL}"
echo "${PHP_GNUPG_PECL_SHA256SUM} ${PHP_GNUPG_PECL_NAME}" | sha256sum -c - || exit 1
mkdir -p /root/rpmbuild/SOURCES
mv "${PHP_GNUPG_PECL_NAME}" /root/rpmbuild/SOURCES/
rpmbuild -ba php-pecl-gnupg.spec

# Move the built RPM to a meeting point
mv /root/rpmbuild/RPMS/x86_64/php-pecl-gnupg-"${PHP_GNUPG_VERSION}"-*.rpm "${PROJECT_DIRECTORY}"/

