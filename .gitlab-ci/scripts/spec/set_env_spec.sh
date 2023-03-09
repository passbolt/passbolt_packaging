Describe "parse_tag function"
  

  Include "lib/version-check.sh"
  Include "lib/set-env.sh"
  It "parses the correct version flavour and filter from a non release candidate tag"
    When call parse_tag "v3.11.0-ce-all"
    The output should equal "v3.11.0 ce all"
  End
  It "parses the correct version flavour and filter from a release candidate tag"
    When call parse_tag "v3.11.0-rc.2-pro-rpm"
    The output should equal "v3.11.0-rc.2 pro rpm"
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
  It "containse a non release candidate version flavour and filter in the right order"
    When call get_parsed_tag_array "v3.11.0-ce-all"
    The output should equal "v3.11.0 ce all"
  End
  It "containse a release candidate version flavour and filter in the right order"
    When call get_parsed_tag_array "v3.11.0-rc.2-pro-rpm"
    The output should equal "v3.11.0-rc.2 pro rpm"
  End

End
