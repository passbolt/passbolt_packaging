
function install_changelog_updater() {
  local url="${1}"
  local version="${2:-latest}"
  go install "$url@$version"
}

function set_gitlab_private_repository() {
  local url="${1}"
  go env -w GOPRIVATE="$url"
}

function update_packages_changelog_and_tag() {
  local config_file=$1
  local passbolt_version=$2
  local passbolt_flavour=$3
  local filter=$4
  if ! is_release_candidate; then
    # TODO: check the right syntax when the command is ready
    changelog_updater -c "$config_file" > /dev/null
    create_git_tag "$passbolt_version" "$passbolt_flavour" "$filter" stable
    return 0
  fi 
  create_git_tag "$passbolt_version" "$passbolt_flavour" "$filter" testing
}
