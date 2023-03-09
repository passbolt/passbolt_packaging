#!/bin/bash

# shellcheck disable=SC1091

CI_SCRIPTS_DIR=$(dirname "$0")/..

source ./.gitlab-ci/scripts/lib/version-check.sh
source ./.gitlab-ci/scripts/lib/set-env.sh

declare -a tag_list
tag="$1"

# This line doesn't work on zsh shell
read -r -a tag_list <<< "$(parse_tag "$tag")"

export PASSBOLT_VERSION="${tag_list[0]}"
export PASSBOLT_FLAVOUR="${tag_list[1]}"
export FILTER="${tag_list[2]}"
