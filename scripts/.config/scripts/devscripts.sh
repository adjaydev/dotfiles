source ~/.config/zsh_scripts/.tmux
source ~/dotfiles/scripts/.config/scripts/ghostyy_zsh.sh
source ~/.config/scripts/bvcm.sh
source ~/.config/scripts/adjay.sh
source ~/.config/scripts/dfpro.sh
source ~/.config/scripts/spin.sh
source ~/.config/scripts/colors.sh
source ~/.config/scripts/setwal.sh
source ~/.cache/wal/colors.sh

# source ~/projects/test/bash/getopts/print-my-name
# source ~/.config/scripts/wttr.sh

# Clear screen
alias c='clear;echo -e "${COLOR_GREEN}Wake up, Neo...${COLOR_NONE}";'

# alias c='clear;echo -e "\033[38;2;152;151;26m"; figlet adjay.dev; echo -e "\033[0m"'
alias cc="clear; clear;"
alias blank='PS1=""; clear;'
alias out='source ~/.zshrc'
alias esc="source ~/.zshrc"
alias ls="ls -l --color=auto"
alias lz="eza -l --group-directories-first --icons=auto"
alias ll="ls -lh"
alias la="ls -lah"
alias lza="lz -lah"
alias lsi='cd "$(ls | fzf)"'
alias ..="cd .."
alias sls="~/.config/zsh_scripts/tls.sh"
alias ssls="~/.config/zsh_scripts/tsls.sh"

# Special
alias ban="batman"
alias y="yazi"
alias figlet="figlet -cf slant"
alias presenterm="presenterm --config-file ~/.config/presenterm/config.yaml"
alias wtr="curl wttr.in/hoofddorp"
alias screens="cd ~/Pictures/screenshots"
alias hl="rg --passthrough $1"
alias nzbget="/opt/homebrew/opt/nzbget/bin/nzbget -c /opt/homebrew/etc/nzbget.conf -s -o OutputMode\=Log -o ConfigTemplate\=/opt/homebrew/share/nzbget/nzbget.conf -o WebDir\=/opt/homebrew/share/nzbget/webui"

alias rf="$HOME/.config/scripts/./finder_highlighted_file.applescript"
alias rfc="$HOME/.config/scripts/./finder_highlighted_file.applescript | tr -d '\n' | pbcopy"


ee() {
	echo $?;
}
alias ece="echo $?"
alias eche="echo $?"
alias cal3="cal -3"
alias clock="tock -c -W 6 -H 3 -m"

enter() {
	clear 
	echo -e "${COLOR_GREEN}Wake up, Neo...${COLOR_NONE}"
}

enter-noc() {
	echo -e "${COLOR_GREEN}Wake up, Neo...${COLOR_NONE}"
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
alias cv="cd ~/.config/nvim && nvim ."
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
alias bvg="cd ~/projects; la"
alias bvgai="cd ~/projects/bvcm-ai; la"
alias bvgbo="cd ~/projects/bvcm-backoffice-app; la"
alias bvghs="nvim ~/projects/bvcm-hubspot-webhook;"
alias bvgaif="nvim ~/projects/bvcm-ai/frontend;"
alias bvgaib="nvim ~/projects/bvcm-ai/backend;"
alias bvgsn="nvim ~/projects/bvcm-synapse-backend;"
alias bvgwk="nvim ~/projects/bvcm-wiki/wiki"
alias bvgff="cd ~/projects/bvcm-findflow; la;"
alias bvgdw="cd ~/projects/bvcm-daywize; la;"

# adjay.dev
alias werk="cd ~/Documents/werk; lsa"
alias avx="cd ~/projects/avx/avx-inspection;"
alias avxher="cd ~/projects/avx/avx-herinspectie;"
alias proj="cd ~/projects"

# PIP
alias pir="pip install -r requirements.txt"
alias pfr="pip freeze > requirements.txt"
alias pl="pip list"
alias pi="pip install"
alias venv="source venv/bin/activate"

alias srch='nvim $(fzf -m --preview="bat --color=always {}")'
alias obsf='cd ~/personal/DeeezNotes; nvim $(fzf -m --preview="bat --color=always {}")'

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
	~/projects/bvcm-azure-cli/target/release/./bvcm-sftp-cli $1
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
	  echo "Error: A file name must be set, e.g. on \"filename with spaces allowed\"."
	  exit 1
	fi

	file_name=$(echo "$1" | tr ' ' '-')
	formatted_file_name=${file_name}_$(date "+%Y-%m-%d").md
	cd "~/personal/DeeezNotes" || exit
	touch "0-inbox/${formatted_file_name}"
	nvim "0-inbox/${formatted_file_name}"
}

custom_prompt() {
	local exit_status=$?
	# if [ "$exit_status" -ne "0" ]; then
	if (($exit_status > 0)); then
		PRMPT="${COLOR_RED}${exit_status}> ${COLOR_NONE}"
		PS1=$PRMPT
	else
		PRMPT="${COLOR_GREEN}> ${COLOR_NONE}"
		PS1=$PRMPT
	fi
}
PROMPT_COMMAND="custom_prompt"

# Collect Online Proxy
alias run-coproxy="~/Documents/docs/proxy/./cloud-sql-proxy collectonline-symfony-4:europe-west1:collectonline-mysql \
--port=3308 \
--credentials-file=/Users/Adjay/Documents/docs/proxy/collectonline-symfony-4-8a0b846088b3.json"
alias run-coproxy-build="~/Documents/docs/proxy/./cloud-sql-proxy collectonline-symfony-4:europe-west1:collectonline-build \
--port=3309 \
--credentials-file=/Users/Adjay/Documents/docs/proxy/collectonline-symfony-4-8a0b846088b3.json"

