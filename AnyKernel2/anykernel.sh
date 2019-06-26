# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

# AnyKernel setup
# begin properties
properties() {
kernel.string=by spookcity138 @ xda-developers
do.devicecheck=1
do.modules=0
do.sqlite=0
do.init.d=0
do.binaries=0
do.synapse=0
do.cleanup=1
do.cleanuponabort=0
device.name1=kminilteub
device.name2=kminiltexx
device.name3=kminiltedv
device.name4=kminilte
} # end properties

# shell variables
block=/dev/block/platform/dw_mmc.0/by-name/BOOT;
is_slot_device=0;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel permissions
# set permissions for included ramdisk files
chmod -R 755 $ramdisk
#chmod 644 $ramdisk/res/synapse/*
#chmod -R 755 $ramdisk/res/synapse/actions

# Init.d
#cp -fp /system/etc/init.d/925settings/* $initd
#chmod -R 755 $initd

## AnyKernel install
dump_boot;

# begin ramdisk changes
#append_file init.universal3470.rc "/sbin/uci" init.universal3470;
#append_file init.universal3470.rc "kminilte-post_boot" init.universal3470;

# end ramdisk changes

write_boot;

## end install

