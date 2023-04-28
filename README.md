# touchpad_toggle

A simple script for turning laptop touchpad on and off to use e.g. as a keyboard shortcut in Linux distributions using gsettings.


## Install
Just copy touchpad-switch.sh into the your script folder of choice (like '.bin' directory in the user folder) and make it executable (e.g. 'chmod 700 touchpad-switch.sh') and then set up your shortcut key to point to the script file.

## Visual notifications

By default visual notifications are set as **'off´**, but if your system has `notify-send` program available (you can use `which notify-send` in the terminal to see if it's found somewhere) then you can edit the script to set `notify=1`. The notifications is a good way to test that the script manages to run.
