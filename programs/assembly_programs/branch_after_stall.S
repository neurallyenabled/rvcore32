addi a0, x0, 5
addi a1, x0, 2
add a0, a0, a1
jal ra, subf
addi x28, a0, 2
jal ra, exit



subf:
sub a0, a0, a1
jalr ra, ra, 0

exit:
