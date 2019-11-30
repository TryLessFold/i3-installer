#!/bin/bash

echo "	Installing dependencies..."
apt -y  install xfce4
apt -y autoremove xfce4
echo "	Installing i3..."
apt -y install i3
echo "	Installing lightdm..."
apt -y install lightdm

