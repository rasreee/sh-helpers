alias ytw="yarn test:watch"
alias ytt="yarn test:types"
alias yta="yarn test:all"
alias yl="yarn lint"
alias yf="yarn format"
alias ycl="yarn clean"
alias yad="yarn add -D"
alias ydl="yarn deploy"
alias yb="yarn build"
alias yrb="yarn rebuild"

yarn-add-with-types() {
  yarn add $1 && yarn add --dev "@types/$1"
}
alias yawt=yarn-add-with-types

yarn-remove-with-types() {
  yarn remove $1 "@types/$1"
}
alias yrwt=yarn-remove-with-types

alias yarn-upgrade-latest="yarn upgrade --latest"
alias yup="yarn upgrade"
alias yupl="yarn upgrade --latest"
alias yout="yarn outdated"
alias yarn-refresh="nukenode && yarn install"
alias yrf="yarn-refresh"
alias yau="yarn audit"
