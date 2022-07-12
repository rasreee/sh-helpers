alias gstsh="git stash"
alias gi="git init"

function git-remote-url() {
  result=$(git remote get-url origin)

  if [ "$?" -ne "0" ]; then
    echo "$GITHUB_NO_SUCH_REMOTE_MSG"
  fi

  echo $result
}
alias gurl="git-remote-url"

function git-remote-show-origin() {
  git remote show origin
}
alias grms="git-remote-show-origin"

function git-flush() {
  branch=${1:-dev}
  echo "Flushing changes from $branch onto main";

  git checkout $branch
  git checkout main
  git merge $branch
  git push
  git checkout $branch
}
alias gflush="git-flush"
alias gfl="git-flush"

function git-squash() {
	numCommits=$1
  echo "Squashing $numCommits commits from current HEAD";

	git rebase -i HEAD~$numCommits
}
alias gsqsh="git-squash"
alias gsq="git-squash"

function git-clear-history() {
  remoteUrl=$(git-remote-url)

  echo "Clearing Git history"

  rm -rf .git
  git init
  git branch -M main
  git add --all
  git commit -m "first commit"
  git remote add origin $remoteUrl
  git push -u -f origin main
}
alias gch="git-clear-history"


function get-directory-name() {
  basename "$PWD"
}

function format-git-remote-url() {
  echo "https://github.com/$GITHUB_USERNAME/$(get-directory-name).git"
}


function init-license() {
  cp ~/templates/LICENSE ./LICENSE
}

function git-reinit() {
  echo "👋 Reinitializing git repository"

  rm -rf .git

  touch .gitignore
  init-license

  git init
  git add --all
  git commit -m "feat: first commit"
  git branch -M main
}

function git-init-and-push() {
  echo "👋 Initializing and pushing Git repo"
  git-reinit

  maybe-create-repo

  remoteUrl=$(format-git-remote-url)

  echo "👉 Setting remote to $remoteUrl..."
  git remote add origin $remoteUrl

  echo "👉 Pushing..."
  git push -u origin main -f

  echo "✅ Done!"
}

function get-or-add-remote() {
  rm -rf /tmp/git-remote-url-error.txt
  output="$(git remote get-url origin 2>/tmp/git-remote-url-error.txt)"
  if [[ -s /tmp/git-remote-url-error.txt ]]; then
    echo 'git remote get-url failed. error:' >&2 

    echo 'Resetting remote by removing it and adding it again'
    remoteUrl=$(format-git-remote-url)
    git remote add origin "$remoteUrl"

    return "$remoteUrl"
  fi

  return "$remoteUrl"
}

function maybe-create-repo() {
  remoteUrl=$(get-or-add-remote)
  echo "👉 Creating remote repo..."
  hub create -p
}

alias grmcached="git rm -r --cached . && git add --all && git status"

alias git-push-origin-main="git push origin main"
alias gpom="git-push-origin-main"

alias git-push-origin-main-force="git push origin main --force"
alias gpomf="git-push-origin-main-force"

alias git-current-branch="git rev-parse --abbrev-ref HEAD"
alias gcb="git-current-branch"

function git-push-branch() {
  git push -u origin "$(git-current-branch)"
}
alias gpb="git-push-branch"

function git-remote-remove() {
  git remote remove "$1"
}
alias grr="git-remote-remove"
alias grro="git remote remove origin"
alias grao="git remote add origin"

function git-add-and-cmsg() {
  git add . && git commit -m "$1"
}

alias gacmsg="git-add-and-cmsg"

alias gcob="git checkout -b"

alias grv="git remote --verbose"


function git-remote-add-push-url() {
  git remote set-url --add --push origin "$1"
}
alias grapu="git-remote-add-push-url"