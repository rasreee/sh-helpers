kill-process-by-cmd() {
  killall -9 "$1"
}
alias kpc="kill-process-by-cmd"

list-process-by-port() {
  lsof -i ":$1"
}
alias lsp="list-process-by-port"
