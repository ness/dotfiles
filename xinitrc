if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# color and config for xclients (xterm, uxrvt, etc.)
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# change keymapping and swap caps with escape
setxkbmap -layout de -option caps:swapescape

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets)
exec awesome
