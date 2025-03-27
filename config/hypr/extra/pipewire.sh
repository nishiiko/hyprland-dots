#!/usr/bin/bash

if ! pstree -s $PPID | grep -Fwq systemd; then
    killall pipewire pipewire-pulse wireplumber -w ;

    pipewire &
    pipewire-pulse &

    sleep 1s
    wireplumber &
fi

paplay --volume=65535 $HOME/.config/hypr/extra/heal.wav &
