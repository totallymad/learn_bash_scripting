#!/bin/bash

my_var=1

while [[ $myvar -le 10 ]]; do
	echo $myvar
	sleep 0.5
	if [[ $myvar -eq 10 ]]; then
		echo "Over"
	fi
	myvar=$(( $myvar + 1 ))
done
