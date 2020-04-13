#!/bin/sh

zscroll -d 0.8 -l 70 -u true "xdotool getwindowfocus getwindowname" &

wait
