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

alias sortbysize-dir="du -hsc */(D) | sort -nr"

alias sortbysize-file="find ./* -type f -maxdepth 0 -exec stat -f '%z %N' {} + | sort -nr"

function sortbysize() {
  zmodload zsh/stat
  stat -Ln +size -- *
}
