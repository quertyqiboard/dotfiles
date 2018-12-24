#!/bin/bash

# Terminate already running bar instances
killall -q polybar
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -r --config=/home/henning/.config/polybar/config_simple default &

echo "Bars launched..."

printf '#!/bin/bash\ni3-msg gaps inner all set 0\ni3-msg gaps outer all set 0\ni3-msg gaps top all set 25\ni3-msg gaps bottom all set 0' > /home/henning/scripts/no_gaps.sh
