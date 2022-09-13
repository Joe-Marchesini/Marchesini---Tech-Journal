#!/bin/bash

echo "Nmap Sweep:" > sweep.txt

for i in {1..50}
do
	sudo nmap -n -vv -sn -oG - 10.0.5.$i | grep Up | cut -d ' ' -f 2 >> sweep.txt
done
