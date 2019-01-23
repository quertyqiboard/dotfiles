#!/bin/bash

choices="Cancel\nReboot\nShutdown\nLock screen\nExit i3\nTake screenshot\nReset i3"
chosen=$(echo -e "$choices" | dmenu -i)
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

