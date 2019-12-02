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

echo "	Configure home directory..."
cp ./.config ~/ -r
chown $(id -u):$(id -g) /home/$(id -un)/ -R

echo "Installing plugins..."
apt -y install 

echo "Installing programms..."
apt -y install telegram-desktop
apt -y install thunderbird
apt -y install chromium-browser

