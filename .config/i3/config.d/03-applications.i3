bindsym $mod+Return exec lxterminal
bindsym $mod+Shift+q kill

bindsym $mod+d exec "dmenu_run -nf '#DCDCDC' -nb '#201F1D' -sb '#4797DE' -sf '#FFFFFF' -fn 'monospace-10'"

exec setxkbmap gb
exec synapse
exec redshift-gtk
exec nm-applet &
#exec swaymsg output DVI-D-1 pos 1920 0
#exec swaymsg output HDMI-A-1 pos 0 0
exec /usr/lib/notification-daemon-1.0/notification-daemon &
