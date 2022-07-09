function getEnv() {
  local varName="$1"
  local fallback="$2"
  
  if [[ -z "$varName" ]] then  
    if [[ -z "$fallback" ]] then
      echo "Env variable $varName is empty, but getEnv-var was called w/o a fallback as its 2nd parameter"
    fi
    echo "$fallback"
  else
    echo $varName
  fi
}

function assertEnvVar() {           
  local envVar=
  envVar=$(declare -p "$1")
  if !  [[ -v $1 && $envVar =~ ^declare\ -x ]]; then
    echo "Error: Define $1 environment variable"
    return 0
  else
    return 1
  fi
}
