function gosmall() {
	cp ~/dotfiles/ghostty/.config/ghostty/config_small ~/dotfiles/ghostty/.config/ghostty/config
	echo "config transferred"
	cd ~/dotfiles/ghostty/.config/ghostty/
	./reload_config.sh
}

function gobig() {
	cp ~/dotfiles/ghostty/.config/ghostty/config_big ~/dotfiles/ghostty/.config/ghostty/config
	echo "config transferred"
	cd ~/dotfiles/ghostty/.config/ghostty/
	./reload_config.sh
}

function gobigger() {
	cp ~/dotfiles/ghostty/.config/ghostty/config_bigger ~/dotfiles/ghostty/.config/ghostty/config
	echo "config transferred"
	cd ~/dotfiles/ghostty/.config/ghostty/
	./reload_config.sh
}
