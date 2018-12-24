#!/bin/bash

# Terminate already running bar instances
killall -q nm-applet

# Wait until the processes have been shut down
while pgrep -u $UID -x nm-applet  >/dev/null; do sleep 1; done

# Launch bar1 and bar2
nm-applet &

echo "NetworkManager restarted"
