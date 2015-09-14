if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# color and config for xclients (xterm, uxrvt, etc.)
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# change keymapping
[[ -f ~/.config/xmodmap ]] && xmodmap ~/.config/xmodmap

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets)
exec awesome
