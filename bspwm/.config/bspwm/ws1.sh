#!/bin/sh
bspc monitor -f HDMI-1
sleep 0.1
bspc desktop -f I

WINDOW1="urxvtc -e vtop -t city"

$WINDOW1 &
sleep 0.2
bspc node -p east
sleep 0.3
urxvtc &
sleep 0.3
bspc node -f east
sleep 0.2
bspc node -p east
sleep 0.2
urxvtc &
sleep 0.3
bspc node -f west
sleep 0.2
bspc node -z left -412 0
sleep 0.2
bspc node -f west
bspc node -p north
urxvtc &
