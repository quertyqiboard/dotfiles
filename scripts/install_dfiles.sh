#!/bin/bash
# Remove existing dotfiles
rm -f ~/.Xresources || unlink ~/.Xresources
rm -f ~/.bashrc || unlink ~/.bashrc
rm -f ~/.vimrc || unlink ~/.vimrc
rm -f ~/.bash_history || unlink ~/.bash_history
rm -f ~/.bash_profile || unlink ~/.bash_profile
rm -f ~/.config/i3/config || unlink ~/.config/i3/config
rm -f ~/.xinitrc || unlink ~/.xinitrc
# Move the folders to the correct position
mv ~/dotfiles/scripts ~/scripts
echo "1 $(ls ~/dotfiles)"
mv ~/dotfiles/dotfiles /tmp/dotfiles
echo "2 $(ls ~/dotfiles)"
mv ~/dotfiles/backgrounds ~/backgrounds
echo "3 $(ls ~/dotfiles)"
mv -n ~/dotfiles/.config ~/.config
echo "4 $(ls ~/dotfiles)"
mv ~/dotfiles/* ~/
echo "5 $(ls ~/dotfiles)"
mv /tmp/dotfiles/* ~/dotfiles/
echo "6 $(ls ~/dotfiles)"
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
