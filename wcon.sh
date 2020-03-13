#!/bin/bash

#Trying to check if mac is connected to wifi
macIP=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2)
if [ -z "${macIP// }" ]; then 
	echo "Your mac doesn't have a wifi connection"
	echo "Exiting!!"
	exit;
fi

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

phoneID=$(adb devices | grep -o '\b[a-f0-9]\+\b')
phoneName=$(adb -s ${phoneID} shell getprop ro.product.model)
echo "Your device is $phoneName"

#Trying to restart adb to port 5555
adb tcpip 5555

#Get the ip of the connected device
echo "Getting IP address of $phoneName"

#Delay for some time
sleep 3s

phoneIP=$(adb shell ip addr show wlan0 | grep "inet\s" | awk '{print $2}' | awk -F'/' '{print $1}')

if [ ${#phoneIP} -gt 30 ]; then 
	echo "Error encountered"
	echo "Exiting!!"
	exit;
elif [ ${#phoneIP} -gt 10 ]; then
	echo "${phoneIP}"
	echo ""
elif [ -z "${phoneIP// }" ]; then
	echo "Deice doesn't have a wifi connection"
	echo "Exiting!!"
	exit;
fi

output=$(adb connect "${phoneIP}:5555")
if [[ "$output" == "connected to ${phoneIP}:5555" ]]; then
    echo "conected to $phoneName"
else
    echo "$output"
fi
