#!/bin/bash
# --------------------
# last version of script with exit codes
# --------------------

dir=/etasdasjdkasjdkc

if [[ -d $dir ]]; then
	echo "the directory $dir exists."
	exit 0
else
	echo "the directory $dir doesn't exist."
	# exit code может быть любой и это удобно, так как
	# в реальных скриптах нам может понадобится отловить какой-то
	# конкретный сценарий, и соответственно этому сценарию можно присовить
	# определенный exit code
	exit 199
fi

echo "The exit code for this script run is: $?"
echo "You never see that statement"
echo "You won't see this one either"
