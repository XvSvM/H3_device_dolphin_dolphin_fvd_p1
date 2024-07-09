#!/sbin/sh
/sbin/busybox mkdir -p /system/bin
/sbin/busybox killall -9 adbd && /sbin/adbd &
/sbin/busybox killall -9 recovery && /sbin/recovery &
exit 1
