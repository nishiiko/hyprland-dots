#!/usr/bin/bash

pipewire &
wireplumber &
pipewire-pulse &

paplay --volume=65535 $HOME/.config/hypr/extra/startup.wav &
