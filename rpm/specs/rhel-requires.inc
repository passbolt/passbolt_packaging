Requires:       php >= 8.2
Requires:       php-cli >= 8.2
Requires:       php-curl >= 8.2
Requires:       php-fpm >= 8.2
Requires:       php-gd >= 8.2
Requires:       php-intl >= 8.2
Requires:       php-json >= 8.2
Requires:       php-mbstring >= 8.2
Requires:       php-mysqlnd >= 8.2
Requires:       php-pecl-gnupg
Requires:       php-pgsql >= 8.2
Requires:       php-process >= 8.2
Requires:       php-xml >= 8.2
%if "%{_passbolt_flavour}" == "pro"
Requires:       php-ldap >= 8.2
%endif
Requires:       cronie
Requires:       nginx
Requires:       passbolt-server-selinux
