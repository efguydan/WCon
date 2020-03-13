#!/bin/bash

#Getting devices just to make sure we have a device connected
devices=$(adb devices)

if [ ${#devices} -lt 25 ]; then 
	echo "No devices attached"
	echo "Exiting!!"
	exit;
elif [ ${#devices} -gt 40 ]; then
	echo "More than one devices found"
	echo "Exiting!!"
	exit;
fi

echo "$devices"

#Trying to restart adb to port 5555
adb tcpip 5555

#Get the ip of the connected device
echo "Getting IP address of connected device"

#Delay for some time
sleep 3s

phoneIP=$(adb shell ip addr show wlan0 | grep "inet\s" | awk '{print $2}' | awk -F'/' '{print $1}')

if [ ${#phoneIP} -gt 30 ]; then 
	echo "Error encountered"
	echo "Exiting!!"
	exit;
elif [ ${#phoneIP} -gt 10 ]; then
	echo "The device ip is ${phoneIP}"
elif [ -z "${phoneIP// }" ]; then
	echo "Deice doesn't have a wifi connection"
	echo "Exiting!!"
	exit;
fi

adb connect "${phoneIP}:5555"
