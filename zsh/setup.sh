#!/bin/sh
export SETUP_ROOT=${SETUP_ROOT:-$HOME/.setup}
export SETUP_ZSH=$SETUP_ROOT/zsh

echo "Creating Symlink from $SETUP_ZSH/zshrc to $HOME/.zshrc"
ln -fs $SETUP_ZSH/zshrc.zsh $HOME/.zshrc

# install Oh My Zsh
echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --keep-zshrc"

# install powerlevel10k theme
echo "Installing romkatv/powerlevel10k theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

ln -s $SETUP_ZSH/p10k.zsh $HOME/.p10k.zsh

# install Oh My Zsh plugins
sh $SETUP_ZSH/om.zsh
