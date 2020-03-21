#! /bin/sh


stylus=$(xsetwacom list devices | grep STYLUS | cut -d':' -f2 | grep -o -E '[0-9]+')
pad=$(xsetwacom list devices | grep PAD | cut -d':' -f2 | grep -o -E '[0-9]+')
eraser=$(xsetwacom list devices | grep ERASER | cut -d':' -f2 | grep -o -E '[0-9]+')
cursor=$(xsetwacom list devices | grep CURSOR | cut -d':' -f2 | grep -o -E '[0-9]+')

xsetwacom set $stylus MapToOutput $(xrandr | grep " connected " | awk '{ print$1 }' | sed -n 1p)
