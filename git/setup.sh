#!bash

ln -s ~/.setup/git/gitconfig ~/.gitconfig

echo "Generating a new GPG key"
gpg --gen-key --default-new-key-algo rsa4096


