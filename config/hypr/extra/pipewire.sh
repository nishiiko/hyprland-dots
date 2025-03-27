#!/usr/bin/bash

killall pipewire pipewire-pulse wireplumber -w ;

pipewire &
pipewire-pulse &

sleep 1s
wireplumber &

paplay --volume=65535 $HOME/.config/hypr/extra/heal.wav &
