#!/bin/bash

#gsettings set org.gnome.desktop.interface text-scaling-factor 1
gsettings set org.gnome.desktop.interface scaling-factor 2

gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gdk/WindowScalingFactor': <2>}"

gnome-shell --replace&
sleep 1

xrandr --output eDP-1 --scale 1x1
