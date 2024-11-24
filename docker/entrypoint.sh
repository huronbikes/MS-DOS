#/bin/sh

# grab the linux image package, hope our guest is running something similar enough to ubuntu?
apt -yq install linux-image-$(uname -r)

sh /freedos/scripts/fixup.sh
sh /freedos/scripts/setup.sh

qemu-system-i386 -nographic -hda /freedos/freedos.img
