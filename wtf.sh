#!/bin/bash

# WTF -  Write Temp File
USAGE="Usage: \n$ wtf filename 'contents in some format'"

if [ -n "$1" ]; then
	FILE_PATH=/home/$USER/tempp/$1;
	echo $2 > $FILE_PATH;
	printf "Results in $FILE_PATH: \n";
	cat $FILE_PATH;
	printf "\n\n";
else
	echo "Error: filename  not found."
	printf "\n$USAGE\n";
	echo "Aborting.";
	echo "";
fi

