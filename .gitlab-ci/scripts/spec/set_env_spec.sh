Describe "parse_tag function"


  Include "lib/version-check.sh"
  Include "lib/set-env.sh"
  It "parses the correct version flavour and filter from a non release candidate tag"
    When call parse_tag "v3.11.0-ce-all"
    The output should equal "v3.11.0 ce all stable true"
  End
  It "parses the correct version flavour and filter from a release candidate tag"
    When call parse_tag "v3.11.0-rc.2-pro-rpm"
    The output should equal "v3.11.0-rc.2 pro rpm testing true"
  End
  It "parses the correct version flavour and filter from a test candidate tag"
    When call parse_tag "v3.11.0-test.2-pro-rpm"
    The output should equal "v3.11.0-test.2 pro rpm testing false"
  End

End

Describe "parsed tag array"

  function get_parsed_tag_array() {
    local tag="$1"
    local -a parsed_tag_array
    IFS=' ' read -r -a parsed_tag_array <<< "$(parse_tag "$tag")"
    echo "${parsed_tag_array[@]}"
  }

  Include "lib/version-check.sh"
  Include "lib/set-env.sh"
  It "contains a non release candidate version flavour and filter in the right order"
    When call get_parsed_tag_array "v3.11.0-ce-all"
    The output should equal "v3.11.0 ce all stable true"
  End
  It "contains a release candidate version flavour and filter in the right order"
    When call get_parsed_tag_array "v3.11.0-rc.2-pro-rpm"
    The output should equal "v3.11.0-rc.2 pro rpm testing true"
  End
  It "contains a release candidate version flavour and NO filter in the right order"
    When call get_parsed_tag_array "v3.11.0-rc.2-pro"
    The output should equal "v3.11.0-rc.2 pro testing true"
  End
  It "contains a test candidate version flavour and NO filter in the right order"
    When call get_parsed_tag_array "v3.11.0-test.2-pro"
    The output should equal "v3.11.0-test.2 pro testing false"
  End
  It "contains a test candidate version flavour and filter in the right order"
    When call get_parsed_tag_array "v3.11.0-test.2-pro-rpm"
    The output should equal "v3.11.0-test.2 pro rpm testing false"
  End

End

Describe "parse_commit_message"

  Include "lib/set-env.sh"
  It "parses the commit message correctly with branch and flavour"
    When call parse_commit_message "I want to run the tests on [branch: develop, flavour: ce]"
    The output should equal "develop ce all testing false"
  End

  It "parses the commit message correctly with flavour and branch"
    When call parse_commit_message "I want to run the tests on [flavour: ce, branch: develop]"
    The output should equal "develop ce all testing false"
  End

  It "parses the commit message correctly with default values"
    When call parse_commit_message "I want to run the tests on default settings"
    The output should equal "release pro all testing false"
  End

  It "parses the commit message correctly with single value"
    When call parse_commit_message "I want to run the tests on [branch: branch]"
    The output should equal "branch pro all testing false"
  End

  It "returns default values when commit message is incorrect with wrong delimiters"
    When call parse_commit_message "I want to run the tests on \branch: branch\\"
    The output should equal "release pro all testing false"
  End

  It "returns default values when commit message is incorrect with no delimiters []"
    When call parse_commit_message "I want to run the tests on branch: branch"
    The output should equal "release pro all testing false"
  End

  It "returns default values when commit message is incorrect with a single ["
    When call parse_commit_message "I want to run the tests on [branch: branch"
    The output should equal "release pro all testing false"
  End
End
