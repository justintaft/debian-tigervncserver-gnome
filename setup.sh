#!/usr/bin/env bash

sudo apt install tigervnc-standalone-server


cat >/etc/myconfig.conf <<EOL
#!/bin/sh

unset SESSION_MANAGER

[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources

vncconfig -iconfig &

dbus-launch --exit-with-session gnome-session &
EOL
