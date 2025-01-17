#!/usr/bin/env sh

source "$HOME/.config/sketchybar/colors.sh"


PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')
ICON_SIZE=18

if [ $PERCENTAGE = "" ]; then
    exit 0
fi

case ${PERCENTAGE} in
[8-9][0-9] | 100)
    ICON=""
    ICON_COLOR=$GREEN
    ;;
7[0-9])
    ICON=""
    ICON_COLOR=$AQUA
    ;;
[4-6][0-9])
    ICON=""
    ICON_COLOR=$YELLOW
    ;;
[1-3][0-9])
    ICON=""
    ICON_COLOR=$ORANGE
    ;;
[0-9])
    ICON=""
    ICON_COLOR=$RED
    ;;
esac

if [[ $CHARGING != "" ]]; then
    ICON="󰘧 "
    ICON_COLOR=$GREEN
    ICON_SIZE=22
fi

sketchybar --set $NAME \
    icon=$ICON \
    label.color=$WHITE \
    icon.font.size=$ICON_SIZE \
    icon.color=${ICON_COLOR}
    # label=" ${PERCENTAGE}% -" \
