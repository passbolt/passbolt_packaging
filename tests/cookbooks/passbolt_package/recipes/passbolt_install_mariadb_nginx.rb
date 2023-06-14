#
# Cookbook:: docker_test
# Recipe:: passbolt_install_mariadb_nginx
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#

# Defaul database engine
database_engine = 'mysql'

if platform_family?('debian')
  apt_update
  package 'Debian: Install mariadb and nginx' do
    package_name %w[debconf-utils curl nginx default-mysql-server]
    action :install
  end

  # Use different database service depending on the OS
  database_engine = 'mariadb' if node['platform'] == 'debian' && node['platform_version'] =~ /11|12/

  execute 'Start mysql' do
    command "service #{database_engine} start"
    action  :run
  end
elsif platform_family?('rhel', 'suse')
  if platform_family?('rhel', 'fedora')
    package 'RHEL: Install dependencies' do
      package_name ['bc']
      action :install
    end
    execute 'Setup EPEL repository' do
      cwd node['dest_dir'].to_s
      command  '/bin/sh rpm/scripts/setup-epel.sh'
      action   :run
    end
  end
  package 'RHEL: Install mariadb and nginx' do
    flush_cache [:before] if platform_family?('rhel', 'fedora')
    package_name %w[nginx mariadb-server createrepo_c firewalld]
    action :install
  end
end

include_recipe '::passbolt_responses_nginx_mysql'
include_recipe '::passbolt_install'
