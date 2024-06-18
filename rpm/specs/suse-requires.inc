Requires:       php >= 7.4
Requires:       php-cli >= 7.4
Requires:       php-curl >= 7.4
Requires:       php-fileinfo >= 7.4
Requires:       php-fpm >= 7.4
Requires:       php-gd >= 7.4
Requires:       php-intl >= 7.4
Requires:       php-json >= 7.4
Requires:       php-mbstring >= 7.4
Requires:       php-mysql >= 7.4
Requires:       php-openssl >= 7.4
Requires:       php-pecl
Requires:       php-pgsql >= 7.4
Requires:       php-gnupg
Requires:       php-posix >= 7.4
Requires:       php-xmlreader >= 7.4
Requires:       php-xmlwriter >= 7.4
%if "%{_passbolt_flavour}" == "pro"
Requires:       php-ldap >= 7.4
%endif
Requires:       cronie
Requires:       nginx
