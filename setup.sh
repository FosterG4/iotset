#!/bin/bash

sudo apt-get update
sleep 3
sudo apt install python3 idle3
sleep 3
sudo apt install python3-netifaces
sleep 3
sudo apt-get upgrade
sleep 3

#create folder
cd /home/pi/IOT/
#get file bash
wget https://github.com/geekworm-com/x728/blob/master/x728.sh
#change permission execute
sudo chmod +x x728.sh
#start script
sudo ./x728.sh
sleep 3

#test relay
python3 /home/pi/IOT/cek-relay.py
#test LCD
python3 /home/pi/IOT/lcd.py
