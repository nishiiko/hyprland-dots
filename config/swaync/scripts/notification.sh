#!/bin/bash

if [ $(swaync-client -D) = "false" ]; then
	paplay $HOME/.config/swaync/GEN_Jump.ogg --volume=65535
fi
