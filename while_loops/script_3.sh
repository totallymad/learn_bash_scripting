#!/bin/bash

myvar=1

while [[ -f ~/testfile ]]; do
	echo "$(date) - the test file exists"
	sleep 1
done

echo "$(date) - the file is no longer exists"
