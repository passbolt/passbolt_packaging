Describe "update_packages_changelog_and_tag function"

  function clean_up {
    rm -rf /tmp/changelog-arguments
    rm -rf /tmp/git-tag
  }
  #Mocks changelog-updater
  function changelog-updater {
    echo "changelog-updater ${*}" >  /tmp/changelog-arguments
  }
  #Mocks git
  function git {
    echo "$@" > /tmp/git-tag
  }
  # Runs run_and_get_check_tag and check that the tag was correctly created
  function run_and_check_tag {
    update_packages_changelog_and_tag "${PASSBOLT_VERSION}" \
                              "${PASSBOLT_FLAVOUR}" \
                              "${PACKAGE_FILTER}" \
                              "${SOURCE_CHANGELOG_PATH}" \
                              "${DEBIAN_CHANGELOG_PATH}" \
                              "${RPM_CHANGELOG_PATH}" \
                              "${CHANGELOG_UPDATER_AUTHOR_NAME}" \
                              "${CHANGELOG_UPDATER_AUTHOR_EMAIL}"
    # expect this tag to be created
    cat /tmp/git-tag | grep "tag -a $EXPECTED_TAG -m Release $EXPECTED_TAG version for $EXPECTED_COMPONENT package" > /dev/null
  }
  function run_and_check_changelog_updater {
    update_packages_changelog_and_tag "${PASSBOLT_VERSION}" \
                              "${PASSBOLT_FLAVOUR}" \
                              "${PACKAGE_FILTER}" \
                              "${SOURCE_CHANGELOG_PATH}" \
                              "${DEBIAN_CHANGELOG_PATH}" \
                              "${RPM_CHANGELOG_PATH}" \
                              "${CHANGELOG_UPDATER_AUTHOR_NAME}" \
                              "${CHANGELOG_UPDATER_AUTHOR_EMAIL}"
    # expect this tag to be created
    cat /tmp/changelog-arguments | grep "${EXPECTED_CHANGELOG_UPDATER_ARGUMENTS}" > /dev/null
  }

  function environment {
    export PASSBOLT_VERSION=v33.18.1-rc.1
    export PASSBOLT_FLAVOUR=pro
    export EXPECTED_TAG=v33.18.1-rc.1-pro-all
    export EXPECTED_COMPONENT=testing
    export PACKAGE_FILTER="all"

    export CHANGELOG_UPDATER_AUTHOR_NAME="Passbolt CI"
    export CHANGELOG_UPDATER_AUTHOR_EMAIL="syops@passbolt.com"
    export CHANGELOG_UPDATER_VERSION="0.1.0"
    export SOURCE_CHANGELOG_PATH="api/CHANGELOG.md"
    export RPM_CHANGELOG_PATH="rpm/CHANGELOG-${PASSBOLT_FLAVOUR}.md"
    export DEBIAN_CHANGELOG_PATH="debian/changelog-${PASSBOLT_FLAVOUR}"
    
  }

  Before 'environment'
  After 'clean_up'
  Include "lib/version-check.sh"
  Include "lib/git-helpers.sh"
  Include "lib/changelog-updater.sh"
  It "creates the right release candidate tag for pro without package filter"
    When call run_and_check_tag
    The status should be success
  End
  It "doesn't run the changelog-updater command"
    When call test -f /tmp/changelog-arguments
    The status should be failure
  End

  function environment {
    export PASSBOLT_VERSION=v3.4.1
    export PASSBOLT_FLAVOUR=ce
    export EXPECTED_TAG=v3.4.1-ce-all
    export EXPECTED_COMPONENT=stable
    export PACKAGE_FILTER="all"

    export CHANGELOG_UPDATER_AUTHOR_NAME="Passbolt CI"
    export CHANGELOG_UPDATER_AUTHOR_EMAIL="syops@passbolt.com"
    export CHANGELOG_UPDATER_VERSION="0.1.0"
    export SOURCE_CHANGELOG_PATH="api/CHANGELOG.md"
    export RPM_CHANGELOG_PATH="rpm/CHANGELOG-${PASSBOLT_FLAVOUR}.md"
    export DEBIAN_CHANGELOG_PATH="debian/changelog-${PASSBOLT_FLAVOUR}"

    export EXPECTED_CHANGELOG_UPDATER_ARGUMENTS="changelog-updater --source-changelog=api/CHANGELOG.md --debian-changelog=debian/changelog-ce --rpm-changelog=rpm/CHANGELOG-ce.md --passbolt-flavour=ce --name=Passbolt CI --email=syops@passbolt.com"
  }
  Before 'environment'
  After 'clean_up'
  Include "lib/version-check.sh"
  Include "lib/git-helpers.sh"
  Include "lib/changelog-updater.sh"
  It "creates the right stable tag for ce without package filter"
    When call run_and_check_tag
    The status should be success
  End
  It "creates the correct changelog-updater command"
    When call run_and_check_changelog_updater
    The status should be success
  End

End
