#!/bin/sh

ln -s $HOME/Developer/setup/zsh/zshrc $HOME/.zshrc
# source $HOME/.zshrc

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
