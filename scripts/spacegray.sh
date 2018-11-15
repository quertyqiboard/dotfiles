#!/bin/bash
# update vimrc
cat /home/henning/dotfiles/vimrc > /home/henning/.vimrc
cat /home/henning/scripts/colorschemes/cs_spacegray >> /home/henning/.vimrc
# Update xresources
cat /home/henning/dotfiles/Xresources > /home/henning/.Xresources
cat /home/henning/scripts/colorschemes/spacegray >> /home/henning/.Xresources
# reload xresources
xrdb -load /home/henning/.Xresources
