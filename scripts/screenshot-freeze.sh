#!/bin/sh
hyprpicker -r -z &
PID=$!
sleep 0.1
grim -g "$(slurp)" - | wl-copy
kill $PID
