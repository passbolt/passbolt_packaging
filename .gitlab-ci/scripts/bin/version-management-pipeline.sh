#!/usr/bin/env bash

# shellcheck disable=SC1091

set -e

CI_SCRIPTS_DIR=$(dirname "$0")/..

source "$CI_SCRIPTS_DIR"/lib/clone-api.sh
source "$CI_SCRIPTS_DIR"/lib/version-check.sh
source "$CI_SCRIPTS_DIR"/lib/changelog-updater.sh
source "$CI_SCRIPTS_DIR"/lib/git-tag.sh

PASSBOLT_FLAVOUR=${PASSBOLT_FLAVOUR:-ce}
PASSBOLT_VERSION=${PASSBOLT_VERSION:-ce}
PASSBOLT_BRANCH=${PASSBOLT_BRANCH:-develop}
GIT_USER=${GIT_USER:-gitlab-ci-token}
GITLAB_USER_EMAIL="daniel@passbolt.com"
DEST=${DEST:-api}

PACKAGE_FILTER="${PACKAGE_FILTER:-all}"

CHANGELOG_UPDATER_AUTHOR_NAME="Passbolt CI"
CHANGELOG_UPDATER_AUTHOR_EMAIL="sysops@passbolt.com"
CHANGELOG_UPDATER_REGISTRY=registry.gitlab.com/passbolt/passbolt-ops/changelog-updater
CHANGELOG_UPDATER_VERSION="0.1.0"
SOURCE_CHANGELOG_PATH="$DEST/CHANGELOG.md"
RPM_CHANGELOG_PATH="rpm/CHANGELOG-${PASSBOLT_FLAVOUR}.md"
DEBIAN_CHANGELOG_PATH="debian/changelog-${PASSBOLT_FLAVOUR}"

clean_up "$DEST"
clone_api "$PASSBOLT_BRANCH" "$GIT_USER" "$CI_JOB_TOKEN" "$PASSBOLT_FLAVOUR" "$DEST"
if ! validate_config_version_and_api_tag "$DEST"/config/version.php; then
  exit 1
fi
pull_docker_updater_image "$CHANGELOG_UPDATER_REGISTRY" testing-latest
setup_gpg_key "$GPG_KEY_PATH" "$GPG_PASSPHRASE"
setup_git_user "$GITLAB_USER_EMAIL" "$GIT_USER_NAME"
pull_docker_updater_image "$CHANGELOG_UPDATER_REGISTRY" testing-latest
update_packages_changelog_and_tag "${PASSBOLT_VERSION}" \
                          "${PASSBOLT_FLAVOUR}" \
                          "${PACKAGE_FILTER}" \
                          "${SOURCE_CHANGELOG_PATH}" \
                          "${DEBIAN_CHANGELOG_PATH}" \
                          "${RPM_CHANGELOG_PATH}" \
                          "${CHANGELOG_UPDATER_AUTHOR_NAME}" \
                          "${CHANGELOG_UPDATER_AUTHOR_EMAIL}"

git push origin "$CI_COMMIT_REF_NAME" --tags
