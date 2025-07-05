#!/bin/bash

cpu_temp=(
    script="sketchybar --set cpu_temp label=\$CPU_TEMP"
    label=?
    icon=""
    icon.color="$ORANGE"
    icon.font="Hack Nerd Font:Bold:19.0"
    padding_right=5
    padding_left=5
)

sketchybar --add item cpu_temp right \
    --subscribe cpu_temp system_stats --set cpu_temp "${cpu_temp[@]}"
