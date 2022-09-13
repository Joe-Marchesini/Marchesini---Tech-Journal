#!/bin/bash
# Base Code provided by lab 2.1 from Devin Paden
# Retooling of code for scanning all /24 ips against a specific port.

iprange=$1
port=$2
echo "Output of open Hosts and Ports:"
for ip in {1..254}; do
	timeout .1 bash -c "echo >/dev/tcp/$iprange.$ip/$port" 2</dev/null && echo "Host: $iprange.$ip, TCP Port: $port"
done
