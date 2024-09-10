#!/bin/sh

qemu-system-riscv64 -smp 2 -m 2G -cpu rv64 -nographic -machine virt -kernel /qemu/qemu-riscv64_smode-uboot.elf -device virtio-blk-device,drive=hd -drive file=/qemu/image.qcow2,if=none,id=hd -device virtio-net-device,netdev=net -netdev user,id=net,hostfwd=tcp::2222-:22 -object rng-random,filename=/dev/urandom,id=rng -device virtio-rng-device,rng=rng -append "root=LABEL=rootfs console=ttyS0"
