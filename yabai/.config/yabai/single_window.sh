#!/bin/bash

# Adds padding around single windows so they are not huge
# Attached to events in yabairc

window_count=$(yabai -m query --windows --space | jq 'length')
display=$( yabai -m query --displays --space | jq )
#width=$( echo $display | jq '.frame.w' | bc)
width=$( echo $display | jq '.frame.w' | cut -d $(locale decimal_point) -f 1)


# My primary display is 1440x2560
#if [[ "$width" -eq "2560" ]] && [[ "$window_count" -eq 1 ]]; then
#      # This is not currently matching
#      yabai -m space --padding abs:15:15:400:400
#else
#      yabai -m space --padding abs:15:15:14:14
#fi



# Center window
if [ "$window_count" -eq 1 ]; then
   yabai -m space --padding abs:15:15:400:400
else
   yabai -m space --padding abs:15:15:14:14
fi
