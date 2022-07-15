function run-many() {
  local path="$1"
  local rootDir="$SH_HELPERS_DIR/$path"

  for file in $rootDir/*.sh(D); do
    # echo "running script $file"
    source $file
  done
}

run-many utils
run-many aliases
