#!/bin/bash
bspc desktop -f X

urxvt -e ncmpcpp &
sleep 0.2
bspc node -p south
sleep 0.2
urxvt -e cava &
sleep 0.2
bspc node -f north
sleep 0.2
bspc node -p west
sleep 0.2
urxvt &
sleep 0.2
bspc node -f east
bspc node -z bottom 0 100
