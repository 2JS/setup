#!/bin/sh

echo "Creating Symlink from $HOME/.setup/zsh/zshrc to $HOME/.zshrc"
ln -fs $HOME/.setup/zsh/zshrc.zsh $HOME/.zshrc

ln -fs $HOME/.setup/zsh/.gitignore_global $HOME/.gitignore/global

