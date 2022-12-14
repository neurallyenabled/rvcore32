#!/bin/bash

# path to tool chain
export PATH=$PATH:/home/mj/projects/riscv/install/rv32i/bin

#go to the programs folder
cd /home/mj/Documents/uob/itce497/rvcore32/programs

# get the file path & name, and pass it to the toolchain
FILE_PATH=$(readlink -f $1)
FILE=$(basename $1)
FILE_NAME=${FILE%.*}
riscv64-unknown-elf-gcc -ffreestanding -fno-pic -march=rv32i -mabi=ilp32 -O -Wl,--no-relax -c -o "$FILE_NAME.o" "$FILE_PATH"
riscv64-unknown-elf-gcc -ffreestanding -fno-pic -march=rv32i -mabi=ilp32 -O -nostdlib -Wl,-Ttext=0x0 -Wl,--no-relax -Wl,-Tdata=0x1000 -o prog "$FILE_NAME.o"
riscv64-unknown-elf-objcopy prog -O ihex prog.hex
riscv64-unknown-elf-objdump -Mnumeric,no-aliases -dr prog > prog.lst

# remove the extra unneeded files
rm prog "$FILE_NAME.o"

# go the work directory of modelsim and start the simulation
cd /home/mj/Documents/uob/itce497/rvcore32/core/vsim/
/home/mj/intelFPGA_lite/21.1/questa_fse/bin/vsim -do "do cc.tcl"

