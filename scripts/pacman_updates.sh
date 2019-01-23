#!/usr/local/bin/fish
checkupdates ^ /dev/null | wc -l | tee ~/.pacman-updates || cat ~/.pacman-updates
