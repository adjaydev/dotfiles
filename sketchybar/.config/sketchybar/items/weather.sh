# weather
sketchybar --add item weather right                                 \
           --set      weather icon=A                                \
                              icon.color=$BLUE                      \
                              icon.padding_right=7 \
                              background.border_color=$BLUE         \
                              script="$PLUGIN_DIR/weather.sh"         \
                              update_freq=60 \
                              padding_right=30 \
                              label.color=$BLUE

