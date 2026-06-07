export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"

_zsh_load_nvm() {
  unset -f nvm node npm npx pnpm pnpx yarn corepack _zsh_load_nvm 2>/dev/null

  local nvm_homebrew="${NVM_HOMEBREW:-/opt/homebrew/opt/nvm}"
  local nvm_script="$NVM_DIR/nvm.sh"
  local nvm_completion="$NVM_DIR/bash_completion"

  if [[ ! -s "$nvm_script" && -s "$nvm_homebrew/nvm.sh" ]]; then
    nvm_script="$nvm_homebrew/nvm.sh"
  fi

  if [[ ! -s "$nvm_completion" && -s "$nvm_homebrew/etc/bash_completion.d/nvm" ]]; then
    nvm_completion="$nvm_homebrew/etc/bash_completion.d/nvm"
  fi

  [[ -s "$nvm_script" ]] && source "$nvm_script" --no-use

  if [[ -s "$nvm_completion" ]]; then
    autoload -U +X bashcompinit && bashcompinit
    source "$nvm_completion"
  fi
}

nvm() {
  _zsh_load_nvm
  nvm "$@"
}

node() {
  _zsh_load_nvm
  command node "$@"
}

npm() {
  _zsh_load_nvm
  command npm "$@"
}

npx() {
  _zsh_load_nvm
  command npx "$@"
}

pnpm() {
  _zsh_load_nvm
  command pnpm "$@"
}

pnpx() {
  _zsh_load_nvm
  command pnpx "$@"
}

yarn() {
  _zsh_load_nvm
  command yarn "$@"
}

corepack() {
  _zsh_load_nvm
  command corepack "$@"
}
