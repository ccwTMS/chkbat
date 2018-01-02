#!/bin/sh

WARNING_LEVEL=600000

while [ 1 ] ; do
	sleep 5
	result=`/sys/class/power_supply/BAT0/energy_now`
	#echo $result
	if [ $result -lt $WARNING_LEVEL ] ; then
		bat_warning.py
		while [ 1 ] ; do
			sleep 30
			newval=`/sys/class/power_supply/BAT0/energy_now`
			if [ $newval -gt $WARNING_LEVEL ] ; then
				break
			fi
		done 
	fi
done

