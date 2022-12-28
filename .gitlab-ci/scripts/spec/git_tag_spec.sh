Describe "update_packages_changelog_and_tag function"

  #Mocks changelog_updater 
  function changelog_updater {
    echo ""
  }
  #Mocks git
  function git {
    echo "$@" > /tmp/git-tag
  }
  # Runs run_and_get_check_tag and check that the tag was correctly created
  function run_and_get_check_tag {
    update_packages_changelog_and_tag config.yaml $PASSBOLT_VERSION $PASSBOLT_FLAVOUR all
    # expect this tag to be created
    cat /tmp/git-tag | grep "tag -a $EXPECTED_TAG -m Release $EXPECTED_TAG version for $EXPECTED_COMPONENT package" > /dev/null
  }

  function environment {
    export PASSBOLT_VERSION=v33.18.1-rc.1
    export PASSBOLT_FLAVOUR=pro
    export EXPECTED_TAG=v33.18.1-rc.1-pro-all
    export EXPECTED_COMPONENT=testing
  }
  Before 'environment'
  Include "lib/version-check.sh"
  Include "lib/git-tag.sh"
  Include "lib/changelog-updater.sh"
  It "creates the right release candidate tag for pro without package filter"
    When call run_and_get_check_tag
    The status should be success
  End

  function environment {
    export PASSBOLT_VERSION=v3.4.1
    export PASSBOLT_FLAVOUR=ce
    export EXPECTED_TAG=v3.4.1-ce-all
    export EXPECTED_COMPONENT=stable
  }
  Before 'environment'
  Include "lib/version-check.sh"
  Include "lib/git-tag.sh"
  Include "lib/changelog-updater.sh"
  It "creates the right stable tag for ce without package filter"
    When call run_and_get_check_tag
    The status should be success
  End

End
