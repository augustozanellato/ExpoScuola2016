#!/bin/bash
# HomeKit PWM 1.0
# By Augusto Zanellato
# Team ITI F. Severi
# ExpoScuola 2016

#Prendo i primi tre parametri passati allo script e li imposto come tre variabili
rw=$1
gpio=$2
pwm=$3

#In caso non esista creo un file temporaneo contenente lo stato della GPIO
if [ ! -f /tmp/$gpio.pwm ]; then
touch /tmp/$gpio.pwm
echo 0 > /tmp/$gpio.pwm
fi

#Se il primo parametro è 'w' scrivo il valore del PWM nella GPIO specificata
if [ $rw == "w" ]; then
pigs p $gpio $pwm
echo $pwm > /tmp/$gpio.pwm

#Se il primo parametro è 'r' stampo il valore attuale della GPIO specificata
elif [ $rw == "r" ]; then
cat /tmp/$gpio.pwm
fi
