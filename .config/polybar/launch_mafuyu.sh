#!/usr/bin/env sh

# Terminate already running bar instances
pkill polybar

while pgrep -u $UID polybar; do sleep 1; done
i3 gaps top all set 29

polybar ProcessBar -r -c /home/jinpots/.config/polybar/config_mafuyu.ini &
polybar Clock -r -c /home/jinpots/.config/polybar/config_mafuyu.ini &
polybar Launcher -r -c /home/jinpots/.config/polybar/config_mafuyu.ini &
polybar i3thing -r -c /home/jinpots/.config/polybar/config_mafuyu.ini &
polybar Stuff -r -c /home/jinpots/.config/polybar/config_mafuyu.ini 