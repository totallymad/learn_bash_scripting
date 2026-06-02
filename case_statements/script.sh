#!/bin/bash

finished=0

while [ $finished -ne 1 ]; do

	echo "Enter your favorite linux distro"
	echo "1 - Arch"
	echo "2 - CentOs"
	echo "3 - Debian"
	echo "4 - Mint"
	echo "5 - Ubuntu"
	echo "6 - Something else"
	echo "7 - exit"

	read distro

	case $distro in
		1) echo "Arch is a rolling release.";;
		2) echo "CentOS is popular on server";;
		3) echo "Debian is a community disribution.";;
		4) echo "Mint is popular on desktops and laptops";;
		5) echo "Ubuntu is popular on both servers and destops";;
		6) echo "There are many distro out there";;
		7)
			echo "Exiting"
			finished=1
		;;
		*) echo "You didn't enter an appropriate choice."
	esac

done
