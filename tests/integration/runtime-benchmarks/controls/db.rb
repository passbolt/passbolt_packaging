title 'Check passbolt database'

sql_username = 'passboltadmin'
sql_password = 'hawhawhaw'

control 'passbolt-db-0' do
  impact 1
  title 'Check that passbolt database is present'
  desc 'Passbolt installation has created its database'

  describe command("mariadb -u #{sql_username} -p'#{sql_password}' -h localhost -e 'SHOW DATABASES;'") do
    its('exit_status') { should eq 0 }
    its('stdout') { should include('passboltdb') }
  end
end
