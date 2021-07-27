#!/bin/sh

echo "Starting install"
echo "Setting up vim with vim-plug"

rm -rf ~/.vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"

echo "Setting up bash-it"

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
ln -s ~/.dotfiles/custom.aliases.bash ~/.bash_it/aliases/custom.aliases.bash
cp ~/.dotfiles/.bashrc ~/.bashrc
~/.bash_it/install.sh --silent -f

echo "Setting up bash theme"

BASH_THEME=metal
sed -i "s/BASH_IT_THEME=.*/BASH_IT_THEME='${BASH_THEME}'/" ~/.bashrc

echo "Completed install"

echo "Restarting bash"
exec bash

