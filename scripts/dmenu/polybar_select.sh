#!/bin/bash

choices="Simple\nDefault\nWasp"
chosen=$(echo -e "$choices" | dmenu -i -h 20 -fn 'DejaVu Sans Mono-15' -nb '#262626' -nf '#BCBCBC' -sb '#D7FF87' -sf '#080808')
case $chosen in
	"Simple") /home/henning/scripts/repbar_simple.sh ;;
	"Default") /home/henning/scripts/repbar_rice.sh ;;
	"Wasp") /home/henning/scripts/repbar_wasp.sh ;;
esac

