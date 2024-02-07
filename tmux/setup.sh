#!/bin/bash

if [ "$GITHUB_ACTIONS" != "true" ]; then
  ln -s $SETUP_ROOT/tmux/tmux.conf $HOME/.tmux.conf
fi
