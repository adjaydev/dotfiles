# weather
sketchybar --add item weather right                                 \
           --set      weather icon=A                                \
                              icon.color=$BLUE                      \
                              background.border_color=$BLUE         \
                              script="$PLUGIN_DIR/weather.sh"         \
                              update_freq=60 \
                              padding_right=20 \
                              label.color=$BLUE

