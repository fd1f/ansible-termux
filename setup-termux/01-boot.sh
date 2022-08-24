#!/data/data/com.termux/files/usr/bin/sh
termux-wake-lock
LOG_DIR=$PREFIX/var/log
MAIN_LOG=$LOG_DIR/boot-scripts.log

touch $MAIN_LOG
echo "$(date) | bringing up services" >> $MAIN_LOG
for script in ~/.config/boot-scripts/*
do
	name="$(basename $script)"
	touch $LOG_DIR/$name.log
	echo "$(date) | starting $script" >> $MAIN_LOG
	exec $script >> $LOG_DIR/$name.log || echo "$(date) | $script failed to start!" >> $MAIN_LOG
done
