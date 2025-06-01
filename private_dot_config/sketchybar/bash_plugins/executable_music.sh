#!/bin/bash

# Get Apple Music information using osascript
MUSIC_INFO=$(osascript -e 'tell application "Music"
    set playerState to (get player state as string)
    set trackName to "None"
    set artistName to "None"

    if player state is playing or player state is paused then
        set trackName to name of current track
        set artistName to artist of current track
    end if

    return "{\"state\":\"" & playerState & "\", \"title\":\"" & trackName & "\", \"artist\":\"" & artistName & "\"}"
end tell')

# Parse the information
PLAYER_STATE=$(echo $MUSIC_INFO | jq -r '.state')
TRACK_NAME=$(echo $MUSIC_INFO | jq -r '.title')
ARTIST_NAME=$(echo $MUSIC_INFO | jq -r '.artist')

# Determine if we should show the music item
if [ "$TRACK_NAME" != "None" ] && [ "$ARTIST_NAME" != "None" ] && [ "$PLAYER_STATE" = "playing" ]; then
    # Song is playing, show the item with song information
    CURRENT_SONG="$TRACK_NAME - $ARTIST_NAME"
    DRAWING=on
else
    # No song is playing or Music is paused, hide the item
    CURRENT_SONG=""
    DRAWING=off
fi

# Apply the changes to the bar
sketchybar --set $NAME label="$CURRENT_SONG" drawing=$DRAWING
