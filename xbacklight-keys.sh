#!/bin/bash

stepping=5
cfile="$HOME/.config/xbacklight-keys"
curVal=$(xbacklight)

if [ $1 == "up" ]
then
	newVal=$(bc <<< "$curVal + $stepping")
	xbacklight -set $newVal
	echo $newVal > $cfile
else
	if [ $1 == "down" ]
	then
		newVal=$(bc <<< "$curVal - $stepping")
		xbacklight -set $newVal
		echo $newVal > $cfile
	else
		if [ $1 == "restore" ]
		then
			xbacklight -set $(cat $cfile)
		fi
	fi
fi
