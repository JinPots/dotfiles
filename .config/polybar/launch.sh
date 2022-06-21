#!/usr/bin/env sh

# Terminate already running bar instances
pkill polybar

# Wait until the processes have been shut down
# while pgrep -u $UID polybar; do sleep 1; done

# Launch bar1 and bar2
polybar PolybarTop -r &
polybar PolybarBot -r 