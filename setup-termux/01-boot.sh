#!/data/data/com.termux/files/usr/bin/sh
termux-wake-lock
LOG_LOCATION=$PREFIX/var/log/boot-scripts.log
echo "$(date) | bringing up services" >> $LOG_LOCATION

for script in $HOME/.config/boot-scripts/*
do
	echo "$(date) | starting $script" >> $LOG_LOCATION
	exec $script || echo "$(date) | $script failed to start!" >> $LOG_LOCATION
done
