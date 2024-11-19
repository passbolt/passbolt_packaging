* [4.10.0-rc.1-1] Thu, 14 Nov 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-34458 Add v5 config flag PASSBOLT_V5_ENABLED
- PB-34459 Add metadata plugin
- PB-34450 Update resources table with metadata fields
- PB-34455 Update comments table with data field
- PB-34452 Update folders table with metadata fields
- PB-34454 Create metadata_private_keys table
- PB-34453 Create metadata_session_keys table
- PB-34456 Create metadata_keys table
- PB-34446 Add new resource_types entries for v5 resource types
- PB-34448 Update resource_types table to add deleted field
- PB-34472 Add GET/POST /metadata/settings.json endpoints
- PB-34465 Add MetadataPrivateKey entity
- PB-34466 Add MetadataPrivateKeysTable table
- PB-34460 Add MetadataKey entity
- PB-34462 Add MetadataKeysTable table
- PB-34461 As a logged-in user the settings.json provides information on the metadata plugin
- PB-34464 Cache key info in public key validation service for a single request
- PB-34467 Add POST /metadata/keys.json endpoint
- PB-34471 Add GET /metadata/keys endpoint
- PB-35259 Update support for created_by and modified_by for metadata keys
- PB-35163 Update DELETE /groups/<uuid>.json to support v5 resource format
- PB-35162 Update DELETE /users/<uuid>.json endpoint to clean up metadata private & session keys
- PB-35119 Add setup complete controller test (v5 key sharing)
- PB-35119 Start integration of user setup complete with v5 requirements
- PB-35122 Add support for v5 create, update resource entities
- PB-35152 Add DELETE /metadata/session-keys/<uuid>.json endpoint
- PB-35151 Add POST /metadata/session-keys.json endpoint
- PB-35150 Add GET /metadata/session-keys.json endpoint
- PB-34611 Add DELETE/PUT /resource-types/<uuid>.json endpoint
- PB-35365 Update POST /share/folders/<uuid>.json to support v5 logic
- PB-35363 Update GET /folders/<uuid>.json to support v5 format
- PB-35363 Update GET /folders.json to support v5 format
- PB-35921 Add API endpoint PUT /metadata/session-keys/<uuid>.json
- PB-35368 As a developer I can run a command to create metadata private key & share it with all users
- PB-35362 Update PUT /folders/<uuid>.json to support v5 format
- PB-35361 Update POST /folders.json to support v5 format
- PB-35120 Add healthcheck to try to decrypt the server metadata private key entry for the shared key
- PB-35165 Update POST /share/resources/<uuid>.json to support v5 logic
- PB-35166 Update email notification template to not include metadata (name, uri, etc.)
- PB-35166 Update POST /share/simulate/resources/<uuid>.json to support v5 logic
- PB-35157 Email changes for resources changes for V5
- PB-35157 Add validation for metadata fields
- PB-35160 Update GET /resources.json endpoint to support v5 format
- PB-35275 Add edit and create individual metadata private key endpoints
- PB-35171 Create a Service and CLI task to migrate v4 to v5 resources
- PB-35272 Add server settings to prevent edition of metadata settings and key
- PB-35260 Add signature verification for metadata private key sharing service
- PB-35277 As an administrator I must receive an email notification when a metadata key is added
- PB-35276 As an administrator I must receive an email notification when the metadata settings are updated
- PB-35751 As an administrators I can update the metadata settings using command line
- PB-35748 As an administrator I can run a command to migrate all the items to v5 format
- PB-35747 As an administrator I can run a command to migrate the folders to v5 format
- PB-35756 Update resource create endpoint to throw an error if allow_usage_of_personal_keys is set to false and personal key is used
- PB-35758 Update folders create/update endpoints to throw an error if allow_usage_of_personal_keys is set to false and personal key is used
- PB-35928 Add allow_v5_v4_downgrade to metadata types settings
- PB-35945 Add static method to cache and reuse MetadataTypesSettingsGetService results
- PB-35946 Add static method to cache and reuse MetadataKeysSettingsGetService results
- PB-35930 Update edit resource to support allow_v5_v4_downgrade settings
- PB-35931 Update edit folders to support allow_v5_v4_downgrade settings
- PB-35937 Add allow_v5_v4_downgrade settings to passbolt update_metadata_types_settings command
- PB-35084 Add the distribution/gpg information in the health-check
- PB-35866 Add OperatingSystemHealthcheck for 32 vs 64 bit
- PB-36228 ResourceCreateController should populate empty metadata_key_id if key type is user_key
- PB-36280 Add created_by and modified_by to metadata keys index service
- PB-34080 As an admin running the passbolt cleanup, I should delete duplicate resources_tags entries
- PB-36516 Add populatedMetadataUserKeyId request data massaging to folder create and update
- PB-36515 Add populatedMetadataUserKeyId request data massaging to resource edit
- PB-36558 Add baseline support for metadata key expiry
- PB-35085 Add TimeSyncHealthcheck for system clock sync status
- PB-36574 As a user I can delete a metadata key that is expired and not in use
- PB-34609 Adds is-deleted filter and resources_count contain to ResourceTypesIndexController.php
- PB-35882 Bump cakephp/twig-view to 1.3.1 to get rid of twig security vulnerability warning
- PB-36609 Bump twig/twig composer package to v3.11.2
- PB-36609 Bump symfony/process composer package to v5.4.46
- PB-34189 Fix 500 on GET resources.json when passing 1 as parameter to some filters
- PB-35173 As a logged-in user I should not get a 500 if the folder does not exist
- PB-34481 Fix 500 error on /mfa/verify/{provider}.json on account with no 2FA set up
- PB-35669 Fix GenerateOpenPGPKeyService should default to GNUPGHOME environment variable if set
- PB-35724 Fix GenerateOpenPGPKeyService should generate key with empty passphrase
- PB-35709 Fix theme back to default randomly after refresh or navigation
- PB-35849 Fix API app does not update "Last logged in" time
- PB-35980 Fix has-parent filter returning duplicate resources (GITHUB #523)
- PB-36208 Fix LogFolderWritableHealthcheck help text paths
- PB-34399 Bump singpolyma/openpgp-php package to v0.7
- PB-34305 Upgrade lockfile-lint library on passbolt_api package-lock.json
- PB-34306 Upgrade openpgp library on passbolt_api package-lock.json
- PB-33333 Refactor GroupUpdateControllerTest to use Fixture Factories
- PB-33332 Refactor ResourcesDeleteControllerTest to use Fixture Factories
- PB-33332 Refactor ResourcesUpdateControllerTest to use Fixture Factories
- PB-33332 Refactor ResourcesViewControllerTest to use Fixture Factories
- PB-33332 Refactor resource index controller test
- PB-22603 Refactor resources share service test with factories
- PB-33331 Add missing test cases for RecoverCompleteService
- PB-35433 Fix phpcs config to allow per file fixing in IDE
- PB-33330 Add missing test cases for SetupCompleteService
- PB-33329 Add missing test cases for RecoverAbortService
- PB-35777 Remove cloaking !empty() around method calls
- PB-35856 Fix up editorconfig for composer.json editing
- PB-35918 Bump composer/composer package to 2.8.1
- PB-34234 CI changes to use downstream repo
- PB-36605 Fix testVersionCommand_Compare_With_ChangeLogs failing test
- PB-35763 Refactor resource tags add controller
- PB-36607 Bump cakephp/cakephp composer package version to 4.5.7

* [4.10.0-test.1-1] Thu, 14 Nov 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-34458 Add v5 config flag PASSBOLT_V5_ENABLED
- PB-34459 Add metadata plugin
- PB-34450 Update resources table with metadata fields
- PB-34455 Update comments table with data field
- PB-34452 Update folders table with metadata fields
- PB-34454 Create metadata_private_keys table
- PB-34453 Create metadata_session_keys table
- PB-34456 Create metadata_keys table
- PB-34446 Add new resource_types entries for v5 resource types
- PB-34448 Update resource_types table to add deleted field
- PB-34472 Add GET/POST /metadata/settings.json endpoints
- PB-34465 Add MetadataPrivateKey entity
- PB-34466 Add MetadataPrivateKeysTable table
- PB-34460 Add MetadataKey entity
- PB-34462 Add MetadataKeysTable table
- PB-34461 As a logged-in user the settings.json provides information on the metadata plugin
- PB-34464 Cache key info in public key validation service for a single request
- PB-34467 Add POST /metadata/keys.json endpoint
- PB-34471 Add GET /metadata/keys endpoint
- PB-35259 Update support for created_by and modified_by for metadata keys
- PB-35163 Update DELETE /groups/<uuid>.json to support v5 resource format
- PB-35162 Update DELETE /users/<uuid>.json endpoint to clean up metadata private & session keys
- PB-35119 Add setup complete controller test (v5 key sharing)
- PB-35119 Start integration of user setup complete with v5 requirements
- PB-35122 Add support for v5 create, update resource entities
- PB-35152 Add DELETE /metadata/session-keys/<uuid>.json endpoint
- PB-35151 Add POST /metadata/session-keys.json endpoint
- PB-35150 Add GET /metadata/session-keys.json endpoint
- PB-34611 Add DELETE/PUT /resource-types/<uuid>.json endpoint
- PB-35365 Update POST /share/folders/<uuid>.json to support v5 logic
- PB-35363 Update GET /folders/<uuid>.json to support v5 format
- PB-35363 Update GET /folders.json to support v5 format
- PB-35368 As a developer I can run a command to create metadata private key & share it with all users
- PB-35362 Update PUT /folders/<uuid>.json to support v5 format
- PB-35361 Update POST /folders.json to support v5 format
- PB-35120 Add healthcheck to try to decrypt the server metadata private key entry for the shared key
- PB-35165 Update POST /share/resources/<uuid>.json to support v5 logic
- PB-35166 Update email notification template to not include metadata (name, uri, etc.)
- PB-35166 Update POST /share/simulate/resources/<uuid>.json to support v5 logic
- PB-35157 Email changes for resources changes for V5
- PB-35157 Add validation for metadata fields
- PB-35160 Update GET /resources.json endpoint to support v5 format
- PB-35275 Add edit and create individual metadata private key endpoints
- PB-35171 Create a Service and CLI task to migrate v4 to v5 resources
- PB-35272 Add server settings to prevent edition of metadata settings and key
- PB-35260 Add signature verification for metadata private key sharing service
- PB-35277 As an administrator I must receive an email notification when a metadata key is added
- PB-35276 As an administrator I must receive an email notification when the metadata settings are updated
- PB-35751 As an administrators I can update the metadata settings using command line
- PB-35748 As an administrator I can run a command to migrate all the items to v5 format
- PB-35747 As an administrator I can run a command to migrate the folders to v5 format
- PB-35756 Update resource create endpoint to throw an error if allow_usage_of_personal_keys is set to false and personal key is used
- PB-35758 Update folders create/update endpoints to throw an error if allow_usage_of_personal_keys is set to false and personal key is used
- PB-35928 Add allow_v5_v4_downgrade to metadata types settings
- PB-35084 Add the distribution/gpg information in the health-check
- PB-35866 Add OperatingSystemHealthcheck for 32 vs 64 bit
- PB-36228 ResourceCreateController should populate empty metadata_key_id if key type is user_key
- PB-36280 Add created_by and modified_by to metadata keys index service
- PB-34080 As an admin running the passbolt cleanup, I should delete duplicate resources_tags entries
- PB-36516 Add populatedMetadataUserKeyId request data massaging to folder create and update
- PB-36515 Add populatedMetadataUserKeyId request data massaging to resource edit
- PB-36558 Add baseline support for metadata key expiry
- PB-35085 Add TimeSyncHealthcheck for system clock sync status
- PB-36574 As a user I can delete a metadata key that is expired and not in use
- PB-34609 Adds is-deleted filter and resources_count contain to ResourceTypesIndexController.php
- PB-35882 Bump cakephp/twig-view to 1.3.1 to get rid of twig security vulnerability warning
- PB-36609 Bump twig/twig composer package to v3.11.2
- PB-36609 Bump symfony/process composer package to v5.4.46
- PB-34189 Fix 500 on GET resources.json when passing 1 as parameter to some filters
- PB-35173 As a logged-in user I should not get a 500 if the folder does not exist
- PB-34481 Fix 500 error on /mfa/verify/{provider}.json on account with no 2FA set up
- PB-35669 Fix GenerateOpenPGPKeyService should default to GNUPGHOME environment variable if set
- PB-35724 Fix GenerateOpenPGPKeyService should generate key with empty passphrase
- PB-35709 Fix theme back to default randomly after refresh or navigation
- PB-35849 Fix API app does not update "Last logged in" time
- PB-35980 Fix has-parent filter returning duplicate resources (GITHUB #523)
- PB-36208 Fix LogFolderWritableHealthcheck help text paths
- PB-34399 Bump singpolyma/openpgp-php package to v0.7
- PB-34305 Upgrade lockfile-lint library on passbolt_api package-lock.json
- PB-34306 Upgrade openpgp library on passbolt_api package-lock.json
- PB-33333 Refactor GroupUpdateControllerTest to use Fixture Factories
- PB-33332 Refactor ResourcesDeleteControllerTest to use Fixture Factories
- PB-33332 Refactor ResourcesUpdateControllerTest to use Fixture Factories
- PB-33332 Refactor ResourcesViewControllerTest to use Fixture Factories
- PB-33332 Refactor resource index controller test
- PB-22603 Refactor resources share service test with factories
- PB-33331 Add missing test cases for RecoverCompleteService
- PB-35433 Fix phpcs config to allow per file fixing in IDE
- PB-33330 Add missing test cases for SetupCompleteService
- PB-33329 Add missing test cases for RecoverAbortService
- PB-35777 Remove cloaking !empty() around method calls
- PB-35856 Fix up editorconfig for composer.json editing
- PB-35918 Bump composer/composer package to 2.8.1
- PB-34234 CI changes to use downstream repo
- PB-36605 Fix testVersionCommand_Compare_With_ChangeLogs failing test
- PB-35763 Refactor resource tags add controller
- PB-36607 Bump cakephp/cakephp composer package version to 4.5.7

* [4.9.1-1] Wed, 14 Aug 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-34220 As a user I can search by users and groups case insensitively on PostgreSQL
- PB-34246 As an administrator purging the action logs table, I can set a limit option (100k per default)
- PB-34247 Adds a set of actions to be purged by the passbolt action_logs_purge command
- PB-33939 As an administrator when running bin/cake passbolt -h, I should see all the passbolt commands listed
- PB-32991 Optimizes CI pipeline run time on api repositories
- PB-34219 Adds validation to retention days option in the action_logs_purge command
- PB-33333 Refactor various tests to use fixture factories

* [4.9.0-1] Tue, 23 Jul 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-33690 Improves response times by adding an index to gpgkeys.user_id column
- PB-33639 Adds additional contain parameters to share/search-aros.json for enhanced performance
- PB-33936 Adds a has-users filter to gpgkeys.json index endpoint
- PB-33813 Adds a fixed limit to the search-aros.json endpoint
- PB-33616 As a user creating a resource I should get a validation error if the secret is a string and not an array
- PB-33664 Fix missing "is" in the database schema up to date sentence (GITHUB #517)
- PB-33429 As a user I should retrieve resources and folders parent folders in a single query
- PB-33826 Improves the performance of resources.json by improving the datetime fields processing
- PB-24995 Improves last_logged_in property query performance to reduce response time of users.json endpoint
- PB-33653 Improves is_mfa_enabled property query performance to reduce response time of users.json endpoint
- PB-33702 Improves has-access filter performance on users.json
- PB-32591 Validate passbolt.plugins.smtpSettings.security configuration values before passing it to SMTP server
- PB-33214 Update sql export / improve mysql backup command compatibility with mariadb-dump
- PB-33692 Bump enygma/yubikey to v3.8
- PB-33747 Fix command injections vulnerabilities in composer/composer package

* [4.9.0-rc.1-1] Thu, 18 Jul 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-33690 Improves response times by adding an index to gpgkeys.user_id column
- PB-33639 Adds additional contain parameters to share/search-aros.json for enhanced performance
- PB-33936 Adds a has-users filter to gpgkeys.json index endpoint
- PB-33813 Adds a fixed limit to the search-aros.json endpoint
- PB-33429 As a user I should retrieve resources and folders parent folders in a single query
- PB-33826 Improves the performance of resources.json by improving the datetime fields processing
- PB-24995 Improves last_logged_in property query performance to reduce response time of users.json endpoint
- PB-33653 Improves is_mfa_enabled property query performance to reduce response time of users.json endpoint
- PB-33702 Improves has-access filter performance on users.json
- PB-32591 Validate passbolt.plugins.smtpSettings.security configuration values before passing it to SMTP server
- PB-33214 Update sql export / improve mysql backup command compatibility with mariadb-dump
- PB-33747 Fix command injections vulnerabilities in composer/composer package
- PB-33616 As a user creating a resource I should get a validation error if the secret is a string and not an array
- PB-33692 Bump enygma/yubikey to v3.8

* [4.8.0-2] Thu, 20 Jun 2024 Passbolt SA package signing key <contact@passbolt.com>
- Fix RPM publishing job
- PB-33812 OpenSUSE pipeline php issues
- PB-33719 As an administrator I can install on RPM systems without Remi Repo
- Remove php-redis dependency

* [4.8.0-1] Tue, 21 May 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-33071 As an administrator I can purge the action logs table with a dedicated command
- PB-33231 As an administrator I want to know if a custom certificate is in use for SMTP
- PB-32579 As an administrator I can view email_queue records via passbolt command
- PB-32888 As an admin I should not get a time-out on health checks on air-gapped network
- PB-32983 Access email settings only when emails are sent
- PB-33451 Fix 500 error on authentication when nonce is not a string
- PB-33073 As a user logging in, invalid login operation should not be logged as success in the audit logs
- PB-33234 The application should not throw an error if the JWT public key is not parsable
- PB-30314 Bump passbolt/passbolt-test-data to v4.8

* [4.8.0-rc.1-1] Fri, 17 May 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-33071 As an administrator I can purge the action logs table with a dedicated command
- PB-33231 As an administrator I want to know if a custom certificate is in use for SMTP
- PB-32579 As an administrator I can view email_queue records via passbolt command
- PB-32888 As an admin I should not get a time-out on health checks on air-gapped network
- PB-32983 Access email settings only when emails are sent
- PB-33451 Fix 500 error on authentication when nonce is not a string
- PB-33073 As a user logging in, invalid login operation should not be logged as success in the audit logs
- PB-33234 The application should not throw an error if the JWT public key is not parsable
- PB-30314 Bump passbolt/passbolt-test-data to v4.8

* [4.7.0-1] Tue, 30 Apr 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-30330 Add HTTP HEAD method support to /healthcheck/status.json to support more uptime monitoring tools (GITHUB #507)
- PB-26156 As an administrator I can configure SMTP to use TLS with a self-signed cert on my mail server (GITHUB #498)
- PB-30255 As an authenticated user I cannot access to the healthcheck endpoint when debug is on
- PB-30379 As an authenticating user I should not get a 500 if the gpg_auth is not an array
- PB-32889 As an administrator I should not get an exception when running core healthcheck and the host cannot be resolved
- PB-32928 As user I should see the accurate URL in the email footer when passbolt runs on multiple instances
- PB-32566 As a user setting up my account I should not get an unexpected 500
- PB-32903 Fix deprecation error on password expiry settings validation
- PB-29983 Refactor health check code domain for better maintenance
- PB-30394 Moves code in ActionLogsModelListener into a dedicated service
- PB-32881 Disable by default all plugins in integration tests
- PB-32978 Use dependency proxy to reduce docker pull limit
- PB-22605 Refactor ShareSearchControllerTest, SecretViewControllerTest and GroupsDeleteControllerTest with fixture factories
- PB-32594 Add tests for SecretCreateService

* [4.7.0-rc.1-1] Fri, 26 Apr 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-30330 Add HTTP HEAD method support to /healthcheck/status.json to support more uptime monitoring tools (GITHUB #507)
- PB-26156 As an administrator I can configure SMTP to use TLS with a self-signed cert on my mail server (GITHUB #498)
- PB-30255 As an authenticated user I cannot access to the healthcheck endpoint when debug is on
- PB-30379 As an authenticating user I should not get a 500 if the gpg_auth is not an array
- PB-32889 As an administrator I should not get an exception when running core healthcheck and the host cannot be resolved
- PB-32928 As user I should see the accurate URL in the email footer when passbolt runs on multiple instances
- PB-32566 As a user setting up my account I should not get an unexpected 500
- PB-32903 Fix deprecation error on password expiry settings validation
- PB-29983 Refactor health check code domain for better maintenance
- PB-30394 Moves code in ActionLogsModelListener into a dedicated service
- PB-32881 Disable by default all plugins in integration tests
- PB-32978 Use dependency proxy to reduce docker pull limit
- PB-22605 Refactor ShareSearchControllerTest, SecretViewControllerTest and GroupsDeleteControllerTest with fixture factories
- PB-32594 Add tests for SecretCreateService

* [4.6.2-1] Thu, 11 Apr 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-32932 Fix error template title

* [4.6.1-1] Wed, 27 Mar 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-32354 As an admin, I can re-enable a suspended user (GITHUB #512)

* [4.6.0-1] Thu, 14 Mar 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-24485 As an administrator I can view the API healthcheck in the administration section
- PB-29396 As an administrator I can hide the share folder capability with a RBAC
- PB-25463 As an administrator I can disable the healthcheck index endpoint with a flag
- PB-29397 As an administrator I can disable the healthcheck administration panel with a flag
- PB-29009 As an administrator completing my setup I should not receive a notification that I completed my setup
- PB-26152 The API should identify openpgpjs v5.10 revoked key as revoked
- PB-29437 As an administrator I can log internal errors with the complete trace in Json format
- PB-30155 Update phpseclib/phpseclib to fix composer security vulnerability
- PB-30019 As a user I should not get a 500 when editing a user with payload containing integers as fields
- PB-29964 As an administrator disabling a user I should not get a 500 if the disabled date is not valid
- PB-29970 As a group manager I should receive an accurate summary in my notifications on group permission changes
- PB-29054 As an administrator I should not get an error when running the cleanup command and the users table does not exist
- PB-28719 As an administrator sending emails the timezone displayed in the emails should be in the correct time zone
- PB-30266 As an administrator sending emails with the email digest the message ID should be defined
- PB-28247 Update cakephp/cakephp to version 4.5

* [4.6.0-rc.2-1] Wed, 13 Mar 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-30182 Build the styleguide on version 4.6.1

* [4.6.0-rc.1-1] Tue, 12 Mar 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-24485 As an administrator I can view the API healthcheck in the administration section
- PB-29396 As an administrator I can hide the share folder capability with a RBAC
- PB-25463 As an administrator I can disable the healthcheck index endpoint with a flag
- PB-29397 As an administrator I can disable the healthcheck administration panel with a flag
- PB-29009 As an administrator completing my setup I should not receive a notification that I completed my setup
- PB-26152 The API should identify openpgpjs v5.10 revoked key as revoked
- PB-29437 As an administrator I can log internal errors with the complete trace in Json format
- PB-30155 Update phpseclib/phpseclib to fix composer security vulnerability
- PB-30019 As a user I should not get a 500 when editing a user with payload containing integers as fields
- PB-29964 As an administrator disabling a user I should not get a 500 if the disabled date is not valid
- PB-29970 As a group manager I should receive an accurate summary in my notifications on group permission changes
- PB-29054 As an administrator I should not get an error when running the cleanup command and the users table does not exist
- PB-28719 As an administrator sending emails the timezone displayed in the emails should be in the correct time zone
- PB-30266 As an administrator sending emails with the email digest the message ID should be defined
- PB-28247 Update cakephp/cakephp to version 4.5

* [4.5.2-1] Wed, 14 Feb 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-29621 As a user I should get a 400 if the locale passed in the URL is not a string
- PB-28867 As a user I should see an improved performance when requesting the folder index endpoint
- PB-28635 As an administrator I can disable the email digest without having to change the command sending the emails
- PB-29680 Bump dependency composer/composer to v2.7.0
- PB-29109 Support PHP 8.3 for passbolt API
- PB-29376 GITHUB-506 Bump dependency duosecurity/duo_universal_php to 1.0.2 (#506)
- PB-29514 Fix password expiry test which randomly fails
- PB-29625 Fix CI to support latest composer dependency version

* [4.5.0-1] Thu, 08 Feb 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-23913 As a user I can see my passwords marked as expired when users lose permissions on these
- PB-23913 As an administrator I can activate the password expiry feature
- PB-28923 As a user I want to be able to use passbolt in Russian
- PB-21484 As an administrator I can define Microsoft 365 and Outlook providers in SMTP settings
- PB-19652 As an administrator I can cleanup groups with no members with the cleanup command
- PB-27707 As administrator, with RBAC I should be able to set “can see users workspace” to “Allow if group manager”
- PB-28716 Desktop application flag is now enabled by default
- PB-26203 Desktop app define the account kit exportation help page
- PB-27616 Improve resources serialization performance on GET resources.json
- PB-29148 Bump selenium API plugin version to v4.5
- PB-29005 Upgrades phpseclib/phpseclib to fix composer audit security vulnerability
- PB-22336 As an admin I should be able to enable/disable request group managers to add users to groups emails separately (LDAP/AD)
- PB-28871 Mitigate supply chain attack on PR and lint lock files
- PB-28658 Mitigate supply chain attack on post npm install script
- PB-29200 Fixes the recover_user command (GITHUB #504)
- PB-29164 Fix recent InstallCommand changes breaking selenium tests
- PB-29132 Fix composer lock file not up-to-date message when installing dependencies
- PB-29160 Fix failing static analysis job in CI
- PB-29137 Fix failing in UsersEditDisableControllerTest file due to purifier
- PB-29113 Fix a typo in the email sent when admins lose their admin role
- PB-28130 Fix invalid cookie name should not trigger a 500
- PB-29007 Fix constantly failing test in RbacsUpdateControllerTest file
- PB-28991 Fix email queue entries not marked as sent
- PB-28857 Require phpunit-speedtrap to track down slow tests
- PB-25516 Remove --dev from .gitlab test options, it has not effect and will break with composer v3
- PB-28844 Improves the methods testing email content
- PB-28845 Skip unauthenticated exception from logging
- PB-28653 Speed-up tests by mocking the client in healthcheck relevant tests

* [4.5.0-rc.1-1] Thu, 01 Feb 2024 Passbolt SA package signing key <contact@passbolt.com>
- PB-23913 As a user I can see my passwords marked as expired when users lose permissions on these
- PB-23913 As an administrator I can activate the password expiry feature
- PB-28923 As a user I want to be able to use passbolt in Russian
- PB-21484 As an administrator I can define Microsoft 365 and Outlook providers in SMTP settings
- PB-19652 As an administrator I can cleanup groups with no members with the cleanup command
- PB-27707 As administrator, with RBAC I should be able to set “can see users workspace” to “Allow if group manager”
- PB-28716 Desktop application flag is now enabled by default
- PB-26203 Desktop app define the account kit exportation help page
- PB-27616 Improve resources serialization performance on GET resources.json
- PB-29148 Bump selenium API plugin version to v4.5
- PB-29005 Upgrades phpseclib/phpseclib to fix composer audit security vulnerability
- PB-22336 As an admin I should be able to enable/disable request group managers to add users to groups emails separately (LDAP/AD)
- PB-28871 Mitigate supply chain attack on PR and lint lock files
- PB-28658 Mitigate supply chain attack on post npm install script
- PB-29200 Fixes the recover_user command (GITHUB #504)
- PB-29164 Fix recent InstallCommand changes breaking selenium tests
- PB-29132 Fix composer lock file not up-to-date message when installing dependencies
- PB-29160 Fix failing static analysis job in CI
- PB-29137 Fix failing in UsersEditDisableControllerTest file due to purifier
- PB-29113 Fix a typo in the email sent when admins lose their admin role
- PB-28130 Fix invalid cookie name should not trigger a 500
- PB-29007 Fix constantly failing test in RbacsUpdateControllerTest file
- PB-28991 Fix email queue entries not marked as sent
- PB-28857 Require phpunit-speedtrap to track down slow tests
- PB-25516 Remove --dev from .gitlab test options, it has not effect and will break with composer v3
- PB-28844 Improves the methods testing email content
- PB-28845 Skip unauthenticated exception from logging
- PB-28653 Speed-up tests by mocking the client in healthcheck relevant tests

* [4.4.2-1] Wed, 29 Nov 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-27616 As a user I should see improved performances when retrieving resources on the GET resources.json entry point
- PB-28991 As a user emails should be resent if the first attempt failed

* [4.4.1-1] Tue, 21 Nov 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-28521 Alter the gpgkeys.uid column length to 769 to enable the synchronisation of user with very long names
- PB-27957 As an administrator I should be notified that an administrator was deleted only when an administrator has been deleted, and not a regular user
- PB-27927 Remove unused user_agents table
- PB-28616 Refactor the email digest plugin code for easier usage and maintainability

* [4.4.0-1] Tue, 07 Nov 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-27773 As an administrator I can deny access to the mobile setup screen with RBAC
- PB-27951 As system operator I should be warned in the healthcheck when using PHP < 8.1, as support for PHP versions 7.4 and 8.0 will soon be removed
- PB-27948 Guest identification by their username should be case-insensitive, unless specified in configuration
- PB-27957 Send notifications to all administrators when an administrator is deleted
- PB-27941 Send notifications to administrators when an administrator loses its administrator role
- PB-28171 Enable the email digest by default
- PB-28274 Fixes an XSS Security issue with mail content sanitization
- PB-25477 As an administrator, I should be able to recreate a user with an email that exists in the db via the command line
- PB-27799 As an administrator installing passbolt on PostgreSQL, the database encoding should be set to utf-8
- PB-27857 Fix help site release notes automation by adding flavour on help site release notes merge request
- PB-27932 Improve code static by using cakedccakephp/phpstan
- PB-28079 Remove deprecation warnings from the test suite

* [4.4.0-rc.1-1] Fri, 03 Nov 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-27773 As an administrator I can deny access to the mobile setup screen with RBAC
- PB-27951 As system operator I should be warned in the healthcheck when using PHP < 8.1, as support for PHP versions 7.4 and 8.0 will soon be removed
- PB-27948 Guest identification by their username should be case-insensitive, unless specified in configuration
- PB-27957 Send notifications to all administrators when an administrator is deleted
- PB-27941 Send notifications to administrators when an administrator loses its administrator role
- PB-28171 Enable the email digest by default
- PB-28274 Fixes an XSS Security issue with mail content sanitization
- PB-25477 As an administrator, I should be able to recreate a user with an email that exists in the db via the command line
- PB-27799 As an administrator installing passbolt on PostgreSQL, the database encoding should be set to utf-8
- PB-27857 Fix help site release notes automation by adding flavour on help site release notes merge request
- PB-27932 Improve code static by using cakedccakephp/phpstan
- PB-28079 Remove deprecation warnings from the test suite

* [4.3.0-1] Tue, 26 Sep 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-25405 As an administrator installing passbolt through the web installer, I should be able to configure authentication method for SMTP
- PB-25185 As a signed-in user on the browser extension, I want to export my account to configure the Windows application
- PB-25944 As an administrator I can define the schema on installation with Postgres
- PB-25497 As an administrator I can disable users (experimental)
- PB-25999 Performance optimisation of update secret process
- PB-26097 Adds cake.po translation files for all languages supported by CakePHP
- PB-25827 As a user with encrypted message enabled in the email content visibility, I would like to see the gpg message encrypted with my key when a password is updated
- PB-25802 As a user I want to see localized date in my emails
- PB-25863 Fix emails not sent due to message-id header missing
- PB-27799 As an administrator installing passbolt on PostgreSQL, the database encoding should be set to utf-8
- PB-25894 Run CI on postgres versions 13 and 15 instead of version 12 only
- PB-25969 As a developer, I can render emails in tests with html special chars
- PB-26107 Upgrade the cakephp/chronos library
- PB-26159 Update singpolyma/openpgp-php to improve compatibility with PHP 8.2
- PB-25247 Add integration tests on the MFA select provider endpoint

* [4.3.0-rc.1-1] Thu, 21 Sep 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-25405 As an administrator installing passbolt through the web installer, I should be able to configure authentication method for SMTP
- PB-25185 As a signed-in user on the browser extension, I want to export my account to configure the Windows application
- PB-25944 As an administrator I can define the schema on installation with Postgres
- PB-25497 As an administrator I can disable users (experimental)
- PB-25999 Performance optimisation of update secret process
- PB-26097 Adds cake.po translation files for all languages supported by CakePHP
- PB-25827 As a user with encrypted message enabled in the email content visibility, I would like to see the gpg message encrypted with my key when a password is updated
- PB-25802 As a user I want to see localized date in my emails
- PB-25863 Fix emails not sent due to message-id header missing
- PB-25894 Run CI on postgres versions 13 and 15 instead of version 12 only
- PB-25969 As a developer, I can render emails in tests with html special chars
- PB-26107 Upgrade the cakephp/chronos library
- PB-26159 Update singpolyma/openpgp-php to improve compatibility with PHP 8.2
- PB-25247 Add integration tests on the MFA select provider endpoint

* [4.2.0-1] Thu, 24 Aug 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24987 As an administrator I can define the password policies from the administration UI
- PB-25462 As an administrator I can deactivate RBACs with a feature flag
- PB-25036 As an administrator I can select PostgreSQL as database driver on installation
- PB-21403 As an administrator I can purge the email queue table from the command line
- PB-24990 Performance optimisation of the cleanup command responsible to delete secrets without permissions
- PB-25263 Performance optimisation of the entry point retrieving the folders activity logs
- PB-25264 Performance optimisation of all the SQL queries retrieving user profiles
- PB-25199 Lower case UUIDs given as requests parameters before marshalling and persisting data
- PB-25389 As an administrator healthcheck/status.json requests should not be logged in the action_logs table
- PB-25734 As a user I do not want the first letters of my first and last names upper-cased when my profile is saved
- PB-25181 CSRF cookie should have secure flag set when site is served under HTTPs
- PB-25798 Fixes laminas/laminas-diactoros vulnerability by using the longwave/laminas-diactoros package
- PB-25472 As a user I can use an SMTP server using NTLM authentication
- PB-25475 As an administrator running the healthcheck, I should be warned for self-signed and wildcard certs instead of having a failure
- PB-25720 As an administrator I should not see a false error in the healthcheck when reading the App.base config
- PB-21412 Upgrade phpstan to v1.10.15
- PB-21413 Upgrade psalm version to v5.12.0
- PB-21414 Upgrade cakephp codesniffer to v4.7
- PB-21672 Bump lorenzo/cakephp-email-queue package to 5.1
- PB-21917 Bump bcrowe/cakephp-api-pagination to v3.0.0
- PB-21918 Bump spomky-labs/otphp to v10.0.3
- PB-21919 Update enygma/yubikey package
- PB-22052 Passbolt test data version bump to v4.1.0
- PB-25379 Update vierge-noire/cakephp-fixture-factories package
- PB-24575 As a developer release notes should be automatically published on Github on new tag release
- PB-25471 As a developer Crowdin should export only a selected subset of languages
- PB-25801 As a developer I can create unpublished test packages

* [4.2.0-rc.2-1] Thu, 24 Aug 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-25964 As a user login with JWT authentication the verify-token in the challenge should not be lower cased

* [4.2.0-rc.1-1] Wed, 23 Aug 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24987 As an administrator I can define the password policies from the administration UI
- PB-25462 As an administrator I can deactivate RBACs with a feature flag
- PB-25036 As an administrator I can select PostgreSQL as database driver on installation
- PB-21403 As an administrator I can purge the email queue table from the command line
- PB-24990 Performance optimisation of the cleanup command responsible to delete secrets without permissions
- PB-25263 Performance optimisation of the entry point retrieving the folders activity logs
- PB-25264 Performance optimisation of all the SQL queries retrieving user profiles
- PB-25199 Lower case UUIDs given as requests parameters before marshalling and persisting data
- PB-25389 As an administrator healthcheck/status.json requests should not be logged in the action_logs table
- PB-25734 As a user I do not want the first letters of my first and last names upper-cased when my profile is saved
- PB-25181 CSRF cookie should have secure flag set when site is served under HTTPs
- PB-25798 Fixes laminas/laminas-diactoros vulnerability by using the longwave/laminas-diactoros package
- PB-25472 As a user I can use an SMTP server using NTLM authentication
- PB-25475 As an administrator running the healthcheck, I should be warned for self-signed and wildcard certs instead of having a failure
- PB-25720 As an administrator I should not see a false error in the healthcheck when reading the App.base config
- PB-21412 Upgrade phpstan to v1.10.15
- PB-21413 Upgrade psalm version to v5.12.0
- PB-21414 Upgrade cakephp codesniffer to v4.7
- PB-21672 Bump lorenzo/cakephp-email-queue package to 5.1
- PB-21917 Bump bcrowe/cakephp-api-pagination to v3.0.0
- PB-21918 Bump spomky-labs/otphp to v10.0.3
- PB-21919 Update enygma/yubikey package
- PB-22052 Passbolt test data version bump to v4.1.0
- PB-25379 Update vierge-noire/cakephp-fixture-factories package
- PB-24575 As a developer release notes should be automatically published on Github on new tag release
- PB-25471 As a developer Crowdin should export only a selected subset of languages
- PB-25801 As a developer I can create unpublished test packages

* [4.1.2-1] Wed, 26 Jul 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-25472 Fix emails not sent for SMTP server using NTLM authentication
- PB-25471 Crowdin should export only a selected subset of languages

* [4.1.2-rc.2-1] Wed, 26 Jul 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-25472 Fix emails not sent for SMTP server using NTLM authentication
- PB-25471 Crowdin should export only a selected subset of languages

* [4.1.1-1] Thu, 13 Jul 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-25304 As an administrator the application healthcheck should compare passbolt version with the latest stable release
- PB-25325 As an administrator running the database healthcheck I should not see a false fail on the default database content

* [4.1.1-rc.2-1] Wed, 12 Jul 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-25304 As an administrator the application healthcheck should compare passbolt version with the latest stable release

* [4.1.1-rc.1-1] Tue, 11 Jul 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-25325 As an administrator running the database healthcheck I should not see a false fail on the default database content

* [4.1.0-1] Tue, 04 Jul 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24259 As an administrator I can define with role based access control users' rights
- PB-24744 As a LU the date time format in the response always display the time zone
- PB-24929 As a LU with multiple MFA providers setup, the latest provider used is proposed by default
- PB-24488 Non-JSON request should return a 404 if JSON is required
- PB-24617 As LU I want improved performance while sharing a folder with a user
- PB-25030 As an admin I can set a feature flag to prevent user email enumeration
- PB-24273 As an admin I can disable the GET auth/logout.json endpoint (enabled by default)
- PB-19510 As a user I should be redirected to HTTPS if SSL FORCE configuration is true
- PB-24566 As an admin the email settings password should be masked in the test email command log output
- PB-23591 As a user authenticating I can perform a limited amount of TOTP MFA attempts
- PB-24658 As an admin I should see no false warning in the email notification configuration section
- PB-25275 As an admin I should see the option page during installation after creating the server GPG keys
- PB-25276 As an admin on installation SSL force option should be set to true if the installation is launched over https
- PB-25274 Set force SSL config to false by default
- PB-24925 Updates the fixture factories to its latest version
- PB-24913 Removes "type" from required JSON schema definition for TOTP resource types
- PB-24305 Recovery and register legacy routes are not used in emails and commands outputs
- PB-21604 Extract composer audit task from checkstyle job and make it non-blocking
- PB-21641 Rename check-style job to static-analysis and make it blocking

* [4.1.0-rc.3-1] Thu, 29 Jun 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-25275 As an admin I should see the option page during installation after creating the server GPG keys

* [4.1.0-rc.2-1] Wed, 28 Jun 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24273 As an admin I can disable the GET auth/logout.json endpoint (enabled by default)
- PB-25274 Set force SSL config to false by default
- PB-25276 Webinstaller SSL force option should be set to true if the installation is launched over https

* [4.1.0-rc.1-1] Wed, 28 Jun 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24259 As an administrator I can define with role based access control users' rights
- PB-24744 As a LU the date time format in the response always display the time zone
- PB-24929 As a LU with multiple MFA providers setup, the latest provider used is proposed by default
- PB-24488 Non-JSON request should return a 404 if JSON is required
- PB-24617 As LU I want improved performance while sharing a folder with a user
- PB-25030 As an admin I can set a feature flag to prevent user email enumeration
- PB-24273 As an admin I can enable the GET auth/logout.json endpoint (disabled by default)
- PB-19510 As a user I should be redirected to HTTPS if SSL FORCE configuration is true
- PB-24566 As an admin the email settings password should be masked in the test email command log output
- PB-23591 As a user authenticating I can perform a limited amount of TOTP MFA attempts
- PB-24658 As an admin I should see no false warning in the email notification configuration section
- PB-24925 Updates the fixture factories to its latest version
- PB-24913 Removes "type" from required JSON schema definition for TOTP resource types
- PB-24305 Recovery and register legacy routes are not used in emails and commands outputs
- PB-21604 Extract composer audit task from checkstyle job and make it non-blocking
- PB-21641 Rename check-style job to static-analysis and make it blocking

* [4.0.2-1] Thu, 25 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24644 As an admin I should be able to run migrations on a 32 bit environment

* [4.0.2-rc.1-1] Wed, 24 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24644 As an admin I should be able to run migrations on a 32 bit environment

* [4.0.1-1] Tue, 23 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24644 As an admin I should be able to run migrations on a 32 bit environment

* [4.0.1-rc.1-1] Mon, 22 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24644 As an admin I should be able to run migrations on a 32 bit environment

* [4.0.0-2] Fri, 17 Mar 2023 Diego Lendoiro <diego@passbolt.com>
- PB-22874 pin php 7.4 or superior

* [4.0.0-1] Tue, 16 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24245 As LU using the API I can manage standalone TOTP and TOTP associated with passwords resources types
- PB-24086 As an admin I can create a user recovery link from the command line
- PB-23321 Upgrade CakePHP to 4.4
- PB-24296 As a developer I can retrieve in integration tests the body of json requests in array
- PB-24083 Removes the usage of the Paginator deprecated in CakePHP 4.4
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
- PB-24297 Update guzzlehttp/psr7 to fix composer audit security vulnerability

* [4.0.0-rc.5-1] Thu, 11 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24561 Upgrades cakephp/migrations library

* [4.0.0-rc.4-1] Fri, 05 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24561 - Styleguide version bump to v4.0.3

* [4.0.0-rc.3-1] Fri, 05 May 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24051 Fixes field obfuscation not to obfuscate the first element in pure array
- PB-24470 Fixes recover_user command not showing while running passbolt -h

* [4.0.0-rc.2-1] Wed, 26 Apr 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-24245 Adds two TOTP resource types feature flag
- PB-24086 As an admin, I can create a user recovery token from the command line
- PB-24056 As an admin I can view log stack traces when debug mode is enabled
- PB-24073 As a developer I should ensure that the CHANGELOG.md file is in the right format
- PB-24071 As a developer I can enable feature plugins with the plugins class name
- PB-24272 Adds contribution link in CONTRIBUTING.md
- PB-23321 Upgrade CakePHP to 4.4
- PB-24297 Update guzzlehttp/psr7 to fix composer audit security vulnerability
- PB-24296 As a developer I can retrieve in integration tests the body of json requests in array
- PB-24083 Removes the usage of the Paginator deprecated in CakePHP 4.4
- PB-23926 Bump PHPUnit to ~9.5.2 to avoid warning messages of 9.6
- PB-22758 Introduce JWT key injection to enable parallel tests
- PB-22622 Add CS rule to disallow space after NOT operator
- PB-23786 Remove PHP 7.3 from the testing pipes
- PB-24078 As a user I should receive the correct email avatar text after folder manipulation
- PB-24039 Action log event listener should not throw error on missing connection
- PB-23558 Remove PHP 8.2 deprecation warnings
- PB-23557 Remove PHP 8.1 deprecation warnings

* [3.12.2-1] Wed, 26 Apr 2023 Daniel Del Rio <daniel@passbolt.com>
- PB-24315 As signed-in user creating resources with encrypted description the API should not store unencrypted descriptions even if provided by the client

* [3.12.0-2] Fri, 17 Mar 2023 Diego Lendoiro <diego@passbolt.com>
- Fixed wrong changelog for 3.12.0-1
- Added php-redis as dependency

* [3.12.0-1] Thu, 16 Mar 2023 Passbolt SA package signing key <contact@passbolt.com>
- PB-20535 As a community user I want to use folders
- PB-22749 As an administrator I can customise passbolt to output the action logs in syslog
- PB-22749 As an administrator I can customise passbolt to output the action logs in a file
- PB-22749 As an administrator I can implement my own action logs handler
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

* [3.11.0-1] Wed, 01 Mar 2023 Diego Lendoiro <diego@passbolt.com>
- PB-22741 As an administrator I should see an error in the healthcheck if I use php 7.3 or less
- PB-22747 As an administrator I can define a regular expression to customise email validation
- PB-22866 As a user I want to use passbolt in Italian
- PB-22866 As a user I want to use passbolt in Portuguese (Brazil)
- PB-22866 As a user I want to use passbolt in Korean
- PB-22866 As a user I want to use passbolt in Romanian
- PB-21489 As a user I should not see double headers in emails sent by the email digest
- PB-22725 As an administrator I want to manage Duo v4 settings
- PB-21906 As a user I don’t want to receive email by default when I create a resource or a folder as well as I don’t want to see any details for this content by default
- PB-22416 As a developer I can safely deactivate plugins between solutions
- PB-22756 Fixes a range of failing pagination tests
- PB-22495 Refactors the SmtpTransport to enhance the code coverage of emails

* [3.10.0-1] Fri, 10 Feb 2023 Daniel Del Rio <daniel@passbolt.com>
- PB-19784 As a user I can self register if my email domain matches the policy defined by the administrators
- PB-21485 As a server administrator I want to configure the list of active proxies the instance is behind in order to get client IP when necessary
- PB-21682 As an administrator I want to configure the client option of the SMTP settings
- PB-22019 As a server administrator I want to configure TOTP MFA secret length
- PB-22327 env variable PASSBOLT_PLUGINS_SMTP_SETTINGS renamed in PASSBOLT_PLUGINS_SMTP_SETTINGS_ENABLED (backward compatible)
- PB-22406 curl and openssl extensions requirements added
- PB-22413 bump CakePHP to ^4.3.11

* [3.10.0-1] Fri, 10 Feb 2023 Daniel Del Rio <daniel@passbolt.com>
- PB-19784 As a user I can self register if my email domain matches the policy defined by the administrators
- PB-21485 As a server administrator I want to configure the list of active proxies the instance is behind in order to get client IP when necessary
- PB-21682 As an administrator I want to configure the client option of the SMTP settings
- PB-22019 As a server administrator I want to configure TOTP MFA secret length
- PB-22327 env variable PASSBOLT_PLUGINS_SMTP_SETTINGS renamed in PASSBOLT_PLUGINS_SMTP_SETTINGS_ENABLED (backward compatible)
- PB-22406 curl and openssl extensions requirements added
- PB-22413 bump CakePHP to ^4.3.11

* [3.9.0-3] Thu, 19 Jan 2023 Daniel Del Rio <daniel@passbolt.com>
- PB-22409 fix cronjob user

* [3.9.0-2] Thu, 19 Jan 2023 Daniel Del Rio <daniel@passbolt.com>
- PB-20539 As a user I can protect the authentication to passbolt with a second factor method

* [3.9.0-1] Wed, 18 Jan 2023 Daniel Del Rio <daniel@passbolt.com>
- PB-20539 As a user I can protect the authentication to passbolt with a second factor method
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

* [3.8.3-1] Thu, 01 Dec 2022 Daniel Del Rio <daniel@passbolt.com>
- PB-21631 Ensure the OpenPGP server key is in the keyring prior to sending any emails

* [3.8.1-1] Thu, 17 Nov 2022 Daniel Del Rio <daniel@passbolt.com>
- PB-21478 As an administrator, I should be able to edit SMTP settings having a sender email not being a valid email
- PB-21438 As an administrator using docker, I should be able to access the SMTP settings of my organization
- PB-21486 As an administrator, I can define the SMTP authentication method via the SMTP admin workspace
- PB-21481 As an administrator, I want emails to be sent with the sender settings defined in database, if defined in the database
- PB-21478 As an administrator, I should be able to edit SMTP settings having a sender email not being a valid email
- PB-21438 As an administrator using docker, I should be able to access the SMTP settings of my organization
- PB-21486 As an administrator, I can define the SMTP authentication method via the SMTP admin workspace
- PB-21481 As an administrator, I want emails to be sent with the sender settings defined in database, if defined in the database

* [3.8.0-2] Fri, 11 Nov 2022 Daniel Del Rio <daniel@passbolt.com>
- PB-21411 remove access_log configuration from location block

* [3.8.0-1] Thu, 10 Nov 2022 Daniel Del Rio <daniel@passbolt.com>
- PB-19192: As an administrator, I want to manage SMTP settings in the administration workspace
- PB-19151: As a user, I want to use passbolt with the Solarized light theme
- PB-19151: As a user, I want to use passbolt with the Solarized dark theme
- PB-19200: GpgAuthenticator now asserts the message is a valid OpenPGP message prior to decryption on stage 0
- PB-19312: As a logged-in user, I want to see my first name and last name correctly displayed in email headers
- PB-18718: As a logged-in user, I want my locale not to be overwritten by the server config on pages served by the server
- PB-19261: As a logged-in user, I should not get an internal error if no filter is passed to the get resource.json entry point
- PB-19090: Protect forms from spell-jacking attack
- PB-19235: Migrate comments controllers logic into services
- PB-19603: Cover additional “add user to group” case: As group manager I can add a user to a group which have no resources shared with
- PB-6081: Move community plugins into plugins/PassboltCe
- PB-19621: Stop changing folders permissions in installation tests
- PB-19255 As an administrator I can trigger 500 errors on demand to test my logs

* [3.7.3-1] Tue, 27 Sep 2022 Diego Lendoiro <diego@passbolt.com>
- PB-19090 Protect forms from spell-jacking attack

* [3.7.2-1] Wed, 21 Sep 2022 Gerold Mougenel <gerold@passbolt.com>
- PB-18380 Let passbolt-configure script setup certbot for RHEL9 support
- PB-16983 Handles the lack of permissions on image directory when deleting
- PB-16898 Redesign download a supported browser to get started
- PB-18650 Add a check on mysql status in order to run mysql commands only when it's ready in unit tests
- PB-18664 Add retry logic to Gitlab CI jobs
- PB-18381 Fix source language typos
- PB-18397 Fix as an admin I can generate a server key with the webinstaller within an instance over http
- PB-17096 Fix resouce_types name and slug postgresql compatibility
- PB-18372 Bump styleguide version to 3.7.1
- PB-17098 Add rockylinux 9 support
- PB-16751 Add Redhat 9 support
- PB-16749 Add Ubuntu 22.04 support
- PB-16950 Add Spanish and Lithuanian support
- PB-14514 Add PHP8.0 support
- PB-14514 Fix PHP8.1 compatibility issues
- PB-16161 Create action log endpoint for user CRUD
- PB-16844 Common part of the user recovery and setup audit log
- PB-9739 OpenPGP key and message validation refactoring
- PB-14141 Enhanced public/private key validation rules
- PB-13685 Enhanced secret validation rules
- PB-14138 Refactor setup and recover related controllers with dependency injection
- PB-14510 Three trivial endpoints, such as GET on login are not logged anymore
- PB-16123 Remove key rotation logic from package post install scripts
- PB-15277 Remove mariadb dependency for RPM package
- PB-14947 Package versioning for RPM
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
- PB-13321 As a user I can use passbolt in Dutch
- PB-13321 As a user I can use passbolt in Japanese
- PB-13321 As a user I can use passbolt in Polish
- PB-12817 As LU I can import avatars having a jpeg extension
- PB-12943 As AD I should be able to see log when a user tries to sign-in with an invalid bearer token
- PB-12888 Improve performances of the operations requiring permissions accesses by replacing the single index on type by a combined index involving the requested columns
- PB-13177 As AD I should be able to see any gpg keys errors from the healthcheck
- PB-13183 As LU I should be able create resource having a name or a username of 255 characters long
- PB-13265 As AD I can create a JWT key pair even if the database is not set
- PB-13164 As AD I can cleanup duplicate entries in the favorites tables, groups_users and permissions
- PB-13217 PBL-06-011 Fix ACL on mobile transfer view controller
- PB-9887 Fix as AD I can send email digest from the /bin/cron script
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
