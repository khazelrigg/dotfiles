#!/bin/bash
WM=$( wmctrl -m | head -n 1 | tail -c +7 )

if [ $WM == "Xfwm4" ]; then
    xfconf-query -c xfwm4 -p /general/theme -s {{ xfce.theme }}
    xfconf-query -c xsettings -p /Net/ThemeName -s {{ xfce.style }}
    xfconf-query -c xsettings -p /Net/IconThemeName -s {{ xfce.icons }}
elif [ $WM == "bspwm" ]; then
    bspc config presel_feedback_color \#{{ fgc }} 
    bspc config focused_border_color \#{{ border }}
    bspc config normal_border_color \#{{ n_black }}
    bspc config active_border_color \#{{ n_black }}
else
    echo wut
fi

function reloadBG {
    WAL="{{ wal }}"
    if [[ $WAL == "" ]] || [ ! -f $WAL ] ; then
        echo [!] Wal not set or file does not exist ! 
        HEX="#{{ colors.background }}"
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
