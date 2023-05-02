Requires:       php >= 7.4
Requires:       php-cli >= 7.4
Requires:       php-curl >= 7.4
Requires:       php-fpm >= 7.4
Requires:       php-gd >= 7.4
Requires:       php-intl >= 7.4
Requires:       php-json >= 7.4
Requires:       php-mbstring >= 7.4
Requires:       php-mysqlnd >= 7.4
Requires:       php-pecl-gnupg
Requires:       php-process >= 7.4
Requires:       php-xml >= 7.4
Requires:       php-pecl-redis
%if "%{_passbolt_flavour}" == "pro"
Requires:       php-ldap >= 7.4
%endif
Requires:       cronie
Requires:       nginx
Requires:       passbolt-server-selinux
