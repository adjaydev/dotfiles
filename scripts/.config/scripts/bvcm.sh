# BVCBash

# Init vars

read -r -d '' MENU <<-EOF
 BVCM Bash

 commands:

    show-vms:      Show a list of the vms that are usable with easy ssh.
EOF

read -r -d '' SHOWVMS <<-EOF
 BVCM Bash

 show-vms:

    bvvm:             VM with google mysql proxy installed.
    bvgrafanavm:      VM with grafana and loki installed.
EOF

bvcm() {

	if [[ "$1" == "" ]]; then
		echo "$MENU"
	fi

	if [[ "$1" == "show-vms" ]]; then
		echo "$SHOWVMS"
	fi

}
