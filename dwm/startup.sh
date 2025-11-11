#!/bin/sh

export PATH="$HOME/.local/bin:$PATH"

# Set wallpaper
feh --bg-scale ~/Pictures/starry_skey_over_snow.jpeg &

# Start dwm-bar
~/Applications/suckless/dwm-bar/dwm_bar.sh &

# Finally start dwm (must be last, without &)
exec dwm
