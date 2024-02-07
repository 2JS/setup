#!/bin/bash

export SETUP_ROOT=${SETUP_ROOT:-$HOME/.setup}
if command -v zsh >/dev/null 2>&1; then
  echo "zsh is installed"
  exit 0
fi

if [ "$(uname)" == "Darwin" ]; then
  brew install zsh
elif [ "$(uname)" == "Linux" ]; then
  sudo apt-get update -y
  sudo apt-get install -y zsh
else
  echo "Unknown operating system"
  # TODO: manually install zsh
fi
