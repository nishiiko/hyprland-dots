read -p "this will copy files into:
$HOME/.config
$HOME/.local
$HOME/Pictures

are you sure you want to run this (y/n): " HELPME

if [ $HELPME == "y" ]; then
	read -p "are you DEFINITELY sure (y/n): " HELPME
else
	exit
fi

if [ $HELPME == "y" ]; then
	echo sleeping for 5 seconds so you can still ctrl c just incase
	sleep 1
	echo sleeping for 4 seconds so you can still ctrl c just incase
	sleep 1
	echo sleeping for 3 seconds so you can still ctrl c just incase
	sleep 1
	echo sleeping for 2 seconds so you can still ctrl c just incase
	sleep 1
	echo sleeping for 1 second so you can still ctrl c just incase
	sleep 1
	chmod +x config/hypr/extra/pipewire.sh
    chmod +x config/hypr/extra/xdph.sh
    chmod +x local/bin/screenshot

    cp -v config/* -r $HOME/.config
	cp -v local/* -r $HOME/.local
	cp -v Pictures/* -r $HOME/Pictures
	echo
	echo done
fi
