#!/bin/sh
export SETUP_ROOT=${SETUP_ROOT:-$HOME/.setup}
export SETUP_ZSH=$SETUP_ROOT/zsh

echo "Creating Symlink from $SETUP_ZSH/zshrc to $HOME/.zshrc"
ln -fs $SETUP_ZSH/zshrc.zsh $HOME/.zshrc

sh $SETUP_ZSH/install-plugins.sh
