# copyright: 2018, The Authors

title 'Passbolt required php-extensions'

control 'passbolt-gnupg-extension-01' do
  impact 1
  title 'php-gnupg extension'
  desc 'php-gnupg extension is installed'
  describe command('php --ri gnupg') do
    its('exit_status') { should eq 0 }
  end
end
