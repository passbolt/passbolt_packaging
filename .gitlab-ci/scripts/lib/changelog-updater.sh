function run_changelog_updater() {
  changelog-updater "${@}"
}

function update_packages_changelog_and_tag() {
  local passbolt_version=$1
  local passbolt_flavour=$2
  local filter=$3
  local source_changelog=$4
  local debian_changelog=$5
  local rpm_changelog=$6
  local author_name=$7
  local author_email=$8

  if ! is_release_candidate; then
    run_changelog_updater "--source-changelog=$source_changelog" \
                          "--debian-changelog=$debian_changelog" \
                          "--rpm-changelog=$rpm_changelog" \
                          "--passbolt-flavour=$passbolt_flavour" \
                          "--name=$author_name" \
                          "--email=$author_email"
    git add "$rpm_changelog" "$debian_changelog"
    git commit -m ":robot: Automatically added changelog for version $passbolt_version $passbolt_flavour"
    create_git_tag "$passbolt_version" "$passbolt_flavour" "$filter" stable
    return 0
  fi 
  create_git_tag "$passbolt_version" "$passbolt_flavour" "$filter" testing
}
