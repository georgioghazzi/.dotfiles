#!/bin/bash

export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus 
export XDG_RUNTIME_DIR=/run/user/1000

BATTERY=$(upower -e | grep 'BAT')

BATTERY_PERCENTAGE=$(upower -i $BATTERY|grep percentage|awk '{ print $2 }'|sed s/'%'/''/g)
CABLE=$(upower -d | grep -n2 line-power | grep online | awk '{ print $3 }')


if [[ "$BATTERY_PERCENTAGE" -lt "20" && "$BATTERY_PERCENTAGE" -gt "10"  && $CABLE = "no" ]]; then

	   notify-send --urgency=normal "CAUTION: Low Battery!" "Plug in the power cable"  
       	   paplay /usr/share/sounds/warning.ogg &> /dev/null 
fi


if [[ "$BATTERY_PERCENTAGE" -lt "10" && $CABLE = "no" ]]; then

           notify-send --urgency=critical "WARNING: Battery is about to die"  "Plug in the power cable"
           paplay /usr/share/sounds/warning.ogg &> /dev/null
fi


