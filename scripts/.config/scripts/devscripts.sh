source ~/.config/zsh_scripts/.tmux
source ~/dotfiles/scripts/.config/scripts/ghostyy_zsh.sh

# Clear screen
alias c='clear;echo -e "\033[38;2;152;151;26mWake up, Neo...\033[0m";'
alias cv="clear; python ~/projects/test/ascii.py;"
alias cc="clear; clear;"
alias blank='PS1="\n"; clear;'
alias enter='PS1="\n"; clear; echo -e "\033[38;2;152;151;26mWake up, Neo...\033[0m"'
alias out='source ~/.zshrc'
alias esc="source ~/.zshrc"
alias ll="ls -lh"
alias la="ls -lah"

# Personal
alias adjay="cd ~/work/adjay.dev; c;"

# Neovim
alias v.="nvim ."
alias v="nvim"
alias nv="nvim"
alias vzsh="nvim ~/.zshrc"
alias nvzsh="nvim ~/.zshrc"
alias sozsh="source ~/.zshrc"
alias nvb="nvim ~/.bashrc"
alias sob="source ~/.bashrc"
alias zshv="nvim ~/.zshrc"
alias obs="cd ~/personal/DeeezNotes; nvim ."
function obn() {
	cd ~/personal/DeeezNotes/0-inbox/
	nvim $(echo "$1" | tr ' ' '-')".md"
	%
}

# Change direcory
alias cv="cd ~/.config/nvim; nvim ."
alias cw="nvim ~/.config/wezterm/wezterm.lua"
alias ca="nvim ~/.config/aerospace/aerospace.toml"
alias ck="nvim ~/.config/kitty/kitty.conf"
alias cg="nvim ~/.config/ghostty/config"
alias home="cd ~"
alias work="cd ~/Work"
alias downl="cd ~/Downloads; ls -ltr"
alias docs="cd ~/Documents;"
alias personal="cd ~/personal;"
alias dot="cd ~/dotfiles/"
alias dotv="nvim ~/dotfiles/"
alias conf="cd ~/.config/"
alias pwdc="pwd | tr -d '\n' | pbcopy"
alias e="exit"
alias devscripts="nvim ~/.config/scripts/devscripts.sh"
alias devs="nvim ~/.config/scripts/devscripts.sh"
alias temp="cd ~/projects/temp"
alias p="pwd"
alias pc="pwd | tr -d '\n' | pbcopy"
alias screens="cd ~/Pictures/screenshots"
alias hl="rg --passthrough $1"

function print120() {
	echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-"
}

function dtts() {
	if [[ "$1" == "-s" ]]; 
	then
		date -j -f "%Y-%m-%d %H:%M:%S" "$2 $3" +%s
	else
		date -j -f "%Y-%m-%d" $1 +%s
	fi

}
function tsdt() {
	date -r $1 "+%Y-%m-%d %H:%M:%S"
}

alias of="c;onefetch"
alias ff="fastfetch"

alias ae="aerospace"
alias mtx="gomatrix -k --fps=60"

alias lzg="lazygit"
alias lzd="lazydocker"

alias play-doom="cd ~/projects/terminal-doom && zig-out/bin/terminal-doom"
alias chrome="cd /Applications/Google\ Chrome.app/Contents/MacOS/ && ./Google\ Chrome"

alias neko="mvn exec:java -Dexec.mainClass="Neko" &"


cht() {
	~/.config/scripts/./tmux-cht.sh
}

# BVCM
alias bvdata="cd ~/Documents/data; lsa"
alias bvdocs="cd ~/Documents/docs; lsa"
function bvcm() {
	echo "\n[LIST DIRECTORY -a]"
	cd "~/Documents/werk/BVCM/$1"
	ls -la $2
	echo "\n[DIRECTORY]"
	pwd
}

function bvd() {
	
	# SFTP
	if [[ "$1" == "sftp" ]]; 
	then
		cd "~/Documents/werk/BVCM/docs/scripts_sftp_useit"
		"ls -ltr"
		echo "Now @ ~/Documents/werk/BVCM/docs/scripts_sftp_useit"
	fi

	# billing
	if [[ "$1" == "billing" ]]; 
	then
		cd "~/Documents/werk/BVCM/docs/$1"
		"ls -ltr"
		echo "Now @ ~/Documents/werk/BVCM/docs/$1"
	fi

	# aanlaveringen
	if [[ "$1" == "aanleveringen" ]]; 
	then
		cd "~/Documents/werk/BVCM/docs/aanleveringen"
		"ls -ltr"
		echo "Now @ ~/Documents/werk/BVCM/docs/$1"
	fi
	
	# empty
	if [[ "$1" == "" ]]; 
	then
		cd "~/Documents/werk/BVCM/docs"
		"lsa"
		echo "Now @ ~/Documents/werk/BVCM/docs"
	fi
}

# git
alias gp="git push"
function gpu() {
	git push -u $1 $2
}
function gs() {
	git switch $1
}
function gsc() {
	git switch -c $1
}
function gd() {
	git branch -d $1
}
function gD() {
	git branch -D $1
}
function gl() {
	git branch -A
}
function gstat() {
	git status
}


# BVCM Git
alias bvg="cd ~/Documents/werk/BVCM/git; lsa"
alias bvgai="cd ~/Documents/werk/BVCM/git/bvcm-ai; lsa"
alias bvgbo="cd ~/Documents/werk/BVCM/git/bvcm-backoffice-app; lsa"
alias bvghs="nvim ~/Documents/werk/BVCM/git/bvcm-hubspot-webhook;"
alias bvgaif="nvim ~/Documents/werk/BVCM/git/bvcm-ai/frontend;"
alias bvgaib="nvim ~/Documents/werk/BVCM/git/bvcm-ai/backend;"
alias bvgsn="nvim ~/Documents/werk/BVCM/git/bvcm-synapse-backend;"
alias bvgwk="nvim ~/Documents/werk/BVCM/git/bvcm-wiki/wiki"
alias bvgff="cd ~/Documents/werk/BVCM/git/bvcm-findflow; lsa;"
alias bvgdw="cd ~/Documents/werk/BVCM/git/bvcm-daywize; lsa;"

# adjay.dev
alias werk="cd ~/Documents/werk; lsa"
alias werkgit="cd ~/Documents/werk/git; lsa"
alias werkg="cd ~/Documents/werk/git; lsa"
alias werkheiloo="cd ~/Documents/werk/git/heiloo-vitaal; lsa"
alias werkavx="cd ~/Documents/werk/advintex\ inspectie/git/advintex-inspectie;"
alias homebase="cd ~/Projects/homebase/homebase-svelte;tmux new -s base;"
alias avx="cd ~/projects/avx/avx-inspection;"
alias avxher="cd ~/projects/avx/avx-herinspectie;"
alias proj="cd ~/projects"

# PIP
alias pir="pip install -r requirements.txt"
alias pfr="pip freeze > requirements.txt"
alias pl="pip list"
alias pi="pip install"
alias activate-venv="source venv/bin/activate"
alias venv="source venv/bin/activate"

alias srch='nvim $(fzf -m --preview="bat --color=always {}")'

# macOS
alias lsaa="ls -a;"
alias cl="clear"

# Typos
alias dicker="docker"
alias doicker="docker"
alias dpcker="docker"

alias hackerscript="docker run --rm -it bcbcarl/hollywood"


function devscripts() {
	nvim ~/.config/devscripts/devscripts.zsh
}

function devhelp() {
	echo "uuid4"
	echo "xlsx2json"
	echo "fancy"
	echo "docker-show-id"
	echo "docker-copy-id"
	echo "bvpr"
	echo "bvpl"
	echo "sftp-start"
	echo "opig"
	echo "opil"
	echo "count"
	echo "count-lines"
}

function uuid4() {
	python -c "import uuid; print(uuid.uuid4())"
}

function xlsx2json() {
if [ $# -eq 0 ]; then
    echo "Usage: xlsx2json <excel_file> [output_json_file]"
    exit 1
fi
	excel_file="$1"
	output_file="${2:-${excel_file%.xlsx}.json}"

	python -c "import pandas as pd; pd.read_excel('$excel_file').to_json('$output_file', orient='records')"
}

function timestamp() {
	python -c "import time; print(int(time.time()*1_000_000_000))"
}

function fancy() {
	cfonts $1 -f "huge" -a center -f shade  -g red,blue
	# cfonts $1 -f "huge" -a center -f shade -c "#ff5500",cyan -g red,blue
}

function docker-show-id() {
	docker ps -aqf "name=${1}"
}

function docker-copy-id() {
	docker ps -aqf "name=${1}" | pbcopy
}

function bvpr() {
	az repos pr create $1 $2 $3 $4 --open
}

function bvpl() {
	m365 planner task list --bucketName $1 --planId mhHSYwr7UkeFShfIxVgBkJcADxTj | jq '.[] | select(.createdBy.user.id == "ede39ca3-4889-44fb-af6b-48fee958e781").title'
}

function sftp-start() {
	source ~/.config/azurecli/.env
	~/projects/bvcm-azure-cli/target/release/./bvcm-sftp-cli
}

function opig() {
	# NOTE:
	# cut -d             => split on ':'
	# -f2                => grab second value
	# awk '{$1=$1};1'    => remove leading and trailing spaces
	# tr -d              => translate and delete '\n'

	op item --vault Private get $1 --reveal | grep -E '(wachtwoord|password):' | cut -d ':' -f 2 | awk '{$1=$1};1' | tr -d '\n' | pbcopy
}

function copy() {
	awk '{$1=$1};1' | tr -d '\n' | pbcopy
}

function fzfcopy() {
	sort -r | fzf | awk '{$1=$1};1' | tr -d '\n' | pbcopy
}

function opiga() {
	op item --vault Private get $1 --reveal
}

function opil() {
	op item list --vault Private
}

function count-lines() {
	echo "find . -name *.$1 -exec wc -l {} +"
	find . -name "*.$1" -exec wc -l {} +
}

function ad() {
	python ~/projects/test/ascii.py;
}

alias dcd="docker-compose down"
alias dcu="docker-compose up -d"

alias clock="tock -c -W 6 -H 3 -m"
