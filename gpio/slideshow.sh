#!/bin/bash

imagedir=/home/pi/Wallpaper
 
feh $imagedir & 

pid=$!
echo "PID IS $pid"

sleep 5
kill -s SIGUSR1 $pid
sleep 5 

kill -s SIGUSR2 $pid

 #kill -s SIGUSR1 6590