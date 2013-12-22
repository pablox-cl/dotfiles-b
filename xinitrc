#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

function autostart {
  if [ -s $XDG_CONFIG_HOME/autostart.sh ]; then
    . $XDG_CONFIG_CHOME/autostart.sh
  fi
}

# Here xmonad is kept as default
case $1 in
  lxde) exec startlxde;;
  cinnamon) exec cinnamon-session;;
  cinnamon2d) exec cinnamon-session-cinnamon2d;;
  e17) exec enlightenment_start;;
  ede) exec startede;;
  i3) exec i3 -V >> ~/.i3/i3log 2>&1;;
  xmonad);;
  *) autostart; exec xmonad;;
esac

# vim: ft=sh
