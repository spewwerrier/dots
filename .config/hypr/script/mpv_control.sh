#!/usr/bin/env sh

query=$(printf "%s\n" "next" "prev" "cycle" | bemenu -c -M 800 --list 10 -b --ignorecase --fn "Iosevka Extended ss11 20" --prompt "mpv:" --tf "#ffffff" --hf "#000000" --hb "#ffffff")

if [ "$query" = "next" ];
then 
	echo playlist-next | socat - /tmp/mpvsock`
elif [ "$query" = "prev" ]
then
	echo playlist-next | socat - /tmp/mpvsock`
elif [ "$query" = "cycle" ]
then
	echo cycle pause | socat - /tmp/mpvsock
else
	echo "Not specified"
	exit 1
fi
