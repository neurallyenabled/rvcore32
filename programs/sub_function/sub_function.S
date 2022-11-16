addi a0, x0, 5
addi a1, x0, 2
jal ra, sumf
addi x28, a0, 2
jal ra, exit

sumf:
sub a0, a0, a1
jalr ra, ra, 0

exit:
