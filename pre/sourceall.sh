function sourceall() {
  local dirName="$1"
  local rootDir="$2"
  local path="$rootDir/$dirName"
  # echo "🤙 PATH: $path"

  for file in $path/*.sh(D); do
    # echo "\t\t>> executing $file.sh..."
    source "$file"
  done
}
