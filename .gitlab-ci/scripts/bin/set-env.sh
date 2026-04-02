#!/bin/bash

# shellcheck disable=SC1091

CI_SCRIPTS_DIR=$(dirname "$BASH_SOURCE")/..

source "$CI_SCRIPTS_DIR"/lib/version-check.sh
source "$CI_SCRIPTS_DIR"/lib/set-env.sh

API_VERSION_PREFIX="v"

declare -a version_config
tag="$1"

if [[ $tag == "" ]]; then
  # If we don't have a tag we check for specific commit message to set
  # parse_commit_message returns by default: release pro all testing
  # branch and flavour
  read -r -a version_config <<< "$(parse_commit_message "$CI_COMMIT_MESSAGE")"
else
  # This line doesn't work on zsh shell
  read -r -a version_config <<< "$(parse_tag "$API_VERSION_PREFIX$tag")"
fi

export API_CLONE_BRANCH="${API_CLONE_BRANCH:-$version_config[0]}"
export PASSBOLT_FLAVOUR="${version_config[1]}"
export FILTER="${version_config[2]}"
export PASSBOLT_COMPONENT="${version_config[3]}"
export PASSBOLT_PUBLISH="${version_config[4]}"

echo "Exporting the following variables"
echo "================================="
echo "API_CLONE_BRANCH=${API_CLONE_BRANCH}"
echo "PASSBOLT_FLAVOUR=${PASSBOLT_FLAVOUR}"
echo "FILTER=${FILTER}"
echo "PASSBOLT_COMPONENT=${PASSBOLT_COMPONENT}"
echo "PASSBOLT_PUBLISH=${PASSBOLT_PUBLISH}"
