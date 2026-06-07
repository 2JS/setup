#!/bin/sh
set -eu

plugin_dir="${ZSH_PLUGIN_DIR:-$HOME/.zsh/plugins}"
mkdir -p "$plugin_dir"

install_plugin() {
  name="$1"
  repo="$2"
  target="$plugin_dir/$name"

  if [ -d "$target/.git" ]; then
    echo "$name already installed"
    return
  fi

  git clone --depth=1 "$repo" "$target"
}

install_plugin fast-syntax-highlighting https://github.com/zdharma-continuum/fast-syntax-highlighting.git
install_plugin zsh-completions https://github.com/zsh-users/zsh-completions.git
install_plugin zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions.git
