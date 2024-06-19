#!/bin/bash

COLOR="$BLUE"

calendar=(
  script="$PLUGIN_DIR/calendar.sh"
  click_script="$PLUGIN_DIR/zen.sh"
  icon.padding_left=10
  icon.padding_right=10
  icon.color="$CYAN"

  padding_right=10
  padding_left=10
  update_freq=3

  background.color="$BAR_COLOR"
  background.border_color="$BAR_COLOR"
  background.padding_right=5
  background.padding_left=5
  background.height=26
  background.drawing=on

  label.color="$COLOR"
  label.padding_right=10
)

sketchybar --add item calendar right       \
           --set calendar "${calendar[@]}" \
           --subscribe calendar system_woke
