addi x4,x0,4
addi x5,x0,700
addi x28 , x0 , 2
sw   x5, 0(x4)
bge  x28,x5, exit
lb   x29, 0(x4)
add x28, x28, x29
sb x28, 8(x4)
lbu   x29, 8(x4)
exit:
