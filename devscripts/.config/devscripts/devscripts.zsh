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

