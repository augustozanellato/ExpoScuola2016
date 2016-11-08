#!/bin/bash
# Homebridge launcher
# By Augusto Zanellato
# Team ITI F. Severi
# ExpoScuola 2016
# Avvio il demone pigpiod che mi serve per controllare le porte GPIO e sospendo lo script per 3 secondi
sudo pigpiod
sleep 3
# Imposto il range del PWM sulla GPIO16
pigs PRS 16 100
# Avvio Homebridge in una sessione screen come root, specificando la cartella di configurazione
screen -DmS homebridge sudo homebridge -I -D -U /home/*/.homebridge
