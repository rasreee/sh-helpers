function current-directory-name() {
  dirname=$(basename "$PWD")
  echo $dirname
}
alias cdn="current-directory-name"

function clonefolder() {
  rsync -a "$1/" "$2/"
}
alias clf="clonefolder"