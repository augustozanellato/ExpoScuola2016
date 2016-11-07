Abbiamo scelto Homebridge come software per interfacciarci col mondo esterno
perchè è espandibile tramite un sistema di plugin, e soprattutto è compatibile
con HomeKit, che è il framework sviluppato da Apple per la domotica.

In questa cartella sono presenti i file di configurazione e gli script che
abbiamo usato per controllare i servomotori e il PWM tramite Homebridge
Nelle due cartelle sono presenti i file da copiare in ogni Raspberry Pi nella
direcotry "~/.homebridge".
Il file "homebridge.service" va copiato nella direcotry "/etc/systemd/system"
in entrambi i Pi e abilitato tramite il comando "sudo systemctl enable homebridge".

Le dipendenze di Homebridge sotto Arch Linux ARM sono:
(Da installare tramite "sudo pacman -S nomepacchetto")
- nodejs
- npm
- avahi
- git
- make
- gcc
(Da installare tramite "sudo npm install -g nomepacchetto")
- node-gyp
- homebridge

I plugin che abbiamo utilizzato sono:
(Da installare sempre con "sudo npm install -g nomepacchetto")
- homebridge-cmdswitch
- homebridge-cmd_light_control
- homebridge-pi

Il codice per associare entrambi i Raspberry Pi ai vostri dispositivi è "031-45-154"

