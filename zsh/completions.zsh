SETUP_ZSH="${SETUP_ZSH:-$HOME/.setup/zsh}"
ZSH_PLUGIN_DIR="${ZSH_PLUGIN_DIR:-$HOME/.zsh/plugins}"
ZSH_CACHE_DIR="${ZSH_CACHE_DIR:-${XDG_CACHE_HOME:-$HOME/.cache}/zsh}"

mkdir -p "$ZSH_CACHE_DIR/completions" 2>/dev/null

fpath=("$ZSH_CACHE_DIR/completions" "$ZSH_PLUGIN_DIR/zsh-completions/src" $fpath)

zstyle ':completion:*' matcher-list \
  'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' \
  'r:|=*' \
  'l:|=* r:|=*'

autoload -Uz compinit
if [[ -n "$ZSH_CACHE_DIR/.zcompdump"(#qNmh-24) ]]; then
  compinit -C -d "$ZSH_CACHE_DIR/.zcompdump"
else
  compinit -d "$ZSH_CACHE_DIR/.zcompdump"
fi

_zsh_eval_completion() {
  local command_name="$1"
  shift

  (( $+commands[$command_name] )) || return
  eval "$("$@" 2>/dev/null)"
}

_zsh_eval_completion docker docker completion zsh
_zsh_eval_completion gh gh completion -s zsh

if [[ -z "$CLOUDSDK_HOME" ]]; then
  for gcloud_sdk_location in \
    "$HOME/google-cloud-sdk" \
    "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk" \
    "/opt/homebrew/share/google-cloud-sdk" \
    "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk" \
    "/usr/local/share/google-cloud-sdk"
  do
    if [[ -d "$gcloud_sdk_location" ]]; then
      CLOUDSDK_HOME="$gcloud_sdk_location"
      break
    fi
  done
  unset gcloud_sdk_location
fi

if [[ -n "$CLOUDSDK_HOME" ]]; then
  [[ -f "$CLOUDSDK_HOME/path.zsh.inc" ]] && source "$CLOUDSDK_HOME/path.zsh.inc"
  [[ -f "$CLOUDSDK_HOME/completion.zsh.inc" ]] && source "$CLOUDSDK_HOME/completion.zsh.inc"
  export CLOUDSDK_HOME
fi

autoload -U +X bashcompinit && bashcompinit
if (( $+commands[terraform] )); then
  complete -o nospace -C "$(command -v terraform)" terraform
fi

unset -f _zsh_eval_completion
