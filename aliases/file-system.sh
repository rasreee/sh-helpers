current-dirname() {
  basename "$PWD"
}
alias curdir="current-dirname"

clone-dir() {
  rsync -a "$1/" "$2/"
}
alias cldir="clone-dir"

dirsize() {
  du -sh $1
}
alias dz="dirsize"

sortby-dirsize() {
  du -sh -- */ | sort -rh
}

filesize() {
  du -h $1
}
alias fz="filesize"
