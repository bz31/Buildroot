#!/bin/sh

BOARD_DIR="$(dirname "$0")"

install -m 0644 -D "$BOARD_DIR"/extlinux.conf "$TARGET_DIR"/boot/extlinux/extlinux.conf

mv $TARGET_DIR/etc/network/interfaces $TARGET_DIR/root/interfaces.orig
install -m 0644 -D $BOARD_DIR/interfaces $TARGET_DIR/etc/network/interfaces
mv $TARGET_DIR/etc/init.d/S40network $TARGET_DIR/root/S40network.orig
install -m 0755 -D $BOARD_DIR/S40network $TARGET_DIR/etc/init.d/S40network
install -m 0755 -D $BOARD_DIR/S35macaddress $TARGET_DIR/etc/init.d/S35macaddress
install -m 0755 -D $BOARD_DIR/S45ntpdate $TARGET_DIR/etc/init.d/S45ntpdate
install -m 0755 -D $BOARD_DIR/S95squeezelite $TARGET_DIR/etc/init.d/S95squeezelite
mv $TARGET_DIR/etc/shairport-sync.conf $TARGET_DIR/root/shairport-sync.conf.orig
install -m 0644 -D $BOARD_DIR/shairport-sync.conf $TARGET_DIR/etc/shairport-sync.conf
install -m 0644 -D $BOARD_DIR/htoprc $TARGET_DIR/etc/htoprc
