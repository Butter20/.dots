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

# hide mouse coursor when it isn't used
unclutter -root -visible &

# composition manager
compton --config $HOME/.config/compton.conf &

# WM
i3

