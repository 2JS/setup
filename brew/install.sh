/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install $(cat packages.txt)
brew cask install $(cat casks.txt)
