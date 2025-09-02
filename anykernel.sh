### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=86hm by reinazhard @ telegram
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=oriole
device.name2=raven
device.name3=bluejay
device.name4=
device.name5=
supported.versions=16
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties


### AnyKernel install
BLOCK=boot;
IS_SLOT_DEVICE=1;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

. tools/ak3-core.sh;
split_boot;
flash_boot;

BLOCK=vendor_boot;
IS_SLOT_DEVICE=1;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

reset_ak;
split_boot;
flash_boot;
