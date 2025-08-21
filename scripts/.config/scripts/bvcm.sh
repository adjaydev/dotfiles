# BVCBash

# Init vars

read -r -d '' MENU <<-EOF
\e[1;34;44m                    \e[0m
\e[1;34;104m                    \e[0m
\e[1;34;107m                    \e[0m
\e[1;34;107m      BVCM Bash     \e[0m
\e[1;34;107m                    \e[0m
\e[1;34;104m                    \e[0m
\e[1;34;44m                    \e[0m
\e[0m

commands:

    show-vms:      Show a list of the vms that are usable with easy ssh.
    logs:          Pick backend service from a list and start the server logstream.
    sftp:          Start the BVCM SFTP CLI to manage SFTP users. 
                   - Usage: 'bvcm sftp bvcm' or 'bvcm sftp faircasso'

docs:

    logtail:       az webapp log tail -n NAME -g RESOURCEGROUP -s SLOT
EOF

read -r -d '' SHOWVMS <<-EOF
\e[1;34;44m                    \e[0m
\e[1;34;104m                    \e[0m
\e[1;34;107m                    \e[0m
\e[1;34;107m      BVCM Bash     \e[0m
\e[1;34;107m                    \e[0m
\e[1;34;104m                    \e[0m
\e[1;34;44m                    \e[0m
\e[0m

List of the bvcm vms that are usable with easy ssh.

show-vms:

    bvvm:            VM with google mysql proxy installed.
    bvloki:          VM with grafana and loki installed.
    bvgrafana:       VM with grafana and loki installed.
    bvgrafanavm:     VM with grafana and loki installed.
EOF

bvcm() {

	if [[ "$1" == "" ]]; then
		echo -e "$MENU"
	fi

	if [[ "$1" == "show-vms" ]]; then
		echo -e "$SHOWVMS"
	fi

	if [[ "$1" == "logs" ]]; then

		selected=`cat ~/dotfiles/scripts/.config/scripts/bvcm_logtail | sort -r | fzf`
		group="bvcm_resource_group"

		if [[ "$selected" == "" ]]; then
			echo ">> no server selected"
			return
		fi
		if [[ "$selected" == "bvcm-go-mail-v1" ]]; then
			group="bvcm_apps_resource"
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
		if [[ "$selected" == "bvcm-qdesk" ]]; then
			group="bvcm_apps_resource"
		fi 
		az webapp log tail -n $selected -g $group

	fi

	if [[ "$1" == "ssh" ]]; then

		selected=`cat ~/dotfiles/scripts/.config/scripts/bvcm_logtail | sort -r | fzf`
		group="bvcm_resource_group"

		if [[ "$selected" == "" ]]; then
			echo ">> no server selected"
			return
		fi
		if [[ "$selected" == "bvcm-go-mail-v1" ]]; then
			group="bvcm_apps_resource"
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
		if [[ "$selected" == "bvcm-qdesk" ]]; then
			group="bvcm_apps_resource"
		fi 
		az webapp ssh -n $selected -g $group

	fi
	
	if [[ "$1" == "sftp" ]]; then
		if [[ "$2" == "bvcm" ]]; then
		sftp-start bvcmsftp
		fi
		if [[ "$2" == "" ]]; then
		sftp-start bvcmsftp
		fi
		if [[ "$2" == "faircasso" ]]; then
		sftp-start faircassosftp
		fi
	fi

}

