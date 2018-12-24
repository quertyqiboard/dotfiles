#!/bin/bash
convert /usr/share/backgrounds/campsky.jpg /tmp/screen.png
convert /tmp/screen.png /home/henning/Pictures/lock_icon.png -gravity center -composite /tmp/screen.png
