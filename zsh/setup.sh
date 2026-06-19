#!/bin/sh
export SETUP_ROOT=${SETUP_ROOT:-$HOME/.setup}
export SETUP_ZSH=$SETUP_ROOT/zsh

echo "Creating Symlink from $SETUP_ZSH/zshrc to $HOME/.zshrc"
ln -fs $SETUP_ZSH/zshrc.zsh $HOME/.zshrc
echo "Creating Symlink from $SETUP_ZSH/zshenv to $HOME/.zshenv"
ln -fs $SETUP_ZSH/zshenv.zsh $HOME/.zshenv

sh $SETUP_ZSH/install-plugins.sh
