read -p "this will copy files into:
$HOME/.config
$HOME/.local
$HOME/Pictures

i dont recommend you actually use this, i made this
for myself where i intend to always nuke my previous config files
please backup your current dots first

are you sure you want to run this (y/n): " confirm

if [ $confirm == "y" ]; then
    read -p "are you DEFINITELY sure (y/n): " confirm
else
    exit
fi

countdown=5

if [ $confirm == "y" ]; then
    while [ $countdown -gt 0 ]; do
        echo -ne "your current dots will be nuked in: $countdown\033[0K\r"
        sleep 1
        : $((countdown--))
    done
    chmod +x config/swaync/scripts/notification.sh
    chmod +x config/hypr/extra/dwt_toggle.sh
    chmod +x config/hypr/extra/lockedIn.sh
    chmod +x config/hypr/extra/pipewire.sh
    chmod +x config/hypr/extra/xdph.sh
    chmod +x local/bin/screenshot

    cp -v config/* -r $HOME/.config
    cp -v local/* -r $HOME/.local
    cp -v Pictures/* -r $HOME/Pictures
    echo
    echo done
fi
hyprctl reload 2>/dev/null
