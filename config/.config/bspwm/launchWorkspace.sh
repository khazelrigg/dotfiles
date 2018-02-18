#!/bin/bash
bspc desktop -f I

urxvt &
urxvt &
sleep 0.2
bspc node -o 0.6
sleep 0.1
bspc node -p west
sleep 0.1
urxvt &

sleep 0.1
bspc node -f east
bspc node -z right 300 0
sleep 0.1
bspc node -f west
bspc node -p south
sleep 0.1
urxvt &
sleep 0.1
bspc node -f east
bspc node -f east
bspc node -p south
sleep 0.1
urxvt &
sleep 0.1
bspc node -f west
sleep 0.1

expandL=-300
expandR=300

bspc node -z left -$expandL 0
bspc node -z right $expandR 0
