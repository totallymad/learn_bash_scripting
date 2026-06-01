#!/bin/bash
# --------------------
# if statements
# --------------------

my_num=201

# базовые синтаксис
if [ $my_num -eq 200 ]; then
	echo "Correct"
else
	echo "incorrect"
fi

# отрицание
if [ ! $my_num -gt 200 ]; then
	echo "correct"
else
	echo "incorrect"
fi

# существует ли файл
if [ -f ~/myfile ]; then
	echo "file exists"
else
	echo "file doesn't exist"
fi

# существует ли директория
if [ -d ~/mydir ]; then
	echo "dir exests"
else
	echo "dir doesn't exist"
fi

# практические пример
command=htop
full_path=/usr/bin/htop

if [ -f $full_path ]; then
	echo "$command is available, let's run it...."
else
	echo "$command is not available, let's install it...."
	sudo apt update && sudo apt install $command -y
fi

$command
