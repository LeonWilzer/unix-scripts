#!/bin/bash
if [ $(lspci -vnnn | grep VGA | awk '{print $6}'| sed -n '1p') = "Intel" ]
then
	systemctl start nsfminer.service
	touch /home/leon/.var/miner.lock
else
	systemctl stop nsfminer.service
	rm /home/leon/.var/miner.lock
fi
