function parse_tag() {
  local tag=$1

  if is_release_candidate "$tag"; then
    echo "$tag" | awk -F '-' '{print $1"-"$2,$3,$4}'
  else
    echo "$tag" | awk -F '-' '{print $1,$2,$3}'
  fi
}
