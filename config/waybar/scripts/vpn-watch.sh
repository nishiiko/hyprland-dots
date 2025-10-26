#!/usr/bin/env bash

while read -r line; do
    echo $line | grep wg0 \
    && pkill -RTMIN+8 waybar
done < <(ip monitor link)
