#!/bin/bash
# Remove existing dotfiles
rm -f ~/.Xresources || unlink ~/.Xresources
rm -f ~/.bashrc || unlink ~/.bashrc
rm -f ~/.vimrc || unlink ~/.vimrc
rm -f ~/.bash_history || unlink ~/.bash_history
rm -f ~/.config/i3/config || unlink ~/.config/i3/config
rm -f ~/.xinitrc || unlink ~/.xinitrc
# Move the folders to the correct position
mv ~/dotfiles/scripts ~/scripts
mv ~/dotfiles/dotfiles/ /tmp/dotfiles
mv ~/dotfiles/backgrounds ~/backgrounds
mv -n ~/dotfiles/.config ~/.config
mv ~/dotfiles/* ~/
mv /tmp/dotfiles/* ~/dotfiles/
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/bash_history ~/.bash_history
ln -s ~/dotfiles/i3config ~/.config/i3/config
ln -s ~/dotfiles/xinitrc ~/.xinitrc
