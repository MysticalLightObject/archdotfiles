#!/bin/sh
# shell script to prepend i3status with more stuff

i3status | while :
do
	read line
	lang=$(xkb-switch)
	echo "$lang | $line" || exit 1
done
