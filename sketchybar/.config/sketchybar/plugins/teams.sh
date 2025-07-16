#!/usr/bin/env sh

STATUS_LABEL=$(lsappinfo info -only StatusLabel "Microsoft Teams")
ICON="󱥁 "
PADD=30

GREEN=0xffb8bb26
RED=0xfffb4934
YELLOW=0xfffabd2f

# Extract the label, handling kCFNULL
if [[ $STATUS_LABEL =~ \"label\"=\"([^\"]*)\" ]]; then
    LABEL="${BASH_REMATCH[1]}"
elif [[ $STATUS_LABEL =~ \"label\"=kCFNULL ]]; then
    LABEL=""
else
    exit 0
fi

if [[ $LABEL == "" ]]; then
    ICON="󰍡 "
    PADD=20
    ICON_COLOR=$GREEN
elif [[ $LABEL == "•" ]]; then
    ICON_COLOR=$YELLOW
elif [[ $LABEL =~ ^[0-9]+$ ]]; then
    ICON_COLOR=$RED
else
    exit 0
fi

sketchybar --set $NAME icon=$ICON icon.color=${ICON_COLOR} icon.padding_right=7 padding_right=$PADD
