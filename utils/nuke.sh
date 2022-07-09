function nuke() {
  local target="$1"
  
  find . \( -name \"$target\" \) -prune -exec rm -rf \"{}\" +
}
alias nk="nuke"

function nukeall() {
  local finalCommand="find . \("
  local prefix=""

  for var in $@; do
    echo "Deleting $var..."
    finalCommand+="$prefix -name \"$var\""
    index+=1
    prefix=" -o"
  done

  finalCommand+=" \) -prune -exec rm -rf \"{}\" +"

  eval $finalCommand
}
alias nka="nukeall"