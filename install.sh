#!/bin/bash
# Derived from https://github.com/mattjmorrison/dotfiles

#==============
# Variables
#==============
dotfiles_dir=$(dirname "$(readlink -f $0)")

#==============
# Delete existing dot files and folders
#==============
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.config/Code/User/settings.json > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1

#==============
# Create symlinks in the home folder
#==============
ln -s "$dotfiles_dir/gitconfig" ~/.gitconfig
ln -sf "$dotfiles_dir/vimrc" ~/.vimrc
mkdir -p "$dotfiles_dir/config/Code/User/"
ln -sf "$dotfiles_dir/config/Code/User/settings.json" ~/.config/Code/User/settings.json