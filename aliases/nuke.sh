alias nukemodules="nukeall node_modules tmp"
alias nukelock="nukeall package-lock.json yarn.lock"
alias nukenode="nukemodules"

alias nuketscache="nuke tsconfig.tsbuildinfo"
alias nukebuilds="nukeall dist build .next"

alias nukegit="nukeall .git"

alias nukeout="nukenode && nukebuilds && nuketscache && nukeall .DS_Store"
alias no="nukeout"
alias nko="nukeout"
