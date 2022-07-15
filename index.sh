function run-many() {
  local location="$1"
  local rootDir="$SH_HELPERS_DIR/$location"

  for file in $rootDir/*.sh(D); do
    # echo "running script $file"
    source $file
  done
}

run-many utils
run-many aliases
