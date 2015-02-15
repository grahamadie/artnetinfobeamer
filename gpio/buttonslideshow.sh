#! /bin/bash

left=24
right=23

echo "setting up pin $left"
echo "$left" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio$left/direction

echo "setting up pin $left"
echo "$left" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio$left/direction

imagedir=place where the images are stored
 
feh $imagedir & 

pid=$!

while true; do

but1=cat /sys/class/gpio/gpio$left/value
but2=cat /sys/class/gpio/gpio$right/value 

if [ $but1 -eq 1 ]
then
	kill -s SIGUSR1 $pid
	sleep 1

else
	if [ $but2 -eq 1 ]
	then
		kill -s SIGUSR2 $pid
		sleep 1
	fi
fi