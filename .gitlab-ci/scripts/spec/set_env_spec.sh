Describe "set-env script"
  
  function check-environment() {
    source "bin/set-env.sh" "v3.11.0-rc.1-ce-all"
    if [ "$PASSBOLT_VERSION" != "v3.11.0-rc.1" ]; then
      echo "PASSBOLT_VERSION is not set correctly "
      return 1
    fi
    if [ "$PASSBOLT_FLAVOUR" != "ce" ]; then
      echo "PASSBOLT_FLAVOUR is not set correctly "
      return 1
    fi
    if [ "$FILTER" != "all" ]; then
      echo "FILTER is not set correctly "
      return 1
    fi
  }

  #Before 'environment'
  It "exports the right variables"
    When call check-environment
    The status should be success
  End


End
