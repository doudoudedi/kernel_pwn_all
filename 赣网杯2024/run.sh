#!/bin/sh

qemu-system-x86_64 \
-m 256M \
-smp 2 \
-kernel bzImage \
-append "console=ttyS0 nokaslr quiet loglevel=3 oops=panic panic=-1" \
-initrd rootfs.img \
-drive file=/home/ctf/flag,if=virtio,format=raw,readonly=on \
-cpu qemu64,+smap,+smep \
-nographic \
-no-reboot \
-monitor /dev/null \
-s \
