sketchybar \
    --add item currently_playing right \
    --set currently_playing \
      update_freq=1 \
      label.max_chars=30 \
      label.padding_left=10 \
      script="lua $LUA_PLUGIN_DIR/currently_playing.lua" \
    --subscribe currently_playing media_change
