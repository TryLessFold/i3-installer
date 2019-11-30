#!/bin/bash

echo "	Installing i3..."
apt -y install i3
echo "	Installing lightdm..."
apt -y install xfce4
apt -y install lightdm
dpkg-reconfigure lightdm
apt -y autoremove xfce4
dpkg-reconfigure lightdm

