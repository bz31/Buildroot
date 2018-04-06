#!/bin/sh

BOARD_DIR="$( dirname "${0}" )"

cp $BOARD_DIR/S45ntpdate $TARGET_DIR/etc/init.d
cp $BOARD_DIR/asound.conf $TARGET_DIR/etc
cp $BOARD_DIR/mpd.conf $TARGET_DIR/etc
mv $TARGET_DIR/etc/upmpdcli.conf $TARGET_DIR/etc/upmpdcli.conf.orig
cp $BOARD_DIR/upmpdcli.conf $TARGET_DIR/etc
cp $BOARD_DIR/upmpdcli_radiolist $TARGET_DIR/etc
