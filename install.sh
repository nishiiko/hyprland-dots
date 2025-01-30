read -p "this literally just runs three commands but might still 
break stuff for you somehow idk

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
	echo sleeping for 1 seconds so you can still ctrl c just incase
	sleep 1
	cp -v config/* -r $HOME/.config
	cp -v local/* -r $HOME/.local
	cp -v Pictures/* -r $HOME/Pictures
	echo
	echo done
fi
