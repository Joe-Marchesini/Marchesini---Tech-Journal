#!/bin/bash
# Base Code provided by lab 2.1 from Devin Paden

hostfile=$1
portfile=$2
if test -f $hostfile && test -f $portfile; then
	echo "Output of open Hosts and Ports:"
	for host in $(cat $hostfile); do
		for port in $(cat $portfile); do
			timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2</dev/null && echo "Host: $host, TCP Port: $port"
		done
	done
else
	echo "One or both files dont exist. Try again."
fi
