function get-helper-path() {
  local type="$1"
  local name="$2"
  local helperFile="$SH_HELPER_DIR/$type/$name.sh"
}

function edit-helper() {
  code $(get-helper-path)
}
alias eh="edit-helper"

function add-helper() {
  new-file-open $(get-helper-path)
}

alias ah="add-helper"