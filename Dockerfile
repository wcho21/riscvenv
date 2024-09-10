FROM alpine:3.20.3 AS base

EXPOSE 2222

RUN apk update

FROM base AS qemuutils

RUN apk add qemu-system-riscv64

FROM qemuutils AS riscvimage

COPY assets/image.qcow2 /qemu/
COPY assets/qemu-riscv64_smode-uboot.elf /qemu/
COPY assets/run_qemu.sh /qemu/

RUN chmod +x /qemu/run_qemu.sh

FROM riscvimage AS final

CMD ["/qemu/run_qemu.sh"]
