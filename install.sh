read -p "this literally just runs three commands but might still 
break stuff for you somehow idk

are you sure you want to run this (y/n): " HELPME

if [ $HELPME == "y" ]; then
	read -p "are you DEFINITELY sure (y/n): " HELPME
else
	exit
fi

if [ $HELPME == "y" ]; then
	cp -v config/* -r $HOME/.config
	cp -v local/* -r $HOME/.local
	cp -v Pictures/* -r $HOME/Pictures
	echo
	echo done
fi
