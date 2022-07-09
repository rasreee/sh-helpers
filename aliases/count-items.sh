function count-items() {
  find ./* -maxdepth 0 | wc -l
}
alias cit="count-items"