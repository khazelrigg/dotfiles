#!/bin/bash
wal='/home/kmrn/usr/img/walls/buildings.jpg'
if [[ -n  "${wal// /}" ]]; then
   feh --bg-fill $wal
else 
   convert -size 1x1 xc:'#222222' -scale 2560x1080 $HOME/.config/bspwm/bg.jpg
   feh --bg-tile $HOME/.config/bspwm/bg.jpg
fi
bspc config presel_feedback_color \#c2c2b0 
bspc config focused_border_color \#31313l
bspc config normal_border_color \#111111
bspc config active_border_color \#111111

oomoxify-cli -s /opt/spotify/Apps ./scripted_colors/xresources/xresources
