#!/bin/sh
export XDG_RUNTIME_DIR=$(dirname "$SWAYSOCK")
export WAYLAND_DISPLAY=${WAYLAND_DISPLAY:-wayland-1}
exec brave --ozone-platform=wayland "$@"
