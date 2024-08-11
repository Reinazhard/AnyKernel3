### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Aruhamumi by Reinazhard @ Telegram
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=oriole
device.name2=raven
device.name3=raviole
supported.versions=14
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

# boot install
BLOCK=boot;
IS_SLOT_DEVICE=1;
. tools/ak3-core.sh;
split_boot;
flash_boot;
## end boot install

# vendor_boot install
BLOCK=vendor_boot;
IS_SLOT_DEVICE=1;
reset_ak;
split_boot;
flast_boot;
## end vendor_boot install

# dtbo install
flash_generic dtbo;
