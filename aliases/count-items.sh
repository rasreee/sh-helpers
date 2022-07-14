#!/bin/sh

count-items() {
  local pathname="$1"

  if [[ -z $pathname ]]; then
    echo "No pathname specified"
  fi

  local fullPath="./"
  fullPath+="$pathname"
  fullPath+="/*"

  echo "FULL PATH: $fullPath"

  find "$fullPath" -maxdepth 0
}
alias cit="count-items"
