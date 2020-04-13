#!/bin/sh

polybar="$(pgrep polybar)"

if pgrep -x polybar >/dev/null
then
	killall polybar
	bspc config top_padding -4
else
	bspc config top_padding 24
	polybar example &
fi
