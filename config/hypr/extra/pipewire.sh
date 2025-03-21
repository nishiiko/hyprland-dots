#!/usr/bin/bash

killall pipewire pipewire-pulse wireplumber ;

pipewire &
pipewire-pulse &
wireplumber &

# paplay --volume=65535 $HOME/.config/hypr/extra/startup.wav &
