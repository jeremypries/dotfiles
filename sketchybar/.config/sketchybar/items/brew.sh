#!/bin/bash

# Trigger the brew_udpate event when brew update or upgrade is run from cmdline
# e.g. via function in .zshrc

brew=(
  script="$PLUGIN_DIR/brew.sh"
  icon=􀐛
  icon.color="$YELLOW"
  icon.font="$FONT:Regular:19.0"
  label=?
  padding_right=5
  padding_left=5
)

sketchybar --add event brew_update \
           --add item brew right   \
           --set brew "${brew[@]}" \
           --subscribe brew brew_update
