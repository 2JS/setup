#!/bin/sh

if [ "$GITHUB_ACTIONS" != "true" ]; then
  git config --global --add include.path $SETUP_ROOT/git/gitconfig
  git config --global core.excludesfile $SETUP_ROOT/git/gitignore
fi
