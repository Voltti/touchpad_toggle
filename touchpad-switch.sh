#!/bin/bash
 
# A Script to turn touchpad on and off
 
# Setting whether to use popup notification of device status change. 0 for disabled, 1 for enabled.
notify=0
 
# Let's check if whether the device is enabled or disabled.
status=$(gsettings get org.gnome.desktop.peripherals.touchpad send-events)
 
# And then set the devide status the opposite.
 
if [ $status ==  "'disabled'" ]; then
gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled
if [ $notify == 1 ]; then
notify-send -i input-tablet -a Touchpad "Touchpad enabled" # Notify with popup, if preferred.
fi
else
gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled
if [ $notify == 1 ]; then
notify-send -i input-tablet -a Touchpad "Touchpad disabled" # Notify with popup, if preferred.
fi
fi
 
 

     


