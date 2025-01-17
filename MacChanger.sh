#!/bin/bash

echo "******************MacChanger******************"
echo ""

if [ -z "$1" ]
then
echo ""
echo "Run file like this"
echo "Ex. sudo ./MacChanger.sh eth0 44:ee:bc:6c:76:ba"
echo "If you don't have MAC address to change you can just give interface"
echo "Ex. sudo ./MacChanger.sh eth0"
echo "You can revert the changes using -O flag"
echo "Ex. sudo ./MacChanger -O eth0"
echo ""
ifconfig
echo ""
echo "You can see your interface above"
exit
fi

if ! which macchanger > /dev/null; then
   echo "You don't have macchanger installed."
   echo "Install it first"
   exit
fi

if [ $1 == "-O" ]
then
	macchanger -p $2
	exit
fi

if [ -z "$2" ]
then
	ifconfig eth0 down
	macchanger -r $1
	ifconfig eth0 up
	echo ""
	echo "You can change it to original by using -O flag"
	echo "sudo ./MacChanger.sh -O eth0"
else
	ifconfig eth0 down
	macchanger -m $2 $1
	ifconfig eth0 up
	echo ""
	echo "You can change it to original by using -O flag"
        echo "sudo ./MacChanger.sh -O eth0"
fi
