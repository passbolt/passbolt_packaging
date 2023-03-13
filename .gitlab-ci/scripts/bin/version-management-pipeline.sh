#!/usr/bin/env bash

# shellcheck disable=SC1091

# Variables required
# PASSBOLT_FLAVOUR=ce|pro
# PASSBOLT_VERSION="3.10.1" (semver)
# PASSBOLT_BRANCH="v3.10.1" this could be a tag or a branch name
# GPG_PASSPHRASE passphrase for gpg private key
# GPG_KEY_PATH path to gpg private key
# GPG_KEY_GRIP gpg key grip for the private key

set -eu

CI_SCRIPTS_DIR=$(dirname "$0")/..

# shellcheck source=.gitlab-ci/scripts/lib/clone-api.sh
source "$CI_SCRIPTS_DIR"/lib/clone-api.sh
# shellcheck source=.gitlab-ci/scripts/lib/version-check.sh
source "$CI_SCRIPTS_DIR"/lib/version-check.sh
# shellcheck source=.gitlab-ci/scripts/lib/changelog-updater.sh
source "$CI_SCRIPTS_DIR"/lib/changelog-updater.sh
# shellcheck source=.gitlab-ci/scripts/lib/git-helpers.sh
source "$CI_SCRIPTS_DIR"/lib/git-helpers.sh

GIT_CI_TOKEN_NAME=${GIT_CI_TOKEN_NAME:-gitlab-ci-token}
GITLAB_USER_EMAIL="contact@passbolt.com"
DEST=${DEST:-api}
ACCESS_TOKEN_NAME="packaging-bot"

PACKAGE_FILTER="${PACKAGE_FILTER:-all}"

CHANGELOG_UPDATER_AUTHOR_NAME="Passbolt SA package signing key"
CHANGELOG_UPDATER_AUTHOR_EMAIL="contact@passbolt.com"
SOURCE_CHANGELOG_PATH="$DEST/CHANGELOG.md"
RPM_CHANGELOG_PATH="rpm/CHANGELOG-${PASSBOLT_FLAVOUR}.md"
DEBIAN_CHANGELOG_PATH="debian/changelog-${PASSBOLT_FLAVOUR}"

DEVELOP_BRANCH_NAME="temp-develop"
MAIN_BRANCH_NAME="temp-main"

clean_up "$DEST"

git fetch origin
git checkout "$MAIN_BRANCH_NAME"

clone_api "$PASSBOLT_BRANCH" "$GIT_CI_TOKEN_NAME" "$CI_JOB_TOKEN" "$PASSBOLT_FLAVOUR" "$DEST"
if ! validate_config_version_and_api_tag "$DEST"/config/version.php; then
  exit 1
fi
setup_gpg_key "$GPG_KEY_PATH" "$GPG_PASSPHRASE" "$GPG_KEY_GRIP"
setup_git_user "$GITLAB_USER_EMAIL" "$ACCESS_TOKEN_NAME"
update_packages_changelog_and_tag "${PASSBOLT_VERSION}" \
                          "${PASSBOLT_FLAVOUR}" \
                          "${PACKAGE_FILTER}" \
                          "${SOURCE_CHANGELOG_PATH}" \
                          "${DEBIAN_CHANGELOG_PATH}" \
                          "${RPM_CHANGELOG_PATH}" \
                          "${CHANGELOG_UPDATER_AUTHOR_NAME}" \
                          "${CHANGELOG_UPDATER_AUTHOR_EMAIL}"

echo "Checking out to $DEVELOP_BRANCH_NAME"
echo "===================================="
git checkout "$DEVELOP_BRANCH_NAME"
echo "Pulling $MAIN_BRANCH_NAME"
echo "========================="
git pull origin "$MAIN_BRANCH_NAME":"$MAIN_BRANCH_NAME"
echo "Merging $MAIN_BRANCH_NAME into $DEVELOP_BRANCH_NAME"
echo "==================================================="
git merge "$MAIN_BRANCH_NAME"
echo "Adding remote with write permissions"
echo "===================================="
git remote add packaging https://"$ACCESS_TOKEN_NAME":"$PACKAGING_BOT_TOKEN"@gitlab.com/passbolt/passbolt-ops/passbolt-packaging.git
echo "Pushing to $DEVELOP_BRANCH_NAME"
echo "==============================="
git push packaging "$DEVELOP_BRANCH_NAME"
echo "Checking out to $MAIN_BRANCH_NAME"
echo "================================="
git checkout "$MAIN_BRANCH_NAME"
echo "Pushing to $MAIN_BRANCH_NAME"
echo "============================"
git push packaging "$MAIN_BRANCH_NAME" --tags
