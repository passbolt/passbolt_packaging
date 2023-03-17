# copyright: 2018, The Authors

title 'Passbolt required php-extensions'

control 'passbolt-redis-extension-01' do
  impact 1
  title 'php-redis extension'
  desc 'php-redis extension is installed'
  describe command('php --ri redis') do
    its('exit_status') { should eq 0 }
  end
end
