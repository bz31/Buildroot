#!/bin/sh

BOARD_DIR="$( dirname "${0}" )"

mv $TARGET_DIR/etc/network/interfaces $TARGET_DIR/etc/network/interfaces.orig
cp $BOARD_DIR/interfaces $TARGET_DIR/etc/network
cp $BOARD_DIR/S35macaddress $TARGET_DIR/etc/init.d
cp $BOARD_DIR/S45ntpdate $TARGET_DIR/etc/init.d
cp $BOARD_DIR/S95squeezelite $TARGET_DIR/etc/init.d
mv $TARGET_DIR/etc/shairport-sync.conf $TARGET_DIR/etc/shairport-sync.conf.orig
cp $BOARD_DIR/shairport-sync.conf $TARGET_DIR/etc
cp $BOARD_DIR/htoprc $TARGET_DIR/etc
