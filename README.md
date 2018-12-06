# ToaruOS GRUB Disk

While ToaruOS ships with its own bootloaders for BIOS and EFI, they are not very robust. For users interested in trying ToaruOS on real hardware, GRUB will probably provide a better experience. This repository contains a GRUB configuration and tools to build a GRUB "Rescue CD" image, which can be written to a CD, hard disk, or USB storage device.

Note that ToaruOS may not be able to mount media you install this on. This should matter, though, unless you are attempting to add additional data to the image, as everything important should be included in the ramdisk.
