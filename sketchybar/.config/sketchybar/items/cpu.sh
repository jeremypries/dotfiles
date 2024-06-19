#!/bin/bash

cpu=(
  script="$PLUGIN_DIR/cpu.sh"
  update_freq=2
  icon=􀧓
  icon.color="$ORANGE"
  icon.font="$FONT:Regular:19.0"
  label=?
  padding_right=5
  padding_left=5
)


sketchybar --add item cpu right \
           --set cpu  "${cpu[@]}"
