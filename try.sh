#/bin/sh
function try() {
  echo "\033[96;1m'$@'\033[0m"
  eval "$@"
  if [ $? -ne 0 ]; then
    echo "\033[31;1mfailed.\033[0m"
    exit 1
  fi
  echo "\033[32;1m'$@' succeed.\033[0m"
}
