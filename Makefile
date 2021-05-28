all: toaruos-grub.iso

GRUB_STUFF=cdrom/boot/grub/menus.cfg cdrom/boot/grub/grub.cfg

cdrom/ramdisk.igz: ../misaka/ramdisk.igz
	cp $< $@

cdrom/kernel.gz: ../misaka/misaka-kernel
	cat $< | gzip > $@

toaruos-grub.iso: cdrom/ramdisk.igz cdrom/kernel.gz ${GRUB_STUFF}
	grub-mkrescue --compress=xz -o $@ cdrom

.PHONY: clean
clean:
	rm -f cdrom/ramdisk.igz
	rm -f cdrom/kernel.gz
