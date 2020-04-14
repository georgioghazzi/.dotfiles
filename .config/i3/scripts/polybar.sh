#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2


MONITOR=$(polybar --list-monitors | cut -d":" -f1)




if [ $MONITOR == 'HDMI-0' ]
then  
export ETH=$(ip -o link show | awk -F': ' '{print $2}' | grep enp)
polybar desktop &
else 

 polybar laptop &
fi
#polybar main &


