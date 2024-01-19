#!/bin/sh

pipewire & sleep .5
pipewire-pulse & wireplumber & sleep 1.25

waybar

## Add sth
