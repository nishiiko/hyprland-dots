#!/usr/bin/bash

killall pipewire wireplumber pipewire-pulse;
sleep 0.2s;

pipewire &
wireplumber &
pipewire-pulse &

paplay --volume=65535 $HOME/.config/hypr/extra/startup.wav &
