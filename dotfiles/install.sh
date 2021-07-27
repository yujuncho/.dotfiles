#!/bin/sh

echo "Starting Install"
echo "Setting up vim with vim-plug"

rm -rf ~/.vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"

echo "Setting up bash-it"

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
ln -s ~/.dotfiles/custom.aliases.bash ~/.bash_it/aliases/custom.aliases.bash
~/.bash_it/install.sh

echo "Completed Install"
