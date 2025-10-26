#!/usr/bin/env bash

vpn_ip=

if ! mullvad status | grep -q -e "Connecting" -e "Connected"; then
    echo '{"text":"VPN Disconnected","class":"disconnected","percentage":0}'
    exit
fi

until [[ -n "$vpn_ip" ]]; do
    vpn_ip=$(curl -s4 ipinfo.io | jq -r '"\(.ip) \(.country)"')
    if [[ -n "$vpn_ip" ]]; then
        jq -c -n --arg ip "$vpn_ip" '{"text":$ip,"class":"connected","percentage":100}'
    fi
done
