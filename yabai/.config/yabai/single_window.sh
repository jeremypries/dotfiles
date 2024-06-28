#!/bin/bash

# Adds padding around single windows so they are not huge
# Attached to events in yabairc

window_count=$(yabai -m query --windows --space | jq 'length')

# Center window
if [ "$window_count" -eq 1 ]; then
   yabai -m space --padding abs:15:15:400:400
else
   yabai -m space --padding abs:15:15:14:14
fi
