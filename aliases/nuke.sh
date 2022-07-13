alias nukemodules="nukeall tmp"
alias nukelock="nukeall package-lock.json yarn.lock"
alias nukenode="nukemodules"

alias nuketscache="nuke tsconfig.tsbuildinfo"
alias nukebuilds="nukeall dist build .next"
alias nukedsstore="nukeall .DS_Store"

alias nukegit="nukeall .git"

alias nukeout="nukenode && nukebuilds && nuketscache && nukemisc"
alias no="nukeout"
alias nko="nukeout"