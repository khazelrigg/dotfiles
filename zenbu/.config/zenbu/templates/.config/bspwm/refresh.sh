#!/bin/bash
wal='{{ wal }}'
if [[ -n  "${wal// /}" ]]; then
   feh --bg-fill $wal
else 
   convert -size 1x1 xc:'#{{ bgc }}' -scale 2560x1080 $HOME/.config/bspwm/bg.jpg
   feh --bg-tile $HOME/.config/bspwm/bg.jpg
fi
bspc config presel_feedback_color \#{{ fgc }} 
bspc config focused_border_color \#{{ border }}
bspc config normal_border_color \#{{ n_black }}
bspc config active_border_color \#{{ n_black }}

oomoxify-cli -s /opt/spotify/Apps ./scripted_colors/xresources/xresources
