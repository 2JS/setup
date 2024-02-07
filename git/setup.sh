#!bash

if [ "$GITHUB_ACTIONS" != "true" ]; then
  ln -s $SETUP_ROOT/git/gitconfig ~/.gitconfig
fi
