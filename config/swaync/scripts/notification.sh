#!/bin/bash

if [ $(swaync-client -D) = "false" ]; then
	paplay $HOME/.config/swaync/ding.wav --volume=45000
fi
