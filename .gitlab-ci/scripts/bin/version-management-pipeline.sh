#!/usr/bin/env bash

# shellcheck disable=SC1091

set -e

CI_SCRIPTS_DIR=$(dirname "$0")/..

source "$CI_SCRIPTS_DIR"/lib/clone-api.sh
source "$CI_SCRIPTS_DIR"/lib/version-check.sh
source "$CI_SCRIPTS_DIR"/lib/changelog-updater.sh

PASSBOLT_FLAVOUR=${PASSBOLT_FLAVOUR:-ce}
PASSBOLT_BRANCH=${PASSBOLT_BRANCH:-develop}
GIT_USER=${GIT_USER:-gitlab-ci-token}
DEST=${DEST:-api}
CHANGELOG_UPDATER_CONFIG_FILE=${CHANGELOG_UPDATER_CONFIG_FILE:-config.yaml}
CHANGELOG_UPDATER_REPO_URL=gitlab.com/passbolt/passbolt-ops/changelog-updater.git

clean_up "$DEST"
clone_api "$PASSBOLT_BRANCH $GIT_USER $CI_JOB_TOKEN $PASSBOLT_FLAVOUR $DEST"
if ! check_passbolt_version_variable; then 
  exit 1
fi
if ! check_passbolt_version_matches "$DEST"/config/version.php; then
  exit 1
fi
set_gitlab_private_repository "$CHANGELOG_UPDATER_REPO_URL"
install_changelog_updater "$CHANGELOG_UPDATER_REPO_URL"
update_packages_changelog
setup_git_user "$GITLAB_USER_EMAIL" "$GIT_USER_NAME"
update_packages_changelog_and_tag
git push origin $CI_COMMIT_REF_NAME --tags
