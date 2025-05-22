#!/usr/bin/env sh
lockedIn=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
if [ "$lockedIn" = 1 ] ; then
    hyprctl --batch "\
        keyword decoration:shadow:enabled 0;\
        #keyword decoration:blur:enabled 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 0;\
        keyword decoration:rounding 0;\
        "
    killall waybar
    swaync-client -dn
    notify-send "Locked in." "Do your work." -u "Critical"
    
    sleep 0.5

    hyprctl keyword animations:enabled 0
    
    exit
elif [ "$lockedIn" = 0 ] ; then
    hyprctl keyword animations:enabled 1
    hyprctl --batch "\
        keyword decoration:shadow:enabled 1;\
        #keyword decoration:blur:enabled 1;\
        keyword general:gaps_in 7;\
        keyword general:gaps_out 15;\
        keyword general:border_size 6;\
        keyword decoration:rounding 16;\
        keyword plugin:hyprbars:bar_height 30;\
        keyword plugin:hyprbars:bar_padding 14;\
    " 
    notify-send "Dilly-dallying >v<" "gamer time yippeeeeeee" -u "Critical"
    swaync-client -df
    waybar &
    exit
fi
