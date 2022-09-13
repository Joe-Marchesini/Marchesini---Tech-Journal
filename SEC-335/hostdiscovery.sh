#!/bin/bash

echo "Sweep File, return active IPs from 10.0.5.2-50:" > sweep.txt

for i in {2..50}
do
	ping=`ping -c 1 -W 1 10.0.5.$i | grep bytes | wc -l`
	if [ "$ping" -gt 1 ];then
		echo "10.0.5.$i HOST IS UP" >> sweep.txt
	fi
done
