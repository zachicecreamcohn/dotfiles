sketchybar \
    --add item battery right \
    --set battery update_freq=120 script="lua $LUA_PLUGIN_DIR/battery.lua" \
    --subscribe battery system_woke power_source_change
