# BVCBash

# Init vars

read -r -d '' MENU <<-EOF
BVCBash

commands:

    show-vms:      Show a list of the vms that are usable with easy ssh.
    logs:          Pick backend service from a list and start the server logstream.

docs:

    logtail:       az webapp log tail -n NAME -g RESOURCEGROUP -s SLOT
EOF

read -r -d '' SHOWVMS <<-EOF
BVCBash

List of the bvcm vms that are usable with easy ssh.

show-vms:

    bvvm:            VM with google mysql proxy installed.
    bvloki:          VM with grafana and loki installed.
    bvgrafana:       VM with grafana and loki installed.
    bvgrafanavm:     VM with grafana and loki installed.
EOF

bvcm() {

	if [[ "$1" == "" ]]; then
		echo "$MENU"
	fi

	if [[ "$1" == "show-vms" ]]; then
		echo "$SHOWVMS"
	fi

	if [[ "$1" == "logs" ]]; then

		selected=`cat ~/dotfiles/scripts/.config/scripts/bvcm_logtail | sort -r | fzf`
		group="bvcm_resource_group"

		if [[ "$selected" == "" ]]; then
			echo ">> no server selected"
			return
		fi
		if [[ "$selected" == "bvcm-intranet-backend" ]]; then
			group="bvcm_apps_resource"
		fi
		if [[ "$selected" == "bvcm-fundflow" ]]; then
			group="bvcm_apps_resource"
		fi
		if [[ "$selected" == "bvcm-synapse-backend" ]]; then
			group="bvcm_apps_resource"
		fi 
		az webapp log tail -n $selected -g $group

	fi
}
