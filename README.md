This program prints text in BIOS without the need of an operating system!

![Image of it working](images/Screenshot.png)

Assembled with NASM:
  nasm boot.asm -f bin -o boot.bin

Run with QEMU:
  qemu-system-x86_64 boot.bin
