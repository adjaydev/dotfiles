# Convert the wal colorscheme to Ghostty theme file

(
echo -e "# Auto genereted theme by Jay from pywal for Ghostty\n"

readarray -t selected < ~/.cache/wal/colors

i=0
for color in ${selected[@]}; do
	echo "palette = $i=$color"
	((i++))
done

echo ""
echo "background = ${selected[0]}"
echo "foreground = ${selected[15]}"
echo "cursor-color = ${selected[15]}"
echo ""
echo "selection-background = ${selected[8]}"
echo "selection-foreground = ${selected[15]}"
) > ~/.config/ghostty/themes/wal.toml
