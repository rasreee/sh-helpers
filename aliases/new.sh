function new-file() {
  for target in $@; do
    touch $target
  done
}
alias newf="new-file"

function new-file-open() {
  local filePath=$1
  touch $filePath
  code $filePath
}
alias newfo="new-file-open"

function new-dir() {
  for target in $@; do
    mkdir $target
  done
}
alias newd="new-dir"