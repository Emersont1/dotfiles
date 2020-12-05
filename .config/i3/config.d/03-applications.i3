bindsym $mod+Return exec lxterminal
bindsym $mod+Shift+q kill

# Use pactl to adjust volume in PulseAudio.
set $refresh_i3status killall -SIGUSR1 i3status
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10% && $refresh_i3status
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10% && $refresh_i3status
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status
bindsym XF86AudioMicMute exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status

bindsym $mod+d exec zsh -c "rofi -show run"
bindsym $mod+p exec "passmenu"


exec setxkbmap gb
exec redshift-gtk
exec polybar topbar &
exec dunst &
exec flameshot & 
exec mpd &
exec --no-startup-id /usr/lib/kdeconnectd
exec --no-startup-id kdeconnect-indicator
