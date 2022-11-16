addi x5, x0 , 4
addi x7, x0, 700
sw   x7, 0(x5)
lw x8, -696(x7)
sw x7, -688(x8)
lb x8, -688(x7)
sb x7, 88(x8)
lb x8, -680(x7)
