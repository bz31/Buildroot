#!/bin/sh

BOARD_DIR="$( dirname "${0}" )"

mv $TARGET_DIR/etc/network/interfaces $TARGET_DIR/etc/network/interfaces.orig
cp $BOARD_DIR/interfaces $TARGET_DIR/etc/network
cp $BOARD_DIR/S45ntpdate $TARGET_DIR/etc/init.d
mv $TARGET_DIR/etc/mpd.conf $TARGET_DIR/etc/mpd.conf.orig
cp $BOARD_DIR/mpd.conf $TARGET_DIR/etc
mv $TARGET_DIR/etc/upmpdcli.conf $TARGET_DIR/etc/upmpdcli.conf.orig
cp $BOARD_DIR/upmpdcli.conf $TARGET_DIR/etc
cp $BOARD_DIR/upmpdcli_radiolist $TARGET_DIR/etc
mv $TARGET_DIR/etc/shairport-sync.conf $TARGET_DIR/etc/shairport-sync.conf.orig
cp $BOARD_DIR/shairport-sync.conf $TARGET_DIR/etc
cp $BOARD_DIR/S99taskset $TARGET_DIR/etc/init.d
cp $BOARD_DIR/S95squeezelite $TARGET_DIR/etc/init.d

##### Add RoonBridge #####
wget http://download.roonlabs.com/builds/RoonBridge_linuxarmv8.tar.bz2
tar jxf RoonBridge_linuxarmv8.tar.bz2 -C $TARGET_DIR/opt
rm RoonBridge_linuxarmv8.tar.bz2
cp $BOARD_DIR/S95roonbridge $TARGET_DIR/etc/init.d
