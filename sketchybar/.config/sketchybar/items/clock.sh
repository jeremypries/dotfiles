#!/usr/bin/env bash

COLOR="$MAGENTA"

clock=(
  script="$PLUGIN_DIR/clock.sh"
  icon.padding_left=10
  icon.padding_right=10
  icon.color="$COLOR"
  icon=""

  padding_right=10
  padding_left=10
  align=center
  update_freq=1

  background.color="$BAR_COLOR"
  background.border_color="$BAR_COLOR"
  background.padding_right=5
  background.padding_left=5
  background.height=26
  background.drawing=on

  label.color="$COLOR"
  label.padding_right=5
  label.width=78
)

sketchybar --add item clock right       \
           --set clock "${clock[@]}" \
           --subscribe clock system_woke
