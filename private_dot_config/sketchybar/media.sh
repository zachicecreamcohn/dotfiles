#!/bin/bash

# This script handles the media data sent by sketchybar
# It's usually triggered by the media_change event

# The SENDER variable contains the media information
if [[ "$SENDER" == "media_change" ]]; then
  # Get the current media information from sketchybar
  INFO=$(sketchybar --query media)
  
  # Parse the JSON data to extract artist and track
  ARTIST=$(echo "$INFO" | jq -r '.artist // "Unknown"')
  TRACK=$(echo "$INFO" | jq -r '.title // "Not Playing"')
  ALBUM=$(echo "$INFO" | jq -r '.album // ""')
  PLAYER=$(echo "$INFO" | jq -r '.player // "none"')
  ARTWORK=$(echo "$INFO" | jq -r '.artwork')
  
  # If media is playing, show track info
  if [[ "$PLAYER" != "none" ]]; then
    # Set the icon based on the player state
    sketchybar --set "$NAME" icon=􀑪 icon.color=0xffff8037
    
    # Show the track info in the label
    if [[ -n "$TRACK" && "$TRACK" != "Not Playing" ]]; then
      sketchybar --set "$NAME" label="$TRACK - $ARTIST"
    else
      sketchybar --set "$NAME" label="Not Playing"
    fi
    
    # If you want to display the artwork, you can use:
    # sketchybar --set "$NAME" background.image="$ARTWORK"
  else
    # No media playing
    sketchybar --set "$NAME" icon=􀑪 icon.color=0x88ffffff label="Not Playing"
  fi
fi