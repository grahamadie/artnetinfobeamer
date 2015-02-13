#!/bin/bash

echo "setting up pin 24"
echo "24" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio24/direction

echo "setting up pin 18"
echo "18" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio18/direction

