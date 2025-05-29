##### Adding Right Items #####
sketchybar --add item clock right \
           --set clock update_freq=10 icon=  script="lua $LUA_PLUGIN_DIR/clock.lua" \
           --add item volume right \
           --set volume script="lua $LUA_PLUGIN_DIR/volume.lua" \
           --subscribe volume volume_change \
           --add item battery right \
           --set battery update_freq=120 script="lua $LUA_PLUGIN_DIR/battery.lua" \
           --subscribe battery system_woke power_source_change
