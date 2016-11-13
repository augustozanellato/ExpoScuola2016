#!/bin/bash
# Homebridge launcher
# By Augusto Zanellato
# Team ITI F. Severi
# ExpoScuola 2016
# Avvio lo script che legge le temperature dei 4 BJT che pilotano i led
sudo /home/*/.homebridge/ArduSerial.py &
# Avvio il demone pigpiod che serve per controllare le porte GPIO e sospendo lo script per 3 secondi
sudo pigpiod
sleep 3
# Imposto il range del PWM sulle GPIO5, GPIO6, GPIO13, GPIO19
pigs PRS 5 100
pigs PRS 6 100
pigs PRS 13 100
pigs PRS 19 100
# Avvio Homebridge in una sessione screen come root, specificando la cartella di configurazione
screen -DmS homebridge sudo homebridge -I -D -U /home/*/.homebridge

