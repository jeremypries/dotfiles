#!/bin/bash

cpu=(
  # script="$PLUGIN_DIR/cpu.sh"
  script="sketchybar --set cpu label=\$CPU_USAGE"
  # update_freq=2
  icon=
  icon.color="$ORANGE"
  icon.font="Hack Nerd Font:Regular:19.0"
  label=?
  padding_right=5
  padding_left=5
)

sketchybar --add item cpu right \
  --subscribe cpu system_stats --set cpu "${cpu[@]}"
