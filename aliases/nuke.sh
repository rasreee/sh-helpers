alias nuke-modules="nukeall node_modules tmp"
alias nuke-lock="nukeall package-lock.json yarn.lock"
alias nuke-node="nuke-lock && nuke-modules"

alias nuke-tscache="nukeall tsconfig.tsbuildinfo"
alias nuke-builds="nukeall dist build .next"
alias nuke-misc="nukeall .DS_Store"

alias nuke-out="nuke-node && nuke-builds && nuke-tscache && nuke-misc"
alias no="nuke-out"