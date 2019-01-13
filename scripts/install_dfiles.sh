#!/bin/bash
rm -rf ~/.Xresources
rm -rf ~/.bashrc
rm -rf ~/.vimrc
rm -rf ~/.bash_history
rm -rf ~/.config/i3/config
rm -rf ~/.xinitrc
ln -s ~/dotfiles/dotfiles/Xresources ~/.Xresources
ln -s ~/dotfiles/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/dotfiles/bash_history ~/.bash_history
ln -s ~/dotfiles/dotfiles/i3config ~/.config/i3/config
ln -s ~/dotfiles/dotfiles/xinitrc ~/.xinitrc
