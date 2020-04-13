#!/usr/bin/env bash

if [[ $(xset q | grep Enabled | awk '{print $3}') == "Enabled" ]];
then
    xset s off
    xset -dpms
    dunstify -u normal -t 3000 -r 5534 " Caffeine Enabled"
else
    xset s on
    xset s 420 179
    xset +dpms
    dunstify -u normal -t 3000 -r 5534 " Caffeine Disabled"
fi
