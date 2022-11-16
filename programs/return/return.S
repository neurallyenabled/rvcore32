addi a0, x0, 2
jal ra, returnv
addi x6, a1, 6

addi a0, x0, 4
jal ra, returnv
addi x7, a1, 0
addi x29, x7, 2
ebreak

returnv: 
addi a1, a0, 0
jalr ra, ra, 0
