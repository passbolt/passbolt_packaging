#!/usr/bin/env bash
# Simple script to set up the environment to test kitchen passbolt packages
#
# If you don't use private registries to test your images you can remove the
# creds.json check
#
set -eo pipefail

#if [ ! -f './creds.json' ]; then
#  echo "You are missing the creds.json file."
#  exit 1
#fi

if [ ! -d api ]; then
  git clone -b "${API_CLONE_BRANCH}" git@gitlab.com:passbolt/passbolt-"${PASSBOLT_FLAVOUR}"-api.git api
fi

if [ -z "${GITLAB_CI+xxx}" ]; then
  echo "Copying files to api build directory"
  rsync -azh ./ ./api --exclude api
  cp api/debian/changelog{-"$PASSBOLT_FLAVOUR",}
  cp api/rpm/CHANGELOG{-"$PASSBOLT_FLAVOUR",}.md
fi
