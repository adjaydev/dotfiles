DFGREEN="\033[32m"
DFINIT="\033[0m"

usage_bar() {
	local used_percent=$1
	local bars=10
	local used=$((used_percent * bars / 100))
	local free=$((bars - used))

	for ((i = 0; i < used; i++)); do printf "\033[41m \033[0m"; done
	for ((i = 0; i < free; i++)); do printf "\033[42m \033[0m"; done
}

dfp() {
	echo -e "\033[0m┌───────────────────────────────┬─────────┬─────────┬─────────┬───────┬──────────┐"
	printf "│\033[33m%-30s \033[0m│\033[33m%8s \033[0m│\033[33m%8s \033[0m│\033[33m%8s \033[0m│\033[33m%6s \033[0m│\033[33m%10s\033[0m│\n" "Mount Point" "Size" "Used" "Avail" "Use%" "Usage Bar"
	echo -e "├───────────────────────────────┼─────────┼─────────┼─────────┼───────┼──────────┤"

	# Run df -h and parse, skip header
	df -h | tail -n +2 | while read -r line; do
	# Extract columns
	mount=$(echo "$line" | awk '{for (i=9; i<=NF; i++) printf $i " "; print ""}' | sed 's/ *$//')
	fs=$(echo "$line" | awk '{print $1}')
	size=$(echo "$line" | awk '{print $2}')
	used=$(echo "$line" | awk '{print $3}')
	avail=$(echo "$line" | awk '{print $4}')
	usep=$(echo "$line" | awk '{print $5}' | tr -d '%')

		# Filter out unwanted drives
		case "$fs" in
			devfs|map*|/dev/disk1s*|/dev/disk3s2|/dev/disk3s4|/dev/disk3s6|/dev/disk1s2|/dev/disk1s3)
				continue
				;;
		esac

		printf "\033[0m│%-30s │%8s │%8s │%8s │%7s│" "$mount" "$size" "$used" "$avail" "${usep}% "
		usage_bar "$usep"
		printf "│\n"

	done

	echo -e "\033[0m└───────────────────────────────┴─────────┴─────────┴─────────┴───────┴──────────┘\033[0m"

}
