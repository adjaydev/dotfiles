# #!/bin/sh
#
# PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
# CHARGING="$(pmset -g batt | grep 'AC Power')"
#
# if [ "$PERCENTAGE" = "" ]; then
#   exit 0
# fi
#
# case "${PERCENTAGE}" in
#   9[0-9]|100) ICON=""
#   ;;
#   [6-8][0-9]) ICON=""
#   ;;
#   [3-5][0-9]) ICON=""
#   ;;
#   [1-2][0-9]) ICON=""
#   ;;
#   *) ICON=""
# esac
#
# if [[ "$CHARGING" != "" ]]; then
#   ICON=""
# fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
# sketchybar --set "$NAME" icon="$ICON" label="${PERCENTAGE}%" padding-right=20

#!/usr/bin/env sh

# Battery is here bcause the ICON_COLOR doesn't play well with all background colors

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ $PERCENTAGE = "" ]; then
    exit 0
fi

case ${PERCENTAGE} in
[8-9][0-9] | 100)
    ICON=""
    ICON_COLOR=0xffa6da95
    ;;
7[0-9])
    ICON=""
    ICON_COLOR=0xffeed49f
    ;;
[4-6][0-9])
    ICON=""
    ICON_COLOR=0xfff5a97f
    ;;
[1-3][0-9])
    ICON=""
    ICON_COLOR=0xffee99a0
    ;;
[0-9])
    ICON=""
    ICON_COLOR=0xffed8796
    ;;
esac

if [[ $CHARGING != "" ]]; then
    ICON="󱀤 "
    ICON_COLOR=0xffeed49f
fi

sketchybar --set $NAME \
    icon=$ICON \
    label.color=0xff939ab7 \
    icon.font.size=18 \
    icon.color=${ICON_COLOR}
    # label=" ${PERCENTAGE}% -" \
