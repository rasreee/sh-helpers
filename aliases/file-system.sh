function current-dirname() {
  basename "$PWD"
}
alias curdir="current-dirname"

function clone-dir() {
  rsync -a "$1/" "$2/"
}
alias cldir="clone-dir"

function dirsize() {
  du -sh $1
}
alias dz="dirsize"

function sortby-dirsize() {
  du -sh -- */ | sort -rh
}

function filesize() {
  du -h $1
}
alias fz="filesize"