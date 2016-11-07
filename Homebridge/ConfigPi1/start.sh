#!/bin/bash
sudo pigpiod
sleep 3
pigs PRS 16 100
sleep 3
screen -DmS homebridge sudo homebridge -I -D -U /home/*/.homebridge
