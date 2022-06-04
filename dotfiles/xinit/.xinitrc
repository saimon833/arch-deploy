#!/bin/sh
export QT_QPA_PLATFORMTHEME=qt5ct
export LC_TIME="pl_PL.UTF-8"
xsetroot -cursor_name left_ptr
xset r rate 300 50
numlockx &
exec bspwm
