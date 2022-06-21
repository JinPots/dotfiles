#!/usr/bin/env sh

# Terminate already running bar instances
killall -q picom

# Wait until the processes have been shut down
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done

# Start
picom --experimental-backends --config ~/.config/picom/picom.conf 