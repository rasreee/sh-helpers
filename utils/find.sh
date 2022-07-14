function findnamed() {
  find . -name $1
} 

function findall() {
  local finalCommand="find . \("
  local index=0

  for var in $@; do
    local prefix=""
    if [[ $index > 0 ]]
    then
      prefix=" -o"
    fi
    finalCommand+="$prefix -name \"$var\""
    
    index+=1
  done

  finalCommand+=" \) -prune"

  eval $finalCommand
}
alias finda="findall"
alias fa="findall"
