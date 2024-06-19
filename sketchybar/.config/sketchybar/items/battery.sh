#!/bin/bash


battery=(
  script="$PLUGIN_DIR/battery.sh"
  icon.font="$FONT:Regular:19.0"
  padding_right=5
  padding_left=5
  label.drawing=off
  update_freq=120
  updates=on
  icon.color="$CYAN"
  icon.padding_left=10
  icon.padding_right=10

)

sketchybar --add item battery right      \
           --set battery "${battery[@]}" \
           --subscribe battery power_source_change system_woke
