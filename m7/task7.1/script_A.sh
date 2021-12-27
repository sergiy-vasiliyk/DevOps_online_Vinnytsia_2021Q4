#! /bin/bash

function info {
	echo "--all - key displays the IP addresses and symbolic names of all hosts in the curent subnet"
	echo "--target - key displays a list of open systrm TCP ports"
}

function all {
	echo "Starting scanning subnet process"
	echo "$(nbtscan `ip -o -f inet addr show | awk '/scope global/ {print $4}'`)" 
}

function target {
	echo "List of open TCP port"
	echo "$(netstat -tlpn)"
}


if [ $# -eq 0 ]; then info
else
	if [ $1 == "--all" ]; then all
	else
		if [ $1 == "--target" ]; then target
		else echo "Wrong parameter"
		fi
	fi
fi
