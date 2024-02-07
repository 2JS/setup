#!/bin/sh
if [ -z "$SETUP_ROOT" ]; then
  export SETUP_ROOT=$HOME/.setup
fi
source $SETUP_ROOT/try.sh

try zsh zsh/setup.sh
try zsh vim/setup.sh
try zsh git/setup.sh
try zsh tmux/setup.sh
