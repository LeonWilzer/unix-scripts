#!/bin/bash
if [ $(lspci -vnnn | grep VGA | awk '{print $6}'| sed -n '1p') = "Intel" ]
then
	systemctl start nsfminer.service
else
	systemctl stop nsfminer.service
fi
