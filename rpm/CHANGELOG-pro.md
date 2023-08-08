* [4.0.2-1] Thu, 25 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24644 As an admin I should be able to run migrations on a 32 bit environment

* [4.0.2-rc.1-1] Wed, 24 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24644 As an admin I should be able to run migrations on a 32 bit environment

* [4.0.1-1] Tue, 23 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24644 As an admin I should be able to run migrations on a 32 bit environment

* [4.0.1-rc.1-1] Fri, 19 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24644 As an admin I should be able to run migrations on a 32 bit environment

* [4.0.0-2] Fri, 17 Mar 2023 Diego Lendoiro <diego@passbolt.com>
- PB-22874 pin php 7.4 or superior

* [4.0.0-1] Tue, 16 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-21580 As a user I can use Google as single sign on provider
- PB-24245 As LU using the API I can manage standalone TOTP and TOTP associated with passwords resources types
- PB-24086 As an admin I can create a user recovery link from the command line
- PB-22926 As a new user I can self-register using SSO with email-self registration
- PB-21570 As an administrator I receive an email when SSO configuration changes
- PB-24052 As an administrator I can configure the user directory settings to authenticate with Kerberos/SASL
- PB-23961 Adds SASL support for DirectorySync
- PB-23927 As a system administration I can disable certain SSO providers from environment variable
- PB-23598 Add LDAP filter / search to the API endpoint for configuration
- PB-23289 Add new setting to allow updating user first and last name from LDAP
- PB-23290 As an administrator synchronizing the users directory it should also synchronize the groups names
- PB-23321 Upgrade CakePHP to 4.4
- PB-22720 Refactor LDAP feature to use directorytree/ldaprecord
- PB-24296 As a developer I can retrieve in integration tests the body of json requests in array
- PB-24083 Removes the usage of the Paginator deprecated in CakePHP 4.4
- PB-24055 LDAP add support multi server to settings API endpoint
- PB-23926 Bump PHPUnit to ~9.5.2 to avoid warning messages of 9.6
- PB-22758 Introduce JWT key injection to enable parallel tests
- PB-22622 Add CS rule to disallow space after NOT operator
- PB-23786 Remove PHP 7.3 from the testing pipes
- PB-24561 Upgrades cakephp/migrations library
- PB-24073 As a developer I should ensure that the CHANGELOG.md file is in the right format
- PB-24071 As a developer I can enable feature plugins with the plugins class name
- PB-24272 Adds contribution link in CONTRIBUTING.md
- PB-24078 As a user I should receive the correct email avatar text after folder manipulation
- PB-24039 Action log event listener should not throw error on missing connection
- PB-23558 Remove PHP 8.2 deprecation warnings
- PB-23557 Remove PHP 8.1 deprecation warnings
- PB-24056 As an admin I can view log stack traces when debug mode is enabled
- PB-23599 As an admin I can obfuscate sensitive fields in LDAP get settings API responses
- PB-24297 Update guzzlehttp/psr7 to fix composer audit security vulnerability

* [4.0.0-rc.5-1] Thu, 11 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24561 Upgrades cakephp/migrations library

* [4.0.0-rc.4-1] Fri, 05 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24561 - Styleguide version bump to v4.0.3

* [4.0.0-rc.3-1] Sat, 29 Apr 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24051 Fixes field obfuscation not to obfuscate the first element in pure array
- PB-24470 Fixes recover_user command not showing while running passbolt -h

* [4.0.0-rc.2-1] Wed, 26 Apr 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-21580 As a user I can use Google as single sign on provider
- PB-24245 Adds two TOTP resource types feature flag
- PB-24086 As an admin, I can create a user recovery token from the command line
- PB-24056 As an admin I can view log stack traces when debug mode is enabled
- PB-23599 As an admin I can obfuscate sensitive fields in API responses
- PB-22926 As a new user I can self-register using SSO with email-self registration
- PB-21570 As an administrator I receive an email when SSO configuration changes
- PB-24073 As a developer I should ensure that the CHANGELOG.md file is in the right format
- PB-24071 As a developer I can enable feature plugins with the plugins class name
- PB-24272 Adds contribution link in CONTRIBUTING.md
- PB-24052 Updates LDAP admin settings to support Kerberos/SASL
- PB-23961 Adds SASL support for DirectorySync
- PB-23927 As a system administration I can disable certain SSO providers from environment variable
- PB-23321 Upgrade CakePHP to 4.4
- PB-23598 Add LDAP filter / search to the API endpoint for configuration
- PB-23289 Add new setting to allow updating user first and last name from LDAP
- PB-23290 Update GroupSyncAction to rename group if changed in LDAP
- PB-22720 Refactor LDAP feature to use directorytree/ldaprecord
- PB-24297 Update guzzlehttp/psr7 to fix composer audit security vulnerability
- PB-24296 As a developer I can retrieve in integration tests the body of json requests in array
- PB-24083 Removes the usage of the Paginator deprecated in CakePHP 4.4
- PB-24055 LDAP add support multi server to settings API endpoint
- PB-23926 Bump PHPUnit to ~9.5.2 to avoid warning messages of 9.6
- PB-22758 Introduce JWT key injection to enable parallel tests
- PB-22622 Add CS rule to disallow space after NOT operator
- PB-23786 Remove PHP 7.3 from the testing pipes
- PB-24078 As a user I should receive the correct email avatar text after folder manipulation
- PB-24039 Action log event listener should not throw error on missing connection
- PB-23558 Remove PHP 8.2 deprecation warnings
- PB-23557 Remove PHP 8.1 deprecation warnings

* [3.12.2-1] Wed, 26 Apr 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24315 As signed-in user creating resources with encrypted description the API should not store unencrypted descriptions even if provided by the client

* [3.12.0-2] Fri, 17 Mar 2023 Diego Lendoiro <diego@passbolt.com>
- Added php-redis as dependency

* [3.12.0-1] Thu, 16 Mar 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-20535 As a community user I want to use folders
- PB-22749 As an administrator I can customise passbolt to output the action logs in syslog
- PB-22749 As an administrator I can customise passbolt to output the action logs in a file
- PB-22749 As an administrator I can implement my own action logs handler
- PB-23813 Microsoft Azure as single sign on should be enabled by default
- PB-23717 As a user using the json API I should get a bad request error instead of an internal error if using api-version=v1
- PB-21826 Fix emails entries should not be locked when threshold limit is exceeded
- PB-23519 As an administrator running the DUO v4 migration I should not see a warning message if DUO was not configured
- PB-23721 As an administrator I want to be sure the server key is in the keyring before decrypting users directory settings
- PB-23311 As an administrator I should be the only one to know which users have enabled MFA
- PB-23333 As an administrator I should see a notice instead of a warning if I enabled the self registration plugin
- PB-23722 As a developer running the unit tests I want to be sure the version from the config matches the one from the changelog
- PB-22892 As a user recovering my account I want to see the success and error pages feedback
- PB-23287 Duo multi-factor authentication redirection refactoring
- PB-23702 Update phpseclib/phpseclib dependency

* [3.11.1-1] Mon, 06 Mar 2023 Diego Lendoiro <diego@passbolt.com>
- PB-23283 As an administrator I can disable username validation in Duo Callback endpoints
- PB-23310 As a user I can login and recover my account with SSO Azure when passbolt is in a sub-directory setup
- PB-21939 Add a dry-run step at the end of upgrades to validate data

* [3.11.0-1] Wed, 01 Mar 2023 Diego Lendoiro <diego@passbolt.com>
- PB-22435 As a user using SSO Azure I can recover my account using SSO Azure
- PB-22741 As an administrator I should see an error in the healthcheck if I use php 7.3 or less
- PB-22747 As an administrator I can define a regular expression to customise email validation
- PB-22748 As an administrator I can access to the paginated list of action logs on the browser
- PB-22866 As a user I want to use passbolt in Italian
- PB-22866 As a user I want to use passbolt in Portuguese (Brazil)
- PB-22866 As a user I want to use passbolt in Korean
- PB-22866 As a user I want to use passbolt in Romanian
- PB-21489 As a user I should not see double headers in emails sent by the email digest
- PB-22725 As an administrator I want to manage Duo v4 settings
- PB-21763 As a user I want to see a clean SSO error feedback in the popup after failing to sign-up with SSO
- PB-21764 As a user I want to see a clean SSO feedback in the popup after signing-in with SSO
- PB-21906 As a user I don’t want to receive email by default when I create a resource or a folder as well as I don’t want to see any details for this content by default
- PB-22512 As an SSO administrator I want to see the access_token details when it is missing or has invalid claims
- PB-22610 As a user I want the SSO Azure authentication to support nonce
- PB-22416 As a developer I can safely deactivate plugins between solutions
- PB-22756 Fixes a range of failing pagination tests
- PB-22760 SSO State Type refactoring
- PB-22495 Refactors the SmtpTransport to enhance the code coverage of emails
- PB-22430 Refactoring of SSO state to use separate table

* [3.10.0-1] Fri, 10 Feb 2023 Daniel Del Rio <daniel@passbolt.com>
- PB-19784 As a user I can self register if my email domain matches the policy defined by the administrators
- PB-21827 As an administrator I can manage the MFA policies of my organisation
- PB-22652 As a user I can authenticate with SSO with an email address having a different case
- PB-21485 As a server administrator I want to configure the list of active proxies the instance is behind in order to get client IP when necessary
- PB-21682 As an administrator I want to configure the client option of the SMTP settings
- PB-22019 As a server administrator I want to configure TOTP MFA secret length
- PB-22574 As a signed-in user I want the sharing of resources to not perform a cycle detection
- PB-22327 env variable PASSBOLT_PLUGINS_SMTP_SETTINGS renamed in PASSBOLT_PLUGINS_SMTP_SETTINGS_ENABLED (backward compatible)
- PB-22406 curl and openssl extensions requirements added
- PB-22413 bump CakePHP to ^4.3.11
- PB-22420 SSO test routes removed

* [3.10.0-1] Fri, 10 Feb 2023 Daniel Del Rio <daniel@passbolt.com>
- PB-19784 As a user I can self register if my email domain matches the policy defined by the administrators
- PB-21827 As an administrator I can manage the MFA policies of my organisation
- PB-22652 As a user I can authenticate with SSO with an email address having a different case
- PB-21485 As a server administrator I want to configure the list of active proxies the instance is behind in order to get client IP when necessary
- PB-21682 As an administrator I want to configure the client option of the SMTP settings
- PB-22019 As a server administrator I want to configure TOTP MFA secret length
- PB-22574 As a signed-in user I want the sharing of resources to not perform a cycle detection
- PB-22327 env variable PASSBOLT_PLUGINS_SMTP_SETTINGS renamed in PASSBOLT_PLUGINS_SMTP_SETTINGS_ENABLED (backward compatible)
- PB-22406 curl and openssl extensions requirements added
- PB-22413 bump CakePHP to ^4.3.11
- PB-22420 SSO test routes removed

* [3.9.0-2] Thu, 19 Jan 2023 Daniel Del Rio <daniel@passbolt.com>
- PB-22409 fix cronjob user
- PB-21828 As a user I can use Microsoft Azure as single sign on provider (Alpha)
- PB-19601 As an admin running the healthcheck I should not see an unmanaged error if DB connection fails
- PB-21497 GITHUB-437 As an administrator I should see default user avatar in the email I receive when a user complete the setup
- PB-21501 GITHUB-411 As an administrator I should see the correct path relative to config tips in the health check report
- PB-21551 As an administrator I should be able to update with the web installer without getting an error due the subscription
- PB-21756 As an anonymous user switching MFA provider I should be redirected to the original target
- PB-21756 As an anonymous user verifying my second factor I should not get a 500 error due to an improperly sanitized redirect parameter
- PB-19653 Rename Google authenticator into Totp authenticator
- PB-19807 As an administrator I want to know if email hostname availability is enabled in the health check report
- PB-20985 As an administrator I shouldn't be able to send a test email in command line without defining the recipient
- PB-21502 As an administrator I want to know if I run a passbolt command without using the webserver user
- PB-21635 As an administrator I want to the cron events to be logged
- PB-21751 As anonymous user I don't want to see the TOTP field auto-completed when I verify my second factor authentication
- PB-19715 As an administrator I want to lock the SMTP settings entry points
- PB-19212 Improve PHPUNIT performances
- PB-19541 Add composer audit job on development pipelines
- PB-19594 Avoid duplicated pipelines
- PB-19583 Remove deprecated usage of dummy auth token generation in tests
- PB-19594 Improve phpunit pipelines environment matrix
- PB-19706 Refactor favorites add controller into service
- PB-19707 Refactor favorites delete controller into service
- PB-20512 Ease debug by attaching original exception to InternalErrorException when missing
- PB-20541 Replace usage of Cake core Exception with CakeException when not done yet
- PB-21361 Remove deprecated usage of authenticateAs in tests
- PB-21658 Add support to PHP 8.2
- PB-21618 As an administrator I want to clean up duplicated folders relations located at the root
- PB-21760 As signed-in user sharing a resource with a user already having access to the resource, it should not create duplicated folders relations
- PB-21631 Ensure the OpenPGP server key is in the keyring prior to sending any emails
- PB-21478 As an administrator, I should be able to edit SMTP settings having a sender email not being a valid email
- PB-21438 As an administrator using docker, I should be able to access the SMTP settings of my organization
- PB-21486 As an administrator, I can define the SMTP authentication method via the SMTP admin workspace
- PB-21481 As an administrator, I want emails to be sent with the sender settings defined in database, if defined in the database
- PB-21439 As an anonymous user having a second factor method enabled, I should be able to authenticate without getting a 404
- PB-21411 remove access_log configuration from location block
- PB-19192: As an administrator, I want to manage SMTP settings in the administration workspace
- PB-19151: As a user, I want to use passbolt with the Solarized light theme
- PB-19151: As a user, I want to use passbolt with the Solarized dark theme
- PB-16948: As group manager, I should be able to add users to groups without getting timeout errors
- PB-19035: TOTP is now deactivated by default and should be activated by an administrator
- PB-19200: GpgAuthenticator now asserts the message is a valid OpenPGP message prior to decryption on stage 0
- PB-19312: As a logged-in user, I want to see my first name and last name correctly displayed in email headers
- PB-18718: As a logged-in user, I want my locale not to be overwritten by the server config on pages served by the server
- PB-19261: As a logged-in user, I should not get an internal error if no filter is passed to the get resource.json entry point
- PB-19035: As a logged-in user, I should not get a not found error on MFA authentication if an administrator deactivated MFA
- PB-18515: As a user, I want to see User Agent and IP in account recovery emails
- PB-19204: Sanitize MFA redirection by forbidding redirection to external URI
- PB-19090: Protect forms from spell-jacking attack
- PB-19235: Migrate comments controllers logic into services
- PB-19603: Cover additional “add user to group” case: As group manager I can add a user to a group which have no resources shared with
- PB-6081: Move enterprise plugins into plugins/PassboltEe
- PB-6081: Move community plugins into plugins/PassboltCe
- PB-19621: Stop changing folders permissions in installation tests
- PB-19255 As an administrator I can trigger 500 errors on demand to test my logs
- PB-19090 Protect forms from spell-jacking attack
- PB-18380 Let passbolt-configure script setup certbot for RHEL9 support
- PB-18405 Redirect on non-json request if no MFA settings are found
- PB-16983 Handles the lack of permissions on image directory when deleting
- PB-16898 Redesign download a supported browser to get started
- PB-19040 As AD synchronizing with LDAP, users should be removed from passbolt groups
- PB-18415 Extends folder name length to 256 chars
- PB-18650 Add a check on mysql status in order to run mysql commands only when it's ready in unit tests
- PB-18664 Add retry logic to Gitlab CI jobs
- PB-18645 Bump Ldap tools version for better PHP8.x support
- PB-18486 Removes all resources_tags entries for tags that are not shared and for which the user_id is set to null.
- PB-18398 Fix tag regression: sets associations name to be CakePHP compatible
- PB-17072 Quotes fields in a join condition fixing Postgres
- PB-17068 Fix postgresql compatibility issue
- PB-18427 Fix LDAP/AD SELinux issue on RHEL
- PB-18381 Fix source language typos
- PB-18397 Fix as an admin I can generate a server key with the webinstaller within an instance over http
- PB-17096 Fix resource_types name and slug postgresql compatibility
- PB-18372 Bump styleguide version to 3.7.1
- PB-17068 PBL-07-003 Remove non necessary user id enumeration possibility
- PB-17098 Add rockylinux 9 support
- PB-16751 Add Redhat 9 support
- PB-16749 Add Ubuntu 22.04 support
- PB-16950 Add Spanish and Lithuanian support
- PB-14514 Add PHP8.0 support
- PB-14514 Fix PHP8.1 compatibility issues
- PB-16161 Create action log endpoint for user CRUD
- PB-16844 Common part of the user recovery and setup audit log
- PB-9738 Add account recovery organization policy settings by admins
- PB-13685 Add account recovery organization settings set with key rotation + misc cleanup
- PB-12837 Add account recovery setup for users
- PB-14236 Add account recovery request process for users
- PB-14236 Add account recovery response process by admins
- PB-14410 Add the account recovery final step for users after approval by admins
- PB-14233 List all pending account recovery requests for admins
- PB-13769 Add account recovery related email notifications to users and admins
- PB-14452 Add cleanup tasks for account recovery
- PB-16123 Remove key rotation logic from package post install scripts
- PB-15277 Remove mariadb dependency for RPM package
- PB-14947 Package versionning for RPM
- PB-15039 fixing repomd.xml signing issues
- PB-13923 Update the repository key to sign packages
- PB-13749 Update firewalld install check
- PB-13743 Fix bad condition logic so setup firewalld
- PB-13650 Delete jwt folder only while uninstalling
- PB-13783 Update selinux policy RPM package
- PB-13161 As LU I should be able to use passbolt with my Android mobile
- PB-13161 As LU I should be able to use passbolt with my IOS mobile
- PB-5967 As AD I can use passbolt with a PostgreSQL database provider [experimental]
- PB-5967 As AD I can migrate an existing instance to PostgreSQL with the help of the command line [experimental] and MySQL to Postgres migration tools, e.g. as described here: https://pgloader.readthedocs.io and here: https://pgloader.io/.
- PB-8513 As LU I can request gpg keys using pagination
- PB-6053 As LU I can request folders using pagination
- PB-13321 As a user I can use passbolt in Dutch
- PB-13321 As a user I can use passbolt in Japanese
- PB-13321 As a user I can use passbolt in Polish
- PB-12817 As LU I can import avatars having a jpeg extension
- PB-12943 As AD I should be able to see log when a user tries to sign-in with an invalid bearer token
- PB-12888 Improve performances of the operations requiring permissions accesses by replacing the single index on type by a combined index involving the requested columns
- PB-13177 As AD I should be able to see any gpg keys errors from the healthcheck
- PB-13183 As LU I should be able create resource having a name or a username of 255 characters long
- PB-13265 As AD I can create a JWT key pair even if the database is not set
- PB-13164 As AD I can cleanup duplicate entries in the favorites tables, folder_relations, groups_users and permissions
- PB-13217 PBL-06-011 Fix ACL on mobile transfer view controller
- PB-9887 Fix as AD I can send email digest from the /bin/cron script
- PB-12951 Fix as a user I shouldn’t get an error requesting the JWT refresh end point providing a MFA token with MFA disabled
- PB-12957 Fix multiple language issues reported by community
- PB-12914 Fix as a group manager I should not get multiple notifications when a group is updated
- PB-13158 As AD I should see a tip with proper directory permissions when the JWT assets healthcheck fails
- PB-12835 Move users setup/recover/register controllers logic into services to welcome the upcoming account recovery feature
- PB-12958 Fix RPM package, add https before fullbaseurl
- PB-9826 As a user I want to use passbolt natively on Edge
- PB-8371 As LU I want to see the login/MFA/recover/register screens in dark mode
- PB-8522 As LU I should see the MFA verify field having focus
- PB-9730 As AD I should be able to check avatars read issues from the healthcheck
- PB-8932 Fix as LU I should see an animation when I successfully configured MFA
- PB-9286 Fix as LU I should see the locale dropdown field of the setup/recover screen well positioned
- PB-9397 Fix as AD I shouldn't see an error on the healthcheck if the JWT auth is disabled and I never configured it
- PB-9114 Fix as lu I should be able to upload a transparent avatar in .png format.
- PB-9750 Fix spelling mistakes reported by the community
- PB-9762 Fix requesting /auth/login.json should not trigger an unexpected error
- PB-9888 Fix MFA & JWT refresh token issue, remove Bearer from the hashed session identifier
- PB-12817 Fix as LU I should be able to update jpeg avatar
- PB-12581 Fix as AD I should be able to configure the users directory integration
- PB-7374 As soft deleted but logged in user I should be forbidden to request the API
- PB-9340 Fix email queue data should be stored and deserialized as json and not php
- PB-9311 Refactor JWT and MFA plugins for better code maintainability.
- PB-8320 Implement the tests that are marked as incomplete for cleaner continuous integration test reports
- PB-8211 Psalm set to level 4
- PB-9726 Fix do not load cleanup tasks unless in CLI mode
- PB-9753 Improve table fields validation tests, do not save entity when testing the validation of properties
- PB-9310 Move avatar file_storage logic into AvatarsTable
- PB-9785 Update JWT healthcheck help messages
- PB-9656 Migrate fields from utf8mb4 to a more performant encoding when possible
