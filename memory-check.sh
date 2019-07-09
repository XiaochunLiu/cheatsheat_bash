#!/bin/bash
# Description:
# Monitor the memory usage every 0.1 second and output the value in command line
#	Input:
	# PROCESS_NAME: string with program PROCESS_NAME


PROCESS_NAME="$1"

while :
do
	# clear # if needed to clear the output window
	ps aux | grep $PROCESS_NAME | awk '{ sum = sum + $6 }; END { print sum * 0.001 * 0.001 }' # output from kb gb
	sleep 0.1s # monitor every 0.1s
done


