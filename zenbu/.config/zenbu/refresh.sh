#!/bin/bash
WM=$( wmctrl -m | head -n 1 | tail -c +7 )

if [ $WM == "Xfwm4" ]; then
    xfconf-query -c xfwm4 -p /general/theme -s Circela
    xfconf-query -c xsettings -p /Net/ThemeName -s Fantome
    xfconf-query -c xsettings -p /Net/IconThemeName -s Papirus
elif [ $WM == "bspwm" ]; then
    bspc config presel_feedback_color \#D8DEE9 
    bspc config focused_border_color \#6f6f6f
    bspc config normal_border_color \#2E3440
    bspc config active_border_color \#2E3440
else
    echo wut
fi

function reloadBG {
    WAL=""
    if [[ $WAL == "" ]] || [ ! -f $WAL ] ; then
        echo [!] Wal not set or file does not exist ! 
        HEX="#2E3440"
        BGDIR=/home/kmrn/usr/img/bg
        convert -size 2560x1080 xc:$HEX $BGDIR/base.png
        composite -gravity center $BGDIR/kallaxOverlay.png $BGDIR/base.png $BGDIR/final.png
        WAL=$BGDIR/final.png
    fi
    if [ $WM == "Xfwm4" ]; then
        xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-0/workspace0/last-image -s $WAL
    elif [ $WM == "bspwm" ]; then
        feh --bg-fill $WAL
    elif [ $WM == "awesome" ]; then  
        feh --bg-fill $WAL
        echo 'awesome.restart()' | awesome-client
    fi
}

reloadBG
