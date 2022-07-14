new-file() {
  for target in "$@"; do
    touch $target
  done
}
alias newf="new-file"

new-file-open() {
  local filePath=$1
  touch $filePath
  code $filePath
}
alias newfo="new-file-open"

new-dir() {
  for target in "$@"; do
    mkdir $target
  done
}
alias newd="new-dir"
