#!/bin/sh

BOARD_DIR="$( dirname "${0}" )"

mv $BASE_DIR/images/rpi-firmware/cmdline.txt $BASE_DIR/images/rpi-firmware/cmdline.txt.orig
cp $BOARD_DIR/cmdline.txt $BASE_DIR/images/rpi-firmware/cmdline.txt
cp $BOARD_DIR/brcmfmac43430-sdio.txt $TARGET_DIR/lib/firmware/brcm
mv $TARGET_DIR/etc/network/interfaces $TARGET_DIR/etc/network/interfaces.orig
cp $BOARD_DIR/interfaces $TARGET_DIR/etc/network
mv $TARGET_DIR/etc/wpa_supplicant.conf $TARGET_DIR/etc/wpa_supplicant.conf.orig
cp $BOARD_DIR/S30wpa_supplicant $TARGET_DIR/etc/init.d
cp $BOARD_DIR/S45ntpdate $TARGET_DIR/etc/init.d
cp $BOARD_DIR/S60cpufreq $TARGET_DIR/etc/init.d
cp $BOARD_DIR/S95squeezelite $TARGET_DIR/etc/init.d
cp $BOARD_DIR/S99taskset $TARGET_DIR/etc/init.d
cp $BOARD_DIR/S99dropbear_host_key $TARGET_DIR/etc/init.d
cp $BOARD_DIR/htoprc $TARGET_DIR/etc
