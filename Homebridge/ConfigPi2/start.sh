#!/bin/bash
sudo pigpiod
sleep 3
pigs PRS 16 100
pigs PRS 5 100
pigs PRS 6 100
pigs PRS 13 100
pigs PRS 19 100
#screen -DmS homebridge sudo homebridge -I -D -U /home/alarm/.homebridge

