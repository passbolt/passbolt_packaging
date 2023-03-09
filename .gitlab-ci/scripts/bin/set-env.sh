#!/bin/bash

# shellcheck disable=SC1091

CI_SCRIPTS_DIR=$(dirname "$0")/..

source ./"$CI_SCRIPTS_DIR"/lib/version-check.sh

tag="$1"

if is_release_candidate "$tag"; then
  read -r version candidate flavour filter <<< "$(echo "$tag" | awk -F '-' '{print $1,$2,$3,$4}')"
  version="$version-$candidate"
else
  read -r version flavour filter <<< "$(echo "$tag" | awk -F '-' '{print $1,$2,$3}')"
fi

export PASSBOLT_VERSION="$version"
export PASSBOLT_FLAVOUR="$flavour"
export FILTER="$filter"
