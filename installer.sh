#!/bin/bash

echo "	Installing xorg..."
apt -y install xorg
echo "	Installing i3..."
apt -y install i3
echo "	Installing lightdm..."
apt -y install lightdm
echo "	Create lightdm config file..."
touch /etc/lightdm/lightdm.conf.d/50-i3.conf
printf "[SeatDefaults]\nuser-session=i3" >> /etc/lightdm/lightdm.conf.d/50-i3.conf 
