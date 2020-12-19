#!/bin/bash

DROPLETS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11";

if [ $# -gt 0 ] ; then
	for arg in $@ ; do
	ping -c 1 $arg > /dev/null;
	STATUS=$?;
		if [ $STATUS -eq 0 ] ; then
			echo $arg : alive
		else
			echo $arg : dead
		fi
	done
else
	for droplet in $DROPLETS ; do
	ping -c 1 $droplet > /dev/null;
	STATUS=$?;
		if [ $STATUS -eq 0 ] ; then
			echo $droplet : alive
		else
			echo $droplet : dead
		fi
	done
fi

exit 0
