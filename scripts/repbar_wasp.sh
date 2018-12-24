#!/bin/bash

# Terminate already running bar instances
killall -q polybar
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bars
polybar -r --config=/home/henning/.config/polybar/config_wasp top &

echo "Bars launched..."

printf '#!/bin/bash\ni3-msg faps inner all set 0\ni3-msg gaps outer all set 0\ni3-msg gaps top all set 1\ni3-msg gaps bottom all set 0'> /home/henning/scripts/no_gaps.sh
