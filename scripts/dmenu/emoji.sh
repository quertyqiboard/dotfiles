#!/bin/bash
grep -v "#" ~/.emoji | dmenu -i | awk '{print $1}' | tr -d '\n' | xclip -i
