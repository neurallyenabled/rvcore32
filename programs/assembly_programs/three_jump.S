addi a0, x0, 5
addi a1, x0, 2
jal ra,jumpf
jal ra, exit



jumpf:
jalr ra, ra,0

exit: