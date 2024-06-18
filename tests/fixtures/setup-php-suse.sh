#!/bin/sh

OS_VERSION=$(grep -E '^VERSION_ID=' /etc/os-release | awk -F= '{print $2}' | sed 's/\"//g')

cat << EOF > /etc/zypp/repos.d/php.repo
[devel_languages_php]
name=devel:languages:php (openSUSE_Leap_${OS_VERSION})
type=rpm-md
baseurl=https://download.opensuse.org/repositories/devel:/languages:/php/openSUSE_Leap_${OS_VERSION}/
gpgcheck=1
gpgkey=https://download.opensuse.org/repositories/devel:/languages:/php/openSUSE_Leap_${OS_VERSION}/repodata/repomd.xml.key
enabled=1
EOF

cat << EOF > /etc/zypp/repos.d/php-extensions.repo
[server_php_extensions]
name=PHP extensions (openSUSE_Leap_${OS_VERSION})
type=rpm-md
baseurl=https://download.opensuse.org/repositories/server:/php:/extensions/${OS_VERSION}/
gpgcheck=1
gpgkey=https://download.opensuse.org/repositories/server:/php:/extensions/${OS_VERSION}/repodata/repomd.xml.key
enabled=1
EOF
curl -fsSL https://download.opensuse.org/repositories/devel:/languages:/php/openSUSE_Leap_${OS_VERSION}/repodata/repomd.xml.key > /tmp/php.key
curl -fsSL https://download.opensuse.org/repositories/server:/php:/extensions/${OS_VERSION}/repodata/repomd.xml.key > /tmp/php-extensions.key
rpm --import /tmp/php.key
rpm --import /tmp/php-extensions.key
