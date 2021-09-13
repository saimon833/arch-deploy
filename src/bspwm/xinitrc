#!/bin/sh
xsetroot -cursor_name left_ptr
xset r rate 300 50 &
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY &
exec bspwm
