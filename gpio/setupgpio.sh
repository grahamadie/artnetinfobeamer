#!/bin/bash

FORWARD=24 
BACKWARD=23


echo "setting up pin $FORWARD"
echo "$FORWARD" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio$FORWARD/direction

echo "setting up pin $BACKWARD"
echo "$BACKWARD" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio$BACKWARD/direction

