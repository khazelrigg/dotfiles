#!/bin/bash
bspc desktop -f I

urxvt &
sleep 0.3
urxvt &
sleep 0.3
bspc node -o 0.6
sleep 0.3
bspc node -p west
sleep 0.3
urxvt &

sleep 0.3
bspc node -f east
sleep 0.2
bspc node -z right 300 0
sleep 0.2
bspc node -f west
sleep 0.2
bspc node -p south
sleep 0.2
urxvt &
sleep 0.2
bspc node -f east
sleep 0.2
bspc node -f east
sleep 0.2
bspc node -p south
sleep 0.2
urxvt &
sleep 0.2
bspc node -f west
sleep 0.2

expandL=-300
expandR=300

bspc node -z left $expandL 0
sleep 0.1
bspc node -z right $expandR 0
