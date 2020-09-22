#!/bin/sh

echo "Creating Symlink from $HOME/.setup/zsh/zshrc to $HOME/.zshrc"
ln -fs $HOME/.setup/zsh/zshrc.zsh $HOME/.zshrc


# install Oh My Zsh
echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install powerlevel10k theme
echo "Installing romkatv/powerlevel10k theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
