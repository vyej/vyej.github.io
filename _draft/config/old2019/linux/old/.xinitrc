#!/bin/sh
# 
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)


if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

if [ -f ~/.Xresources ]; then 
	xrdb  ~/.Xresources
fi

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"


#feh --bg-scale ~/pic/aaaa.jpg

#tint2 &

fcitx &

#volti &

#nm-applet --sm-disable &

export LC_CTYPE=zh_CN.UTF-8 


#exec sawfish
exec awesome
