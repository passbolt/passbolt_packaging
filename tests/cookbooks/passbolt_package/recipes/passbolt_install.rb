#
# Cookbook:: docker_test
# Recipe:: passbolt_install
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#

if platform_family?('debian')
  apt_update
  execute 'Install passbolt' do
    command  "DEBIAN_FRONTEND=noninteractive apt-get install -y /app/passbolt/passbolt*.deb \
      && service php$(php -r 'echo PHP_VERSION;' | sed 's:\\([7|8]\\.[1-4]\\).*:\\1:')-fpm start #{node.key?(:parameters) ? '' : '&& service nginx start'}"
    action   :run
  end
elsif platform_family?('rhel', 'suse', 'fedora')
  package 'RHEL/SUSE: Install dependencies' do
    package_name %w[rpmdevtools bc createrepo_c firewalld]
    action :install
  end

  execute 'Setup PHP repository' do
    cwd node['dest_dir'].to_s
    command  "/bin/sh rpm/scripts/setup-php-#{node['platform_family']}.sh"
    action   :run
  end

  execute 'Setup local repository' do
    cwd node['dest_dir'].to_s
    command '/bin/sh rpm/scripts/setup-local-repository.sh'
    action :run
  end

  package 'Install Passbolt' do
    flush_cache [:before] if platform_family?('rhel', 'fedora')
    package_name "passbolt-#{node['passbolt_flavour']}-server"
    action :install
  end

  package 'Install firewalld' do
    flush_cache [:before] if platform_family?('rhel', 'fedora')
    package_name 'firewalld'
    action :install
  end

  service 'firewalld' do
    action :restart
  end

  execute 'Configure passbolt' do
    command "/usr/local/bin/passbolt-configure \
              -P passbolt \
              -p hawhawhaw \
              -d passboltdb \
              -u passboltadmin \
              -H 127.0.0.1 \
              -e -n"
    action :run
  end
end
