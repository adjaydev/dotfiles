source ~/.config/zsh_scripts/.tmux
source ~/dotfiles/scripts/.config/scripts/ghostyy_zsh.sh
source ~/.config/scripts/bvcm.sh
source ~/.config/scripts/adjay.sh
source ~/.config/scripts/dfpro.sh
# source ~/projects/test/bash/getopts/print-my-name
source ~/.config/scripts/spin.sh
# source ~/.config/scripts/wttr.sh

# Clear screen
alias c='clear;echo -e "\033[38;2;152;151;26mWake up, Neo...\033[0m";'
# alias c='clear;echo -e "\033[38;2;152;151;26m"; figlet adjay.dev; echo -e "\033[0m"'
alias cv="clear; python ~/projects/test/ascii.py;"
alias cc="clear; clear;"
alias blank='PS1=""; clear;'
alias out='source ~/.zshrc'
alias esc="source ~/.zshrc"
alias ls="ls --color=auto"
alias ll="ls -lh"
alias la="ls -lah"
alias lsi='cd "$(ls | fzf)"'
alias ..="cd .."

# Special
alias ban="batman"
alias y="yazi"
alias figlet="figlet -cf slant"
alias presenterm="presenterm --config-file ~/.config/presenterm/config.yaml"
alias wtr="curl wttr.in/hoofddorp"
alias screens="cd ~/Pictures/screenshots"
alias hl="rg --passthrough $1"

ee() {
	echo $?;
}
alias ece="echo $?"
alias eche="echo $?"
alias cal3="cal -3"
alias clock="tock -c -W 6 -H 3 -m"

enter() {
	PS1="" 
	clear 
	echo -e "\033[38;2;152;151;26mWake up, Neo...\033[0m"
}

enter-noc() {
	PS1="" 
	echo -e "\033[38;2;152;151;26mWake up, Neo...\033[0m"
}

# Neovim
alias v.="nvim ."
alias v="nvim"
alias nv="nvim"
alias vzsh="nvim ~/.zshrc"
alias nvzsh="nvim ~/.zshrc"
alias sozsh="source ~/.zshrc"
alias nvb="nvim ~/.bashrc"
alias zshv="nvim ~/.zshrc"
alias obs="cd ~/personal/DeeezNotes; nvim ."

sob() {
	source ~/.bashrc "$1"
}

obn() {
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
alias e="exit"
alias devscripts="nvim ~/.config/scripts/devscripts.sh"
alias devs="nvim ~/.config/scripts/devscripts.sh"
alias deva="nvim ~/.config/scripts/adjay.sh"
alias devb="nvim ~/.config/scripts/bvcm.sh"
alias temp="cd ~/projects/temp"
alias p="pwd"
alias pc="pwd | tr -d '\n' | pbcopy"
alias pwdc="pwd | tr -d '\n' | pbcopy"


alias grow="cbonsai -l -L 44 -t 0.1"
alias bonsai="cbonsai -l -L 44 -t 0.1"

print120() {
	echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-"
}

dtts() {

	if [[ "$1" == "-h" ]]; then
		echo "dtts help"
		echo ""

		echo "Get the timestamp for a given date and the current local time"
		echo "Usage: dtts 2025-01-01"

		echo "Available args:"
		echo "-s : seconds, get timestamp for given date and time. Usage: dtts 2025-02-02 01:02:03"
		echo "-m : midnight, get timestamp for given date and time at midnight. Usage: dtts -m 2025-03-03"
		echo ""
	elif [[ "$1" == "-s" ]]; then
		date -j -f "%Y-%m-%d %H:%M:%S" "$2 $3" +%s
	elif [[ "$1" == "-m" ]]; then
		date -j -f "%Y-%m-%d %H:%M:%S" "$2 00:00:00" +%s
	else
		date -j -f "%Y-%m-%d" $1 +%s
	fi
}

tsdt() {

	read -r -d '' INTRO <<-EOF
	-=[[ HELP ]]=-
	usage: tsdt 177778318 for       timestamp to date
	EOF

	if [[ "$1" == "-h" ]]; then
		echo "$INTRO"
	else
		date -r $1 "+%Y-%m-%d %H:%M:%S"
	fi
}

alias of="onefetch"
alias ff="fastfetch"

alias ae="aerospace"
alias mtx="gomatrix -k --fps=60"

alias lzg="lazygit"
alias lzd="lazydocker"
cdf() {
    local selected_file
    selected_file=$(fd -t f | fzf) # -t f for files only

    if [ -n "$selected_file" ]; then
        cd "$(dirname "$selected_file")"
    fi
}

alias play-doom="cd ~/projects/terminal-doom && zig-out/bin/terminal-doom"
alias chrome="cd /Applications/Google\ Chrome.app/Contents/MacOS/ && ./Google\ Chrome"

alias neko="mvn exec:java -Dexec.mainClass="Neko" &"

cht() {
	~/.config/scripts/./tmux-cht.sh
}

# BVCM
alias bvdata="cd ~/Documents/data; lsa"
alias bvdocs="cd ~/Documents/docs; lsa"

bvd() {
	
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
alias gpu="git push -u $1 $2"
alias gs="git switch $1"
alias gsc="git switch -c $1"
alias gd="git branch -d $1"
alias gD="git branch -D $1"
alias gl="git branch -A"
alias gstat="git status"
alias gr1="git reset --soft HEAD~1"
alias gr2="git reset --soft HEAD~2"
alias gr3="git reset --soft HEAD~3"

# BVCM Git
alias bvg="cd ~/projects; lsa"
alias bvgai="cd ~/projects/bvcm-ai; lsa"
alias bvgbo="cd ~/projects/bvcm-backoffice-app; lsa"
alias bvghs="nvim ~/projects/bvcm-hubspot-webhook;"
alias bvgaif="nvim ~/projects/bvcm-ai/frontend;"
alias bvgaib="nvim ~/projects/bvcm-ai/backend;"
alias bvgsn="nvim ~/projects/bvcm-synapse-backend;"
alias bvgwk="nvim ~/projects/bvcm-wiki/wiki"
alias bvgff="cd ~/projects/bvcm-findflow; lsa;"
alias bvgdw="cd ~/projects/bvcm-daywize; lsa;"

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
alias obsf='cd ~/personal/DeeezNotes; nvim $(fzf -m --preview="bat --color=always {}")'

# macos
alias lsaa="ls -a;"
alias cl="clear"

# Typos
alias dicker="docker"
alias doicker="docker"
alias dpcker="docker"

alias hackerscript="docker run --rm -it bcbcarl/hollywood"

devhelp() {
	echo "uuid4"
	echo "xlsx2json"
	echo "json2xlsx"
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

uuid4() {
	python -c "import uuid; print(uuid.uuid4())"
}

xlsx2json() {
if [ $# -eq 0 ]; then
    echo "Usage: xlsx2json <excel_file> [output_json_file]"
    exit 1
fi
	excel_file="$1"
	output_file="${2:-${excel_file%.xlsx}.json}"

	python -c "import pandas as pd; pd.read_excel('$excel_file').to_json('$output_file', orient='records')"
}

json2xlsx() {
if [ $# -eq 0 ]; then
    echo "Usage: json2xlsx <json_file> [output_excel_file]"
    exit 1
fi
	excel_file="$1"
	output_file="${2:-${excel_file%.xlsx}.json}"

	python -c "import pandas as pd; pd.read_json('$excel_file', orient='records').to_excel('$output_file', index=False)"
}

timestamp() {
	python -c "import time; print(int(time.time()*1_000_000_000))"
}

fancy() {
	cfonts $1 -f "huge" -a center -f shade  -g red,blue
	# cfonts $1 -f "huge" -a center -f shade -c "#ff5500",cyan -g red,blue
}

docker-show-id() {
	docker ps -aqf "name=${1}"
}

docker-copy-id() {
	docker ps -aqf "name=${1}" | pbcopy
}

bvpr() {
	az repos pr create $1 $2 $3 $4 --open
}

bvpl() {
	m365 planner task list --bucketName $1 --planId mhHSYwr7UkeFShfIxVgBkJcADxTj | jq '.[] | select(.createdBy.user.id == "ede39ca3-4889-44fb-af6b-48fee958e781").title'
}

sftp-start() {
	source ~/.config/azurecli/.env
	~/projects/bvcm-azure-cli/target/release/./bvcm-sftp-cli
}

opig() {
	# NOTE:
	# cut -d ':'         => split on ':'
	# -f 2                => grab second value
	# awk '{$1=$1};1'    => remove leading and trailing spaces
	# tr -d              => translate and delete '\n'

	op item --vault Private get $1 --reveal | grep -E '(wachtwoord|password):' | cut -d ':' -f 2 | awk '{$1=$1};1' | tr -d '\n' | pbcopy
}

copy() {
	awk '{$1=$1};1' | tr -d '\n' | pbcopy
}

fzfcopy() {
	sort -r | fzf | awk '{$1=$1};1' | tr -d '\n' | pbcopy
}

opiga() {
	op item --vault Private get $1 --reveal
}

opil() {
	op item list --vault Private
}

count-lines() {
	echo "find . -name *.$1 -exec wc -l {} +"
	find . -name "*.$1" -exec wc -l {} +
}

ad() {
	python ~/projects/test/ascii.py;
}

brewi() {
	brew search $1;
}

alias dcd="docker-compose down"
alias dcu="docker-compose up -d"


# FZF Config
function vzv() {
	fzf | xargs nvim
}

# New Obsidian note
function on() {
	if [ -z "$1" ]; then
	  echo "Error: A file name must be set, e.g. on \"filename here with spaces\"."
	  exit 1
	fi

	file_name=$(echo "$1" | tr ' ' '-')
	formatted_file_name=${file_name}_$(date "+%Y-%m-%d").md
	cd "~/personal/DeeezNotes/DeeezNotes" || exit
	touch "0-inbox/${formatted_file_name}"
	nvim "0-inbox/${formatted_file_name}"
}

# Collect Online Proxy
alias run-coproxy="~/Documents/docs/proxy/./cloud-sql-proxy collectonline-symfony-4:europe-west1:collectonline-mysql \
--port=3308 \
--credentials-file=/Users/Adjay/Documents/docs/proxy/collectonline-symfony-4-8a0b846088b3.json"
alias run-coproxy-build="~/Documents/docs/proxy/./cloud-sql-proxy collectonline-symfony-4:europe-west1:collectonline-build \
--port=3309 \
--credentials-file=/Users/Adjay/Documents/docs/proxy/collectonline-symfony-4-8a0b846088b3.json"

