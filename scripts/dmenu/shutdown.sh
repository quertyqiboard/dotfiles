#!/bin/bash

choices="Cancel\nReboot\nShutdown\nLock screen\nExit i3\nTake screenshot\nReset i3"
chosen=$(echo -e "$choices" | dmenu -i -h 20 -fn 'DejaVu Sans Mono-15' -nb '#262626' -nf '#BCBCBC' -sb '#D7FF87' -sf '#080808')
case $chosen in
	"Shutdown") poweroff;;
	"Reboot") reboot;;
	"Lock screen") i3lock -B 8;;
	"Exit i3") i3exit logout ;;
	"Take screenshot") scrot;;
	# "Max i3gaps" ) ~/scripts/i3gaps/gaps_max.sh ;;
	# "Min i3gaps" )  ~/scripts/i3gaps/zero.sh;;
	"Reset i3" ) ~/scripts/i3gaps/gaps_max.sh;;
esac

