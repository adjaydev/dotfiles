read -r -d '' JMENU <<-EOF

commands:

    ssh-select:    Pick ssh server connection from list and connect to the server

EOF

jay() {
	echo -e "\e[0;32m██████████████████████████████████████████████████████\e[0;32m"
	figlet adjay.dev
	echo ""
	echo -e "\e[0;32m█████████████████████████████████████████████\e[1;32m"

	echo -e "$JMENU"

	echo -e "\e[0m"
}

ssh-select() {
	sshselected=`cat ~/.ssh/config | grep "Host " | cut -d ' ' -f 2 | sort -r | fzf`

	if [[ "$sshselected" == "" ]]; then
		echo ">> no server selected"
		return
	fi
	
	selectedfig=`figlet "ssh $sshselected"`
	echo -e "\e[32m$selectedfig\e[0m"

	ssh $sshselected
}

fast_chr() {
	 local __octal
    local __char
    printf -v __octal '%03o' $1
    printf -v __char \\$__octal
    REPLY=$__char
}

unichr() {
    local c=$1    # Ordinal of char
    local l=0    # Byte ctr
    local o=63    # Ceiling
    local p=128    # Accum. bits
    local s=''    # Output string

    (( c < 0x80 )) && { fast_chr "$c"; echo -n "$REPLY"; return; }

    while (( c > o )); do
        fast_chr $(( t = 0x80 | c & 0x3f ))
        s="$REPLY$s"
        (( c >>= 6, l++, p += o+1, o>>=1 ))
    done

    fast_chr $(( t = p | c ))
    echo -n "$REPLY$s"
}

unicodes() {

## test harness
for (( i=0x2500; i<0x2600; i++ )); do
    unichr $i
done

}
