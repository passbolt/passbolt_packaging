Describe "set-env script"
  
  function check-environment() {
    source "bin/set-env.sh" "$INPUT_VERSION"
    if [ "$PASSBOLT_VERSION" != "$EXPECTED_VERSION" ]; then
      echo "PASSBOLT_VERSION is not set correctly "
      return 1
    fi
    if [ "$PASSBOLT_FLAVOUR" != "$EXPECTED_FLAVOUR" ]; then
      echo "PASSBOLT_FLAVOUR is not set correctly "
      return 1
    fi
    if [ "$FILTER" != "$EXPECTED_FILTER" ]; then
      echo "FILTER is not set correctly "
      return 1
    fi
  }

  function environment() {
    export INPUT_VERSION="v3.11.0-rc.1-ce-all"
    export EXPECTED_VERSION="v3.11.0-rc.1"
    export EXPECTED_FLAVOUR="ce"
    export EXPECTED_FILTER="all"
  }

  Before 'environment'
  It "exports the right variables"
    When call check-environment
    The status should be success
  End

  function environment() {
    export INPUT_VERSION="v3.11.1-pro-debian"
    export EXPECTED_VERSION="v3.11.1"
    export EXPECTED_FLAVOUR="pro"
    export EXPECTED_FILTER="debian"
  }

  Before 'environment'
  It "exports the right variables"
    When call check-environment
    The status should be success
  End

End
