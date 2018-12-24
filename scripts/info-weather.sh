#!/bin/sh
### This is only if your location isn't automatically detected, otherwise you can leave it blank.
location=""

case $BLOCK_BUTTON in
    1) $TERMINAL -e less -S ~/.weatherreport ;;
    3) pgrep -x dunst >/dev/null && notify-send "<b>🌈 Weather module:</b>
- Click for wttr.in forecast.
☔: Chance of rain/snow
❄: Daily low
🌞: Daily high" ;;
esac

[ "$location" != "" ] && location="$location+"

ping -q -w 1 -c 1 "$(ip r | grep default | tail -1 | cut -d ' ' -f 3)" >/dev/null || exit

curl -s wttr.in/$location > ~/.weatherreport

printf "%s" "$(sed '16q;d' ~/.weatherreport | grep -wo "[0-9]*%" | sort -n | sed -e '$!d' | sed -e "s/^/☔ /g" | tr -d '\n')"

sed '13q;d' ~/.weatherreport | grep -o "m\\(-\\)*[0-9]\\+" | sort -n -t 'm' -k 2n | sed -e 1b -e '$!d' | tr '\n|m' ' ' | awk '{print " Lo",$1 "°","Hi",$2 "°"}'
