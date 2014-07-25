#retrosmart-rom
#==============

Retrosmart ROM for the Omate TrueSmart, based on the Samsung Galaxy Gear (MTK port).

This ROM is designed to allow full companion functionality and native bluetooth tethering for the Omate TrueSmart/x201 series smartwatch.  Features include Bluetooth speakerphone, FTP over Bluetooth, Remote Camera, Bluetooth tethering, Pedometer, GPS tracking, and notification transfer between phone (sender) and the watch (receiver).

Each watch has a separate kernel based on when it was constructed (May or pre-May) that must be flashed separately and these kernels are not cross-compatible.

_To build a TAR package for this ROM you must pull the folders and package in Linux using the command:_

```tar -cvzf system.tgz /path/source/folder```

The boot.img is already packaged with its ramdisk and needs only be flashed using a custom recovery ZIP, SP Flash Tool, or MTK Droid Tools.

**NOTE: Devices with less than 1GB of system RAM may not complete a /tmp directory flash. Check your edify scripts and adjust accordingly.**

