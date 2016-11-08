#!/bin/bash
# HomeKit Servo Switch 1.0
# By Augusto Zanellato
# Team ITI F. Severi
# ExpoScuola 2016

#Assegno i tre parametri dello script a tre diverse varibili
rw=$1
gpio=$2
pulse=$3

#Se il file di stato del servomotore selezionato non esiste lo creo
if [ ! -f /tmp/$gpio.servo ]; then
touch /tmp/$gpio.servo
echo 0 > /tmp/$gpio.servo
fi

#Se il primo parametro è 'w' imposta la posizione del servo e la scrivo nel file di configurazione del servo selezionato
if [ $rw == "w" ]; then
pigs s $gpio $pulse
status=$4
echo $status > /tmp/$gpio.servo

#Se il primo parametro è 'r' stampa la posizione attuale del servo
elif [ $rw == "r" ]; then
status=$(cat /tmp/$gpio.servo)
if [ $status == "on" ]; then
echo "on"
fi
fi
