COLOR_NONE="\033[0m"
COLOR_RED_GRUVBOX="\033[31;2;152;151;26m"
COLOR_GREEN_GRUVBOX="\033[38;2;152;151;26m"
COLOR_GREEN_CATPPUCCIN="\033[38;2;166;227;161m"

# Set promptcolor from pywal $color0
local p1="$((16#${color1:1:2}))"
local p2="$((16#${color1:3:2}))"
local p3="$((16#${color1:5:2}))"
COLOR_PYWAL="\033[38;2;$p1;$p2;${p3}m"

PROMPT_GREEN="\[$COLOR_PYWAL\]"
PROMPT_RED="\[\033[31;2;152;151;26m\]"

COLOR_GREEN=$COLOR_PYWAL

