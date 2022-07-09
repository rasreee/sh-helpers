function current-dirname() {
  basename "$PWD"
}
alias cdn="current-dirname"

function clone-dir() {
  rsync -a "$1/" "$2/"
}
alias cld="clone-dir"

function dir-size() {
  du -sh $1
}