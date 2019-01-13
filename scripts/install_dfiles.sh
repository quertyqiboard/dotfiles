#!/bin/bash
# Remove existing dotfiles
rm -f ~/.Xresources || unlink ~/.Xresources
rm -f ~/.bashrc || unlink ~/.bashrc
rm -f ~/.vimrc || unlink ~/.vimrc
rm -f ~/.bash_history || unlink ~/.bash_history
rm -f ~/.bash_profile || unlink ~/.bash_profile
rm -f ~/.config/i3/config || unlink ~/.config/i3/config
rm -f ~/.xinitrc || unlink ~/.xinitrc
# same for .vim files
rm -f ~/.vim/src/airlineconf.vim || unlink ~/.vim/src/airlineconf.vim
rm -f ~/.vim/src/functions.vim || unlink ~/.vim/src/functions.vim
rm -f ~/.vim/src/settings.vim || unlink ~/.vim/src/settings.vim
rm -f ~/.vim/src/remaps.vim || unlink ~/.vim/src/remaps.vim
rm -f ~/.vim/src/autoclose.vim || unlink ~/.vim/src/autoclose.vim
# Move the folders to the correct position
mv ~/dotfiles/scripts ~/scripts
mv ~/dotfiles/backgrounds ~/backgrounds
mv -n ~/dotfiles/.config ~/.config
# Moving dotfiles back and forth
mkdir -p ~/tmp/dfiles; mv ~/dotfiles/dotfiles/* ~/tmp/dfiles/
mv ~/dotfiles/.git ~/.git
mv ~/dotfiles/.gitconfig ~/.gitconfig
rm ~/dotfiles
mv ~/tmp/dfiles ~/dotfiles
rm -rf ~/tmp/
mv ~/dotfiles/dotfiles/* ~/dotfiles/
# Vim setup
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/src
ln -s ~/dotfiles/airlineconf.vim ~/.vim/src/airlineconf.vim
ln -s ~/dotfiles/functions.vim ~/.vim/src/functions.vim
ln -s ~/dotfiles/settings.vim ~/.vim/src/settings.vim
ln -s ~/dotfiles/remaps.vim ~/.vim/src/remaps.vim
ln -s ~/dotfiles/autoclose.vim ~/.vim/src/autoclose.vim
# Linking
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/bash_history ~/.bash_history
ln -s ~/dotfiles/bash_profile ~/.bash_profile
ln -s ~/dotfiles/i3config ~/.config/i3/config
ln -s ~/dotfiles/xinitrc ~/.xinitrc
