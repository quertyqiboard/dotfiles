#!/bin/bash
git clone https://github.com/ryanoasis/nerd-fonts.git
~/nerd-fonts/install.sh
rm -rf ~/.Xresources
rm -rf ~/.bashrc
rm -rf ~/.vimrc
rm -rf ~/.bash_history
rm -rf ~/.config/i3/config
rm -rf ~/.xinitrc
mv ~/dotfiles/scripts ~/scripts
mv ~/dotfiles/dotfiles/* ~/dotfiles/
mv ~/dotfiles/backgrounds ~/backgrounds
ln -s ~/dotfiles/Xresources ~/.Xresources
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/bash_history ~/.bash_history
ln -s ~/dotfiles/i3config ~/.config/i3/config
ln -s ~/dotfiles/xinitrc ~/.xinitrc
