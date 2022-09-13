#!/bin/bash
# Base Code provided by lab 2.1 from Devin Paden
# Retooling of code for scanning all /24 ips against a DNS server.

iprange=$1
dns=$2
echo "DNS Resolution on specific DNS:"
for ip in {1..254}; do
	nslookup $iprange.$ip $dns | grep "name ="
done
