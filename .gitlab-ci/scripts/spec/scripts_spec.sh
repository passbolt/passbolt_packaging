#Describe "Clone pro api"
#  function environment {
#    export PASSBOLT_FLAVOUR=pro
#  }
#  Before 'environment'
#  It "clone git repository"
#    When run script bin/version-check.sh
#    The status should be success
#    The error should include "Cloning into"
#  End
#  It "the passbolt version is the same used in the CI"
#    When call cat ./api/config/version.php
#    The output should include "3.8.3"
#  End
#End

Describe "is_valid_api_tag function"
  function environment {
    export PASSBOLT_VERSION=v3.d8.1
  }
  Before 'environment'
  Include "lib/version-check.sh"
  It "fails when tag is not valid"
    When call is_valid_api_tag
    The status should be failure
    The output should eq "Invalid version format: $PASSBOLT_VERSION"
  End
  function environment {
    export PASSBOLT_VERSION=v3.8.3
  }
  Before 'environment'
  It "it succeds when tag is valid"
    When call is_valid_api_tag
    The output should be blank
  End
  function environment {
    export PASSBOLT_VERSION=""
  }
  Before 'environment'
  It "it fails when tag is empty"
    When call is_valid_api_tag
    The status should be failure
    The output should eq "Invalid version format: $PASSBOLT_VERSION"
  End
End

Describe "validate_config_version_and_api_tag function"

  function environment {
    export PASSBOLT_VERSION=v3.8.1
  }
  Before 'environment'
  Include "lib/version-check.sh"
  It "fails when api tag and config version doesn't match"
    When call validate_config_version_and_api_tag ./spec/fixtures/version.php
    The status should be failure
    The output should eq "Version number in version.php does not match the tag: $PASSBOLT_VERSION"
  End

  function environment {
    export PASSBOLT_VERSION=v3.8.3
  }
  Before 'environment'
  It "succeds when api tag and config version match"
    When call validate_config_version_and_api_tag ./spec/fixtures/version.php
    The output should be blank
  End

End

Describe "is_release_candidate function"

  function environment {
    export PASSBOLT_VERSION=v33.18.1-rc.1
  }
  Before 'environment'
  Include "lib/version-check.sh"
  It "should be true for release candidate tag"
    When call is_release_candidate
    The status should be success
  End

  function environment {
    export PASSBOLT_VERSION=v33.18.1
  }
  Before 'environment'
  Include "lib/version-check.sh"
  It "should be false for release NON candidate tag"
    When call is_release_candidate
    The status should be failure
  End

End

