#!/bin/sh
GEOM=$(swaymsg -t get_tree | jq -r '.. | select(.focused?) | .rect | "\(.x),\(.y) \(.width)x\(.height)"')
grim -g "$GEOM" - | wl-copy
