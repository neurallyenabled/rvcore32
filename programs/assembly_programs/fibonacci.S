addi x11, x0, 10 #length of the seq_fib.
addi x12,x0, 0 # mem_add.
addi x22, x0, 1

addi x5, x0, 0
addi x6, x0, 1

BLT x11, x22, exit
sw x5, 0(x12)
addi x11, x11, -1

BLT x11, x22, exit
addi x12, x12, 4
sw x6, 0(x12)
addi x11, x11, -1

BLT x11, x22, exit
fa:
add x7, x6, x5
addi x12, x12, 4
sw x7, 0(x12)

addi x5, x6, 0
addi x6, x7, 0
addi x11, x11, -1
BNE x11, x0,fa
jal x0, exit

exit: