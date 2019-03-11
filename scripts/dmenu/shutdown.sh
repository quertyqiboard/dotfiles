#!/bin/bash

choices="Cancel\nReboot\nOff\nLock screen\nExit i3\nTake screenshot\nReset i3"
chosen=$(echo -e "$choices" | dmenu -i)
case $chosen in
	"Off") poweroff;;
	"Reboot") reboot;;
	"Lock screen") i3lock -B 8;;
	"Exit i3") i3exit logout ;;
	"Take screenshot") scrot;;
	"Reset 3" ) ~/scripts/i3gaps/gaps_max.sh;;
esac

