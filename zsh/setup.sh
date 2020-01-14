#!/bin/sh

echo "Creating Symlink from $HOME/.setup/zsh/zshrc to $HOME/.zshrc"
ln -fs $HOME/.setup/zsh/zshrc.zsh $HOME/.zshrc

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
