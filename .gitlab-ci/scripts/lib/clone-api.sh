function clone_api() {
  local passbolt_branch=$1
  local git_user=$2
  local git_token=$3
  local passbolt_flavour=$4
  local dest=$5
  git clone "https://${git_user}:${git_token}@gitlab.com/passbolt/passbolt-${passbolt_flavour}-api.git" "${dest}"
  cd "$dest" || return 1
  git checkout "$passbolt_branch"
  cd - || return 1
}

function clean_up() {
  local dest=$1
  rm -rf "${dest}"
}

