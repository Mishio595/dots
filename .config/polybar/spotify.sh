#!/bin/bash

# Check if spotify is running
if pgrep -x spotify >/dev/null
then
	SYMBOL=`$HOME/.config/polybar/playstatus.sh`
	echo "$(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata'|egrep -A 2 "artist"|egrep -v "artist"|egrep -v "variant"|cut -b 27-|cut -d '"' -f 1|egrep -v ^$) - $(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata'|egrep -A 1 "title"|egrep -v "title"|cut -b 44-|cut -d '"' -f 1|egrep -v ^$)  %{A1:eval $HOME/.config/polybar/spotifycontrol.sh playpause:}$($HOME/.config/polybar/playstatus.sh)%{A} "
else
	echo ""
fi
