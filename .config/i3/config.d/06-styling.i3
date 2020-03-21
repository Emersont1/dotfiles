exec feh --bg-fill Pictures/bmrf.jpg

exec polybar.sh

# class                 border  bground text    indicator child_border
client.focused          #4797DE #4797DE #FFFFFF #4797DE   #4797DE
client.focused_inactive #201F1D #201F1D #DCDCDC #484E50   #5F676A
client.unfocused        #201F1D #201F1D #DCDCDC #292D2E   #222222
client.urgent           #DE8E47 #DE8E47 #FFFFFF #DE8E47   #de8e47
client.placeholder      #000000 #0C0C0C #FFFFFF #000000   #0C0C0C

client.background       #FFFFFF

bar {
  colors {
    background #000000
    statusline #FFFFFF
    separator  #666666

    focused_workspace  #4C7899 #285577 #FFFFFF
    active_workspace   #333333 #222222 #FFFFFF
    inactive_workspace #333333 #222222 #888888
    urgent_workspace   #2F343A #900000 #FFFFFF
    binding_mode       #2F343A #900000 #FFFFFF
  }
}
