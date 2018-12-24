#!/bin/bash

# Terminate already running instances
killall -q clipit

# Wait until the processes have been shut down
while pgrep -u $UID -x clipit  >/dev/null; do sleep 1; done

# Launch bar1 and bar2
clipit &

echo "Clipit restarted"
