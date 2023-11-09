#!/bin/bash
#
#  Derived from https://github.com/mattjmorrison/dotfiles
#
#===============================================================================
#
#             NOTES: For this to work you must have cloned the github
#                    repo to your home folder as ~/dotfiles/
#
#===============================================================================

#==============
# Variables
#==============
dotfiles_dir=~/dotfiles

#==============
# Delete existing dot files and folders
#==============
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.config > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1

#==============
# Create symlinks in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============
ln -s $dotfiles_dir/gitconfig ~/.gitconfig
ln -sf $dotfiles_dir/vimrc ~/.vimrc
ln -sf $dotfiles_dir/config ~/.config