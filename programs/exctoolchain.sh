#!/bin/sh
export PATH=$PATH:/home/mj/projects/riscv/install/rv32i/bin
cd $(dirname $1)
FILE=$(basename $1)
FILE_NAME=${FILE%.*}
riscv64-unknown-elf-gcc -ffreestanding -fno-pic -march=rv32i -mabi=ilp32 -O -c -o "$FILE_NAME.o" $1
riscv64-unknown-elf-gcc -ffreestanding -fno-pic -march=rv32i -mabi=ilp32 -O -nostdlib -Wl,-Ttext=0x0 -Wl,--no-relax -Wl,-Tdata=0x1000 -o prog "$FILE_NAME.o"
riscv64-unknown-elf-size -A -x prog
riscv64-unknown-elf-objcopy prog -O binary prog.bin
riscv64-unknown-elf-objdump -Mnumeric,no-aliases -dr prog > prog.lst
