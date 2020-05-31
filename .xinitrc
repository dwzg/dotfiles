eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

picom -b &
xset s off                                # turn off automatic screen blanking
xset r rate 300 50                        # speed xrate up
# xmodmap ~/.Xmodmap 
nm-applet &
slstatus &
nextcloud &
feh --bg-fill ~/.config/current_wallpaper # set wallpaper
exec dwm
