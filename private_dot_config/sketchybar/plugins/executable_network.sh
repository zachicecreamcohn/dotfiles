#!/bin/sh

INTERFACE="en0"

TYPE=$(echo $NAME | grep -o 'down\|up')

if [ "$TYPE" = "down" ]; then
    # Download speed calculation
    PREV_VALUE=$(sketchybar --query $NAME | jq -r '.prev_value // 0')
    CURRENT_VALUE=$(netstat -ibn | grep -e "$INTERFACE" -m 1 | awk '{print $7}')
    SPEED=$((CURRENT_VALUE - PREV_VALUE))

    # Format speed
    if [ $SPEED -gt 1048576 ]; then
        FORMATTED="$(echo "scale=1; $SPEED / 1048576" | bc)M"
    elif [ $SPEED -gt 1024 ]; then
        FORMATTED="$(echo "scale=0; $SPEED / 1024" | bc)K"
    else
        FORMATTED="${SPEED}B"
    fi

    # Update with palette 4 color
    sketchybar --set "$NAME" \
        icon="↓" \
        icon.color=0xff6e94b2 \
        label="$FORMATTED" \
        label.color=0xff6e94b2 \
        prev_value="$CURRENT_VALUE"

elif [ "$TYPE" = "up" ]; then
    # Upload speed calculation
    PREV_VALUE=$(sketchybar --query $NAME | jq -r '.prev_value // 0')
    CURRENT_VALUE=$(netstat -ibn | grep -e "$INTERFACE" -m 1 | awk '{print $10}')
    SPEED=$((CURRENT_VALUE - PREV_VALUE))

    # Format speed
    if [ $SPEED -gt 1048576 ]; then
        FORMATTED="$(echo "scale=1; $SPEED / 1048576" | bc)M"
    elif [ $SPEED -gt 1024 ]; then
        FORMATTED="$(echo "scale=0; $SPEED / 1024" | bc)K"
    else
        FORMATTED="${SPEED}B"
    fi

    # Update with palette 5 color
    sketchybar --set "$NAME" \
        icon="↑" \
        icon.color=0xffbb9dbd \
        label="$FORMATTED" \
        label.color=0xffbb9dbd \
        prev_value="$CURRENT_VALUE"
fi
