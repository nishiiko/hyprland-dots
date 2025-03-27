#!/usr/bin/bash

killall pipewire pipewire-pulse wireplumber -w ;

pipewire &
pipewire-pulse &
wireplumber &

paplay --volume=65535 $HOME/.config/hypr/extra/heal.wav &
