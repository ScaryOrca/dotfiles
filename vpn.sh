#!/usr/bin/env bash

# This scripts checks to see if connected to a VPN

cmd=$(nmcli con | grep -i vpn | grep -o "$1")

if [[ $# -ne 1 ]]; then
	echo "Error: invalid number of arguments"
	echo "Usage: $0 <interface>"
	exit 1
fi

if [[ $cmd == $1 ]]; then
	echo "Connected"
else
	echo "Disconnected"
fi
