function current-dirname() {
  basename "$PWD"
}
alias cdn="current-dirname"

function clone-dir() {
  rsync -a "$1/" "$2/"
}
alias cld="clone-dir"

function dirsize() {
  du -sh $1
}
alias dsz="dirsize"

function sortby-dirsize() {
  du -sh -- */ | sort -rh
}