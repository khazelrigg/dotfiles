#!/bin/sh
bspc desktop -f I

WINDOW1="urxvt -e vtop -t city"

$WINDOW1 &
sleep 0.1
bspc node -p east
sleep 0.1
urxvt &
sleep 0.1
bspc node -f east
sleep 0.1
bspc node -p east
sleep 0.1
urxvt &
sleep 0.1
bspc node -f west
sleep 0.1
bspc node -z left -412 0
bspc node -f west
bspc node -p north
urxvt &
