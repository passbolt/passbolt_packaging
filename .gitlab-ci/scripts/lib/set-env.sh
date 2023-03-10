# This function parses a tag in the form of:
# v3.11.0-rc.1-pro-all
#
# All of the fields are mandatory:
# Version: v3.11.0-rc.1|v3.11.0
# Passbolt flavour: pro|ce
# Per package filter: all|rpm|debian
#
# It also provides the component based on if it is RC: testing|stable
function parse_tag() {
  local tag=$1

  if is_release_candidate "$tag"; then
    echo "$tag" | awk -F '-' '{print $1"-"$2,$3,$4,"testing"}'
  else
    echo "$tag" | awk -F '-' '{print $1,$2,$3,"stable"}'
  fi
}
