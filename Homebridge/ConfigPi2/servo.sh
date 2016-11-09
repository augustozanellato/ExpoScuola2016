#!/bin/bash
# HomeKit Servo Switch 1.0
# By Augusto Zanellato
# Team ITI F. Severi
# ExpoScuola 2016

rw=$1
gpio=$2
pulse=$3

if [ ! -f /tmp/$gpio.servo ]; then
touch /tmp/$gpio.servo
echo 0 > /tmp/$gpio.servo
fi

if [ $rw == "w" ]; then
pigs s $gpio $pulse
status=$4
echo $status > /tmp/$gpio.servo

elif [ $rw == "r" ]; then
status=$(cat /tmp/$gpio.servo)
if [ $status == "on" ]; then
echo "on"
fi
fi
