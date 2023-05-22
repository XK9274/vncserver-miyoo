#!/bin/sh
cd /mnt/SDCARD/App/VNCserver/
export sysdir=/mnt/SDCARD/.tmp_update
export miyoodir=/mnt/SDCARD/miyoo
export LD_LIBRARY_PATH="/mnt/SDCARD/App/VNCserver/lib:/lib:/config/lib:$miyoodir/lib:$sysdir/lib:$sysdir/lib/parasyte"
export PATH="$sysdir/bin:$PATH"

IP=$(ip route get 1 | awk '{print $NF;exit}')

if pgrep vncserver > /dev/null; then
    killall -9 vncserver
	LD_PRELOAD=/mnt/SDCARD/miyoo/lib/libpadsp.so /mnt/SDCARD/.tmp_update/bin/infoPanel -t "VNC Server Shutdown" -m "VNC Server Shutdown" --auto &
else
    /mnt/SDCARD/App/VNCserver/bin/vncserver -k /dev/input/event0 &
	LD_PRELOAD=/mnt/SDCARD/miyoo/lib/libpadsp.so /mnt/SDCARD/.tmp_update/bin/infoPanel -t "Launching VNC Server" -m "VNC Server has been launched: \n $IP:5900" --auto &
fi
