source $HOME/.cache/wal/colors.sh

red="cc241d"
red="9d0006"
# Set promptcolor from red
r1="$((16#${red:0:2}))"
r2="$((16#${red:2:2}))"
r3="$((16#${red:4:2}))"
COLOR_RED="\033[38;2;$r1;$r2;${r3}m"

COLOR_NONE="\033[0m"
COLOR_GREEN_GRUVBOX="\033[38;2;152;151;26m"
COLOR_GREEN_CATPPUCCIN="\033[38;2;166;227;161m"

# Set promptcolor from pywal $color0
p1="$((16#${color1:1:2}))"
p2="$((16#${color1:3:2}))"
p3="$((16#${color1:5:2}))"
COLOR_PYWAL="\033[38;2;$p1;$p2;${p3}m"

PROMPT_GREEN="\[$COLOR_PYWAL\]"
PROMPT_RED="\[\033[31;2;152;151;26m\]"

COLOR_GREEN=$COLOR_PYWAL

