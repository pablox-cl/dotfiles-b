#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# TODO: is there any specification about autostart directories/files?
#       is $XDG_CONFIG_HOME/autostart useful besides those .desktop?
function autostart {
  if [ -s $HOME/.config/autostart.sh ]; then
    . $HOME/.config/autostart.sh
  fi
}

if [ -f "$HOME/.Xresources" ]; then
  xrdb -merge "$HOME/.Xresources"
fi

if [ -f "$HOME/.Xmodmap" ]; then
  xmodmap "$HOME/.Xmodmap"
fi

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

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

