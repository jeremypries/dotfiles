#!/bin/bash

if [ "$1" = "$WORKSPACE" ]; then
    sketchybar --set "$NAME" background.border_color="0xffed29ff"
else
    sketchybar --set "$NAME" background.border_color="0xffffffff"
fi
