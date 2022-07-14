function isarray() {
  local numArgs=$#
  # echo "[isarray()]: Passed $numArgs arguments"

  if [[ $numArgs > 1 ]] then
    echo 1
  else
    echo 0
  fi
}
