# color and config for xclients (xterm, uxrvt, etc.)
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# change keymapping
[[ -f ~/.config/xmodmap ]] && xmodmap ~/.config/xmodmap
exec awesome
