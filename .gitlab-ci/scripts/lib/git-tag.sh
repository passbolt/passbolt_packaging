function setup_gpg_key() {
  key_path="$1"
  passphrase="$2"
  gpg --pinentry-mode loopback --passphrase "$passphrase" --import "$key_path"
}

function setup_git_user() {
  local email="$1"
  local name="$2"
  setup_gpg_key
  git config --global user.email "$email"
  git config --global user.name "$name"
}

function create_git_tag() {
  local passbolt_version="$1"
  local passbolt_flavour="$2"
  local filter="$3"
  local component="$4"
  local tag="$passbolt_version-$passbolt_flavour-$filter"
  git tag -a "$tag" -m "Release $tag version for $component package" > /dev/null
}
