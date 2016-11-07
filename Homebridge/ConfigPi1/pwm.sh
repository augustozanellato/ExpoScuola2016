#!/bin/bash
# HomeKit PWM 1.0
# By Augusto Zanellato
# Team ITI F. Severi
# ExpoScuola 2016

rw=$1
gpio=$2
pwm=$3

if [ ! -f /tmp/$gpio.pwm ]; then
touch /tmp/$gpio.pwm
echo 0 > /tmp/$gpio.pwm
fi

if [ $rw == "w" ]; then
pigs p $gpio $pwm
echo $pwm > /tmp/$gpio.pwm

elif [ $rw == "r" ]; then
cat /tmp/$gpio.pwm
fi
