#! /bin/sh


stylus=$(xsetwacom list devices | grep STYLUS | cut -d':' -f2 | grep -o -E '[0-9]+')
pad=$(xsetwacom list devices | grep PAD | cut -d':' -f2 | grep -o -E '[0-9]+')
eraser=$(xsetwacom list devices | grep ERASER | cut -d':' -f2 | grep -o -E '[0-9]+')
cursor=$(xsetwacom list devices | grep CURSOR | cut -d':' -f2 | grep -o -E '[0-9]+')

xsetwacom set $stylus MapToOutput HDMI-A-0

xsetwacom set $pad Button 1 "key super alt 1"
xsetwacom set $pad Button 2 "key super alt 2"
xsetwacom set $pad Button 3 "key super return"
xsetwacom set $pad Button 8 "key super f"
