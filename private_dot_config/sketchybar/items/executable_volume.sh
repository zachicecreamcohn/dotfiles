sketchybar \
    --add item volume right \
    --set volume script="lua $LUA_PLUGIN_DIR/volume.lua" \
    --subscribe volume volume_change
