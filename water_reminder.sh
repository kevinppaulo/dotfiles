#!/bin/bash
userid=$(id -u)
DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$userid/bus"
export DBUS_SESSION_BUS_ADDRESS
export DISPLAY=:0
/usr/bin/notify-send -i /home/kevin/Imagens/icons/water_glass.png "Drink water now: $(date)"
