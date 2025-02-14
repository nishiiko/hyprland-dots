#!/usr/bin/env sh
lockedIn=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
if [ "$lockedIn" = 1 ] ; then
    hyprctl --batch "\
        keyword decoration:shadow:enabled 0;\
        #keyword decoration:blur:enabled 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword decoration:rounding 0;\
        keyword animations:enabled 0;\
        keyword decoration:active_opacity 1;\
        keyword decoration:inactive_opacity 1
        "
    killall waybar
    swaync-client -dn
    notify-send "Locked in." "Do your work." -u "Critical"
    exit
elif [ "$lockedIn" = 0 ] ; then
    notify-send "Dilly-dallying >v<" "gamer time yippeeeeeee" -u "Critical"
    swaync-client -df
    waybar &
fi
hyprctl reload
