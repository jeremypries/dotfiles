#!/bin/bash

music=(
  script="$PLUGIN_DIR/music.sh"
  update_freq=2
  icon.color="$MAGENTA"
  icon.padding_left=10
  icon.padding_right=4
  icon.font="$FONT:Regular:19.0"
  label.color="$MAGENTA"
  label.padding_right=10
  label=?
  
)

bracket=(
  background.color=$BACKGROUND_1
  background.border_color=$BACKGROUND_2
  background.border_width=2
)

sketchybar --add item music center \
           --set music  "${music[@]}"

sketchybar --add bracket music_outer music \
           --set music_outer "${bracket[@]}" 

