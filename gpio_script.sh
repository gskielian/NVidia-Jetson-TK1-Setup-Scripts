#!/bin/bash

#use this like, 
# ./gpio_script.sh 57 0, to set 57 to low, 
# or 
# ./gpio_script.sh 57 1 to set 57 to high

echo "$1" > /sys/class/gpio/export #allows toggling of $1
echo "out" > /sys/class/gpio/gpio"$1"/direction #sets direction to output
echo "$2" > /sys/class/gpio/gpio"$1"/value #sets it to "high" or "low"

cat /sys/kernel/debug/gpio #prints all gpio states to stdout
