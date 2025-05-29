sketchybar --add item chevron left \
           --set chevron icon= label.drawing=off \
           --add item front_app left \
           --set front_app icon.drawing=off script="$BASH_PLUGIN_DIR/front_app.sh" \
           --subscribe front_app front_app_switched
