#!/bin/sh

#get current level of audio
lvl=$(pacmd dump-volumes | awk 'NR==1{print $8}' | sed 's/\%//')

#if audio is under 100% then add 5% to current level
if [ $lvl -lt 100 ]; then
	pactl set-sink-volume @DEFAULT_SINK@ +5%
fi
