WORKSPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10") # Ensure you have aerospace installed and configured if using this.
sketchybar --add event aerospace_workspace_change

# Check if aerospace command exists before trying to use it
if command -v aerospace &> /dev/null; then
  for sid in $(aerospace list-workspaces --all); do
    # Use icons from SPACE_ICONS array if available, otherwise use the sid as fallback
    icon_index=$((sid - 1))
    if [ $icon_index -lt ${#WORKSPACE_ICONS[@]} ] && [ $icon_index -ge 0 ]; then
        space_icon="${WORKSPACE_ICONS[$icon_index]}"
    else
        space_icon="$sid"
    fi



    sketchybar --add item space.$sid left \
      --subscribe space.$sid aerospace_workspace_change \
      --set space.$sid \
      background.color=0x40ffffff \
      background.corner_radius=5 \
      background.height=25 \
      background.drawing=off \
      icon="$space_icon" \
      icon.padding_left=7 \
      icon.padding_right=7 \
      label.drawing=off \
      click_script="aerospace workspace $sid" \
      script="$BASH_PLUGIN_DIR/aerospace.sh $sid" # Ensure aerospace.sh exists at this path and is executable
  done
else
  echo "SketchyBar: aerospace command not found. Skipping space indicators." >&2
fi
