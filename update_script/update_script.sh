#!/bin/bash

release_file=/etc/os-release


# когда в условии используется существующая команда
# test (или []) использовать не надо
# [] - используется когда есть числовые, строковые сравнения (-eq, -lt и др)
# файловые проверки (-f, -d и др) или логические операции (-a, -o и др.) 
if grep -qi "Arch" $release_file
then
	# host based on Arch, run pacman update
	sudo pacman -Syu
fi

if grep -qi "debian" $release_file || grep -qi "ubuntu" $release_file 
then
	# host based on Debian, run apt update
	sudo apt update
	# sudo apt dist-upgrade
fi

if grep -qi "rhel" $release_file
then
	# host based on RHEL, run dnf update
	sudo dnf update
fi
