#!/bin/sh
export SETUP_ROOT=$HOME/.setup
git clone --depth=1 https://github.com/2JS/setup.git $SETUP_ROOT

cd $SETUP_ROOT
sh ./setup.sh
