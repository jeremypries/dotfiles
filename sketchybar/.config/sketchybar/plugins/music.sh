#!/bin/bash

APP_STATE=$(pgrep -x Music)
if [[ ! $APP_STATE ]]; then 
  sketchybar -m --set music_outer drawing=off
  sketchybar -m --set music drawing=off
  exit 0
fi

PLAYER_STATE=$(osascript -e 'tell application "Music" to set playerState to (get player state) as text')
if [[ $PLAYER_STATE == "stopped" ]]; then
  sketchybar -m --set music_outer drawing=on
  sketchybar -m --set music drawing=on
  exit 0
fi

TITLE=$(osascript -e 'tell application "Music" to get name of current track')
ARTIST=$(osascript -e 'tell application "Music" to get artist of current track')

[[ $PLAYER_STATE == "paused" ]] && ICON=􀊗 || ICON=􀊕

if [[ ${#TITLE} -gt 30 ]]; then
  TITLE=$(printf "$(echo $TITLE | cut -c 1-30)…")
fi

if [[ ${#ARTIST} -gt 30 ]]; then
  ARTIST=$(printf "$(echo $ARTIST | cut -c 1-30)…")
fi

sketchybar --set $NAME \
           --set music icon="$ICON" \
           --set music label="${TITLE} x ${ARTIST}" \
           --set music drawing=on

