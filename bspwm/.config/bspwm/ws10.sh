#!/bin/bash
bspc desktop -f X

urxvtc -e ncmpcpp &
sleep 0.2
bspc node -p south
sleep 0.2
urxvtc -e cava &
sleep 0.2
bspc node -f north
sleep 0.2
bspc node -p west
sleep 0.2
urxvtc &
sleep 0.2
bspc node -f east
bspc node -z bottom 0 100
