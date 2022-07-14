#!/bin/sh

ourceall() {
  local folderName="$1"
  local rootDir="$2"
  local path="$rootDir/$folderName"
  # echo "🤙 PATH: $path"

  for file in "$path"/*.sh; do
    # echo "\t\t>> executing $file.sh..."
    source "$file"
  done
}
