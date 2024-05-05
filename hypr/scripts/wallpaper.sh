#!/bin/bash
cd $HOME/.config/hypr/resources/wallpapers
while true; do
    for file in $(ls *); do
        wall="$(ls * | sort -R | tail -1)"
        while [[ $prev_wall == $wall ]]; do
            wall="$(ls * | sort -R | tail -1)"
        done
	swww img --transition-type grow --transition-fps 144 --transition-duration 3 "$wall"
        sleep 30m 
        prev_wall=$wall
    done
done
