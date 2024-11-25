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
	~/projects/bvcm-azure-cli/target/release/./bvcm_inquire
}

function opig() {
	# NOTE:
	# cut -d             => split on ':'
	# -f2                => grab second value
	# awk '{$1=$1};1'    => remove leading and trailing spaces
	# tr -d              => translate and delete '\n'

	op item --vault Private get $1 --reveal | grep -E '(wachtwoord|password):' | cut -d ':' -f 2 | awk '{$1=$1};1' | tr -d '\n' | pbcopy
}

function opil() {
	op item list --vault Private
}

function count-lines() {
	echo "find . -name *.$1 -exec wc -l {} +"
	find . -name "*.$1" -exec wc -l {} +
}

alias dcd="docker-compose down"
alias dcu="docker-compose up -d"

alias clock="tock -c -W 6 -H 3 -m"
