#!/bin/bash
# set gaps to zero
cat /home/henning/dotfiles/i3config > /home/henning/.i3/config
cat /home/henning/scripts/colorschemes/gaps_max >> /home/henning/.i3/config
/home/henning/scripts/repbar.sh
