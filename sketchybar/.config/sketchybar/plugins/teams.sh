#!/usr/bin/env sh

STATUS_LABEL=$(lsappinfo info -only StatusLabel "Microsoft Teams")
ICON="󱥁 "
PADD=30
echo "HELOO"

# Extract the label, handling kCFNULL
if [[ $STATUS_LABEL =~ \"label\"=\"([^\"]*)\" ]]; then
    LABEL="${BASH_REMATCH[1]}"
elif [[ $STATUS_LABEL =~ \"label\"=kCFNULL ]]; then
    LABEL=""
else
    echo "Unexpected output from lsappinfo: $STATUS_LABEL" >&2
    exit 1
fi

if [[ $LABEL == "" ]]; then
    ICON="󰍡 "
    PADD=20
    ICON_COLOR="0xffa6da95"
elif [[ $LABEL == "•" ]]; then
    ICON_COLOR="0xffeed49f"
elif [[ $LABEL =~ ^[0-9]+$ ]]; then
    ICON_COLOR="0xffed8796"
else
    exit 0
fi

sketchybar --set $NAME icon=$ICON label="${LABEL}" icon.color=${ICON_COLOR} icon.padding_right=7 padding_right=$PADD
