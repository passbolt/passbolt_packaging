#!/bin/bash

# shellcheck disable=SC1091

set -u

CI_SCRIPTS_DIR=$(dirname "$BASH_SOURCE")/..

source "$CI_SCRIPTS_DIR"/lib/version-check.sh
source "$CI_SCRIPTS_DIR"/lib/set-env.sh

declare -a tag_list
tag="$1"

# This line doesn't work on zsh shell
read -r -a tag_list <<< "$(parse_tag "$tag")"

export PASSBOLT_VERSION="${tag_list[0]}"
export PASSBOLT_FLAVOUR="${tag_list[1]}"
export FILTER="${tag_list[2]}"
export COMPONENT="${tag_list[3]}"
