function hub-delete-repo() {
  hub delete "$GITHUB_USERNAME/$1"
}
alias hdr="hub-delete-repo"