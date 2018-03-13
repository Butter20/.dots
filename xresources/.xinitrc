#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

export I3_CONFIG_DIR="$HOME/.config/i3"

# use xresources
xrdb -load ~/.Xresources &

# background
xwinwrap -ov -ni -fs -- mpv -vo x11 -wid WID --keepaspect=no --loop /home/olin/pic/gif/9WgJg0G.gif &

# hide mouse coursor when it isn't used
unclutter -root -visible &

# composition manager
compton --config $HOME/.config/compton.conf &

# tempature control
pgrep redshift &> /dev/null || redshift &> /dev/null &

# WM
i3

