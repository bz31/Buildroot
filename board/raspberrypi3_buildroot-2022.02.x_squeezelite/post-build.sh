#!/bin/sh

BOARD_DIR="$( dirname "${0}" )"

mv $BASE_DIR/images/rpi-firmware/cmdline.txt $BASE_DIR/images/rpi-firmware/cmdline.txt.orig
cp $BOARD_DIR/cmdline.txt $BASE_DIR/images/rpi-firmware/cmdline.txt
mv $TARGET_DIR/etc/network/interfaces $TARGET_DIR/etc/network/interfaces.orig
cp $BOARD_DIR/interfaces $TARGET_DIR/etc/network
mv $TARGET_DIR/etc/wpa_supplicant.conf $TARGET_DIR/etc/wpa_supplicant.conf.orig
cp $BOARD_DIR/wpa_supplicant.conf $TARGET_DIR/etc
cp $BOARD_DIR/S45ntpdate $TARGET_DIR/etc/init.d
cp $BOARD_DIR/S60cpufreq $TARGET_DIR/etc/init.d
cp $BOARD_DIR/S95squeezelite $TARGET_DIR/etc/init.d
mv $TARGET_DIR/etc/shairport-sync.conf $TARGET_DIR/etc/shairport-sync.conf.orig
cp $BOARD_DIR/shairport-sync.conf $TARGET_DIR/etc
cp $BOARD_DIR/htoprc $TARGET_DIR/etc
cp $BOARD_DIR/S99taskset $TARGET_DIR/etc/init.d

