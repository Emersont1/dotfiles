bindsym $mod+shift+r exec "cat .config/i3/config.d/* > .config/i3/config"; reload
bindsym $mod+shift+t restart
bindsym Mod1+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"
