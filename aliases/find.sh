alias find-tscache="findall tsconfig.tsbuildinfo"

alias find-modules="findall node_modules"
alias find-lock="findall yarn.lock package-lock.json"

alias find-builds="findall dist .next build"

alias find-out="find-tscache && find-modules && find-lock && find-builds"
alias fo="find-out"