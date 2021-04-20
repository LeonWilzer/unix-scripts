#!/bin/bash
cd /etc/X11/xorg.conf.d || return
if [ $(lspci -vnnn | grep VGA | awk '{print $6}'| sed -n '1p') = "Intel" ]
then
	rm 20-nvidia.conf
	cp 20-intel.conf.dis 20-intel.conf
else
	rm 20-intel.conf
	cp 20-nvidia.conf.dis 20-nvidia.conf
fi
