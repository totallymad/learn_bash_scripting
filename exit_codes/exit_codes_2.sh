#!/bin/bash
# --------------
# second part about exit codes
# --------------

directory=/misc

if [[ -d $directory ]]; then
	# тут будет нолик
	echo $?
	echo "The dir $directory exists"
else
	# тут как раз таки выведет 1, так как до успешного вывода echo не дошло
	echo $?
	echo "the dir $directory doesn't exists"
fi

# $? -> всегда показывает последний exit code, поэтому
# ниже выведет успешный 0, так как выше команда echo выполнилась успешно
echo "The exit code for this script run is $?"

# 
