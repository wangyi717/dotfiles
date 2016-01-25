#!/bin/sh

export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US
exprot LC_CTYPE=en_US.UTF-8

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec i3
