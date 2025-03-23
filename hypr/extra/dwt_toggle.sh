#!/usr/bin/env sh
dwt=$(hyprctl getoption input:touchpad:disable_while_typing enabled | awk 'NR==1{print $2}')

if [ "$dwt" = 1 ] ; then
    hyprctl keyword input:touchpad:disable_while_typing 0
    notify-send "DWT toggle" "Disabled" -u "Critical"
    exit
elif [ "$dwt" = 0 ] ; then
    hyprctl keyword input:touchpad:disable_while_typing 1
    notify-send "DWT toggle" "Enabled" -u "Critical"
    exit
fi
