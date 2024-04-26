#
# Cookbook:: docker_test
# Recipe:: passbolt_package_build
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#

if platform_family?('debian') && Dir.glob("#{node['dest_dir']}/passbolt-*.deb").empty?
  apt_update 'all platforms' do
    action :update
  end

  if Dir.glob("#{node['dest_dir']}/vendor/*").empty?
    package 'Debian: Install composer' do
      package_name 'composer'
      action :install
    end

    execute 'Download vendors' do
      cwd node['dest_dir'].to_s
      command 'composer install -o --prefer-dist --no-dev --ignore-platform-reqs --no-interaction'
      action :run
    end
  end

  package 'Install dev dependencies' do
    package_name %w[devscripts build-essential apt-utils fakeroot equivs cdbs git-buildpackage]
    action :install
  end

  execute 'Build debian package' do
    cwd node['dest_dir'].to_s
    command "export PASSBOLT_FLAVOUR=#{node['passbolt_flavour']} \
               && make -f debian/rules debian/control \
               && mk-build-deps -irt'apt-get --no-install-recommends -yV' debian/control && dpkg-checkbuilddeps \
               && debuild --preserve-envvar PASSBOLT_FLAVOUR --preserve-envvar PASSBOLT_COMPONENT -us -uc -b -i -I  \
               && cp ../*.deb . \
               && cp ../*.build . \
               && cp ../*.buildinfo . \
               && cp ../*.changes ."
    action :run
  end
end

unless platform_family?('debian')
  if platform_family?('rhel', 'suse', 'fedora')
    file '/etc/resolv.conf' do
      content 'nameserver 1.1.1.1'
      mode '0644'
      owner 'root'
      group 'root'
    end
  end
  if Dir.glob("#{node['dest_dir']}/passbolt-*.rpm").empty?
    if platform_family?('rhel', 'fedora')
      package 'RHEL: Install dependencies' do
        package_name ['bc']
        action :install
      end
      execute 'Setup PHP repository' do
        cwd node['dest_dir'].to_s
        command  "/bin/sh rpm/scripts/setup-php-#{node['platform_family']}.sh"
        action   :run
      end
    end

    if platform_family?('suse')
      package 'SUSE: Install curl' do
        package_name ['curl']
        action :install
      end
      execute 'Setup PHP repository' do
        cwd node['dest_dir'].to_s
        command  "/bin/sh rpm/scripts/setup-php-#{node['platform_family']}.sh"
        action   :run
      end
      execute 'Setup PHP repository' do
        cwd node['dest_dir'].to_s
        command  'zypper refresh && zypper update -y'
        action   :run
      end
      package 'SUSE: Install dependencies' do
        package_name %w[php8-cli php8-zip wget unzip]
        action :install
      end
      package 'SUSE: Install composer' do
        package_name ['php-composer']
        action :install
      end
    end

    if Dir.glob("#{node['dest_dir']}/vendor/*").empty?
      if platform_family?('rhel', 'fedora')
        package 'RHEL: Install composer dependencies' do
          flush_cache [:before]
          package_name %w[php-cli php-zip php-json wget unzip]
          action :install
        end
        if platform_family?('fedora')
          package 'Ensure pcre2 is last version' do
            flush_cache [:before]
            package_name ['pcre2']
            action :upgrade
          end
        end
        execute 'RHEL: Install composer' do
          cwd node['dest_dir'].to_s
          command '/bin/sh rpm/scripts/setup-composer.sh'
          action :run
        end
      end
      execute 'Download vendors' do
        cwd node['dest_dir'].to_s
        command 'composer install -o --prefer-dist --no-dev --ignore-platform-reqs --no-interaction'
        action :run
      end
    end

    if platform_family?('suse')
      package 'SUSE: Install dev dependencies' do
        package_name %w[rpmdevtools rpmlint rsync rpm-build]
        action :install
      end
    elsif platform_family?('rhel', 'fedora')
      package 'RHEL: Install dev dependencies' do
        package_name %w[rpmdevtools rpmlint rsync selinux-policy-devel rpm-build]
        action :install
      end
    end

    execute 'RHEL: Setup RPM devtree' do
      cwd node['dest_dir'].to_s
      command 'rpmdev-setuptree'
      action :run
    end

    execute 'RHEL: Build Passbolt RPM package' do
      cwd node['dest_dir'].to_s
      command "OS_FAMILY=#{node['platform_family']} \
                PASSBOLT_FLAVOUR=#{node['passbolt_flavour']} \
                PKG_VERSION=#{node['passbolt_version']} \
                /bin/sh rpm/scripts/build-passbolt-server.sh"
      action :run
    end

    # No passbolt-selinux build for suse
    if platform_family?('rhel', 'fedora')
      execute 'RHEL: Build passbolt-selinux RPM package' do
        cwd node['dest_dir'].to_s
        command 'PKG_VERSION=0.4 /bin/sh rpm/scripts/build-passbolt-selinux.sh'
        action :run
      end
    end

    execute 'RHEL: Copy packages in repository' do
      cwd node['dest_dir'].to_s
      command 'cp -rf ~/rpmbuild/RPMS/noarch/passbolt-* .'
      action :run
    end
  end
end
