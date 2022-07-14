isfile() {
  if [[ -d $1 ]]; then
    # echo "📂 directory"
    return 0
  elif [[ -f $1 ]]; then
    # echo "📄 file"
    return 1
  else
    echo "❗ error: $1 is not a file nor directory"
  fi
}
