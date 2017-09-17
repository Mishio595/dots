#!/bin/bash

query=`$HOME/.config/polybar/spotifycontrol.sh playstatus`

if [[ "$query" == Playing ]]; then
	echo ""
elif [[ "$query" == Paused ]]; then
	echo ""
fi
