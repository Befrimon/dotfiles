#!/bin/sh

pipewire & sleep .5
pipewire-pulse & wireplumber & sleep 1.25

swaymsg "workspace 1; exec alacritty" && sleep .5
#swaymsg "workspace 2; exec subl; exec unityhub" && sleep .5
swaymsg "workspace 3; exec firefox" && sleep .5
swaymsg "workspace 4; exec telegram-desktop" && sleep .5
swaymsg "workspace 10; exec alacritty -e mc; workspace 1"

## Add sth
