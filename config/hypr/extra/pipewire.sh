#!/usr/bin/env bash

if ! echo $(ls -l /sbin/init) | grep systemd; then
    killall wireplumber pipewire-pulse pipewire

    pipewire &
    pipewire-pulse &

    sleep 1s
    wireplumber &
fi

paplay --volume=65535 $HOME/.config/hypr/extra/heal.wav &
