#!/bin/bash

mem=(
  script="$PLUGIN_DIR/mem.sh"
  update_freq=2
  icon=
  icon.color="$ORANGE"
  icon.font="Hack Nerd Font:Regular:19.0"
  label=?
  padding_right=5
  padding_left=5
)

bracket=(
  background.color=$BACKGROUND_1
  background.border_color=$BACKGROUND_2
  background.border_width=2
)

sketchybar --add item mem right \
  --set mem "${mem[@]}"

sketchybar --add bracket perf cpu mem volume brew battery --set perf "${bracket[@]}"
