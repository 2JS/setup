setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

# Support quick parent-directory navigation from common-aliases.
# (Kept local to avoid re-enabling the full plugin.)
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -n 10
  fi
}
compdef _dirs d
