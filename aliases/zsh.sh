alias restart-zsh="source ~/.zshrc"
alias rz="restart-zsh"

function restart-zsh-and-exec() {
  local command="$1"

  restart-zsh
  
  eval $command
}
alias rze="restart-zsh-and-exec"

alias edit-zshrc="code ~/.zshrc"
alias ez="edit-zshrc"