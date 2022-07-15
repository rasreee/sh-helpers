function is-file() {
  local location="$1"

  if [[ -f $location ]]; then
    echo 1
  else
    echo 0
  fi
}

function is-directory() {
  local location="$1"

  if [[ -d $location ]]; then
    echo 1
  else
    echo 0
  fi
}
