#!/bin/bash

#gsettings set org.gnome.desktop.interface text-scaling-factor 1
gsettings set org.gnome.desktop.interface scaling-factor 1

gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gdk/WindowScalingFactor': <1>}"

gnome-shell --replace&
sleep 1

xrandr --output eDP-1 --scale 0.6x0.6
xrandr --output DP-1 --pos 1920x0
